`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2026 03:50:58 PM
// Design Name: 
// Module Name: ili9341_display_driver
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


module ili9341_display_driver # (
        parameter INPUT_CLK_MHZ = 50,
        parameter WIDTH  = 320,
        parameter HEIGHT = 240,
        parameter PIXEL_WIDTH = 16
    ) (
        // Display data out
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi scl" *)  output wire tft_sck,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi sda" *)  output wire tft_sda,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi dc" *)   output wire tft_dc,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi cs" *)   output wire tft_cs,
        output wire ili9341_nrst,
        output reg  ili9341_led,
		
		// Pixel stream in
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream pixel_data" *)  input  wire [PIXEL_WIDTH-1:0] pixel_data,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream core_clock" *)  input  wire core_clock,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream pixel_clock" *) output wire pixel_clock,
        (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 s_pixel_stream pixel_sync" *)  output reg  pixel_sync
    );
endmodule
