//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sat May  2 00:48:08 2026
//Host        : npc running 64-bit Arch Linux
//Command     : generate_target minimal.bd
//Design      : minimal
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dma_imp_M2LAO
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M_AXIS_MM2S_tdata,
    M_AXIS_MM2S_tlast,
    M_AXIS_MM2S_tready,
    M_AXIS_MM2S_tvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    axi_resetn,
    m_axi_mm2s_aclk,
    mm2s_introut);
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [15:0]M_AXIS_MM2S_tdata;
  output M_AXIS_MM2S_tlast;
  input M_AXIS_MM2S_tready;
  output M_AXIS_MM2S_tvalid;
  input [9:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [9:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input axi_resetn;
  input m_axi_mm2s_aclk;
  output mm2s_introut;

  wire [31:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [3:0]M00_AXI_arlen;
  wire [1:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [15:0]M_AXIS_MM2S_tdata;
  wire M_AXIS_MM2S_tlast;
  wire M_AXIS_MM2S_tready;
  wire M_AXIS_MM2S_tvalid;
  wire [9:0]S_AXI_LITE_araddr;
  wire S_AXI_LITE_arready;
  wire S_AXI_LITE_arvalid;
  wire [9:0]S_AXI_LITE_awaddr;
  wire S_AXI_LITE_awready;
  wire S_AXI_LITE_awvalid;
  wire S_AXI_LITE_bready;
  wire [1:0]S_AXI_LITE_bresp;
  wire S_AXI_LITE_bvalid;
  wire [31:0]S_AXI_LITE_rdata;
  wire S_AXI_LITE_rready;
  wire [1:0]S_AXI_LITE_rresp;
  wire S_AXI_LITE_rvalid;
  wire [31:0]S_AXI_LITE_wdata;
  wire S_AXI_LITE_wready;
  wire S_AXI_LITE_wvalid;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire axi_resetn;
  wire m_axi_mm2s_aclk;
  wire mm2s_introut;

  minimal_axi_dma_0_1 axi_dma_0
       (.axi_resetn(axi_resetn),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_tdata(M_AXIS_MM2S_tdata),
        .m_axis_mm2s_tlast(M_AXIS_MM2S_tlast),
        .m_axis_mm2s_tready(M_AXIS_MM2S_tready),
        .m_axis_mm2s_tvalid(M_AXIS_MM2S_tvalid),
        .mm2s_introut(mm2s_introut),
        .s_axi_lite_aclk(m_axi_mm2s_aclk),
        .s_axi_lite_araddr(S_AXI_LITE_araddr),
        .s_axi_lite_arready(S_AXI_LITE_arready),
        .s_axi_lite_arvalid(S_AXI_LITE_arvalid),
        .s_axi_lite_awaddr(S_AXI_LITE_awaddr),
        .s_axi_lite_awready(S_AXI_LITE_awready),
        .s_axi_lite_awvalid(S_AXI_LITE_awvalid),
        .s_axi_lite_bready(S_AXI_LITE_bready),
        .s_axi_lite_bresp(S_AXI_LITE_bresp),
        .s_axi_lite_bvalid(S_AXI_LITE_bvalid),
        .s_axi_lite_rdata(S_AXI_LITE_rdata),
        .s_axi_lite_rready(S_AXI_LITE_rready),
        .s_axi_lite_rresp(S_AXI_LITE_rresp),
        .s_axi_lite_rvalid(S_AXI_LITE_rvalid),
        .s_axi_lite_wdata(S_AXI_LITE_wdata),
        .s_axi_lite_wready(S_AXI_LITE_wready),
        .s_axi_lite_wvalid(S_AXI_LITE_wvalid));
  minimal_axi_smc_2 axi_smc1
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .aclk(m_axi_mm2s_aclk),
        .aresetn(axi_resetn));
endmodule

(* CORE_GENERATION_INFO = "minimal,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=minimal,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=29,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=3,da_ps7_cnt=1,synth_mode=None}" *) (* HW_HANDOFF = "minimal.hwdef" *) 
module minimal
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    ETH_MDIO_mdc,
    ETH_MDIO_mdio_i,
    ETH_MDIO_mdio_o,
    ETH_MDIO_mdio_t,
    ETH_MII_col,
    ETH_MII_crs,
    ETH_MII_rst_n,
    ETH_MII_rx_clk,
    ETH_MII_rx_dv,
    ETH_MII_rx_er,
    ETH_MII_rxd,
    ETH_MII_tx_clk,
    ETH_MII_tx_en,
    ETH_MII_txd,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    HC595_CLK,
    HC595_LTC,
    HC595_RST,
    HC595_SER,
    m_tftspi_0_cs,
    m_tftspi_0_dc,
    m_tftspi_0_scl,
    m_tftspi_0_sda,
    m_tftspi_1_cs,
    m_tftspi_1_dc,
    m_tftspi_1_scl,
    m_tftspi_1_sda,
    m_tftspi_2_cs,
    m_tftspi_2_dc,
    m_tftspi_2_scl,
    m_tftspi_2_sda,
    m_tftspi_3_cs,
    m_tftspi_3_dc,
    m_tftspi_3_scl,
    m_tftspi_3_sda);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 ETH_MDIO MDC" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ETH_MDIO, CAN_DEBUG false" *) output ETH_MDIO_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 ETH_MDIO MDIO_I" *) input ETH_MDIO_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 ETH_MDIO MDIO_O" *) output ETH_MDIO_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 ETH_MDIO MDIO_T" *) output ETH_MDIO_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII COL" *) (* X_INTERFACE_MODE = "Master" *) input ETH_MII_col;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII CRS" *) input ETH_MII_crs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII RST_N" *) output ETH_MII_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII RX_CLK" *) input ETH_MII_rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII RX_DV" *) input ETH_MII_rx_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII RX_ER" *) input ETH_MII_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII RXD" *) input [3:0]ETH_MII_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII TX_CLK" *) input ETH_MII_tx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII TX_EN" *) output ETH_MII_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 ETH_MII TXD" *) output [3:0]ETH_MII_txd;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HC595_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HC595_CLK, CLK_DOMAIN minimal_gpio74hc595_0_2_driver_clock, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output HC595_CLK;
  output HC595_LTC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HC595_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HC595_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output HC595_RST;
  output HC595_SER;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_0 cs" *) (* X_INTERFACE_MODE = "Master" *) output m_tftspi_0_cs;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_0 dc" *) output m_tftspi_0_dc;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_0 scl" *) output m_tftspi_0_scl;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_0 sda" *) output m_tftspi_0_sda;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_1 cs" *) (* X_INTERFACE_MODE = "Master" *) output m_tftspi_1_cs;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_1 dc" *) output m_tftspi_1_dc;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_1 scl" *) output m_tftspi_1_scl;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_1 sda" *) output m_tftspi_1_sda;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_2 cs" *) (* X_INTERFACE_MODE = "Master" *) output m_tftspi_2_cs;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_2 dc" *) output m_tftspi_2_dc;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_2 scl" *) output m_tftspi_2_scl;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_2 sda" *) output m_tftspi_2_sda;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_3 cs" *) (* X_INTERFACE_MODE = "Master" *) output m_tftspi_3_cs;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_3 dc" *) output m_tftspi_3_dc;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_3 scl" *) output m_tftspi_3_scl;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interface:tftspi:1.0 m_tftspi_3 sda" *) output m_tftspi_3_sda;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire ETH_MDIO_mdc;
  wire ETH_MDIO_mdio_i;
  wire ETH_MDIO_mdio_o;
  wire ETH_MDIO_mdio_t;
  wire ETH_MII_col;
  wire ETH_MII_crs;
  wire ETH_MII_rst_n;
  wire ETH_MII_rx_clk;
  wire ETH_MII_rx_dv;
  wire ETH_MII_rx_er;
  wire [3:0]ETH_MII_rxd;
  wire ETH_MII_tx_clk;
  wire ETH_MII_tx_en;
  wire [3:0]ETH_MII_txd;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire HC595_CLK;
  wire HC595_LTC;
  wire HC595_RST;
  wire HC595_SER;
  wire [3:0]Net;
  wire [15:0]axi_fifo_sequencer_0_M00_AXIS_TDATA;
  wire axi_fifo_sequencer_0_M00_AXIS_TLAST;
  wire axi_fifo_sequencer_0_M00_AXIS_TREADY;
  wire axi_fifo_sequencer_0_M00_AXIS_TVALID;
  wire [15:0]axi_fifo_sequencer_0_M01_AXIS_TDATA;
  wire axi_fifo_sequencer_0_M01_AXIS_TLAST;
  wire axi_fifo_sequencer_0_M01_AXIS_TREADY;
  wire axi_fifo_sequencer_0_M01_AXIS_TVALID;
  wire [15:0]axi_fifo_sequencer_0_M02_AXIS_TDATA;
  wire axi_fifo_sequencer_0_M02_AXIS_TLAST;
  wire axi_fifo_sequencer_0_M02_AXIS_TREADY;
  wire axi_fifo_sequencer_0_M02_AXIS_TVALID;
  wire [15:0]axi_fifo_sequencer_0_M03_AXIS_TDATA;
  wire axi_fifo_sequencer_0_M03_AXIS_TLAST;
  wire axi_fifo_sequencer_0_M03_AXIS_TREADY;
  wire axi_fifo_sequencer_0_M03_AXIS_TVALID;
  wire axi_pixel_fifo_0_m_pixel_stream_core_clock;
  wire axi_pixel_fifo_0_m_pixel_stream_core_clock_en;
  wire [15:0]axi_pixel_fifo_0_m_pixel_stream_pixel_data;
  wire axi_pixel_fifo_0_m_pixel_stream_pixel_ready;
  wire axi_pixel_fifo_0_m_pixel_stream_pixel_sync;
  wire axi_pixel_fifo_0_read_complete;
  wire axi_pixel_fifo_1_m_pixel_stream_core_clock;
  wire axi_pixel_fifo_1_m_pixel_stream_core_clock_en;
  wire [15:0]axi_pixel_fifo_1_m_pixel_stream_pixel_data;
  wire axi_pixel_fifo_1_m_pixel_stream_pixel_ready;
  wire axi_pixel_fifo_1_m_pixel_stream_pixel_sync;
  wire axi_pixel_fifo_1_read_complete;
  wire axi_pixel_fifo_2_m_pixel_stream_core_clock;
  wire axi_pixel_fifo_2_m_pixel_stream_core_clock_en;
  wire [15:0]axi_pixel_fifo_2_m_pixel_stream_pixel_data;
  wire axi_pixel_fifo_2_m_pixel_stream_pixel_ready;
  wire axi_pixel_fifo_2_m_pixel_stream_pixel_sync;
  wire axi_pixel_fifo_2_read_complete;
  wire axi_pixel_fifo_3_m_pixel_stream_core_clock;
  wire axi_pixel_fifo_3_m_pixel_stream_core_clock_en;
  wire [15:0]axi_pixel_fifo_3_m_pixel_stream_pixel_data;
  wire axi_pixel_fifo_3_m_pixel_stream_pixel_ready;
  wire axi_pixel_fifo_3_m_pixel_stream_pixel_sync;
  wire axi_pixel_fifo_3_read_complete;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [3:0]ilconcat_0_dout;
  wire [23:0]ilconcat_1_dout;
  wire [3:0]ilconcat_2_dout;
  wire [3:0]ilconcat_4_dout;
  wire [15:0]ilconstant_1_dout;
  wire [0:0]ilslice_0_Dout;
  wire [0:0]ilslice_1_Dout;
  wire [0:0]ilslice_2_Dout;
  wire [0:0]ilslice_3_Dout;
  wire m_tftspi_0_cs;
  wire m_tftspi_0_dc;
  wire m_tftspi_0_scl;
  wire m_tftspi_0_sda;
  wire m_tftspi_1_cs;
  wire m_tftspi_1_dc;
  wire m_tftspi_1_scl;
  wire m_tftspi_1_sda;
  wire m_tftspi_2_cs;
  wire m_tftspi_2_dc;
  wire m_tftspi_2_scl;
  wire m_tftspi_2_sda;
  wire m_tftspi_3_cs;
  wire m_tftspi_3_dc;
  wire m_tftspi_3_scl;
  wire m_tftspi_3_sda;
  wire ps_FCLK_CLK0;
  wire [15:0]ps_M_AXIS_MM2S_TDATA;
  wire ps_M_AXIS_MM2S_TLAST;
  wire ps_M_AXIS_MM2S_TREADY;
  wire ps_M_AXIS_MM2S_TVALID;
  wire [0:0]ps_peripheral_aresetn;
  wire tft_ili9341_wrapper_0_tft_led;
  wire tft_ili9341_wrapper_0_tft_nrst;
  wire tft_ili9341_wrapper_1_tft_led;
  wire tft_ili9341_wrapper_1_tft_nrst;
  wire tft_ili9341_wrapper_2_tft_led;
  wire tft_ili9341_wrapper_2_tft_nrst;
  wire tft_ili9341_wrapper_3_tft_led;
  wire tft_ili9341_wrapper_3_tft_nrst;

  minimal_axi_fifo_sequencer_0_1 axi_fifo_sequencer_0
       (.axis_aresetn(ps_peripheral_aresetn),
        .axis_clock(ps_FCLK_CLK0),
        .m00_axis_tdata(axi_fifo_sequencer_0_M00_AXIS_TDATA),
        .m00_axis_tlast(axi_fifo_sequencer_0_M00_AXIS_TLAST),
        .m00_axis_tready(axi_fifo_sequencer_0_M00_AXIS_TREADY),
        .m00_axis_tvalid(axi_fifo_sequencer_0_M00_AXIS_TVALID),
        .m01_axis_tdata(axi_fifo_sequencer_0_M01_AXIS_TDATA),
        .m01_axis_tlast(axi_fifo_sequencer_0_M01_AXIS_TLAST),
        .m01_axis_tready(axi_fifo_sequencer_0_M01_AXIS_TREADY),
        .m01_axis_tvalid(axi_fifo_sequencer_0_M01_AXIS_TVALID),
        .m02_axis_tdata(axi_fifo_sequencer_0_M02_AXIS_TDATA),
        .m02_axis_tlast(axi_fifo_sequencer_0_M02_AXIS_TLAST),
        .m02_axis_tready(axi_fifo_sequencer_0_M02_AXIS_TREADY),
        .m02_axis_tvalid(axi_fifo_sequencer_0_M02_AXIS_TVALID),
        .m03_axis_tdata(axi_fifo_sequencer_0_M03_AXIS_TDATA),
        .m03_axis_tlast(axi_fifo_sequencer_0_M03_AXIS_TLAST),
        .m03_axis_tready(axi_fifo_sequencer_0_M03_AXIS_TREADY),
        .m03_axis_tvalid(axi_fifo_sequencer_0_M03_AXIS_TVALID),
        .m04_axis_tready(1'b1),
        .m05_axis_tready(1'b1),
        .m06_axis_tready(1'b1),
        .m07_axis_tready(1'b1),
        .m08_axis_tready(1'b1),
        .m09_axis_tready(1'b1),
        .m10_axis_tready(1'b1),
        .m11_axis_tready(1'b1),
        .m12_axis_tready(1'b1),
        .m13_axis_tready(1'b1),
        .m14_axis_tready(1'b1),
        .m15_axis_tready(1'b1),
        .read_completes(ilconcat_2_dout),
        .read_enables(Net),
        .s_axis_tdata(ps_M_AXIS_MM2S_TDATA),
        .s_axis_tlast(ps_M_AXIS_MM2S_TLAST),
        .s_axis_tready(ps_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(ps_M_AXIS_MM2S_TVALID));
  minimal_axi_pixel_fifo_0_0 axi_pixel_fifo_0
       (.core_clock(axi_pixel_fifo_0_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_0_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_0_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_0_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_0_m_pixel_stream_pixel_sync),
        .read_complete(axi_pixel_fifo_0_read_complete),
        .read_enable(ilslice_0_Dout),
        .s_axis_aresetn(ps_peripheral_aresetn),
        .s_axis_clock(ps_FCLK_CLK0),
        .s_axis_tdata(axi_fifo_sequencer_0_M00_AXIS_TDATA),
        .s_axis_tlast(axi_fifo_sequencer_0_M00_AXIS_TLAST),
        .s_axis_tready(axi_fifo_sequencer_0_M00_AXIS_TREADY),
        .s_axis_tvalid(axi_fifo_sequencer_0_M00_AXIS_TVALID));
  minimal_axi_pixel_fifo_0_1 axi_pixel_fifo_1
       (.core_clock(axi_pixel_fifo_1_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_1_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_1_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_1_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_1_m_pixel_stream_pixel_sync),
        .read_complete(axi_pixel_fifo_1_read_complete),
        .read_enable(ilslice_1_Dout),
        .s_axis_aresetn(ps_peripheral_aresetn),
        .s_axis_clock(ps_FCLK_CLK0),
        .s_axis_tdata(axi_fifo_sequencer_0_M01_AXIS_TDATA),
        .s_axis_tlast(axi_fifo_sequencer_0_M01_AXIS_TLAST),
        .s_axis_tready(axi_fifo_sequencer_0_M01_AXIS_TREADY),
        .s_axis_tvalid(axi_fifo_sequencer_0_M01_AXIS_TVALID));
  minimal_axi_pixel_fifo_1_0 axi_pixel_fifo_2
       (.core_clock(axi_pixel_fifo_2_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_2_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_2_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_2_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_2_m_pixel_stream_pixel_sync),
        .read_complete(axi_pixel_fifo_2_read_complete),
        .read_enable(ilslice_2_Dout),
        .s_axis_aresetn(ps_peripheral_aresetn),
        .s_axis_clock(ps_FCLK_CLK0),
        .s_axis_tdata(axi_fifo_sequencer_0_M02_AXIS_TDATA),
        .s_axis_tlast(axi_fifo_sequencer_0_M02_AXIS_TLAST),
        .s_axis_tready(axi_fifo_sequencer_0_M02_AXIS_TREADY),
        .s_axis_tvalid(axi_fifo_sequencer_0_M02_AXIS_TVALID));
  minimal_axi_pixel_fifo_2_0 axi_pixel_fifo_3
       (.core_clock(axi_pixel_fifo_3_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_3_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_3_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_3_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_3_m_pixel_stream_pixel_sync),
        .read_complete(axi_pixel_fifo_3_read_complete),
        .read_enable(ilslice_3_Dout),
        .s_axis_aresetn(ps_peripheral_aresetn),
        .s_axis_clock(ps_FCLK_CLK0),
        .s_axis_tdata(axi_fifo_sequencer_0_M03_AXIS_TDATA),
        .s_axis_tlast(axi_fifo_sequencer_0_M03_AXIS_TLAST),
        .s_axis_tready(axi_fifo_sequencer_0_M03_AXIS_TREADY),
        .s_axis_tvalid(axi_fifo_sequencer_0_M03_AXIS_TVALID));
  minimal_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(ps_FCLK_CLK0),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .resetn(ps_peripheral_aresetn));
  minimal_gpio74hc595_0_2 gpio74hc595_0
       (.clock(clk_wiz_0_clk_out1),
        .driver_clock(HC595_CLK),
        .driver_data(HC595_SER),
        .driver_latch(HC595_LTC),
        .driver_resetn(HC595_RST),
        .gpios(ilconcat_1_dout),
        .resetn(clk_wiz_0_locked));
  assign ilconcat_0_dout = {tft_ili9341_wrapper_3_tft_led, tft_ili9341_wrapper_2_tft_led, tft_ili9341_wrapper_1_tft_led, tft_ili9341_wrapper_0_tft_led};
  assign ilconcat_1_dout = {ilconcat_4_dout, ilconcat_0_dout, ilconstant_1_dout};
  assign ilconcat_2_dout = {axi_pixel_fifo_3_read_complete, axi_pixel_fifo_2_read_complete, axi_pixel_fifo_1_read_complete, axi_pixel_fifo_0_read_complete};
  assign ilconcat_4_dout = {tft_ili9341_wrapper_3_tft_nrst, tft_ili9341_wrapper_2_tft_nrst, tft_ili9341_wrapper_1_tft_nrst, tft_ili9341_wrapper_0_tft_nrst};
  assign ilconstant_1_dout = 16'h0000;
  assign ilslice_0_Dout = Net[0:0];
  assign ilslice_1_Dout = Net[1:1];
  assign ilslice_2_Dout = Net[2:2];
  assign ilslice_3_Dout = Net[3:3];
  ps_imp_N0VO8P ps
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .ETH_MDIO_mdc(ETH_MDIO_mdc),
        .ETH_MDIO_mdio_i(ETH_MDIO_mdio_i),
        .ETH_MDIO_mdio_o(ETH_MDIO_mdio_o),
        .ETH_MDIO_mdio_t(ETH_MDIO_mdio_t),
        .ETH_MII_col(ETH_MII_col),
        .ETH_MII_crs(ETH_MII_crs),
        .ETH_MII_rst_n(ETH_MII_rst_n),
        .ETH_MII_rx_clk(ETH_MII_rx_clk),
        .ETH_MII_rx_dv(ETH_MII_rx_dv),
        .ETH_MII_rx_er(ETH_MII_rx_er),
        .ETH_MII_rxd(ETH_MII_rxd),
        .ETH_MII_tx_clk(ETH_MII_tx_clk),
        .ETH_MII_tx_en(ETH_MII_tx_en),
        .ETH_MII_txd(ETH_MII_txd),
        .FCLK_CLK0(ps_FCLK_CLK0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .M_AXIS_MM2S_tdata(ps_M_AXIS_MM2S_TDATA),
        .M_AXIS_MM2S_tlast(ps_M_AXIS_MM2S_TLAST),
        .M_AXIS_MM2S_tready(ps_M_AXIS_MM2S_TREADY),
        .M_AXIS_MM2S_tvalid(ps_M_AXIS_MM2S_TVALID),
        .peripheral_aresetn(ps_peripheral_aresetn));
  minimal_tft_ili9341_wrapper_0_0 tft_ili9341_wrapper_0
       (.core_clock(axi_pixel_fifo_0_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_0_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_0_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_0_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_0_m_pixel_stream_pixel_sync),
        .tft_cs(m_tftspi_0_cs),
        .tft_dc(m_tftspi_0_dc),
        .tft_led(tft_ili9341_wrapper_0_tft_led),
        .tft_nrst(tft_ili9341_wrapper_0_tft_nrst),
        .tft_sck(m_tftspi_0_scl),
        .tft_sda(m_tftspi_0_sda));
  minimal_tft_ili9341_wrapper_0_1 tft_ili9341_wrapper_1
       (.core_clock(axi_pixel_fifo_1_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_1_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_1_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_1_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_1_m_pixel_stream_pixel_sync),
        .tft_cs(m_tftspi_1_cs),
        .tft_dc(m_tftspi_1_dc),
        .tft_led(tft_ili9341_wrapper_1_tft_led),
        .tft_nrst(tft_ili9341_wrapper_1_tft_nrst),
        .tft_sck(m_tftspi_1_scl),
        .tft_sda(m_tftspi_1_sda));
  minimal_tft_ili9341_wrapper_1_0 tft_ili9341_wrapper_2
       (.core_clock(axi_pixel_fifo_2_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_2_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_2_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_2_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_2_m_pixel_stream_pixel_sync),
        .tft_cs(m_tftspi_2_cs),
        .tft_dc(m_tftspi_2_dc),
        .tft_led(tft_ili9341_wrapper_2_tft_led),
        .tft_nrst(tft_ili9341_wrapper_2_tft_nrst),
        .tft_sck(m_tftspi_2_scl),
        .tft_sda(m_tftspi_2_sda));
  minimal_tft_ili9341_wrapper_2_0 tft_ili9341_wrapper_3
       (.core_clock(axi_pixel_fifo_3_m_pixel_stream_core_clock),
        .core_clock_en(axi_pixel_fifo_3_m_pixel_stream_core_clock_en),
        .pixel_data(axi_pixel_fifo_3_m_pixel_stream_pixel_data),
        .pixel_ready(axi_pixel_fifo_3_m_pixel_stream_pixel_ready),
        .pixel_sync(axi_pixel_fifo_3_m_pixel_stream_pixel_sync),
        .tft_cs(m_tftspi_3_cs),
        .tft_dc(m_tftspi_3_dc),
        .tft_led(tft_ili9341_wrapper_3_tft_led),
        .tft_nrst(tft_ili9341_wrapper_3_tft_nrst),
        .tft_sck(m_tftspi_3_scl),
        .tft_sda(m_tftspi_3_sda));
endmodule

module ps_imp_N0VO8P
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    ETH_MDIO_mdc,
    ETH_MDIO_mdio_i,
    ETH_MDIO_mdio_o,
    ETH_MDIO_mdio_t,
    ETH_MII_col,
    ETH_MII_crs,
    ETH_MII_rst_n,
    ETH_MII_rx_clk,
    ETH_MII_rx_dv,
    ETH_MII_rx_er,
    ETH_MII_rxd,
    ETH_MII_tx_clk,
    ETH_MII_tx_en,
    ETH_MII_txd,
    FCLK_CLK0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    M_AXIS_MM2S_tdata,
    M_AXIS_MM2S_tlast,
    M_AXIS_MM2S_tready,
    M_AXIS_MM2S_tvalid,
    peripheral_aresetn);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output ETH_MDIO_mdc;
  input ETH_MDIO_mdio_i;
  output ETH_MDIO_mdio_o;
  output ETH_MDIO_mdio_t;
  input ETH_MII_col;
  input ETH_MII_crs;
  output ETH_MII_rst_n;
  input ETH_MII_rx_clk;
  input ETH_MII_rx_dv;
  input ETH_MII_rx_er;
  input [3:0]ETH_MII_rxd;
  input ETH_MII_tx_clk;
  output ETH_MII_tx_en;
  output [3:0]ETH_MII_txd;
  output FCLK_CLK0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [15:0]M_AXIS_MM2S_tdata;
  output M_AXIS_MM2S_tlast;
  input M_AXIS_MM2S_tready;
  output M_AXIS_MM2S_tvalid;
  output [0:0]peripheral_aresetn;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire ETH_MDIO_mdc;
  wire ETH_MDIO_mdio_i;
  wire ETH_MDIO_mdio_o;
  wire ETH_MDIO_mdio_t;
  wire ETH_MII_col;
  wire ETH_MII_crs;
  wire ETH_MII_rst_n;
  wire ETH_MII_rx_clk;
  wire ETH_MII_rx_dv;
  wire ETH_MII_rx_er;
  wire [3:0]ETH_MII_rxd;
  wire ETH_MII_tx_clk;
  wire ETH_MII_tx_en;
  wire [3:0]ETH_MII_txd;
  wire FCLK_CLK0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [15:0]M_AXIS_MM2S_tdata;
  wire M_AXIS_MM2S_tlast;
  wire M_AXIS_MM2S_tready;
  wire M_AXIS_MM2S_tvalid;
  wire axi_ethernetlite_0_ip2intc_irpt;
  wire [12:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [12:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [9:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [9:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire axi_smc_M01_AXI_WVALID;
  wire [31:0]dma_M00_AXI_ARADDR;
  wire [1:0]dma_M00_AXI_ARBURST;
  wire [3:0]dma_M00_AXI_ARCACHE;
  wire [3:0]dma_M00_AXI_ARLEN;
  wire [1:0]dma_M00_AXI_ARLOCK;
  wire [2:0]dma_M00_AXI_ARPROT;
  wire [3:0]dma_M00_AXI_ARQOS;
  wire dma_M00_AXI_ARREADY;
  wire [2:0]dma_M00_AXI_ARSIZE;
  wire dma_M00_AXI_ARVALID;
  wire [31:0]dma_M00_AXI_RDATA;
  wire dma_M00_AXI_RLAST;
  wire dma_M00_AXI_RREADY;
  wire [1:0]dma_M00_AXI_RRESP;
  wire dma_M00_AXI_RVALID;
  wire dma_mm2s_introut;
  wire [1:0]ilconcat_0_dout;
  wire [0:0]peripheral_aresetn;
  wire processing_system7_0_FCLK_RESET0_N;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;

  minimal_axi_ethernetlite_0_0 axi_ethernetlite_0
       (.ip2intc_irpt(axi_ethernetlite_0_ip2intc_irpt),
        .phy_col(ETH_MII_col),
        .phy_crs(ETH_MII_crs),
        .phy_dv(ETH_MII_rx_dv),
        .phy_mdc(ETH_MDIO_mdc),
        .phy_mdio_i(ETH_MDIO_mdio_i),
        .phy_mdio_o(ETH_MDIO_mdio_o),
        .phy_mdio_t(ETH_MDIO_mdio_t),
        .phy_rst_n(ETH_MII_rst_n),
        .phy_rx_clk(ETH_MII_rx_clk),
        .phy_rx_data(ETH_MII_rxd),
        .phy_rx_er(ETH_MII_rx_er),
        .phy_tx_clk(ETH_MII_tx_clk),
        .phy_tx_data(ETH_MII_txd),
        .phy_tx_en(ETH_MII_tx_en),
        .s_axi_aclk(FCLK_CLK0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_aresetn(peripheral_aresetn),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  minimal_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(FCLK_CLK0),
        .aresetn(peripheral_aresetn));
  dma_imp_M2LAO dma
       (.M00_AXI_araddr(dma_M00_AXI_ARADDR),
        .M00_AXI_arburst(dma_M00_AXI_ARBURST),
        .M00_AXI_arcache(dma_M00_AXI_ARCACHE),
        .M00_AXI_arlen(dma_M00_AXI_ARLEN),
        .M00_AXI_arlock(dma_M00_AXI_ARLOCK),
        .M00_AXI_arprot(dma_M00_AXI_ARPROT),
        .M00_AXI_arqos(dma_M00_AXI_ARQOS),
        .M00_AXI_arready(dma_M00_AXI_ARREADY),
        .M00_AXI_arsize(dma_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(dma_M00_AXI_ARVALID),
        .M00_AXI_rdata(dma_M00_AXI_RDATA),
        .M00_AXI_rlast(dma_M00_AXI_RLAST),
        .M00_AXI_rready(dma_M00_AXI_RREADY),
        .M00_AXI_rresp(dma_M00_AXI_RRESP),
        .M00_AXI_rvalid(dma_M00_AXI_RVALID),
        .M_AXIS_MM2S_tdata(M_AXIS_MM2S_tdata),
        .M_AXIS_MM2S_tlast(M_AXIS_MM2S_tlast),
        .M_AXIS_MM2S_tready(M_AXIS_MM2S_tready),
        .M_AXIS_MM2S_tvalid(M_AXIS_MM2S_tvalid),
        .S_AXI_LITE_araddr(axi_smc_M01_AXI_ARADDR),
        .S_AXI_LITE_arready(axi_smc_M01_AXI_ARREADY),
        .S_AXI_LITE_arvalid(axi_smc_M01_AXI_ARVALID),
        .S_AXI_LITE_awaddr(axi_smc_M01_AXI_AWADDR),
        .S_AXI_LITE_awready(axi_smc_M01_AXI_AWREADY),
        .S_AXI_LITE_awvalid(axi_smc_M01_AXI_AWVALID),
        .S_AXI_LITE_bready(axi_smc_M01_AXI_BREADY),
        .S_AXI_LITE_bresp(axi_smc_M01_AXI_BRESP),
        .S_AXI_LITE_bvalid(axi_smc_M01_AXI_BVALID),
        .S_AXI_LITE_rdata(axi_smc_M01_AXI_RDATA),
        .S_AXI_LITE_rready(axi_smc_M01_AXI_RREADY),
        .S_AXI_LITE_rresp(axi_smc_M01_AXI_RRESP),
        .S_AXI_LITE_rvalid(axi_smc_M01_AXI_RVALID),
        .S_AXI_LITE_wdata(axi_smc_M01_AXI_WDATA),
        .S_AXI_LITE_wready(axi_smc_M01_AXI_WREADY),
        .S_AXI_LITE_wvalid(axi_smc_M01_AXI_WVALID),
        .axi_resetn(peripheral_aresetn),
        .m_axi_mm2s_aclk(FCLK_CLK0),
        .mm2s_introut(dma_mm2s_introut));
  assign ilconcat_0_dout = {dma_mm2s_introut, axi_ethernetlite_0_ip2intc_irpt};
  minimal_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .IRQ_F2P(ilconcat_0_dout),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(FCLK_CLK0),
        .S_AXI_HP0_ARADDR(dma_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(dma_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(dma_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(dma_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(dma_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(dma_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(dma_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(dma_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(dma_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(dma_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWBURST({1'b0,1'b1}),
        .S_AXI_HP0_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP0_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWSIZE({1'b0,1'b1,1'b0}),
        .S_AXI_HP0_AWVALID(1'b0),
        .S_AXI_HP0_BREADY(1'b0),
        .S_AXI_HP0_RDATA(dma_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(dma_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(dma_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(dma_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(dma_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(1'b0),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .S_AXI_HP0_WVALID(1'b0));
  minimal_rst_ps7_0_50M_0 rst_ps7_0_50M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(peripheral_aresetn),
        .slowest_sync_clk(FCLK_CLK0));
endmodule
