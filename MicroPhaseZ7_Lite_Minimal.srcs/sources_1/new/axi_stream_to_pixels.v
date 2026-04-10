`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Lowe Contracting
// Engineer:       Jeremiah Lowe
// Create Date:    04/05/2026 12:52:58 PM
// Design Name:    AXI Stream to pixel stream
// Module Name:    axi_stream_to_pixels
// Project Name:   Screen Hat
// Target Devices: Any
// Tool Versions:  Vivado 2025.2 and above
// Description:    Converts an AXI4 Stream into a stream of synchronized pixels
// Dependencies:   None
// Revision:       1.0
//////////////////////////////////////////////////////////////////////////////////

module axi_stream_to_pixels (
        // AXI4 Stream in
        input wire s_axis_tlast,
        input wire s_axis_tvalid,
        input wire [15:0] s_axis_tdata,
        output reg s_axis_tready,
        input wire s_axis_clock,
        input wire s_axis_aresetn,
        
        // Pixel stream out
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_clock" *) input wire pixel_clock,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_sync" *)  input wire pixel_sync,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_data" *)  output reg [15:0] pixel_data,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream core_clock" *)  output wire core_clk_out
    );
    
    // Register to enable/disable pixel data zeroization
    // When high, this should zeroize the pixel data
    // Asserted upon initialization or during incomplete DMA transfers
    reg [15:0] pixel_data_buffer;
    
    // Clock control
    reg core_clk_enable;
    initial core_clk_enable = 1'b1;
    assign core_clk_out = s_axis_clock && core_clk_enable;

    // Display cleanup
    reg pixels_changed;
    wire frame_needs_cleared;
    initial pixels_changed = 1'b0;
    assign frame_needs_cleared = s_axis_tlast && pixels_changed && !pixel_sync;

    // AXI buffering
    reg data_ready_oneshot;
    initial s_axis_tready = 1'b0;
    
    // State machine
    reg [1:0] state;
    localparam STATE_INIT_FIRST_PIXEL = 2'b00;
    localparam STATE_INIT_NEXT_PIXELS = 2'b01;
    localparam STATE_HANDLE_TRANSFER  = 2'b10;
    initial state = STATE_INIT_FIRST_PIXEL;
    
    always @(posedge s_axis_clock) begin
        case (state)
            STATE_INIT_FIRST_PIXEL: begin
                pixel_data <= 0;
                // This is the primary init state, once clocks are
                // stable draw the first pixel onto the display
                if (pixel_clock && !pixel_sync) begin
                    state <= STATE_INIT_NEXT_PIXELS;
                end
            end
            STATE_INIT_NEXT_PIXELS: begin
                // Once the first pixel is drawn the pixel_sync flag will be de-asserted and
                // we will keep drawing until it is re-asserted, now handle normal operations
                if (pixel_sync) begin
                    core_clk_enable <= 0;
                    data_ready_oneshot <= 1'b1;
                    state <= STATE_HANDLE_TRANSFER;
                    pixel_data <= 0;
                end else begin
                    s_axis_tready <= 1'b0;
                    pixel_data <= 0;
                end
            end
            STATE_HANDLE_TRANSFER: begin
                // If there is a pixel clock asserted, assert a TREADY pulse
                // onto the AXI data bus, this begins the next transaction
                if (pixel_clock) begin
                    pixels_changed <= 1'b1;
                    if (s_axis_tvalid && data_ready_oneshot) begin
                        pixel_data <= s_axis_tdata;
                        s_axis_tready <= 1'b1;
                        data_ready_oneshot <= 1'b0;
                    end else begin
                        s_axis_tready <= 1'b0;
                    end
                end else begin
                    s_axis_tready <= 1'b0;
                    data_ready_oneshot <= 1'b1;
                end
                
                // If TLAST has been received and we aren't back at the first pixel
                // then we will just clear that portion of the display with black
                if (frame_needs_cleared) begin
                    core_clk_enable <= 1'b1;
                    state <= STATE_INIT_NEXT_PIXELS;
                end else begin
                    // Enable the output clock based on the TVALID line, this will
                    // start updating the pixel data whenever valid data is present
                    // on the AXI bus
                    core_clk_enable <= s_axis_tvalid;
                end
            end
        endcase
    end
endmodule
