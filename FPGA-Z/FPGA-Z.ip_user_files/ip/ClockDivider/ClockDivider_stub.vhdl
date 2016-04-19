-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Tue Apr 19 12:14:58 2016
-- Host        : Dries007Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Github/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/ClockDivider/ClockDivider_stub.vhdl
-- Design      : ClockDivider
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClockDivider is
  Port ( 
    clkIn : in STD_LOGIC;
    clk108M : out STD_LOGIC;
    clk10M : out STD_LOGIC;
    clk20M : out STD_LOGIC;
    clk60M : out STD_LOGIC
  );

end ClockDivider;

architecture stub of ClockDivider is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkIn,clk108M,clk10M,clk20M,clk60M";
begin
end;
