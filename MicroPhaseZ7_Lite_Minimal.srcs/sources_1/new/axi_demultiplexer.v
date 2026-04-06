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
	// AXI4 Streams out
	output wire m_axis_tlast [OUTPUTS-1:0],
	output wire m_axis_tvalid [OUTPUTS-1:0],
	output wire [DATA_WIDTH-1:0] m_axis_tdata [OUTPUTS-1:0],
	input  wire m_axis_tready [OUTPUTS-1:0],
	// Selector in
	input  wire [$clog2(OUTPUTS)-1:0] selection,
	input  wire axi_clock
);
	genvar i;
	
	wire [OUTPUTS-1:0] treadies_select;
	assign s_axis_tready = |treadies_select;

	generate
		for (i = 0; i < $clog2(OUTPUTS); i = i + 1) begin
			assign m_axis_tdata[i]    = s_axis_tdata     && (selection == i);
			assign m_axis_tlast[i]    = s_axis_tlast     && (selection == i);
			assign m_axis_tvalid[i]   = s_axis_tvalid    && (selection == i);
			assign treadies_select[i] = m_axis_tready[i] && (selection == i);
		end
	endgenerate
endmodule
