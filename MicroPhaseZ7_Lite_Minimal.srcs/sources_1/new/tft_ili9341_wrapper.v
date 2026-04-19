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

module tft_ili9341_wrapper # (
        parameter INPUT_CLK_MHZ = 50,
        parameter WIDTH  = 320,
        parameter HEIGHT = 240,
        parameter PIXEL_WIDTH = 16
    ) (
        // Display data out
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi scl" *)  output wire tft_sck,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi sda" *)  output wire tft_sda,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi dc" *)   output wire tft_dc,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi nrst" *) output wire tft_nrst,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi cs" *)   output wire tft_cs,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi led" *)  output reg  tft_led,
		
		// Pixel stream in
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream pixel_data" *)  input  wire [PIXEL_WIDTH-1:0] pixel_data,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream core_clock" *)  input  wire core_clock,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream pixel_clock" *) output wire pixel_clock,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream pixel_sync" *)  output reg  pixel_sync
	);
	
	localparam LAST_PIXEL = WIDTH * HEIGHT - 1;
	
    // Backlight is turned on after first frame is drawn
	initial tft_led <= 0;
	
	// Buffer the pixel data to fix timing issues
	reg [PIXEL_WIDTH-1:0] pixel_data_buffer;
	initial pixel_data_buffer = 0;
	
	// Counter for outputting a pixel sync bit
	reg [$clog2(LAST_PIXEL):0] pixel_counter;
	initial pixel_counter = 0;
	
	// The "pixel sync" is high whenever on the 0th pixel
	// this allows extrernal IP to know when it can begin
	// providing pixel data to the IP block
	initial pixel_sync = 1;
	
	always @(negedge pixel_clock) begin
	   if (pixel_counter < LAST_PIXEL) begin
	       pixel_sync <= 0;
	       pixel_counter <= pixel_counter + 1'b1;
	   end else begin
	       pixel_sync <= 1;
	       pixel_counter <= 0;
	       tft_led <= 1;
	   end
	   
	   pixel_data_buffer <= pixel_data;
	end
	
	// Miscellaneous signal handling
	wire tft_rst;
	wire tft_sdo;
	assign tft_nrst = tft_rst; // For some reason I have to invert this
	assign tft_sdo = 0; // The SPI transcations are one way, the MOSI is unused
	
	// ILI9341 driver IP, thanks to "thekroko" for making this!
	// https://github.com/thekroko/ili9341_fpga/tree/master
	tft_ili9341 # (
        .INPUT_CLK_MHZ(INPUT_CLK_MHZ) 
    ) (
	   .clk(core_clock),
	   .tft_sdo(tft_sdo),
	   .tft_sck(tft_sck),
	   .tft_sdi(tft_sda),
	   .tft_dc(tft_dc),
	   .tft_reset(tft_rst),
	   .tft_cs(tft_cs),
	   .framebufferData(pixel_data_buffer),
	   .framebufferClk(pixel_clock)
	);
endmodule