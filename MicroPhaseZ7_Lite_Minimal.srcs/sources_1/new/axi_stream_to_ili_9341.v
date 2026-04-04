`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2026 08:08:17 PM
// Design Name: 
// Module Name: axi_stream_to_ili_9341
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module axi_stream_to_ili_9341 # (
        // parameter FREQ_HZ = 100000000
    ) (
        // AXI4 Stream IO
        input wire axis_tlast,
        input wire axis_tvalid,
        input wire [15:0] axis_tdata,
        output reg axis_tready,
        input wire axis_clock,
        input wire axis_aresetn,
        
        // Framebuffer driver IO
		input wire pixel_clock,
		input wire pixel_sync,
		output wire [15:0] pixel_data,
		output wire core_clk_out
    );
    
    // Register to enable/disable pixel data zeroization
    // When high, this should zeroize the pixel data
    // Asserted upon initialization or during incomplete DMA transfers
    reg pixel_data_zeroize;
    initial pixel_data_zeroize = 1'b1;
    assign pixel_data = pixel_data_zeroize ? 16'b0 : axis_tdata;
    
    reg out_clk_enable;
    initial out_clk_enable = 1'b1;
    assign core_clk_out = axis_clock && out_clk_enable;

    reg pixels_changed;
    initial pixels_changed = 1'b0;

    wire frame_needs_cleared;
    assign frame_needs_cleared = axis_tlast && pixels_changed && !pixel_sync;

    reg axis_tready_oneshot;
    
    initial axis_tready_oneshot = 1'b1;
    initial axis_tready = 1'b0;
    
    reg [0:1] state;
    localparam STATE_INIT_FIRST_PIXEL = 2'b00;
    localparam STATE_INIT_NEXT_PIXELS = 2'b01;
    localparam STATE_HANDLE_TRANSFER  = 2'b10;
    initial state = STATE_INIT_FIRST_PIXEL;
    
    always @(posedge axis_clock) begin
        case (state)
            STATE_INIT_FIRST_PIXEL: begin
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
                    axis_tready <= 1'b1;
                    out_clk_enable <= 0;
                    pixel_data_zeroize <= 1'b0;
                    state <= STATE_HANDLE_TRANSFER;
                end
            end
            STATE_HANDLE_TRANSFER: begin
                // If there is a pixel clock asserted, assert a TREADY pulse
                // onto the AXI data bus, this begins the next transaction
                if (pixel_clock) begin
                    pixels_changed <= 1'b1;
                    if (axis_tready_oneshot) begin
                        axis_tready <= 1'b1;
                        axis_tready_oneshot <= 1'b0;
                    end else begin
                        axis_tready <= 1'b0;
                    end
                end else begin
                    axis_tready <= 1'b0;
                    axis_tready_oneshot <= 1'b1;
                end
                
                // If TLAST has been received and we aren't back at the first pixel
                // then we will just clear that portion of the display with black
                if (frame_needs_cleared) begin
                    pixel_data_zeroize <= 1'b1;
                    out_clk_enable <= 1'b1;
                    axis_tready <= 1'b0;
                    state <= STATE_INIT_NEXT_PIXELS;
                end else begin
                    // Enable the output clock based on the TVALID line, this will
                    // start updating the pixel data whenever valid data is present
                    // on the AXI bus
                    out_clk_enable <= axis_tvalid;
                end
            end
        endcase
    end
endmodule
