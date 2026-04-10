//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Thu Apr  9 23:28:11 2026
//Host        : npc running 64-bit Arch Linux
//Command     : generate_target minimal.bd
//Design      : minimal
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "minimal,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=minimal,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_ps7_cnt=1,synth_mode=None}" *) (* HW_HANDOFF = "minimal.hwdef" *) 
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
    m_ilispi_0_cs,
    m_ilispi_0_dc,
    m_ilispi_0_led,
    m_ilispi_0_nrst,
    m_ilispi_0_scl,
    m_ilispi_0_sda,
    m_ilispi_1_cs,
    m_ilispi_1_dc,
    m_ilispi_1_led,
    m_ilispi_1_nrst,
    m_ilispi_1_scl,
    m_ilispi_1_sda);
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
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_0 cs" *) (* X_INTERFACE_MODE = "Master" *) output m_ilispi_0_cs;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_0 dc" *) output m_ilispi_0_dc;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_0 led" *) output m_ilispi_0_led;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_0 nrst" *) output m_ilispi_0_nrst;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_0 scl" *) output m_ilispi_0_scl;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_0 sda" *) output m_ilispi_0_sda;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_1 cs" *) (* X_INTERFACE_MODE = "Master" *) output m_ilispi_1_cs;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_1 dc" *) output m_ilispi_1_dc;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_1 led" *) output m_ilispi_1_led;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_1 nrst" *) output m_ilispi_1_nrst;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_1 scl" *) output m_ilispi_1_scl;
  (* X_INTERFACE_INFO = "kn4hji.ddns.net:interfaces:ilispi:1.0 m_ilispi_1 sda" *) output m_ilispi_1_sda;

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
  wire axi_dma_0_mm2s_introut;
  wire [15:0]axi_dma_1_M_AXIS_MM2S_TDATA;
  wire axi_dma_1_M_AXIS_MM2S_TLAST;
  wire axi_dma_1_M_AXIS_MM2S_TREADY;
  wire axi_dma_1_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_1_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_1_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_1_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARPROT;
  wire axi_dma_1_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARSIZE;
  wire axi_dma_1_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_RDATA;
  wire axi_dma_1_M_AXI_MM2S_RLAST;
  wire axi_dma_1_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_1_M_AXI_MM2S_RRESP;
  wire axi_dma_1_M_AXI_MM2S_RVALID;
  wire axi_dma_1_mm2s_introut;
  wire axi_ethernetlite_0_ip2intc_irpt;
  wire axi_line_fifo_0_fifo_complete;
  wire [31:0]axi_smc1_M00_AXI_ARADDR;
  wire [1:0]axi_smc1_M00_AXI_ARBURST;
  wire [3:0]axi_smc1_M00_AXI_ARCACHE;
  wire [3:0]axi_smc1_M00_AXI_ARLEN;
  wire [1:0]axi_smc1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc1_M00_AXI_ARPROT;
  wire [3:0]axi_smc1_M00_AXI_ARQOS;
  wire axi_smc1_M00_AXI_ARREADY;
  wire [2:0]axi_smc1_M00_AXI_ARSIZE;
  wire axi_smc1_M00_AXI_ARVALID;
  wire [31:0]axi_smc1_M00_AXI_RDATA;
  wire axi_smc1_M00_AXI_RLAST;
  wire axi_smc1_M00_AXI_RREADY;
  wire [1:0]axi_smc1_M00_AXI_RRESP;
  wire axi_smc1_M00_AXI_RVALID;
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
  wire [9:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [9:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire axi_smc_M02_AXI_WVALID;
  wire axi_stream_to_pixels_1_core_clk_out;
  wire [15:0]axi_stream_to_pixels_1_pixel_data;
  wire core_clk;
  wire [15:0]dma_tdata;
  wire dma_tlast;
  wire dma_tready;
  wire dma_tvalid;
  wire [7:0]fifo_in_pos;
  wire [7:0]fifo_level;
  wire [7:0]fifo_out_pos;
  wire [15:0]fifo_tdata;
  wire fifo_tlast;
  wire fifo_tready;
  wire fifo_tvalid;
  wire [2:0]ilconcat_0_dout;
  wire m_ilispi_0_cs;
  wire m_ilispi_0_dc;
  wire m_ilispi_0_led;
  wire m_ilispi_0_nrst;
  wire m_ilispi_0_scl;
  wire m_ilispi_0_sda;
  wire m_ilispi_1_cs;
  wire m_ilispi_1_dc;
  wire m_ilispi_1_led;
  wire m_ilispi_1_nrst;
  wire m_ilispi_1_scl;
  wire m_ilispi_1_sda;
  wire pixel_clock;
  wire [15:0]pixel_data;
  wire pixel_sync;
  wire processing_system7_0_FCLK_CLK0;
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
  wire [0:0]rst_ps7_0_50M_peripheral_aresetn;
  wire tft_ili9341_wrapper_1_pixel_clock;
  wire tft_ili9341_wrapper_1_pixel_sync;

  minimal_axi_dma_0_1 axi_dma_0
       (.axi_resetn(rst_ps7_0_50M_peripheral_aresetn),
        .m_axi_mm2s_aclk(processing_system7_0_FCLK_CLK0),
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
        .m_axis_mm2s_tdata(dma_tdata),
        .m_axis_mm2s_tlast(dma_tlast),
        .m_axis_mm2s_tready(dma_tready),
        .m_axis_mm2s_tvalid(dma_tvalid),
        .mm2s_introut(axi_dma_0_mm2s_introut),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_lite_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_lite_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_smc_M01_AXI_WVALID));
  minimal_axi_dma_0_2 axi_dma_1
       (.axi_resetn(rst_ps7_0_50M_peripheral_aresetn),
        .m_axi_mm2s_aclk(processing_system7_0_FCLK_CLK0),
        .m_axi_mm2s_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_dma_1_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_dma_1_mm2s_introut),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_lite_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_lite_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_lite_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_lite_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_lite_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_lite_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_lite_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_lite_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_lite_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_lite_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_lite_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_lite_wvalid(axi_smc_M02_AXI_WVALID));
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
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_50M_peripheral_aresetn),
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
  minimal_axi_line_fifo_0_0 axi_line_fifo_0
       (.axis_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .axis_clock(processing_system7_0_FCLK_CLK0),
        .en_fifo_restart(axi_line_fifo_0_fifo_complete),
        .fifo_complete(axi_line_fifo_0_fifo_complete),
        .fifo_in_pos(fifo_in_pos),
        .fifo_level(fifo_level),
        .fifo_out_pos(fifo_out_pos),
        .m_axis_tdata(fifo_tdata),
        .m_axis_tlast(fifo_tlast),
        .m_axis_tready(fifo_tready),
        .m_axis_tvalid(fifo_tvalid),
        .s_axis_tdata(dma_tdata),
        .s_axis_tlast(dma_tlast),
        .s_axis_tready(dma_tready),
        .s_axis_tvalid(dma_tvalid));
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
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
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
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_50M_peripheral_aresetn));
  minimal_axi_smc_2 axi_smc1
       (.M00_AXI_araddr(axi_smc1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc1_M00_AXI_ARVALID),
        .M00_AXI_rdata(axi_smc1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc1_M00_AXI_RVALID),
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
        .S01_AXI_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_50M_peripheral_aresetn));
  minimal_axi_stream_to_pixels_0_0 axi_stream_to_pixels_0
       (.core_clk_out(core_clk),
        .pixel_clock(pixel_clock),
        .pixel_data(pixel_data),
        .pixel_sync(pixel_sync),
        .s_axis_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axis_clock(processing_system7_0_FCLK_CLK0),
        .s_axis_tdata(fifo_tdata),
        .s_axis_tlast(fifo_tlast),
        .s_axis_tready(fifo_tready),
        .s_axis_tvalid(fifo_tvalid));
  minimal_axi_stream_to_pixels_0_1 axi_stream_to_pixels_1
       (.core_clk_out(axi_stream_to_pixels_1_core_clk_out),
        .pixel_clock(tft_ili9341_wrapper_1_pixel_clock),
        .pixel_data(axi_stream_to_pixels_1_pixel_data),
        .pixel_sync(tft_ili9341_wrapper_1_pixel_sync),
        .s_axis_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .s_axis_clock(processing_system7_0_FCLK_CLK0),
        .s_axis_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .s_axis_tlast(axi_dma_1_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID));
  minimal_ila_1_0 ila_1
       (.clk(processing_system7_0_FCLK_CLK0),
        .probe0(fifo_tdata),
        .probe1(fifo_tlast),
        .probe10(fifo_level),
        .probe11(axi_line_fifo_0_fifo_complete),
        .probe12(pixel_data),
        .probe13(pixel_clock),
        .probe14(pixel_sync),
        .probe15(tft_ili9341_wrapper_1_pixel_clock),
        .probe16(axi_stream_to_pixels_1_pixel_data),
        .probe17(tft_ili9341_wrapper_1_pixel_sync),
        .probe18(axi_stream_to_pixels_1_core_clk_out),
        .probe2(fifo_tvalid),
        .probe3(fifo_tready),
        .probe4(dma_tdata),
        .probe5(dma_tlast),
        .probe6(dma_tvalid),
        .probe7(dma_tready),
        .probe8(fifo_in_pos),
        .probe9(fifo_out_pos));
  assign ilconcat_0_dout = {axi_dma_1_mm2s_introut, axi_dma_0_mm2s_introut, axi_ethernetlite_0_ip2intc_irpt};
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
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .IRQ_F2P(ilconcat_0_dout),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
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
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR(axi_smc1_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_smc1_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_smc1_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(axi_smc1_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_smc1_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_smc1_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_smc1_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_smc1_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_smc1_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_smc1_M00_AXI_ARVALID),
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
        .S_AXI_HP0_RDATA(axi_smc1_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(axi_smc1_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_smc1_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_smc1_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_smc1_M00_AXI_RVALID),
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
        .peripheral_aresetn(rst_ps7_0_50M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  minimal_tft_ili9341_wrapper_0_0 tft_ili9341_wrapper_0
       (.core_clk(core_clk),
        .pixel_clock(pixel_clock),
        .pixel_data(pixel_data),
        .pixel_sync(pixel_sync),
        .tft_cs(m_ilispi_0_cs),
        .tft_dc(m_ilispi_0_dc),
        .tft_led(m_ilispi_0_led),
        .tft_nrst(m_ilispi_0_nrst),
        .tft_sck(m_ilispi_0_scl),
        .tft_sda(m_ilispi_0_sda));
  minimal_tft_ili9341_wrapper_0_3 tft_ili9341_wrapper_1
       (.core_clk(axi_stream_to_pixels_1_core_clk_out),
        .pixel_clock(tft_ili9341_wrapper_1_pixel_clock),
        .pixel_data(axi_stream_to_pixels_1_pixel_data),
        .pixel_sync(tft_ili9341_wrapper_1_pixel_sync),
        .tft_cs(m_ilispi_1_cs),
        .tft_dc(m_ilispi_1_dc),
        .tft_led(m_ilispi_1_led),
        .tft_nrst(m_ilispi_1_nrst),
        .tft_sck(m_ilispi_1_scl),
        .tft_sda(m_ilispi_1_sda));
endmodule
