`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2026 08:53:11 PM
// Design Name: 
// Module Name: axi_pixel_fifo
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


module axi_pixel_fifo # (
		parameter DATA_WIDTH = 16,
		parameter FIFO_SIZE = 240
	) (
		// AXI4 Stream in
		input  wire s_axis_tlast,
		input  wire s_axis_tvalid,
		input  wire [DATA_WIDTH-1:0] s_axis_tdata,
		output reg  s_axis_tready,
		
        // Pixel stream out
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_clock" *) input wire pixel_clock,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_sync" *)  input wire pixel_sync,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_data" *)  output reg [15:0] pixel_data,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream core_clock" *)  output wire core_clock_out,
		
		// Clocks and resets
		input wire s_axis_clock,
		input wire s_axis_aresetn,
		
		// Miscellaneous
		output reg  fifo_write_complete,
		output reg  fifo_read_complete,
		input  wire fifo_read_enable,
		
		output reg [2:0] state,
        output wire fifo_rxbuf_full,
        output wire fifo_txbuf_full,
        output reg  core_clock_enable,
        output reg [$clog2(FIFO_SIZE)-1:0] fifo_in_pos,
        output reg [$clog2(FIFO_SIZE)-1:0] fifo_out_pos
	);
    
    // Clock control
    //reg core_clock_enable;
    initial core_clock_enable = 1'b0;
    assign core_clock_out = s_axis_clock && core_clock_enable;

	// FIFO controls
	reg got_tlast;
	reg [DATA_WIDTH-1:0] fifo [FIFO_SIZE:0];
	initial fifo_in_pos = 0;
	initial fifo_out_pos = 0;
	assign fifo_rxbuf_full = fifo_in_pos >= (FIFO_SIZE - 1) || got_tlast;
	assign fifo_txbuf_full = fifo_in_pos > 0 && fifo_out_pos >= fifo_in_pos;
	
	// Data buffering
    reg pixel_clock_oneshot;
	reg fifo_start_xfer;
	
    // State machine
    //reg [2:0] state;
    localparam STATE_INIT_FIRST_PIXEL = 3'b000;
    localparam STATE_INIT_NEXT_PIXELS = 3'b001;
    localparam STATE_TRANSFER_READY   = 3'b010;
    localparam STATE_RESET_TRANSFER   = 3'b011;
    localparam STATE_WAIT_PIXEL_SYNC  = 3'b100;
    localparam STATE_PERFORM_TRANSFER = 3'b101;
    localparam STATE_TRANSFER_FIRST   = 3'b110;
    localparam STATE_TRANSFER_LAST    = 3'b111;
    initial state = STATE_INIT_FIRST_PIXEL;
    
    //reg start_xfer_oneshot;
    reg stop_xfer_oneshot;
    
	always @(posedge s_axis_clock) begin
        // Handle the AXI input data
        if (fifo_read_enable && s_axis_tvalid) begin
            if (s_axis_tready) begin
                if (fifo_rxbuf_full) begin
                    // If the RX buffer is full, set the read complete flag
                    fifo_read_complete <= 1;
                    s_axis_tready <= 0;
                end else begin
                    // If the RX buffer has room, store the AXI data and move the pointer
                    fifo[fifo_in_pos] <= s_axis_tdata;
                    fifo_in_pos <= fifo_in_pos + 1;
                    
                    // Since we have data now, start the transfer on the next clock cycle
                    if(state == STATE_TRANSFER_READY) begin
                        fifo_start_xfer <= 1;
                    end
                end
            end
            
            if(s_axis_tlast) begin
                got_tlast <= 1;
            end
        end
        
        // Display drawing state machine
        case (state)
            STATE_INIT_FIRST_PIXEL: begin
                // Since the IP has started up, exit pixel_sync state and clear the display
                pixel_data <= 0;
                core_clock_enable <= 1;
                if(pixel_clock && !pixel_sync) begin
                    state <= STATE_INIT_NEXT_PIXELS;
                end
            end
            STATE_INIT_NEXT_PIXELS: begin
                // Wait until pixel sync is re-asserted, when that happens the display should be cleared
                if (pixel_sync && !pixel_clock) begin
                    // Now that the display is clear, disable clock and put in the ready FIFO state
                    core_clock_enable <= 0;
                    state <= STATE_RESET_TRANSFER;
                end
            end
            STATE_TRANSFER_READY: begin
                if (fifo_start_xfer) begin
                    fifo_start_xfer <= 0;          // De-Assert the xfer start signal
                    state <= STATE_TRANSFER_FIRST; // Enter the transfer state
                end
            end
            STATE_TRANSFER_FIRST: begin
                pixel_data <= fifo[fifo_out_pos];
                core_clock_enable <= 1;
                if(pixel_clock) begin
                    state <= STATE_PERFORM_TRANSFER;
                end
            end
            STATE_PERFORM_TRANSFER: begin
                if (pixel_clock) begin
                    // Assert the pixel clock oneshot so data is set on the next pixel clock cycle
                    pixel_clock_oneshot <= 1;
                    // On a high pixel clock, if both buffers are full, reset the FIFO
                    if (fifo_rxbuf_full && fifo_txbuf_full) begin
                        state <= STATE_TRANSFER_LAST;
                    end
                end else begin
                    // On pixel clock, assert the data
                    if (pixel_clock_oneshot) begin
                        pixel_data <= fifo[fifo_out_pos];
                        pixel_clock_oneshot <= 0;
                        fifo_out_pos <= fifo_out_pos + 1;
                    end
                end
            end
            STATE_TRANSFER_LAST: begin
                if (!pixel_clock) begin
                    fifo_write_complete <= 1;    // Set the write complete flag now that we're done
                    core_clock_enable <= 0;      // Disable pixel clock here since it's a bit unsure what should happen next
                    if (got_tlast && !pixel_sync) begin
                        state <= STATE_WAIT_PIXEL_SYNC;
                        pixel_data <= 0;
                    end else begin
                        state <= STATE_RESET_TRANSFER;
                    end
                end
            end
            STATE_WAIT_PIXEL_SYNC: begin
                if (pixel_sync) begin
                    core_clock_enable <= 0;
                    state <= STATE_RESET_TRANSFER;
                end else begin
                    core_clock_enable <= 1;
                end
            end
            STATE_RESET_TRANSFER: begin
                fifo_out_pos <= 0;              // Reset the TX buffer position
                fifo_in_pos <= 0;               // Reset the RX buffer position
                fifo_write_complete <= 0;       // Clear the write complete flag
                fifo_read_complete <= 0;        // Clear the read complete flag
                pixel_clock_oneshot <= 1;       // Enable the pixel clock oneshot to buffer output data
                s_axis_tready <= 1;             // We are ready for data so assert tready
                got_tlast <= 0;                 // Clear the GOT_TLAST bit
                //start_xfer_oneshot <= 1;        // idk
                stop_xfer_oneshot <= 0;         // idk
                state <= STATE_TRANSFER_READY;  // Now we are ready for a transfer
            end
        endcase
    end
endmodule
