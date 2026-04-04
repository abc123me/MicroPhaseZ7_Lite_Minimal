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

module tft_ili9341_wrapper (
		output wire tft_sck,
		output wire tft_sda,
		output wire tft_dc,
		output wire tft_nrst,
		output wire tft_cs,
		output wire pixel_clock,
		output wire pixel_sync,
		input  wire [15:0] pixel_data,
		input  wire core_clk
	);
	
	// Counter for outputting a pixel sync bit
	reg [16:0] pixel_counter;
	initial pixel_counter = 0;
	always @(posedge pixel_clock) begin
	   if (pixel_counter < 76799) begin
	       pixel_counter <= pixel_counter + 1'b1;
	   end else begin
	       pixel_counter <= 0;
	   end
	end
	// The "pixel sync" is high whenever on the 0th pixel
	// this allows extrernal IP to know when it can begin
	// providing pixel data to the IP block
	assign pixel_sync = pixel_counter == 0;
	
	// Miscellaneous signal handling
	wire tft_reset;
	wire tft_sdo;
	assign tft_nrst = !tft_reset; // For some reason I have to invert this
	assign tft_sdo = 0; // The SPI transcations are one way, the MOSI is unused
	
	// ILI9341 driver IP, thanks to "thekroko" for making this!
	// https://github.com/thekroko/ili9341_fpga/tree/master
	tft_ili9341(
	   .clk(core_clk),
	   .tft_sdo(tft_sdo),
	   .tft_sck(tft_sck),
	   .tft_sdi(tft_sda),
	   .tft_dc(tft_dc),
	   .tft_reset(tft_rst),
	   .tft_cs(tft_cs),
	   .framebufferData(pixel_data),
	   .framebufferClk(pixel_clock)
	);
endmodule
