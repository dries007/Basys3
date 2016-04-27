// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Wed Apr 27 15:27:09 2016
// Host        : Dries007Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Github/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/FrameBuffer/FrameBuffer_stub.v
// Design      : FrameBuffer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_1,Vivado 2015.4" *)
module FrameBuffer(clka, ena, wea, addra, dina, douta, clkb, web, addrb, dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[13:0],dina[7:0],douta[7:0],clkb,web[0:0],addrb[13:0],dinb[7:0],doutb[7:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [13:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input [0:0]web;
  input [13:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
endmodule
