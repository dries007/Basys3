// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Sat Jun  4 16:53:15 2016
// Host        : Dries007-Arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/ip/ClockDivider/ClockDivider_stub.v
// Design      : ClockDivider
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ClockDivider(clk, clk_vga, clk_cpu, clk_2cpu)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_vga,clk_cpu,clk_2cpu" */;
  input clk;
  output clk_vga;
  output clk_cpu;
  output clk_2cpu;
endmodule
