`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Lowe Contracting
// Engineer:       Jeremiah Lowe
// Create Date:    04/05/2026 12:52:58 PM
// Design Name:    AXI Line FIFO
// Module Name:    axi_line_fifo
// Project Name:   Screen Hat
// Target Devices: Any
// Tool Versions:  Vivado 2025.2 and above
// Description:    A specialized AXI FIFO created to buffer exactly one line of vertical pixel data
// Dependencies:   None
// Revision:       1.0
//////////////////////////////////////////////////////////////////////////////////

module axi_line_fifo # (
		parameter DATA_WIDTH = 16,
		parameter FIFO_SIZE = 240
	) (
		// AXI4 Stream in
		input wire s_axis_tlast,
		input wire s_axis_tvalid,
		input wire [DATA_WIDTH-1:0] s_axis_tdata,
		output reg s_axis_tready,
		
		// AXI4 Stream out
		output wire m_axis_tlast,
		output reg  m_axis_tvalid,
		output reg  [DATA_WIDTH-1:0] m_axis_tdata,
		input  wire m_axis_tready,
		
		// Clocks and resets
		input wire axis_clock,
		input wire axis_aresetn,
		
		// Miscellaneous
		output wire fifo_full,
		input  wire fifo_restart,
		output reg [$clog2(FIFO_SIZE)-1:0] fifo_in_pos,
		output reg [$clog2(FIFO_SIZE)-1:0] fifo_out_pos,
		output wire [$clog2(FIFO_SIZE)-1:0] fifo_level
	);
    
    // FIFO level
    reg fifo_has_data;
	assign fifo_level = fifo_in_pos - fifo_out_pos;
	assign fifo_full = fifo_level == 0 && fifo_out_pos > 0;
	initial fifo_has_data = 0;

	// FIFO controls
	reg [DATA_WIDTH-1:0] fifo [FIFO_SIZE:0];
	initial fifo_in_pos = 0;
	initial fifo_out_pos = 0;

	// Input AXI signalling
	initial s_axis_tready = 1;

	// Output AXI signalling
	initial m_axis_tvalid = 0;
	assign m_axis_tlast = s_axis_tlast;

	always @(posedge axis_clock) begin
		// Handle fifo restore
		if (fifo_restart) begin
		    fifo_in_pos <= 0;
		    fifo_out_pos <= 0;
		    fifo_has_data <= 0;
		    s_axis_tready <= 1;
		    m_axis_tvalid <= 0;
		end else begin
            // Handle input data
            if (s_axis_tvalid) begin
                if (s_axis_tready) begin
                    fifo[fifo_in_pos] <= s_axis_tdata;
                    if (fifo_in_pos <= FIFO_SIZE - 1) begin
                        fifo_in_pos <= fifo_in_pos + 1;
                        fifo_has_data <= 1;
                        s_axis_tready <= 1;
                    end else begin
                        s_axis_tready <= 0;
                    end
                end
            end
            
            // Handle output data
            if (fifo_has_data) begin
                m_axis_tdata <= fifo[fifo_out_pos];
                
                if (m_axis_tready) begin
                    if (fifo_out_pos <= FIFO_SIZE - 1) begin
                        fifo_out_pos <= fifo_out_pos + 1;
                    end
                    if (fifo_level == 0) begin
                        fifo_has_data <= 0;
                    end
                end
            end
            m_axis_tvalid <= fifo_has_data && !fifo_full;
		end
    end
endmodule
