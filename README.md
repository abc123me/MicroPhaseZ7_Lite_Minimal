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
   - Falling edge interrupt placed on input 61 of the GIC
   - IP Address at 0x40e00000+0x10000
 - PL KEY 2 bound to PL LED 2 to verify PL region is working
