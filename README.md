# Microphase Z7 lite minimal FPGA

## Why does this exist?

There is no recent FPGA build I could find for the Z7 lite

I want to use this board for a project so I made an FPGA to familiarize myself with it

## What is it?

This is an unlicensed, free, public domain example design with the following IP:

 - Xilinx Zynq-7000 PS with the following PS devices enabled
   - QSPI0 (works / only tested reads)
   - SD0 (works / use it for booting)
   - LPDDR3 (works / done somewhat involved memory tests in u-boot to verify stability)
   - AXI bus clocked at 250MHz, DDR at 534MHz, PS at 667MHz
 - Xilinx AXI EthernetLite
   - 10/100Mbps ethernet subsytem
   - Utilizes MII to the RTL8201F
   - Interrupt on GIC 61
   - Memory address at 0x40e00000+0x10000
 - AXI GPIO with three PL outputs
   - Intended for the Backlight, DC, and Reset lines of an ILI9341 display
   - Memory address at 0x41200000+0x10000
 - AXI Quad SPI running at ~62MHz
   - Intended for a ILI9341 display hence the high speed
   - Interrupt on GIC input 62
   - Memory address at 0x41e00000+0x10000
 - PL LED 1 bound to AXI clock binary counter output to blink an LED
 - PL LED 2 bound to PL KEY 2 to verify PL region is working

### Device tree

```dts
#include <dt-bindings/gpio/gpio.h>

/dts-v1/;
/plugin/;

/ {
	fragment@0 {
		target = <&fpga_full>;
		__overlay__ {
			status = "okay";
			firmware-name = "fpga.bin";
		};
	};

	fragment@1 {
		target = <&amba>;
		__overlay__ {
			eth0: ethernet@40e00000 {
				compatible = "xlnx,axi-ethernetlite-3.0", "xlnx,xps-ethernetlite-1.00.a";
				reg = <0x40e00000 0x10000>;
				status = "okay";
				device_type = "network";
				local-mac-address = [00 0a 35 00 00 00];
				phy-handle = <&phy0>;
			 	xlnx,rx-ping-pong = <0x1>;
				xlnx,tx-ping-pong = <0x1>;
				interrupt-parent = <&intc>;
		        interrupts = <0 29 1>;
				mdio {
					#address-cells = <1>;
					#size-cells = <0>;
					phy0: phy@7 {
						compatible = "ethernet-phy-ieee802.3-c22";
						device_type = "ethernet-phy";
						reg = <1>;
					};
				};
			};
		};
	};

	fragment@2 {
		target = <&amba>;
		__overlay__ {
			axi_gpio0: gpio@41200000 {
				compatible = "xlnx,xps-gpio-1.00.a";
				reg = <0x41200000 0x10000>;
				status = "okay";
				gpio-controller;
				#gpio-cells = <2>;
			};
		};
	};

	fragment@3 {
		target = <&amba>;
		__overlay__ {
			backlight0: gpio-backlight@0 {
				status = "okay";
				compatible = "gpio-backlight";
				gpios = <&axi_gpio0 0 GPIO_ACTIVE_HIGH>;
			};
		};
	};

	fragment@4 {
		target = <&amba>;
		__overlay__ {
			axi_spi0: spi@41e00000 {
				compatible = "xlnx,axi-quad-spi-3.2", "xlnx,xps-spi-2.00.a";
				reg = <0x41e00000 0x10000>;
				status = "okay";
				interrupt-parent = <&intc>;
				interrupts = <0 30 1>;
				bits-per-word = <8>;
				fifo-size = <16>;
				num-cs = <1>;

				fbtft0: display@0 {
					status = "okay";
					compatible = "ilitech,ili9341";
					reg = <0>;
					dc-gpios = <&axi_gpio0 1 GPIO_ACTIVE_HIGH>;
					reset-gpios = <&axi_gpio0 2 GPIO_ACTIVE_LOW>;
					spi-max-frequency = <50000000>;
					fps = <60>;
					rotate = <270>;
					backlight = <&backlight0>;
					buswidth = <1>;
				};
			};
		};
	};
};
```
