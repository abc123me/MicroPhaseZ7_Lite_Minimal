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


module axi_demultiplexer # (
	parameter OUTPUTS = 2,
	parameter DATA_WIDTH = 16
) (
	// AXI4 Stream in
	input  wire s_axis_tlast,
	input  wire s_axis_tvalid,
	input  wire [DATA_WIDTH-1:0] s_axis_tdata,
	output wire s_axis_tready,
	// AXI4 Stream 0 out
	output wire m00_axis_tlast,
	output wire m00_axis_tvalid,
	output wire [DATA_WIDTH-1:0] m00_axis_tdata,
	input  wire m00_axis_tready,
	// AXI4 Stream 1 out
	output wire m01_axis_tlast,
	output wire m01_axis_tvalid,
	output wire [DATA_WIDTH-1:0] m01_axis_tdata,
	input  wire m01_axis_tready,
	// Selector in
	input  wire selection,
	input  wire axi_clock
);
	genvar i;
	
	wire [OUTPUTS-1:0] treadies_select;
	assign s_axis_tready = |treadies_select;

	assign m00_axis_tdata  = s_axis_tdata    && (selection == 0);
	assign m00_axis_tlast  = s_axis_tlast    && (selection == 0);
	assign m00_axis_tvalid = s_axis_tvalid   && (selection == 0);
	assign treadies_select = m00_axis_tready && (selection == 0);
	
	assign m01_axis_tdata  = s_axis_tdata    && (selection == 1);
	assign m01_axis_tlast  = s_axis_tlast    && (selection == 1);
	assign m01_axis_tvalid = s_axis_tvalid   && (selection == 1);
	assign treadies_select = m01_axis_tready && (selection == 1);
endmodule
