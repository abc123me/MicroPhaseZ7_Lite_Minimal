//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Mar 31 00:17:10 2026
//Host        : npc running 64-bit Arch Linux
//Command     : generate_target minimal_wrapper.bd
//Design      : minimal_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module minimal_wrapper
   (PL_CLK_50M,
    PL_LED_1,
    tft_cs,
    tft_dc,
    tft_led,
    tft_rst,
    tft_sck,
    tft_sda);
  input PL_CLK_50M;
  output [0:0]PL_LED_1;
  output tft_cs;
  output tft_dc;
  output tft_led;
  output tft_rst;
  output tft_sck;
  output tft_sda;

  wire PL_CLK_50M;
  wire [0:0]PL_LED_1;
  wire tft_cs;
  wire tft_dc;
  wire tft_led;
  wire tft_rst;
  wire tft_sck;
  wire tft_sda;

  minimal minimal_i
       (.PL_CLK_50M(PL_CLK_50M),
        .PL_LED_1(PL_LED_1),
        .tft_cs(tft_cs),
        .tft_dc(tft_dc),
        .tft_led(tft_led),
        .tft_rst(tft_rst),
        .tft_sck(tft_sck),
        .tft_sda(tft_sda));
endmodule
