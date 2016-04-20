// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Apr 21 00:08:37 2016
// Host        : Dries007-Arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Stack/Stack_stub.v
// Design      : Stack
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_9,Vivado 2015.4" *)
module Stack(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],d[15:0],clk,we,spo[15:0]" */;
  input [9:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;
endmodule
