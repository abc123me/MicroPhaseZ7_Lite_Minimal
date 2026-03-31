//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Mar 31 00:17:10 2026
//Host        : npc running 64-bit Arch Linux
//Command     : generate_target minimal.bd
//Design      : minimal
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "minimal,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=minimal,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_ps7_cnt=1,synth_mode=None}" *) (* HW_HANDOFF = "minimal.hwdef" *) 
module minimal
   (PL_CLK_50M,
    PL_LED_1,
    tft_cs,
    tft_dc,
    tft_led,
    tft_rst,
    tft_sck,
    tft_sda);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_50M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_50M, CLK_DOMAIN minimal_CLK_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input PL_CLK_50M;
  output [0:0]PL_LED_1;
  output tft_cs;
  output tft_dc;
  output tft_led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.TFT_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.TFT_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output tft_rst;
  output tft_sck;
  output tft_sda;

  wire PL_CLK_50M;
  wire [0:0]PL_LED_1;
  wire [23:0]c_counter_binary_0_Q;
  wire [0:0]ilconstant_0_dout;
  wire tft_cs;
  wire tft_dc;
  wire tft_led;
  wire tft_sck;
  wire tft_sda;

  assign tft_rst = tft_led;
  minimal_c_counter_binary_0_1 c_counter_binary_0
       (.CLK(PL_CLK_50M),
        .Q(c_counter_binary_0_Q));
  assign ilconstant_0_dout = 1'h0;
  assign PL_LED_1 = c_counter_binary_0_Q[20:20];
  minimal_tft_ili9341_wrapper_0_0 tft_ili9341_wrapper_0
       (.game_clk(PL_LED_1),
        .tft_clk(PL_CLK_50M),
        .tft_cs(tft_cs),
        .tft_dc(tft_dc),
        .tft_reset(tft_led),
        .tft_sck(tft_sck),
        .tft_sdi(tft_sda),
        .tft_sdo(ilconstant_0_dout));
endmodule
