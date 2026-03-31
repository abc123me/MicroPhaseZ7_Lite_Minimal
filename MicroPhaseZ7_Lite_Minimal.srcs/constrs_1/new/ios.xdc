set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports PL_LED_1]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports PL_CLK_50M]

set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports tft_sck]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports tft_rst]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports tft_led]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports tft_sda]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports tft_cs]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports tft_dc]

#revert back to original instance
current_instance -quiet
