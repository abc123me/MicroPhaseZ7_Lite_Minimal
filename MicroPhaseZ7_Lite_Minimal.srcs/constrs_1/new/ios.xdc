# Generic IO
###################################################################
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports PL_CLK_50M]
# set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports PL_KEY_1]
# set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports PL_KEY_2]
# set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports PL_LED_1]
# set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports PL_LED_2]

# Vivado told me to do it, otherwise fails to implement
###################################################################
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets minimal_i/ps/axi_ethernetlite_0/U0/o]

# Ethernet
###################################################################
set_logic_zero [get_ports ETH_MII_col]
set_logic_zero [get_ports ETH_MII_crs]
set_logic_zero [get_ports ETH_MII_rx_er]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_rxd[3]}]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_rxd[2]}]
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_rxd[1]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_rxd[0]}]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports ETH_MII_rx_clk]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports ETH_MII_rx_dv]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_txd[3]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_txd[2]}]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_txd[1]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {ETH_MII_txd[0]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports ETH_MII_tx_clk]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports ETH_MII_tx_en]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports ETH_MII_rst_n]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports ETH_MDIO_mdio_io]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports ETH_MDIO_mdc]
set_property -dict {PULLDOWN true} [get_ports ETH_MII_rst_n]

# 74HC595 Shift register as GPIO expander
###################################################################
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports HC595_SER]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports HC595_CLK]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports HC595_LTC]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports HC595_RST]

# ILI9341 display 0
###################################################################
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports m_tftspi_0_scl]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports m_tftspi_0_sda]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports m_tftspi_0_dc]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports m_tftspi_0_cs]

# ILI9341 display 1
###################################################################
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports m_tftspi_1_scl]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports m_tftspi_1_sda]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports m_tftspi_1_dc]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports m_tftspi_1_cs]

# ILI9341 display 2
###################################################################
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports m_tftspi_2_scl]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports m_tftspi_2_sda]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports m_tftspi_2_dc]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports m_tftspi_2_cs]

# ILI9341 display 3
###################################################################
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports m_tftspi_3_scl]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports m_tftspi_3_sda]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports m_tftspi_3_dc]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports m_tftspi_3_cs]

#revert back to original instance
current_instance -quiet
