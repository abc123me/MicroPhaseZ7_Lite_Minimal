//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sat Apr  4 07:22:07 2026
//Host        : npc running 64-bit Arch Linux
//Command     : generate_target minimal_wrapper.bd
//Design      : minimal_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module minimal_wrapper
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
    ETH_MDIO_mdio_io,
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
    m_ilispi_0_sda);
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
  inout ETH_MDIO_mdio_io;
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
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output m_ilispi_0_cs;
  output m_ilispi_0_dc;
  output m_ilispi_0_led;
  output m_ilispi_0_nrst;
  output m_ilispi_0_scl;
  output m_ilispi_0_sda;

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
  wire ETH_MDIO_mdio_io;
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
  wire m_ilispi_0_cs;
  wire m_ilispi_0_dc;
  wire m_ilispi_0_led;
  wire m_ilispi_0_nrst;
  wire m_ilispi_0_scl;
  wire m_ilispi_0_sda;

  IOBUF ETH_MDIO_mdio_iobuf
       (.I(ETH_MDIO_mdio_o),
        .IO(ETH_MDIO_mdio_io),
        .O(ETH_MDIO_mdio_i),
        .T(ETH_MDIO_mdio_t));
  minimal minimal_i
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
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .m_ilispi_0_cs(m_ilispi_0_cs),
        .m_ilispi_0_dc(m_ilispi_0_dc),
        .m_ilispi_0_led(m_ilispi_0_led),
        .m_ilispi_0_nrst(m_ilispi_0_nrst),
        .m_ilispi_0_scl(m_ilispi_0_scl),
        .m_ilispi_0_sda(m_ilispi_0_sda));
endmodule
