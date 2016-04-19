// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Tue Apr 19 12:14:58 2016
// Host        : Dries007Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Github/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/ClockDivider/ClockDivider_stub.v
// Design      : ClockDivider
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ClockDivider(clkIn, clk108M, clk10M, clk20M, clk60M)
/* synthesis syn_black_box black_box_pad_pin="clkIn,clk108M,clk10M,clk20M,clk60M" */;
  input clkIn;
  output clk108M;
  output clk10M;
  output clk20M;
  output clk60M;
endmodule
