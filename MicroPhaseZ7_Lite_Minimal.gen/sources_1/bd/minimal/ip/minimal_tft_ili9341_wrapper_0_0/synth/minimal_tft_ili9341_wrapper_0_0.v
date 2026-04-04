// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:tft_ili9341_wrapper:1.0
// IP Revision: 1

(* X_CORE_INFO = "tft_ili9341_wrapper,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "minimal_tft_ili9341_wrapper_0_0,tft_ili9341_wrapper,{}" *)
(* CORE_GENERATION_INFO = "minimal_tft_ili9341_wrapper_0_0,tft_ili9341_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=tft_ili9341_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module minimal_tft_ili9341_wrapper_0_0 (
  tft_sck,
  tft_sda,
  tft_dc,
  tft_nrst,
  tft_cs,
  pixel_clock,
  pixel_sync,
  pixel_data,
  core_clk
);

output wire tft_sck;
output wire tft_sda;
output wire tft_dc;
output wire tft_nrst;
output wire tft_cs;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clock CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN minimal_tft_ili9341_wrapper_0_0_pixel_clock, INSERT_VIP 0" *)
output wire pixel_clock;
output wire pixel_sync;
input wire [15 : 0] pixel_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
input wire core_clk;

  tft_ili9341_wrapper inst (
    .tft_sck(tft_sck),
    .tft_sda(tft_sda),
    .tft_dc(tft_dc),
    .tft_nrst(tft_nrst),
    .tft_cs(tft_cs),
    .pixel_clock(pixel_clock),
    .pixel_sync(pixel_sync),
    .pixel_data(pixel_data),
    .core_clk(core_clk)
  );
endmodule
