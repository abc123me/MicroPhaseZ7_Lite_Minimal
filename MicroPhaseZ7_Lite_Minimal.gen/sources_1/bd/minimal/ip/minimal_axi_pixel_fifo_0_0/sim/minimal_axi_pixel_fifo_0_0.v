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


// IP VLNV: xilinx.com:module_ref:axi_pixel_fifo:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module minimal_axi_pixel_fifo_0_0 (
  s_axis_tlast,
  s_axis_tvalid,
  s_axis_tdata,
  s_axis_tready,
  pixel_clock,
  pixel_sync,
  pixel_data,
  core_clock_out,
  s_axis_clock,
  s_axis_aresetn,
  fifo_write_complete,
  fifo_read_complete,
  fifo_read_enable,
  state,
  fifo_rxbuf_full,
  fifo_txbuf_full,
  core_clock_enable,
  fifo_in_pos,
  fifo_out_pos
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *)
input wire [15 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *)
output wire s_axis_tready;
(* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_clock" *)
(* X_INTERFACE_MODE = "master" *)
input wire pixel_clock;
(* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_sync" *)
input wire pixel_sync;
(* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream pixel_data" *)
output wire [15 : 0] pixel_data;
(* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:pixel_stream:1.0 m_pixel_stream core_clock" *)
output wire core_clock_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_clock CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_clock, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN minimal_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0, PortWidth 1" *)
input wire s_axis_clock;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire s_axis_aresetn;
output wire fifo_write_complete;
output wire fifo_read_complete;
input wire fifo_read_enable;
output wire [2 : 0] state;
output wire fifo_rxbuf_full;
output wire fifo_txbuf_full;
output wire core_clock_enable;
output wire [7 : 0] fifo_in_pos;
output wire [7 : 0] fifo_out_pos;

  axi_pixel_fifo #(
    .DATA_WIDTH(16),
    .FIFO_SIZE(240)
  ) inst (
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tready(s_axis_tready),
    .pixel_clock(pixel_clock),
    .pixel_sync(pixel_sync),
    .pixel_data(pixel_data),
    .core_clock_out(core_clock_out),
    .s_axis_clock(s_axis_clock),
    .s_axis_aresetn(s_axis_aresetn),
    .fifo_write_complete(fifo_write_complete),
    .fifo_read_complete(fifo_read_complete),
    .fifo_read_enable(fifo_read_enable),
    .state(state),
    .fifo_rxbuf_full(fifo_rxbuf_full),
    .fifo_txbuf_full(fifo_txbuf_full),
    .core_clock_enable(core_clock_enable),
    .fifo_in_pos(fifo_in_pos),
    .fifo_out_pos(fifo_out_pos)
  );
endmodule
