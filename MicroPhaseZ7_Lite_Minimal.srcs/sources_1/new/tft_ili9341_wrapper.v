`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2026 09:58:24 PM
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


module tft_ili9341_wrapper(
		input  clk,
		input  tft_sdo,
		output tft_sck,
		output tft_sdi,
		output tft_dc,
		output tft_reset,
		output tft_cs,
		input[15:0] fbdat,
		output fbclk
	);
	
	tft_ili9341(
	   .clk(clk),
	   .tft_sdo(tft_sdo),
	   .tft_sck(tft_sck),
	   .tft_sdi(tft_sdi),
	   .tft_dc(tft_dc),
	   .tft_reset(tft_rst),
	   .tft_cs(tft_cs),
	   .framebufferData(fbdat),
	   .framebufferClk(fbclk)
	);
endmodule
