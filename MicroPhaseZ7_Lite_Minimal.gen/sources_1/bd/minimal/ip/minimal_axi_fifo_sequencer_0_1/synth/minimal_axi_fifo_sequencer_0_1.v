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


// IP VLNV: xilinx.com:module_ref:axi_fifo_sequencer:1.0
// IP Revision: 1

(* X_CORE_INFO = "axi_fifo_sequencer,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "minimal_axi_fifo_sequencer_0_1,axi_fifo_sequencer,{}" *)
(* CORE_GENERATION_INFO = "minimal_axi_fifo_sequencer_0_1,axi_fifo_sequencer,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_fifo_sequencer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=16,OUTPUT_CNT=4}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module minimal_axi_fifo_sequencer_0_1 (
  axis_clock,
  axis_aresetn,
  read_enables,
  read_completes,
  m00_axis_tlast,
  m00_axis_tvalid,
  m00_axis_tdata,
  m00_axis_tready,
  m01_axis_tlast,
  m01_axis_tvalid,
  m01_axis_tdata,
  m01_axis_tready,
  m02_axis_tlast,
  m02_axis_tvalid,
  m02_axis_tdata,
  m02_axis_tready,
  m03_axis_tlast,
  m03_axis_tvalid,
  m03_axis_tdata,
  m03_axis_tready,
  m04_axis_tlast,
  m04_axis_tvalid,
  m04_axis_tdata,
  m04_axis_tready,
  m05_axis_tlast,
  m05_axis_tvalid,
  m05_axis_tdata,
  m05_axis_tready,
  m06_axis_tlast,
  m06_axis_tvalid,
  m06_axis_tdata,
  m06_axis_tready,
  m07_axis_tlast,
  m07_axis_tvalid,
  m07_axis_tdata,
  m07_axis_tready,
  m08_axis_tlast,
  m08_axis_tvalid,
  m08_axis_tdata,
  m08_axis_tready,
  m09_axis_tlast,
  m09_axis_tvalid,
  m09_axis_tdata,
  m09_axis_tready,
  m10_axis_tlast,
  m10_axis_tvalid,
  m10_axis_tdata,
  m10_axis_tready,
  m11_axis_tlast,
  m11_axis_tvalid,
  m11_axis_tdata,
  m11_axis_tready,
  m12_axis_tlast,
  m12_axis_tvalid,
  m12_axis_tdata,
  m12_axis_tready,
  m13_axis_tlast,
  m13_axis_tvalid,
  m13_axis_tdata,
  m13_axis_tready,
  m14_axis_tlast,
  m14_axis_tvalid,
  m14_axis_tdata,
  m14_axis_tready,
  m15_axis_tlast,
  m15_axis_tvalid,
  m15_axis_tdata,
  m15_axis_tready,
  s_axis_tlast,
  s_axis_tvalid,
  s_axis_tdata,
  s_axis_tready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clock CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_clock, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S_AXIS, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0, PortWidth 1" *)
input wire axis_clock;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire axis_aresetn;
output wire [3 : 0] read_enables;
input wire [3 : 0] read_completes;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m00_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *)
output wire m00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *)
output wire [15 : 0] m00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *)
input wire m00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M01_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m01_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M01_AXIS TVALID" *)
output wire m01_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M01_AXIS TDATA" *)
output wire [15 : 0] m01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M01_AXIS TREADY" *)
input wire m01_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M02_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m02_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M02_AXIS TVALID" *)
output wire m02_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M02_AXIS TDATA" *)
output wire [15 : 0] m02_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M02_AXIS TREADY" *)
input wire m02_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M03_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m03_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M03_AXIS TVALID" *)
output wire m03_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M03_AXIS TDATA" *)
output wire [15 : 0] m03_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M03_AXIS TREADY" *)
input wire m03_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M04_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M04_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m04_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M04_AXIS TVALID" *)
output wire m04_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M04_AXIS TDATA" *)
output wire [15 : 0] m04_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M04_AXIS TREADY" *)
input wire m04_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M05_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M05_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m05_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M05_AXIS TVALID" *)
output wire m05_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M05_AXIS TDATA" *)
output wire [15 : 0] m05_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M05_AXIS TREADY" *)
input wire m05_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M06_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M06_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m06_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M06_AXIS TVALID" *)
output wire m06_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M06_AXIS TDATA" *)
output wire [15 : 0] m06_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M06_AXIS TREADY" *)
input wire m06_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M07_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M07_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m07_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M07_AXIS TVALID" *)
output wire m07_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M07_AXIS TDATA" *)
output wire [15 : 0] m07_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M07_AXIS TREADY" *)
input wire m07_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M08_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M08_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m08_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M08_AXIS TVALID" *)
output wire m08_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M08_AXIS TDATA" *)
output wire [15 : 0] m08_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M08_AXIS TREADY" *)
input wire m08_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M09_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M09_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m09_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M09_AXIS TVALID" *)
output wire m09_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M09_AXIS TDATA" *)
output wire [15 : 0] m09_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M09_AXIS TREADY" *)
input wire m09_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M10_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M10_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m10_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M10_AXIS TVALID" *)
output wire m10_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M10_AXIS TDATA" *)
output wire [15 : 0] m10_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M10_AXIS TREADY" *)
input wire m10_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M11_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M11_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m11_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M11_AXIS TVALID" *)
output wire m11_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M11_AXIS TDATA" *)
output wire [15 : 0] m11_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M11_AXIS TREADY" *)
input wire m11_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M12_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M12_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m12_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M12_AXIS TVALID" *)
output wire m12_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M12_AXIS TDATA" *)
output wire [15 : 0] m12_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M12_AXIS TREADY" *)
input wire m12_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M13_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M13_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m13_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M13_AXIS TVALID" *)
output wire m13_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M13_AXIS TDATA" *)
output wire [15 : 0] m13_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M13_AXIS TREADY" *)
input wire m13_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M14_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M14_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m14_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M14_AXIS TVALID" *)
output wire m14_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M14_AXIS TDATA" *)
output wire [15 : 0] m14_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M14_AXIS TREADY" *)
input wire m14_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M15_AXIS TLAST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M15_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m15_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M15_AXIS TVALID" *)
output wire m15_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M15_AXIS TDATA" *)
output wire [15 : 0] m15_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M15_AXIS TREADY" *)
input wire m15_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
input wire [15 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
output wire s_axis_tready;

  axi_fifo_sequencer #(
    .DATA_WIDTH(16),
    .OUTPUT_CNT(4)
  ) inst (
    .axis_clock(axis_clock),
    .axis_aresetn(axis_aresetn),
    .read_enables(read_enables),
    .read_completes(read_completes),
    .m00_axis_tlast(m00_axis_tlast),
    .m00_axis_tvalid(m00_axis_tvalid),
    .m00_axis_tdata(m00_axis_tdata),
    .m00_axis_tready(m00_axis_tready),
    .m01_axis_tlast(m01_axis_tlast),
    .m01_axis_tvalid(m01_axis_tvalid),
    .m01_axis_tdata(m01_axis_tdata),
    .m01_axis_tready(m01_axis_tready),
    .m02_axis_tlast(m02_axis_tlast),
    .m02_axis_tvalid(m02_axis_tvalid),
    .m02_axis_tdata(m02_axis_tdata),
    .m02_axis_tready(m02_axis_tready),
    .m03_axis_tlast(m03_axis_tlast),
    .m03_axis_tvalid(m03_axis_tvalid),
    .m03_axis_tdata(m03_axis_tdata),
    .m03_axis_tready(m03_axis_tready),
    .m04_axis_tlast(m04_axis_tlast),
    .m04_axis_tvalid(m04_axis_tvalid),
    .m04_axis_tdata(m04_axis_tdata),
    .m04_axis_tready(m04_axis_tready),
    .m05_axis_tlast(m05_axis_tlast),
    .m05_axis_tvalid(m05_axis_tvalid),
    .m05_axis_tdata(m05_axis_tdata),
    .m05_axis_tready(m05_axis_tready),
    .m06_axis_tlast(m06_axis_tlast),
    .m06_axis_tvalid(m06_axis_tvalid),
    .m06_axis_tdata(m06_axis_tdata),
    .m06_axis_tready(m06_axis_tready),
    .m07_axis_tlast(m07_axis_tlast),
    .m07_axis_tvalid(m07_axis_tvalid),
    .m07_axis_tdata(m07_axis_tdata),
    .m07_axis_tready(m07_axis_tready),
    .m08_axis_tlast(m08_axis_tlast),
    .m08_axis_tvalid(m08_axis_tvalid),
    .m08_axis_tdata(m08_axis_tdata),
    .m08_axis_tready(m08_axis_tready),
    .m09_axis_tlast(m09_axis_tlast),
    .m09_axis_tvalid(m09_axis_tvalid),
    .m09_axis_tdata(m09_axis_tdata),
    .m09_axis_tready(m09_axis_tready),
    .m10_axis_tlast(m10_axis_tlast),
    .m10_axis_tvalid(m10_axis_tvalid),
    .m10_axis_tdata(m10_axis_tdata),
    .m10_axis_tready(m10_axis_tready),
    .m11_axis_tlast(m11_axis_tlast),
    .m11_axis_tvalid(m11_axis_tvalid),
    .m11_axis_tdata(m11_axis_tdata),
    .m11_axis_tready(m11_axis_tready),
    .m12_axis_tlast(m12_axis_tlast),
    .m12_axis_tvalid(m12_axis_tvalid),
    .m12_axis_tdata(m12_axis_tdata),
    .m12_axis_tready(m12_axis_tready),
    .m13_axis_tlast(m13_axis_tlast),
    .m13_axis_tvalid(m13_axis_tvalid),
    .m13_axis_tdata(m13_axis_tdata),
    .m13_axis_tready(m13_axis_tready),
    .m14_axis_tlast(m14_axis_tlast),
    .m14_axis_tvalid(m14_axis_tvalid),
    .m14_axis_tdata(m14_axis_tdata),
    .m14_axis_tready(m14_axis_tready),
    .m15_axis_tlast(m15_axis_tlast),
    .m15_axis_tvalid(m15_axis_tvalid),
    .m15_axis_tdata(m15_axis_tdata),
    .m15_axis_tready(m15_axis_tready),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tready(s_axis_tready)
  );
endmodule
