`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Lowe Contracting
// Engineer:       Jeremiah Lowe
// Create Date:    04/05/2026 12:52:58 PM
// Design Name:    AXI Demultiplexer
// Module Name:    axi_demultiplexer
// Project Name:   Screen Hat
// Target Devices: Any
// Tool Versions:  Vivado 2025.2 and above
// Description:    An AXI demultiplexer
// Dependencies:   None
// Revision:       1.0
//////////////////////////////////////////////////////////////////////////////////


module axi_demultiplexer (
	input  wire tready_in0,
	input  wire fifo_write_complete0,
	input  wire fifo_read_complete0,
	output reg  fifo_read_enable0,
	
	input  wire tready_in1,
	input  wire fifo_write_complete1,
	input  wire fifo_read_complete1,
	output reg  fifo_read_enable1,
	
    output reg [1:0] state,
	output reg tready_out,
	input  wire axis_clock
);

initial fifo_read_enable0 = 0;
initial fifo_read_enable1 = 0;

initial tready_out = 0;

localparam STATE_FILL_DISPLAY_0 = 3'b000;
localparam STATE_FILL_DISPLAY_1 = 3'b001;
localparam STATE_WAIT_DISPLAY_0 = 3'b010;
localparam STATE_WAIT_DISPLAY_1 = 3'b011;
localparam STATE_READ_DISPLAY_0 = 3'b100;
localparam STATE_READ_DISPLAY_1 = 3'b101;
initial state = STATE_FILL_DISPLAY_0;

always @(negedge axis_clock) begin
    case (state)
        STATE_FILL_DISPLAY_0: begin
            tready_out <= tready_in0;
            fifo_read_enable0 <= !fifo_read_complete0;
            if (fifo_read_complete0) begin
                tready_out <= 0;
                state <= STATE_FILL_DISPLAY_1;
            end
        end
        STATE_FILL_DISPLAY_1: begin
            tready_out <= tready_in1;
            fifo_read_enable1 <= !fifo_read_complete1;
            if (fifo_read_complete1) begin
                tready_out <= 0;
                state <= STATE_FILL_DISPLAY_0;
            end
        end
    endcase
end
    
endmodule
