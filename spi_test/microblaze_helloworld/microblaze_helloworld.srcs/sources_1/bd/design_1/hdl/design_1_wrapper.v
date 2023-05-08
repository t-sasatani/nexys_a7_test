//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon May  8 05:20:51 2023
//Host        : DESKTOP-1P4LGSG running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 us / 1 us

module design_1_wrapper
   (reset,
    rgb_led_tri_o,
    sys_clock,
    usb_uart_ctsn,
    usb_uart_rtsn,
    usb_uart_rxd,
    usb_uart_txd);
  input reset;
  output [5:0]rgb_led_tri_o;
  input sys_clock;
  input usb_uart_ctsn;
  output usb_uart_rtsn;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire reset;
  wire [5:0]rgb_led_tri_o;
  wire sys_clock;
  wire usb_uart_ctsn;
  wire usb_uart_rtsn;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.reset(reset),
        .rgb_led_tri_o(rgb_led_tri_o),
        .sys_clock(sys_clock),
        .usb_uart_ctsn(usb_uart_ctsn),
        .usb_uart_rtsn(usb_uart_rtsn),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
