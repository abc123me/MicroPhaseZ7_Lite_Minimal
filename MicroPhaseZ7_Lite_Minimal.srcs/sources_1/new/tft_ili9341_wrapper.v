`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2026 11:00:19 PM
// Design Name: 
// Module Name: tft_ili9341_wrapper
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

// tft_ili9341_wrapper.v  (plain Verilog, no SV constructs)
module tft_ili9341_wrapper (
	input tft_clk,
	input game_clk,
    input  wire        tft_sdo,
    output wire        tft_sck,
    output wire        tft_sdi,
    output wire        tft_dc,
    output wire        tft_reset,
    output wire        tft_cs);

    hellosoc_top inst (
        .tft_clk(tft_clk),
        .game_clk(game_clk),
        .tft_sdo(tft_sdo),
        .tft_sck(tft_sck),
        .tft_sdi(tft_sdi),
        .tft_dc(tft_dc),
        .tft_reset(tft_reset),
        .tft_cs(tft_cs)
    );

endmodule