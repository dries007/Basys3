-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
-- Date        : Mon Apr 18 02:06:14 2016
-- Host        : Dries007-Arch running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/dries/Projects/Basys3/FPGA-Z/FPGA-Z.srcs/sources_1/ip/Mem/Mem_sim_netlist.vhdl
-- Design      : Mem
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mem_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end Mem_blk_mem_gen_mux;

architecture STRUCTURE of Mem_blk_mem_gen_mux is
  signal \douta[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 4 downto 1 );
begin
\douta[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[0]_INST_0_i_1_n_0\,
      I1 => \douta[0]_INST_0_i_2_n_0\,
      O => douta(0),
      S => sel_pipe(4)
    );
\douta[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_3_n_0\,
      I1 => \douta[0]_INST_0_i_4_n_0\,
      O => \douta[0]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_5_n_0\,
      I1 => \douta[0]_INST_0_i_6_n_0\,
      O => \douta[0]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      O => \douta[0]_INST_0_i_3_n_0\
    );
\douta[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(0),
      O => \douta[0]_INST_0_i_4_n_0\
    );
\douta[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(0),
      O => \douta[0]_INST_0_i_5_n_0\
    );
\douta[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(0),
      O => \douta[0]_INST_0_i_6_n_0\
    );
\douta[10]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[10]_INST_0_i_1_n_0\,
      I1 => \douta[10]_INST_0_i_2_n_0\,
      O => douta(10),
      S => sel_pipe(4)
    );
\douta[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[10]_INST_0_i_3_n_0\,
      I1 => \douta[10]_INST_0_i_4_n_0\,
      O => \douta[10]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[10]_INST_0_i_5_n_0\,
      I1 => \douta[10]_INST_0_i_6_n_0\,
      O => \douta[10]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(2),
      O => \douta[10]_INST_0_i_3_n_0\
    );
\douta[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(2),
      O => \douta[10]_INST_0_i_4_n_0\
    );
\douta[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(2),
      O => \douta[10]_INST_0_i_5_n_0\
    );
\douta[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(2),
      O => \douta[10]_INST_0_i_6_n_0\
    );
\douta[11]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[11]_INST_0_i_1_n_0\,
      I1 => \douta[11]_INST_0_i_2_n_0\,
      O => douta(11),
      S => sel_pipe(4)
    );
\douta[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[11]_INST_0_i_3_n_0\,
      I1 => \douta[11]_INST_0_i_4_n_0\,
      O => \douta[11]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[11]_INST_0_i_5_n_0\,
      I1 => \douta[11]_INST_0_i_6_n_0\,
      O => \douta[11]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(3),
      O => \douta[11]_INST_0_i_3_n_0\
    );
\douta[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(3),
      O => \douta[11]_INST_0_i_4_n_0\
    );
\douta[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(3),
      O => \douta[11]_INST_0_i_5_n_0\
    );
\douta[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(3),
      O => \douta[11]_INST_0_i_6_n_0\
    );
\douta[12]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[12]_INST_0_i_1_n_0\,
      I1 => \douta[12]_INST_0_i_2_n_0\,
      O => douta(12),
      S => sel_pipe(4)
    );
\douta[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[12]_INST_0_i_3_n_0\,
      I1 => \douta[12]_INST_0_i_4_n_0\,
      O => \douta[12]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[12]_INST_0_i_5_n_0\,
      I1 => \douta[12]_INST_0_i_6_n_0\,
      O => \douta[12]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(4),
      O => \douta[12]_INST_0_i_3_n_0\
    );
\douta[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(4),
      O => \douta[12]_INST_0_i_4_n_0\
    );
\douta[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(4),
      O => \douta[12]_INST_0_i_5_n_0\
    );
\douta[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(4),
      O => \douta[12]_INST_0_i_6_n_0\
    );
\douta[13]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[13]_INST_0_i_1_n_0\,
      I1 => \douta[13]_INST_0_i_2_n_0\,
      O => douta(13),
      S => sel_pipe(4)
    );
\douta[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[13]_INST_0_i_3_n_0\,
      I1 => \douta[13]_INST_0_i_4_n_0\,
      O => \douta[13]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[13]_INST_0_i_5_n_0\,
      I1 => \douta[13]_INST_0_i_6_n_0\,
      O => \douta[13]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(5),
      O => \douta[13]_INST_0_i_3_n_0\
    );
\douta[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(5),
      O => \douta[13]_INST_0_i_4_n_0\
    );
\douta[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(5),
      O => \douta[13]_INST_0_i_5_n_0\
    );
\douta[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(5),
      O => \douta[13]_INST_0_i_6_n_0\
    );
\douta[14]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[14]_INST_0_i_1_n_0\,
      I1 => \douta[14]_INST_0_i_2_n_0\,
      O => douta(14),
      S => sel_pipe(4)
    );
\douta[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[14]_INST_0_i_3_n_0\,
      I1 => \douta[14]_INST_0_i_4_n_0\,
      O => \douta[14]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[14]_INST_0_i_5_n_0\,
      I1 => \douta[14]_INST_0_i_6_n_0\,
      O => \douta[14]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(6),
      O => \douta[14]_INST_0_i_3_n_0\
    );
\douta[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(6),
      O => \douta[14]_INST_0_i_4_n_0\
    );
\douta[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(6),
      O => \douta[14]_INST_0_i_5_n_0\
    );
\douta[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(6),
      O => \douta[14]_INST_0_i_6_n_0\
    );
\douta[15]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[15]_INST_0_i_1_n_0\,
      I1 => \douta[15]_INST_0_i_2_n_0\,
      O => douta(15),
      S => sel_pipe(4)
    );
\douta[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[15]_INST_0_i_3_n_0\,
      I1 => \douta[15]_INST_0_i_4_n_0\,
      O => \douta[15]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[15]_INST_0_i_5_n_0\,
      I1 => \douta[15]_INST_0_i_6_n_0\,
      O => \douta[15]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(7),
      O => \douta[15]_INST_0_i_3_n_0\
    );
\douta[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(7),
      O => \douta[15]_INST_0_i_4_n_0\
    );
\douta[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(7),
      O => \douta[15]_INST_0_i_5_n_0\
    );
\douta[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(7),
      O => \douta[15]_INST_0_i_6_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[1]_INST_0_i_1_n_0\,
      I1 => \douta[1]_INST_0_i_2_n_0\,
      O => douta(1),
      S => sel_pipe(4)
    );
\douta[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_3_n_0\,
      I1 => \douta[1]_INST_0_i_4_n_0\,
      O => \douta[1]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_5_n_0\,
      I1 => \douta[1]_INST_0_i_6_n_0\,
      O => \douta[1]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(1),
      O => \douta[1]_INST_0_i_3_n_0\
    );
\douta[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(1),
      O => \douta[1]_INST_0_i_4_n_0\
    );
\douta[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(1),
      O => \douta[1]_INST_0_i_5_n_0\
    );
\douta[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(1),
      O => \douta[1]_INST_0_i_6_n_0\
    );
\douta[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[2]_INST_0_i_1_n_0\,
      I1 => \douta[2]_INST_0_i_2_n_0\,
      O => douta(2),
      S => sel_pipe(4)
    );
\douta[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_3_n_0\,
      I1 => \douta[2]_INST_0_i_4_n_0\,
      O => \douta[2]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_5_n_0\,
      I1 => \douta[2]_INST_0_i_6_n_0\,
      O => \douta[2]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(2),
      O => \douta[2]_INST_0_i_3_n_0\
    );
\douta[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(2),
      O => \douta[2]_INST_0_i_4_n_0\
    );
\douta[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(2),
      O => \douta[2]_INST_0_i_5_n_0\
    );
\douta[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(2),
      O => \douta[2]_INST_0_i_6_n_0\
    );
\douta[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[3]_INST_0_i_1_n_0\,
      I1 => \douta[3]_INST_0_i_2_n_0\,
      O => douta(3),
      S => sel_pipe(4)
    );
\douta[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_3_n_0\,
      I1 => \douta[3]_INST_0_i_4_n_0\,
      O => \douta[3]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_5_n_0\,
      I1 => \douta[3]_INST_0_i_6_n_0\,
      O => \douta[3]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3),
      O => \douta[3]_INST_0_i_3_n_0\
    );
\douta[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(3),
      O => \douta[3]_INST_0_i_4_n_0\
    );
\douta[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(3),
      O => \douta[3]_INST_0_i_5_n_0\
    );
\douta[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(3),
      O => \douta[3]_INST_0_i_6_n_0\
    );
\douta[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[4]_INST_0_i_1_n_0\,
      I1 => \douta[4]_INST_0_i_2_n_0\,
      O => douta(4),
      S => sel_pipe(4)
    );
\douta[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_3_n_0\,
      I1 => \douta[4]_INST_0_i_4_n_0\,
      O => \douta[4]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_5_n_0\,
      I1 => \douta[4]_INST_0_i_6_n_0\,
      O => \douta[4]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(4),
      O => \douta[4]_INST_0_i_3_n_0\
    );
\douta[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(4),
      O => \douta[4]_INST_0_i_4_n_0\
    );
\douta[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(4),
      O => \douta[4]_INST_0_i_5_n_0\
    );
\douta[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(4),
      O => \douta[4]_INST_0_i_6_n_0\
    );
\douta[5]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[5]_INST_0_i_1_n_0\,
      I1 => \douta[5]_INST_0_i_2_n_0\,
      O => douta(5),
      S => sel_pipe(4)
    );
\douta[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_3_n_0\,
      I1 => \douta[5]_INST_0_i_4_n_0\,
      O => \douta[5]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_5_n_0\,
      I1 => \douta[5]_INST_0_i_6_n_0\,
      O => \douta[5]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(5),
      O => \douta[5]_INST_0_i_3_n_0\
    );
\douta[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(5),
      O => \douta[5]_INST_0_i_4_n_0\
    );
\douta[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(5),
      O => \douta[5]_INST_0_i_5_n_0\
    );
\douta[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(5),
      O => \douta[5]_INST_0_i_6_n_0\
    );
\douta[6]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[6]_INST_0_i_1_n_0\,
      I1 => \douta[6]_INST_0_i_2_n_0\,
      O => douta(6),
      S => sel_pipe(4)
    );
\douta[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_3_n_0\,
      I1 => \douta[6]_INST_0_i_4_n_0\,
      O => \douta[6]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_5_n_0\,
      I1 => \douta[6]_INST_0_i_6_n_0\,
      O => \douta[6]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(6),
      O => \douta[6]_INST_0_i_3_n_0\
    );
\douta[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(6),
      O => \douta[6]_INST_0_i_4_n_0\
    );
\douta[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(6),
      O => \douta[6]_INST_0_i_5_n_0\
    );
\douta[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(6),
      O => \douta[6]_INST_0_i_6_n_0\
    );
\douta[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => \douta[7]_INST_0_i_2_n_0\,
      O => douta(7),
      S => sel_pipe(4)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_3_n_0\,
      I1 => \douta[7]_INST_0_i_4_n_0\,
      O => \douta[7]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_5_n_0\,
      I1 => \douta[7]_INST_0_i_6_n_0\,
      O => \douta[7]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOADO(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(7),
      O => \douta[7]_INST_0_i_3_n_0\
    );
\douta[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(7),
      O => \douta[7]_INST_0_i_4_n_0\
    );
\douta[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(7),
      O => \douta[7]_INST_0_i_5_n_0\
    );
\douta[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(7),
      O => \douta[7]_INST_0_i_6_n_0\
    );
\douta[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[8]_INST_0_i_1_n_0\,
      I1 => \douta[8]_INST_0_i_2_n_0\,
      O => douta(8),
      S => sel_pipe(4)
    );
\douta[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[8]_INST_0_i_3_n_0\,
      I1 => \douta[8]_INST_0_i_4_n_0\,
      O => \douta[8]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[8]_INST_0_i_5_n_0\,
      I1 => \douta[8]_INST_0_i_6_n_0\,
      O => \douta[8]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(0),
      O => \douta[8]_INST_0_i_3_n_0\
    );
\douta[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(0),
      O => \douta[8]_INST_0_i_4_n_0\
    );
\douta[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(0),
      O => \douta[8]_INST_0_i_5_n_0\
    );
\douta[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(0),
      O => \douta[8]_INST_0_i_6_n_0\
    );
\douta[9]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \douta[9]_INST_0_i_1_n_0\,
      I1 => \douta[9]_INST_0_i_2_n_0\,
      O => douta(9),
      S => sel_pipe(4)
    );
\douta[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[9]_INST_0_i_3_n_0\,
      I1 => \douta[9]_INST_0_i_4_n_0\,
      O => \douta[9]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\douta[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[9]_INST_0_i_5_n_0\,
      I1 => \douta[9]_INST_0_i_6_n_0\,
      O => \douta[9]_INST_0_i_2_n_0\,
      S => sel_pipe(3)
    );
\douta[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(1),
      O => \douta[9]_INST_0_i_3_n_0\
    );
\douta[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(1),
      O => \douta[9]_INST_0_i_4_n_0\
    );
\douta[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(1),
      O => \douta[9]_INST_0_i_5_n_0\
    );
\douta[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(1),
      O => \douta[9]_INST_0_i_6_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(0),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(1),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(2),
      Q => sel_pipe(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(3),
      Q => sel_pipe(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem_blk_mem_gen_prim_wrapper_init is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mem_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end Mem_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of Mem_blk_mem_gen_prim_wrapper_init is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000000000000000000000000000000029C6F0363734005371B02105375800",
      INIT_01 => X"AE05DB05A6A5EA05D9408060A519D3A5EA2DA59AA56900059A6005D4052DA5AA",
      INIT_02 => X"A599D3A59CD705D34600341E0594E0D9A5576005D7B5054CB740D705F4002DA0",
      INIT_03 => X"40AAE0D4209AA55940A5199305C937004AA09AA5D960AEA5D80595C805792046",
      INIT_04 => X"D9C005D39405D39920F4A599A09705D80558A59760A50AE826A518D905AEA5D3",
      INIT_05 => X"D3E60594A594A5A6A594C020F445F40557C0C7F4A51993058E77052AD3493405",
      INIT_06 => X"05CCD8A5EA4BA51874205B056AA5D805F1185500CCD805D1E02DA559A569F405",
      INIT_07 => X"2C2A29272624222040B8D420658A0025F4E0DB00AE6020C52A5397533ED93A74",
      INIT_08 => X"716F6D6B69676462605D5A575452504E4D4A474543413F3D3B3937363534312E",
      INIT_09 => X"B8B6B5B3B1AFACA9A6A3A19F9E9B98969492908E8C8B878482807E7C7A787774",
      INIT_0A => X"0000000000000000F5F2EFEDEBEAE9E4E0DDDAD7D5D3D1CDCAC8C6C4C1BEBCBA",
      INIT_0B => X"CB00F700000B0208020000000000000000000000000000000005000000000000",
      INIT_0C => X"000C0A00023500F700000C0800000D00F700000B060200EE000000010B050002",
      INIT_0D => X"00AB005200020C1000008F00F700000C5C00007100F700100C0000005700F700",
      INIT_0E => X"00020D18000022005200020D7C0000F7005200020C9D0000D1005200020C1200",
      INIT_0F => X"0040E7005208020D7E0040B0005208020D88004083005208020D1A00404F0052",
      INIT_10 => X"5200020E26000082005208080E2400404F005200080E2200400C005200020D82",
      INIT_11 => X"2E00004C005200020F2C000022005200020FBB0000E9005200020E280000B800",
      INIT_12 => X"005200060FB90000D4005200020FAC00009B005200080F98000074005200020F",
      INIT_13 => X"103C00008000520006103A000054005200061038000034005200061036000014",
      INIT_14 => X"0A0052000610A70000EA0052000610400000C600520006103E0000A000520006",
      INIT_15 => X"02110D8002740052000211660000480052000611460000280052000611440000",
      INIT_16 => X"407200520802125000402B00520802124E0040EA00520802114C0040AB005208",
      INIT_17 => X"080213000080225300500013000000DB0057400012000000B2B400000012B200",
      INIT_18 => X"0000E75F52000213758002BE00F90000136308009D00D7000013002090715952",
      INIT_19 => X"520002140000008E65520008147B000057006340001400004026615200021400",
      INIT_1A => X"00000071009CC0001529000048686910001585000010006A480014002000D6D9",
      INIT_1B => X"007E400116710006FF736B100115000406E0009D000015A4000AA500C1400015",
      INIT_1C => X"169F0800B200A74000160008008C79520002160020006577520002168380022A",
      INIT_1D => X"6DA2520008170000443B00A7400017740002207F52000216000000D97D520002",
      INIT_1E => X"0218000000E18952080217000042BD0085000017AF00009800F9000017840002",
      INIT_1F => X"06C4008F4000185800408C0000400018002000578D52080218000040248B5200",
      INIT_20 => X"0802190000066C9752000219002000389552080219004100FA0000400018AE00",
      INIT_21 => X"000211009D10001AE40000E26C00400019670000B29B520802190000068F9952",
      INIT_22 => X"A740001AA600009700C140001A00000069A38250001A00200038A1B410001AC3",
      INIT_23 => X"00080075AD5200021B0000003A00DE40001B0004040E00A700001A420000E100",
      INIT_24 => X"B55208021CB10002F7B35208021B000002D400F900001B600000B100F901011B",
      INIT_25 => X"1C2A0000A800B900001C3400008100D700001CC000025600F900001CA000021E",
      INIT_26 => X"7B6DC110001DC900404700C100001D0000040ABF5200021C000000D300BB4000",
      INIT_27 => X"001ECB0040F500C710001D9A0000CC00C700001DC60002A400C700001DC40002",
      INIT_28 => X"00A9D1AF50001E0000007BCF5200021EEA800053E0CB10001E4A004020A9C910",
      INIT_29 => X"00001FD400004600D700001F93003227D55208021F002001F2000040001E0004",
      INIT_2A => X"0204F3DF5200021F870000C7DD5208021F0000049400D940001F0002146F00D7",
      INIT_2B => X"5208022000000475E55200022000001C48E352000220BD000014E1CC500020AA",
      INIT_2C => X"00000447EDCC500021EE00022100F9000021000202DEE952080220000000ABE7",
      INIT_2D => X"00F9000021F40002CC00F9000021F28002A700EF0000214D00407F00F9020021",
      INIT_2E => X"CD295C546300F9000022F500002D00F70000220000BC1600F7000022F60000F2",
      INIT_2F => X"9A010027005932E522008485E331474C3E46DE0104314EA54E970382B4C2DCB2",
      INIT_30 => X"3F494269F402868770289132DF304147003D453B45E5462026045C313E494545",
      INIT_31 => X"4B43A5488792D305D131B035346300423C980E2A037D313B414897CE02AB3141",
      INIT_32 => X"110099151011454E201404CDF02B161E1F80391300435752025C31E957004342",
      INIT_33 => X"99042A2605E22B1B1E1FCD121A110099111312454E201404E22B181C1ECD121A",
      INIT_34 => X"13007C417C4649DC2B161C8C782A130075232B1617E65C25120005991576CE92",
      INIT_35 => X"5D9A2B271A4A433C1D1EB9484F110098170F170AE653404E056D2B1E1F8C4369",
      INIT_36 => X"2B1D1ED33A120012005D45971A88453987C206058325971B19A52C911EF40584",
      INIT_37 => X"1EE5DBE4038325961D78EA0D0284EECB3196009E77001C1E05D1E486D70584B2",
      INIT_38 => X"7C95270DEA00CB882A8D0783EECD2B73C7A47F99102F45003B1300EE262B1395",
      INIT_39 => X"EE342B95221A3795273EAA5D0B00EE722B13169521E5DBE40383EE982B73C7A4",
      INIT_3A => X"62175F12007C3E492592123617181B1C9B1100EEFC2B1316958C273EAA5D0B00",
      INIT_3B => X"05668A2632D7A5D406A02A05B0B42B928A214506A02604DD2B1B1C1FB1631265",
      INIT_3C => X"A6802E8E064F2B1E1F991B003A3B13000592052D161D1E1F991B002B70631100",
      INIT_3D => X"31161D1FED110092960F4506A6201405322B1C1FA86054705E1200922E984506",
      INIT_3E => X"0446190539126405913164E4379164A546190349EC2B161C1D1FED11000591A5",
      INIT_3F => X"1906520E194AE40560252831D77BA07FE5625C6E6112007C4BEE862B9132A5CA",
      INIT_40 => X"161C1D1EFD120090353F3F34454602CD2B191C1DFD120091B9B9C14506A640D3",
      INIT_41 => X"00055600918F3A65802E9704CD2BD35617181E1FFD12009038A553202A04CD2B",
      INIT_42 => X"A553202A04CD2BD3561A1C1D1E1FFD1200903A363C454602CD2B16181A1BFD12",
      INIT_43 => X"202A04CD2B16171D1EFD12009000573534403E454602CD2B191B1DFD1200903E",
      INIT_44 => X"4644454602CD2B171D1FFD120090444246454602E02B1CA41119110090A7A553",
      INIT_45 => X"BE3D1FDC4611007C3E092B90944845A644204605CD2B1C1D1E1FFD1200900057",
      INIT_46 => X"74318E4C4F194D6CD71103DC99C76B314A4A4A4AF8260249B7192D520000C147",
      INIT_47 => X"E2371A8F4E333E1FE45D1100F3F14F2B7958514E4D8FA5D904587405F2F4658F",
      INIT_48 => X"79E2371C8E4B8FA5587403F2F4658E74318E4A4BEF0A3FE45D1100F3F1FB2B79",
      INIT_49 => X"A73FEB11006B1300F3CA3100EB95181A1C00EB9D1E1FE13624351000F3F1CA2B",
      INIT_4A => X"725101411E001500FA458EB44FA73C1D1E1FEB11005F1200FA458EB44F4CB44F",
      INIT_4B => X"00062D8D8A8B9F314C3DC56608971011539108012C8D8A8B707862AC72DF1A40",
      INIT_4C => X"2C8DE2620672A9296B4D177101411E0000012DE9624772A868001B002F6B1D00",
      INIT_4D => X"31168F4537C05504062A00052D8DA68EB8314C40850A2AFA53255C07062A8D02",
      INIT_4E => X"7100001C0EE3B2CD72001046A56A15F49305142A8D8E1132AB60241D00F4F10D",
      INIT_4F => X"CEB49DE40590005294A52E1903903079AC6C4D65F2AD22001079544D72AD2265",
      INIT_50 => X"53C105702B1A1EED11336D3211008CC52E9250464745D1D300E5930097E408C3",
      INIT_51 => X"60FF2393B2A867000094EF314245A5C62A129AD8065A288CDF3043404D05D3E6",
      INIT_52 => X"4C433E4C058A4F00FA0539126405617F36171C1D1FDC6E6112008C072A8C052F",
      INIT_53 => X"98F2D228695C66008F82311C8F46FC9D7E8C466604008C052C00FF2E00B7E131",
      INIT_54 => X"A4311693DC630D3403062C00C92E0097305862D32AB2A166008ADC2E969F1204",
      INIT_55 => X"3047414425C77A03912B191C1D1E1F806A12000099308529329A2B55007C3F49",
      INIT_56 => X"A32E009FA0D3313C42464B259402CB2889022FB7504546A5125368040628009D",
      INIT_57 => X"020A2F1053F632E6456300726632E5630089A1A3706DEAB39DB2D20125720000",
      INIT_58 => X"7428F2DC612971012F6B1D00F93C313C85870205278A9A9CD4314745484B65AE",
      INIT_59 => X"B2C422003A07009914A553202A04F2DD4332DC250225720000052D00A6FB6255",
      INIT_5A => X"A9FD32AB0A456200001C0ED0B2ED6100EE6B2B1B1CB428004D130000F4D75A77",
      INIT_5B => X"22715D5560007C467C4149032B711613A5038603AAC71C0E52F2AA5D2B610000",
      INIT_5C => X"C05804E33149A5D3029B2B189B004D130000052D00AB6213E127F2E42A5C2463",
      INIT_5D => X"1B3316952078E5DBE403762E00F9C6313E4248A59502822E00BBFA314444456E",
      INIT_5E => X"94058F8F645A96A3761D8C491100742C32F04C5C001074B132AA5D00EEE72B76",
      INIT_5F => X"DF2B001C1B009E7B001C9CD3970153050C28DF94BC72F95600104848852EE653",
      INIT_60 => X"D740D3260449B331171D1E8C691200000A2D880F2F104C4247A5912A990483EE",
      INIT_61 => X"314D47473C0519B101D105832594D7D7A5D8042604F52B000A2D00F9304C473C",
      INIT_62 => X"983163561C1D1E8F6CD71103142FAE5074765AE1B29B005D23570088142FE474",
      INIT_63 => X"28390700106D5A72EFE8F2E0252828550088192F565A74A5B2E01B2A285500F3",
      INIT_64 => X"1FDF461100880A2F106FDCB372AB4D295C540000B030731D4CA6B2990353662B",
      INIT_65 => X"02B4311D1E1F8C5C5E120088062C009E2E00FB07314C3D3B46852ECE033A2B1D",
      INIT_66 => X"1C1E1F9F464811005845A864B2DE4900582B2E2CA503F44E04F63140454897D7",
      INIT_67 => X"00642A00B3B4707517E172E41E39480087BB2B00B2A13145454590A7D9032F2B",
      INIT_68 => X"729E1907005F68B982B2C04500004431443F4745A5D3C803CF311F8C4D211200",
      INIT_69 => X"006A2E00E85D313DC5FA4903772887022F10453D443BA52A46030A2A106E203F",
      INIT_6A => X"195C654500874D2E00E93231444444A557D300E6050A2C00F96222729A490600",
      INIT_6B => X"022E2E00B8BA704444652A26834957063E2B000A2D00B63084628C08B2E05105",
      INIT_6C => X"39283C0087BC30589B2027B2AD42674C0058EF01FDB2D2456200904041444546",
      INIT_6D => X"97048E57EA06082B000A2DC8625772D23828370087052C000A2FBF62E672A85D",
      INIT_6E => X"30314242A5D3E603C1304C4C3B47A552E00651BCD307194A64EEFD319164BBA5",
      INIT_6F => X"F7876A1905C73051072B72DE1C4D6300104FCB32A222000593DCDC657AB94C04",
      INIT_70 => X"009C7500B25051504E4E3E1FE13605631300C813313FA5944034045B2B4FB485",
      INIT_71 => X"CB3052C4545B9DF2D2546600104FC032D33A245D1E00C957313FA59402FA254A",
      INIT_72 => X"0027CD306284B603B2E046230005641CA5771A9133A563023A314041413FD201",
      INIT_73 => X"B91A056D220000042D86142FCF504C414C79C91926FE0549632B171C8C644410",
      INIT_74 => X"052C000A2FD2B3314C493E3DA5C8A603494C2B00E43116806A2813008570E272",
      INIT_75 => X"BEF4047CEE7CF5E405510052B79F7D1E8C306D1200F9FD313D4859D702052A86",
      INIT_76 => X"E61F721E00105E669E72CC67005D00105E669E72D26B281E0027D422313D4506",
      INIT_77 => X"0D9159A0F4075D2B1C1D804D2A3A1200105E669E72CC6700467900105E669E72",
      INIT_78 => X"A676171D00EB9EAA651200007432C56400058FCBC8D902D757314C423E3EA519",
      INIT_79 => X"EA2E04DBDC87314A483E45BA02322A104BA5F119AAD90549EB0A2D4F00004F9A",
      INIT_7A => X"2D00C2304C3D3E656B089104322FDD5AF972DC4803411E0099193199E414A503",
      INIT_7B => X"5172DE4F02411E0086062C008A2E00DEE07073622F36B2A857610000F52B000A",
      INIT_7C => X"329A1A00933831942EDCD7D102E928850A2FF991313D46473DA594002604E25F",
      INIT_7D => X"00E67731463CA59102EE8331161C1D1E1FC81100E5505E6D329E1F2A32000083",
      INIT_7E => X"E905313C3107D807B44906192F1053F3FA72A800511E0000E82B10537E32C666",
      INIT_7F => X"7117E2A503E603E9304E6A32C41D631E00059369AF69D4AF69A5B12A03CF2BE8",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(14),
      I2 => addra(12),
      I3 => addra(15),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"3F454941A553020F2A86032FD9507AF70872C060721E0071EA304E1839729C00",
      INIT_01 => X"CEA503793704322A8539313C3F3D59D80259F26498D0361D1F8019130085EC30",
      INIT_02 => X"000593E8E8A546042A2105AE2B104E32DCA5B2C11C00853DB42B73ACA2741C99",
      INIT_03 => X"7C41917F3193E62E19A17CA511004D661100000A2D85EF62D016B2C443446322",
      INIT_04 => X"C032D33A4C214100F3A2313EA56AAE03F0304D72D1940CF2E331001D4F007C41",
      INIT_05 => X"02042F4CADCF0973F2DC1B05674F5B0000EB2EC59E313E3D2A99002604F4304D",
      INIT_06 => X"6600F795314845A56CF7269A05F3258F2A371C1D8F4DA5587403AB31484DE5D9",
      INIT_07 => X"4B6A7F72DD306200FB504B3232E1366571004CE5617080F2AB2E00F92E6972A8",
      INIT_08 => X"0029314B46A54A2A590400FF6C6572C4704D4D5E6300104B65329A284D320010",
      INIT_09 => X"2B2C2D2E2E0000001B313C3C258602002200524F640500E32900382B9A002F4E",
      INIT_0A => X"002929000029000000009D9E2900290029292900FF2A002A2A2A2A2A2A2A2A2A",
      INIT_0B => X"0000002929000000000000000000292929292929000029000000000000000000",
      INIT_0C => X"0000002727270000000000000000000000272728282800000000000000000000",
      INIT_0D => X"2300002300000000000000000000000000000000000000000025260000000000",
      INIT_0E => X"000000000000000000002E39383A270001000000000000000000000000232323",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000780000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000064",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"9A9A9A00009A9A9A000000000000000000000000000000000000000000000000",
      INIT_25 => X"9B9B9B00009B9B9B9B00009B9B9B9B00009B00009B9B9B00009B9B9B9B9B9B9A",
      INIT_26 => X"9E009D9D9D9D9D9D9D9D9D9D9D9D9D9D9D000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000009E009E009E00009E009E00",
      INIT_28 => X"0000000000000000000000000000009F9F9F0000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"2A002A002A00002A2A00002A0000000000000000000000000000000000000000",
      INIT_2B => X"2A2A2A2A2A00A000A000A000A0009F009F009F009F009F009F009F009F009F00",
      INIT_2C => X"002B2B2B2B2B00A000A000A000A000A000A000A000A000A000A000A0009F002A",
      INIT_2D => X"00A000A000A000A0009F00A000A0002B2B2B00A000A000A000A000A000A000A0",
      INIT_2E => X"00A100A000A000A0002B2B2B2B00A000A000A000A000A000A0002B2B2B2B00A0",
      INIT_2F => X"2B2B2B2A2B2B00A100A000A100A0002B2B2B2B2B00A100A100A100A000A100A1",
      INIT_30 => X"2C2C00A100A1002C2C00A100A1002C00A1002C00A1002C2C00A100A1002B2B2B",
      INIT_31 => X"2C2C2C2C2C2C2C00A2002C00A2002C2C00A200A200A100A1002C2C00A100A100",
      INIT_32 => X"A2002C2C2C00A200A200A2002C00A2002C2C2C2C00A200A200A200A2002C2C2C",
      INIT_33 => X"00A300A300A300A3002C2C2C00A200A200A200A2002C2C2C2C00A200A200A200",
      INIT_34 => X"2C2D00A3002D2D00A300A3002D2D2D00A300A300A300A300A300A3002C2C2C2C",
      INIT_35 => X"A400A4002D2D00A400A3002D2D2D2D00A300A300A300A3002D2D2D2C2C2C2C2C",
      INIT_36 => X"2D2D2D2D00A400A400A400A4002D2D2D2D00A400A400A400A4002D2D2D00A400",
      INIT_37 => X"A500A5002D2D2D00A500A500A500A500A500A500A5002D2D2D00A500A400A400",
      INIT_38 => X"2E000000002D000000002E2E2D2D2D2D2D2D2D2E2E00A500A5002E2D2D00A500",
      INIT_39 => X"3131313131303030303030303030302F2F2F2F2F2F2F2F2E2E2E002C00000000",
      INIT_3A => X"3333333333333333333333323232323232323232323131313131313131313131",
      INIT_3B => X"3535353535353535353535353535343434343434343434343434333333333333",
      INIT_3C => X"3737373737373737373737373737363636363636363636363636363636363635",
      INIT_3D => X"FC028F0000000190000000019100000001383838383838383838383838383837",
      INIT_3E => X"FC1F3018FA0A8CCA00008CCA00000267000000018D000000018E0000008E0000",
      INIT_3F => X"00890000F7220000FB220000FE220000F9450000F68A0000FF8B0000F11E3018",
      INIT_40 => X"06853000000186F0000086F0000002870000000188301E0088301EFC02890000",
      INIT_41 => X"1EFC02840000000159F00F000EF01FF90E0000F916FA14F459000F0059000F00",
      INIT_42 => X"007FC200008000000012C2000032C2000081C2000081C2000007820000008330",
      INIT_43 => X"301BFD21301BF97A0012FC5D6411005D6411005D641100086F201E00017FC200",
      INIT_44 => X"7CF00000027D0000007D0000FB027EC21D007EC21D00025D34110019301BFB2D",
      INIT_45 => X"78000000027900000012000000027A0000007A0012FC027B0000000113301E00",
      INIT_46 => X"7400000001660000006430000064300000037500000001760000000177000000",
      INIT_47 => X"201EFF01700000000171000000710000FB3C0000F203720000F2017302000001",
      INIT_48 => X"F810006BF81000046C000000016D0800006D080000026E0000006E000000026F",
      INIT_49 => X"677400F9688600000769000000690000FC026A001E000153F8100053F810F853",
      INIT_4A => X"3400F95900000066000000061286000032860000318400FA6682000016FA14FD",
      INIT_4B => X"00583000F9583000FC03630000FC630000FC0264300000643000006534000065",
      INIT_4C => X"00012A301E000131C0000031C0000061C0000031C00000046200000001583000",
      INIT_4D => X"035C0000005C0000005D1411FC035E000000015F0000000160000000012A301E",
      INIT_4E => X"03583000FC58300000025A000000015B000000012BF017002BF017FC2BF01700",
      INIT_4F => X"5400000001550000000156000000015700000001583000001286000059000000",
      INIT_50 => X"F400F3500000F939F400FE510000F0520000EF39F400FB53F000F33C0000F20C",
      INIT_51 => X"024D0000FF4D0000F2024E300000014F0000004F0012F14F0012FC4F0012FA38",
      INIT_52 => X"13301EFA034A001B00014B8200F9014C00000031000000020EFA1F001CF01F00",
      INIT_53 => X"460000000113301E000147301E0013301E000248301E0001490000F3490000F9",
      INIT_54 => X"0000440000000245000000450000F6450000F5450000FB450000F8450000F406",
      INIT_55 => X"0040101E00024100000001420000004200000002430000000117000000014400",
      INIT_56 => X"023C000000013D0000003D000000023E000000013F86000040101E00023F8600",
      INIT_57 => X"FB39F400F9033A0000003A001EFD3A001EF70316FA1400013BF013003BF01300",
      INIT_58 => X"000135300000013600000022000000023700000037000000023804000039F400",
      INIT_59 => X"160030C000F802318600001286000012860000328600000433F8150001340000",
      INIT_5A => X"00002AF000FA2BF000FB032C3000FB2C300000022D301B00012E000000012FF0",
      INIT_5B => X"012500000001260000000127000000012800000028001E000229000000012AF0",
      INIT_5C => X"00001F3018FA2030180019301BFB21301BF9220000FE0823F017000124001E00",
      INIT_5D => X"0000021B000000011CF01A001CF01AFA021D000000011E0000001E3018FC1F00",
      INIT_5E => X"00000001160000FD170000FC150000FC180000FB0419301B00011AF000001AF0",
      INIT_5F => X"00010F00000001100000001100000002120000000113301E0001140000000115",
      INIT_60 => X"0000000109000000010A000000010B000000010C000000010D000000010EF01F",
      INIT_61 => X"0102000000010300000001040000000105000000010600000001070000000108",
      INIT_62 => X"3E383838414238383E3737373782373737363682363636000000000101000000",
      INIT_63 => X"3C3C3C3B413B3B3B3B3B3B403F3B3A3A3A3A3A3A44393939393939393939393D",
      INIT_64 => X"3F403F413F3F3F3F3E3E3E3E3E3E3D433D3E3D3D3D3D423D3D3D3C3C3C3F3C3C",
      INIT_65 => X"4343434242424244424242424141414641414141404037404044403F3F453F3F",
      INIT_66 => X"0000000000464646464646454545384545454545444440444343434343434343",
      INIT_67 => X"0000000000000000390000380000000000004100000000000000000000000000",
      INIT_68 => X"00000000423D0000003C0000000000000000413B0000000000003F0000000000",
      INIT_69 => X"0000000000000043000000453F00000000410000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"003B0046003B0046003B0041003B004C003C0000000000000000000000000000",
      INIT_6C => X"9417F3A56500049416876AC1B9072E03004C004D0046004C0043003F00460041",
      INIT_6D => X"A5310080971901A5D70041BA1901F93B0080AA198866190008D319FFA5A50004",
      INIT_6E => X"80941AF169F40041C71A9FDA790041F11AFBA5690022B91AFEA56500809A1AF8",
      INIT_6F => X"01A5AA0080941BF7A5860041C11B01346E0041991BF10D390008941BEFA51000",
      INIT_70 => X"0080941C0159D80080DE1C94A5D70022A81C01A5D70041BB1C01A5CC0041C01C",
      INIT_71 => X"1DF0D9530008D31D01A5510008BA1DA96A4C0080E61DFB2E4600809E1CEC45D9",
      INIT_72 => X"340022D11E9D05340080E31E8E25260080A51EE305260041A81D8E05D70080A4",
      INIT_73 => X"AB1E01A5910080F81E0158890080E41E0138860022DD1E0125860022A81E8FA5",
      INIT_74 => X"05E60041CD1E010DE60080A11E01A59D0080E61E0105940080C21E01A5940080",
      INIT_75 => X"80F81F01A54C00809E1F91A5FA0022F21EE253F40041A91E012DEA00419A1EE9",
      INIT_76 => X"01D8D30080A62001FED30080A8200193590004941FB1D3570022CD1F93A55700",
      INIT_77 => X"0080C5210165A60041A120A9A5D80080C12001A5D80022ED20EEC5D70080D520",
      INIT_78 => X"220145BA0041A22194A5B40080CA210138AA0080E3210145A60041E121B325A6",
      INIT_79 => X"8B0080C4220145340041E1228B1C340041C82201782E0080AD22C5E52A00419A",
      INIT_7A => X"CF228FF4930080E422A352930041C822ADA5920022D22201058E0080C42201D3",
      INIT_7B => X"A5590041E12301A5550022E3229905F40080E522013CE60080A22201E59B0041",
      INIT_7C => X"229A259CD94B0022A425F3A5D70041CC249D8AD200809424FAA5A50080C6239A",
      INIT_7D => X"A068D80041AA2501A5D70080CD259EA5CC0080CA257D74C60041E625A8EE5800",
      INIT_7E => X"0080D426A105EE1618CC26AA459A0080DC26AF2A930080A826B6A5DB0041D425",
      INIT_7F => X"29A3A5D90013E4281EA5A50022E7270186520080AA26A2A5F40080ED26A945EE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"6C0022DF2AA5D3680022C92A01D14A0022BB2AD986340022D72901A58C0041D0",
      INIT_01 => X"BA2BBFD8B60041DD2BA7A5AE0004AA2BA8D3A60022C42BA6E57901A2DE2AD1DB",
      INIT_02 => X"A54A0041A42DED2A4A0004DC2D01E5090041E52CDFD8D30004C42C01A5CA0041",
      INIT_03 => X"41A42DABA5D10004A12D01EECC0041B72DE40ACA0080CD2DE553570004A12DDD",
      INIT_04 => X"01E53400049B2EF3A52E0022E52E98D3260041942DE2B7D70080AA2D9DA5D300",
      INIT_05 => X"0041A42E01459700229D2EF2A5970080E62E01A59400809C2EAD9C910004D22E",
      INIT_06 => X"2EDEE5F40022CF2EF8A5F400419E2EACC9EE0004AB2EF5A5EA0080C02E011997",
      INIT_07 => X"DF0080AB3001A5D90080943001C8D700419430EC2A520004B12F9BA548000494",
      INIT_08 => X"A432F8A5850041A832C405260080C932AFA5DB0022CF310138B400419431C2A5",
      INIT_09 => X"65EA00419B3201D3E60080E532FED9E60080A132EEA5E60022B5328A539101A2",
      INIT_0A => X"22A43401A5D30080D03401A5530080A53301454E0080A83201A5F40080EA32E5",
      INIT_0B => X"EEA5570080943501A5520080C635B285510080D43501A5460041A1340105D300",
      INIT_0C => X"0022A83701459A00229436E3A5950041A4368CA5D900809435D7A5C900419435",
      INIT_0D => X"3AB379681518943AF718550041B83A932A93004194388CA5570041C437CEFE53",
      INIT_0E => X"7B0041AA3AFBA5790080CF3AFB2A780041AA3A01EE780041EA3AB5D96B0041BA",
      INIT_0F => X"9441B6A5520080AA3DA62A5C8CA0AA3DBEA5C997A0DF3B01A525B544943BF10E",
      INIT_10 => X"25C700419444BB05740080ED4201456E0022A141BAA5D80041C441B7A5C80080",
      INIT_11 => X"80AE4501A5460041CD44F945D70080E54413A5D30080D44401A5D00080A54401",
      INIT_12 => X"01A5C90080E5450145490080ED45BE45460022E545B6A5460041CC4501A54600",
      INIT_13 => X"0041A846C2A5940022B046C1A5880041E545C6CBD60080E9450125CC0041E445",
      INIT_14 => X"4801A5CE0022B94801D3C80022C1470105530080A147C4C8470022AA46C3E59C",
      INIT_15 => X"D9B2A0A148C6DBD800229E4801A5D50080E848AF2AD300809448C5A5D00080C4",
      INIT_16 => X"CF4A012A930041AB4A0197D700229A49C6A5510080944901EED90080A14801A7",
      INIT_17 => X"9CD70080C74C01A5CE0013944C012BD80041A54BC92A520041A84A01A59A0080",
      INIT_18 => X"13944F01A5590013E54E1BAA970013E54EF0A5850080E44D1BA5450022E74CF2",
      INIT_19 => X"F7A56A00089452B7A52900419451AFE56B00089451FAA5650041E35101A53400",
      INIT_1A => X"0022AA53CFA5930080DC53F6A56A14189453D379EE0080DD52CBA5AA0008D052",
      INIT_1B => X"5401CCD80080A15401E5D50080AA5401A5CE0080CF540125CE0080A854DD85F2",
      INIT_1C => X"590080E255EC57550080AB55DCA5460080155501A5D90041A154DDA5D90080E5",
      INIT_1D => X"E556E42E260041A15601A5D50080AB5501A5D10041DD550145CA0041C055DDA5",
      INIT_1E => X"57E60041F856D2A59A00809456D0C9980041A856CFA53A0041B056CDA526ADA0",
      INIT_1F => X"419457D6A5580041E357AE3A53D5C0D457D4A5510041A1560125EE0041E35601",
      INIT_20 => X"01A5D20041E15C01F4CE0080C55C01A5CE0080E45C7FA54E0080CF5B7FA5A500",
      INIT_21 => X"0041D35D01D3520041A85D01484B0022945DDAA5460041A85CBBA5D50080B15C",
      INIT_22 => X"5E0157870080AA5DDCA5D30022C15D8197580041E45D8AC5550041AA5DCED755",
      INIT_23 => X"CE0080C0601CA5A50022E75FF8A5530080945FDDA5470080A85EC8A5910022C3",
      INIT_24 => X"DD6101370A0080D76101C7060041946082A5DBABA0D560018ED30080A4600197",
      INIT_25 => X"A54A0041EA61B397460041DD6119A5450041BA610189170022AB61FED2170041",
      INIT_26 => X"22AA61E1A5A60041C1619CC5A600419461E1A5530080AC61ACA54A0022A761AC",
      INIT_27 => X"95A5D90022BB610157D10022AA61C9A5CC0041E4610151B40041EB619BA5AE00",
      INIT_28 => X"0022C66201452E0041A162B8A5260080B06201251A0041D462DAA50EA9A0C562",
      INIT_29 => X"6219AA9A0013E56201EE930022B062C325910041AD62D83E4A0041C6629DA546",
      INIT_2A => X"260080BA6301E82600419C63E85FDA00419B6201D9AE0041CC62D225AE0013E5",
      INIT_2B => X"CD6301592E0080D763F8A52A0022AA63EAA5260041DF63C245260041CD6301FC",
      INIT_2C => X"9A570041D6637CE7550041AA63D7653A0041BA6301D23700229A63F845340022",
      INIT_2D => X"41A8640145C70080DD63010D8E0041CD63ECA58E0041C66318A5850022D563FF",
      INIT_2E => X"01A5AA00049465012A520041C46501A54A0041CF64A345D800229464DEA5D100",
      INIT_2F => X"00809D65F1A5CA0041EB65FEA5B70041D365FE4CB70022A9650165AE0004CC65",
      INIT_30 => X"66DDA59A0041E06601A5970080E5660105940080C566D7A59400809C66FFA585",
      INIT_31 => X"F40080A5660105EA0080A866011AEA0080D56601BCE60022D4660125E60022DC",
      INIT_32 => X"E76ACA0A3E17189468DB2E8E0041CC67D4A54C0080A8670105FA0022D5660125",
      INIT_33 => X"A5A50041B96A85EE780022EB6AF410710041D26AF5196B0008AA6AF0E5690041",
      INIT_34 => X"22DD6D949AD80022BA6D86D45700419E6D01D7D20080ED6CFE850E0022C56BFC",
      INIT_35 => X"F9A5DB0080AA700105D10080C470F8A5D10041A870F6A5CE0041A870A1A5A500",
      INIT_36 => X"0022A571FCA5D300419471FC45AE0041DD71A805A60041E471A1A5580041DC71",
      INIT_37 => X"78EFA5A50041FF7701D3EE0080CD72DD53940008B471FDA5D80041CC71019CD3",
      INIT_38 => X"0105B200000110F20080C27E93A5970041947CF1A5580022C679FEA5510041C0",
      INIT_39 => X"014F004F000000000000B8006F00E7004F0000C1010001E7C101007FCBA00000",
      INIT_3A => X"E02B4100AB009B000D026195019B0006E1014F046F00E7037500740256025496",
      INIT_3B => X"330F40A04541014100B1B286679441B200981FBBD00B28043944AED9A0B1A348",
      INIT_3C => X"54065700553907006A39070100E1FFF0390300FF802AE0009700FF802AE0B03B",
      INIT_3D => X"1000981FB40D039B001C0018E10254039B001E0019E10254029B0020001AE102",
      INIT_3E => X"1953066C2D0A2DB30B410B4100000000FF002AE0023F106E90040D52BB703FC8",
      INIT_3F => X"21589346B2AA848538B30228E0CF282704567F000D7C000D01088C0148868538",
      INIT_40 => X"4D01042D03C8A00551014F01430134E00000000000E4160000492FC5060A62B9",
      INIT_41 => X"4A01C5060A41B270000D000BB221B30228E0CF242D632653045CA05C2D5C2D02",
      INIT_42 => X"4F0000772900740274D3A05BA5B25B59A5B25AD3A000004538B37A3F078C663F",
      INIT_43 => X"954241B29CE0A0802B79FCE02D8DDE209A58B32241B10000B8000231E0094F08",
      INIT_44 => X"3C07802E8A01D8AD6763B3000055A5650A9A802EAA372B5258B30000550028E0",
      INIT_45 => X"E9CD2523B32C410076E07E4100312BE008411288C100E06055344D6512B29AF3",
      INIT_46 => X"013B055F01052B4440245C282A5D3041475C633A18005F04AB3841B201D3CC53",
      INIT_47 => X"005F5030374500286001005D4A1728655628181B3A6709605D4F27042B013B6E",
      INIT_48 => X"05513C41961A04462F603C495F2D67243B6A062B0478296439041F2A03295C2B",
      INIT_49 => X"01310202456326530B781A022B5E01064D5E0252441B34286362110C07690116",
      INIT_4A => X"0D6F4100B2E76A181326E1800E3AD83C25025318130A92B34D41E8032A0B3900",
      INIT_4B => X"BE1B4A874E88A545D591207912D353D201CCC06220060151577E800E26B37000",
      INIT_4C => X"003B1C4E7166105988A565945267340120B8D4B32D419600390447124F88B086",
      INIT_4D => X"88B42E4617B4B35D4196711A5C04253913B839330F4A87CEA01388C1DC63000A",
      INIT_4E => X"4DD5005E01585339C8CB00252DB3965D0352025E495C2848095901AB00939740",
      INIT_4F => X"74B32C41C81648070446250B53884594412EEA09C00E151952B35D88C1452A78",
      INIT_50 => X"78032B044088B2D7526B2A9AD997200168F748791A25C9F03FB33841B2680D06",
      INIT_51 => X"E1012AE000000000AB019B03012AE000000000C865005204002D0427427E4D2D",
      INIT_52 => X"0654AB0161024FAB029B05949393C6A0065503619274B4540000000000030203",
      INIT_53 => X"01E7A0004FAB1245034F4D010294019493E80092E88FB191C6A000000000D78C",
      INIT_54 => X"0D00000000000000000000C08C065404C5A000E0024F0143019B00031D8C0303",
      INIT_55 => X"5201198CBF0565068C0548A0065802338CBF48A0616F616F81A0403F010D0500",
      INIT_56 => X"2F4EA00349005000A00107882BE08941014F014105002D7F058CBF0566652D08",
      INIT_57 => X"198C07BBC8664D5E2928177A1B03285D0A3B8CA54578002603B2524F8C8607BE",
      INIT_58 => X"0141804D65490000A5B20141A950A5B20361843D00430004000D8B4503000D8A",
      INIT_59 => X"E8080965068C046F08AB8C450AD9273802B821B200A000BBE0644C05B200EAB2",
      INIT_5A => X"064F875A885C8C950B41003B8F00000074D103002DBF058CBFC8A08605E80009",
      INIT_5B => X"AA007B47091C8C0D4A114A3F0000A31000C1095E886260408C87667C00C1004F",
      INIT_5C => X"8C862D8E0B8C070C95D58988C1069F000000A3024100FE024187882BE00AA0B2",
      INIT_5D => X"0000C58C623FCD8C0A0795D7050995DF000C95E76F0295EF8F000D00000D0241",
      INIT_5E => X"4102450202BBC8664D5E2905003428230BDC7A60036B872D06882D0000000000",
      INIT_5F => X"A000E0115103862D00C5A0D13F4D866B032D7A862D89410C4186022D887B2D0C",
      INIT_60 => X"00A3894102408C0404BF0003D0A000C5A000E0016F00C5A0019F000000A300C5",
      INIT_61 => X"00AB87062D88C2A000E0016F00C5A000E01151894102228C0404BF000000A300",
      INIT_62 => X"7F59A061A70065E161A7000D68F38C0BA70A8C0905FF00000000000000000000",
      INIT_63 => X"36E07FC50000A370902D00000DC38847904BA001D7A01036E07FC50000A37FD5",
      INIT_64 => X"027E358C704881000D71000D05B1A565E9958067B281817E7EAFA5C1B243A010",
      INIT_65 => X"3B4B833D02CD0197EF74E17054A0C102C1003D02CDEF410002C182A0012EE002",
      INIT_66 => X"80055EF804C180A003022DE001817EE2025481010D00000D704E3B8F633B8FC8",
      INIT_67 => X"3607C106623B3B836A05CE3B8F4805CCA002423D2FC107C1006F0254F8410241",
      INIT_68 => X"090000010272E1019B0374E10475A0030340D525598C705502434B7EE1025498",
      INIT_69 => X"80A080D5274DA020D527D7463B8362A000022DE0010072E200700154029B007E",
      INIT_6A => X"0071543B4B83007E0001D2A003C18C447A7C02C10352468F007E00016081000D",
      INIT_6B => X"0D0001C0A002012DE095BB964D4F035C60537848002A055D71998C039B0374E1",
      INIT_6C => X"2F7803295204006848006A52282812F7A001022DE00004558C0000022DE00000",
      INIT_6D => X"000D9B6F062D88CDA0FD0101022D00F82FB10130E0BBC82B675D5C2852360546",
      INIT_6E => X"044302670450000000000000C0A06C3FC0A0CC3FC0A0653FC0A0503F002FE079",
      INIT_6F => X"74E1015405AB0502DBA00256015500000000000000000000B804709503610349",
      INIT_70 => X"0405AB000000744F3B3B4B80007E0074E1007402560434FF7147A09500010103",
      INIT_71 => X"369803C1006F025400000D813E0303DC2F4CA0016FFF0074E100740256015400",
      INIT_72 => X"01549507DEA0004F0000032DE02FC103C101010181175008C17A7C03C101010D",
      INIT_73 => X"A0000020D525B98C7A7C03C15008C1004380A080D5270000010074E100740256",
      INIT_74 => X"A000000DAB0AAB007E000000010A05D93B3B83E1403D8369A000C5A080D527CF",
      INIT_75 => X"5404550000032DE00000032DE006498C0000032DE000A020D527DAA0004F794C",
      INIT_76 => X"00000000898C025407032D00F82FB10130E000C5A008D5271D8C02544B7EE102",
      INIT_77 => X"3A421005C300000D064B04047D328C0004035000740256025000740256000000",
      INIT_78 => X"8B6E05050006C006068C0C54084206C0038FA901A3CB8C95007430550A562F43",
      INIT_79 => X"71400300734AA0030374010D000020D52500000074000D00000000000000FFA9",
      INIT_7A => X"E1074F069B0074EB8C079B007E0073E102540640A00061024F024F00000073C0",
      INIT_7B => X"074F089B00740074E10654069B007ED4A002C502007302743E0141084F000073",
      INIT_7C => X"0000D82FCBA00561004F074F06047EC9A0064F000D06C9718D77918C710073E1",
      INIT_7D => X"0404218C062FE07A76A352468FC8000007208C0648463B83CA00000758A0000D",
      INIT_7E => X"54820074E1004F0000FF0074E1016F010D0905FF0474E1069B0004010D05AB05",
      INIT_7F => X"AE74B2704100000000FF0200E502700004000000000D71C5A0084F017731E001",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => addra(15),
      I1 => addra(12),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(13),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_01 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_02 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_03 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_04 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_05 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_06 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_07 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_08 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_09 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_10 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_11 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_12 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_13 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_14 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_15 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_16 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_17 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_18 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_19 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => addra(12),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => addra(14),
      I1 => addra(13),
      I2 => addra(12),
      I3 => addra(15),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => addra(14),
      I1 => addra(15),
      I2 => addra(13),
      I3 => addra(12),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(12),
      I3 => addra(14),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ram_ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000A1A501323038002E22023B4F4E0003",
      INIT_01 => X"71A834E465801AB47196E6D1801720802A13807A801ABBDC7A96E813A8138065",
      INIT_02 => X"804E20805E4CB02545D72211C85EAA70A835BAE0281AB45365B144C82EBB13A1",
      INIT_03 => X"DD65EA13C572801F9D801726F8281ACB61E5628011A9658035E04623D03AC662",
      INIT_04 => X"5491B04146B0354EC666804EE54EE428E471802ED2801B3A63801711E0658020",
      INIT_05 => X"6532DC26C85EE465806690EB18D212A835C71C56801772A43911E02620E122B4",
      INIT_06 => X"A8605480521D802242AA45DC538034A838533AAB6054C470AA538053806A32B0",
      INIT_07 => X"0000000000000000DD6813E36226E34666AA5DCE659ABBC71B672E13AA4C5F11",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0B030000B800F700000000000000000000000000000000000000000000000000",
      INIT_0C => X"4700F700000C0900002000F700000C070002FD00F700000B000242D900F70000",
      INIT_0D => X"020C11000098005200020CF908008600F900000C0E000264000000000C0C0002",
      INIT_0E => X"003E005200020DE200000E005200020C150000E4005200020C130000BE005200",
      INIT_0F => X"08080D1F0040C5005208020D1D004099005208020D1B004064005208020D1900",
      INIT_10 => X"00009C005200020E8C004066005200080E2300402B005200020E210040F70052",
      INIT_11 => X"5200020F2D000037005200020F2B000002005200020E6B0000D3005200020E8A",
      INIT_12 => X"350000FD005200020FBE0000B9005200020F31000088005200020F2F00006100",
      INIT_13 => X"00520006103B0000690052000210390000450052000610370000230052000610",
      INIT_14 => X"11430000FB0052000610410000D500520006103F0000B700520006103D000091",
      INIT_15 => X"9300F9000011C100005900520002115E00003700520006114500001900520006",
      INIT_16 => X"02125100404A00520802124F00400C0052080211EF0040C900520802118F0040",
      INIT_17 => X"40495459500013000010020000400012000080B6005640001200000092005208",
      INIT_18 => X"C00013940000D200F90000135D8002AE00C7400013B800028857585000134B00",
      INIT_19 => X"0000AD00644001143200007262C7D000140008003B0060800014E6000003005E",
      INIT_1A => X"C2C001150020005C72520002150000322F6A52000215004100F2009AC0001448",
      INIT_1B => X"0000001B0072000015000214EC0072400015000003C400C18100156F04048900",
      INIT_1C => X"00C7400016800800A200784000161E00407400764000161400005200F9000016",
      INIT_1D => X"172000405500C9400017A50C042F007E000017780000F6007C400016160040C4",
      INIT_1E => X"0500884001171C0000D000DC800017000002A686520002179180028A00F90000",
      INIT_1F => X"0018002004A990520802180020006B008C400018C7004037008A400018270000",
      INIT_20 => X"007F00960000193000004700944000194700001C00D4480018000004E000F900",
      INIT_21 => X"00011A700006029E52000219003090C5009AC00019D70000A200980000199600",
      INIT_22 => X"0000B800A740001AB701008200A240001A0000004D00A0C0001A0000042800C7",
      INIT_23 => X"AC40001B6400005A000040001B0000002000CA40001B7A0006FFA85200061A00",
      INIT_24 => X"0F00400B00B201001B000040E200B200001BB60002C1D05200021BB000029500",
      INIT_25 => X"BC5200021C00020691BA5200021CD600066A00C101011CCD00024700B401001C",
      INIT_26 => X"1D6E008E58C25208021D0000062100BE50001D330000F600E044001C000000C0",
      INIT_27 => X"13CA5200021D5B0054E2C85200021D000002B800C700001DC500029000C70000",
      INIT_28 => X"001E0000C09200CE40001E7600406700F900001E0000322CCC5208021E810032",
      INIT_29 => X"075AD85208021F0000063AD3D410001FDC00400500D5D0001E000000CC00D040",
      INIT_2A => X"00001F170040E000DC40001F690040AB000000001F00040680DA6600001F5A00",
      INIT_2B => X"00009600E4000020CE00405F00E2100020DE00003300E0440020EC20000200DE",
      INIT_2C => X"EC4200210000083200F9010021EB80020600E8000020250000C000E6400020E8",
      INIT_2D => X"000002DE00F9000021F30002BE00F90000210080028DF052080221F100006200",
      INIT_2E => X"A601CE04224900023FFAF70000220100022BF80028F3220000000400F7000021",
      INIT_2F => X"FA000000313BD3EA0283F270291446D2F8F2F0002A2932A4427E001042424638",
      INIT_30 => X"0583F2EA3200CE88C531424A0CD357044AC46E1CF2BA05631E0029D991E093F2",
      INIT_31 => X"CCF2E43D02265C0027A5D319480459A972CD631E0028DE5DFEB2C66000283A6C",
      INIT_32 => X"04E22B161D1FCD121A11000599482D18632A1103A9329D4F0029340A020FF3BA",
      INIT_33 => X"1E5C2512009912137C454E201404E22B191C1FCD121A110099101112454E2014",
      INIT_34 => X"04D6E9D642E405987CE2A503311204492599141095042A2604754B2B171C1DE6",
      INIT_35 => X"45977731161A8F4C1A5C9BC20604462B151C1DCD66114D12009818DE65C04616",
      INIT_36 => X"881D8567E620930583EE2E2B171FD253484F11005D5A2B1617A8290022120083",
      INIT_37 => X"1EAA5D0B00EE402B1C1FD21300834573AC36001C009E7D1FC72C061910000596",
      INIT_38 => X"C7A47D99102F45003B13005C4595443195210DEA00CB882A8D078325961E1A37",
      INIT_39 => X"25955B331695653D95E5DBE40383259521821A371DAA5D0B005C459544319520",
      INIT_3A => X"842D7408520E64B0EF2B9329293226120D028325948C231A371D95E5DBE40383",
      INIT_3B => X"F23116181A1ECC4F112A11000592D53C1D1EED114A110092286B254506A6A09A",
      INIT_3C => X"124D4D1300922F968A18956C193C0649792B0025666B258A1895199C25460749",
      INIT_3D => X"E82B98450602162B1C1DB1631245110092986BA5CCD804F466064F2B1E1FB163",
      INIT_3E => X"485D13007C4BEEB42B131691E43D1EC85D13000591BBBB2A9645060249FE2B70",
      INIT_3F => X"13007C3E7C44EE873118191D1E9164A59A048E57EA063912640591A53D1EF06D",
      INIT_40 => X"3B3A3C454602CD2B1A1B1C1DFD120090B93F35454602282B151D1EB16312315C",
      INIT_41 => X"AEDF3111AE97188C4D1B11009000573C3A3637454602E02B1CA4111911009038",
      INIT_42 => X"A4111911009000573C36383B40454602CD2B171D1EFD1200903B383639454602",
      INIT_43 => X"19110090A73C403F454602CD2BD356171C1D1EFD1200903D3F3E454602E02B1F",
      INIT_44 => X"1C1EFD120090A74543454602CD2B1D1E1FFD12009043A553202A04E02B1DA411",
      INIT_45 => X"8F66A5260A03520E64902A361E1FE221056311009045436646454602CD2BD356",
      INIT_46 => X"79E2371C1D1E1FBA28110089F39028BEB0EFB7F2BA6300CD4500533100B7971C",
      INIT_47 => X"8E50433C1D8F4AA5587403F2F4658F7431171C1D1E1FB454645D1100F3F1832B",
      INIT_48 => X"318E4CEE3D1E1FE45D1100F3F1FB2B79E2371C1D1E8FA5587403F2F4658E7431",
      INIT_49 => X"8E0AB42A2D1405EB254A0000CB5051500000CB4A51459A04D3EA05F2F4658E74",
      INIT_4A => X"101153F4085200F3B6822B18198EB44F4B0AB42A2D7405F3B6B02B1A1B1C1D1E",
      INIT_4B => X"2C00A62EC2507862AC72DF1A4072510125320000E22EC2E29F314C3DC5660897",
      INIT_4C => X"8C8E704C408C2019178A51EA53F409012C00FB304C3CA5F1E618F7512E460804",
      INIT_4D => X"4B7B37A91300130000052C00402E8D5077620672B1246322712A3D00009C2B00",
      INIT_4E => X"040A2F4C4C4D0DEA028FE332C41A4466220000322E10461913B8D704F3F26577",
      INIT_4F => X"467C3FEA642BBC571CD0691300919931444D3E4D652E02FC8A313E3E782E40AE",
      INIT_50 => X"350D00936B85450600D3E65306D4288CF493EA4C5BB2E848632A53125013007C",
      INIT_51 => X"31464C4CA54702062F105FA68C72C45D1B60226D008C4F2BB7943E65B2B36D32",
      INIT_52 => X"EF158CF2C72B054E66007C4BEE7E3191303230ACA58E57EA04342800232B0006",
      INIT_53 => X"4205F4C90C9A05D32B8548FC9D7D8F296520F42404132B000F2D8B232F108462",
      INIT_54 => X"59DCA4371C805D1300000E2D8A142F9886314C434CA59702F6288A9530423D3D",
      INIT_55 => X"CA093CB2AA44640092602C298A266369F4031E2AFC1F3147251949038F8F6405",
      INIT_56 => X"891E2FB750709B218F6DF2DD630089B82E00DF9F62F1729A64391A008A022F9E",
      INIT_57 => X"0000A4D7314A85592E0398314B0D8E028E28A2DD57314D443FE534539404002C",
      INIT_58 => X"3D49C7062051EA512E4608A5306C083299060000A52B9B5069374DB8C8F2A965",
      INIT_59 => X"A5862A2AF5056C2B1FA411191100A85044A52A26539405052C00082FA7504C3C",
      INIT_5A => X"1043C550590A040F2F4C4C4951B4028325967E1EA5C8873E0605142F1042473E",
      INIT_5B => X"5345AED50AD642D6E9E405990131171E8C601100103F4C4C49E5DB8917040A2F",
      INIT_5C => X"675F00760532A4600096786A883E0604052C000A2F104C49433DA52AC8072AFA",
      INIT_5D => X"961F1A371D1EAA5D0B00890A2F107985ECCDB2A85E0089142F1057202772AD42",
      INIT_5E => X"72007C3F063193696065403403143148A5F4CE03AC853148E5DB02832595C931",
      INIT_5F => X"96009E7718001C009E7E9E192824110089B730434757E602DD1E2572CD3A0225",
      INIT_60 => X"9C6A6556000565286B27652034030A2C00FF2E00C2623DA7B2A4320056008445",
      INIT_61 => X"11765AE1F2B91B2A285500EEB22B171FA81C48110088052C00142FAD627D16B2",
      INIT_62 => X"5600274B4E4D0A3FBA28110000F9E44E3147473C25F4493A5305E22B00B53076",
      INIT_63 => X"48F508AF7B3147483C3CA5CAF401D105D92B002D31474444A56A2A01D105AE25",
      INIT_64 => X"C52A8603CA2E00B1AB31463D05310601CE050A2FF400314A4742851158EA6E01",
      INIT_65 => X"00582A2F2DA503F44E04BD2B00042D880F2F106E62BABBD5F2CD4F540090475E",
      INIT_66 => X"C7C7C587042604F63140454897D702B4311D1E1F8C5C5E12005845A864B2DE49",
      INIT_67 => X"2600142FE4B52431483CA58600CC04D12887022F106E7E8577B2D221480094D7",
      INIT_68 => X"9DD1F203B931473F44A54602322A72BAD51B2AF2A835480071E46540AE460404",
      INIT_69 => X"2A890A2F10277B32D3005D00876E2B00F4380B7B60F2E42E450000F494313D45",
      INIT_6A => X"07AA46075F2B870F2F106EC85F51B2CC6544631E0000052D104C4029578A0314",
      INIT_6B => X"0087142FB9BB515F72DE4F32174D1F0087052C000F2FB7DC314C3E3CA5D34880",
      INIT_6C => X"0BC905232EBD2C313C4444456EC0D80431313C4A3C65590A03EB2B181E1FFD12",
      INIT_6D => X"4E5C6E611200870A2C00C0304C3F69D2094C04172B00052D00BE304C40A5D39A",
      INIT_6E => X"576E6772B0653200F41C0E75DFF2D4573A24352434007C444925617BA07C1FE5",
      INIT_6F => X"1A00521300C61C314C3C9CD7403404F28F313E05E602497F2B171D8C387A1100",
      INIT_70 => X"00B2009C78191B1C1D8E51459A44208A05C730519D32DC264D63008EFB311BD3",
      INIT_71 => X"CC05313E4C4C3F9709E603CA61314D85691C2A8605CA306D9D32DC2600F39E31",
      INIT_72 => X"1027CEEB3140453FA595C80349D23191BE34159F7E8C070060A0F7F011F2A400",
      INIT_73 => X"F14C4034050B2C00DA2E00EFD0628777B2AA5D4463220005922FAC6525D3D904",
      INIT_74 => X"000A2D00D1306C62ECEEF9F2A84521000591192D6CB963EAD8370436313E4105",
      INIT_75 => X"5566004F454F45493631E8568F33CBA503D32E04D33052C1DB72D5200000CA2B",
      INIT_76 => X"5960F404E8E6314B3DA534FA4904D5E6314B3D6539073A04102A1051D632E101",
      INIT_77 => X"0152056A3200949A9A630A66794605D6E6314B3DA534FA9C5105DAE6314B3D93",
      INIT_78 => X"5EC9C100004F650D0E03282A4B45C70249A82B16E51000105F158A1C15F2E02B",
      INIT_79 => X"481300E6507A323A38B2E5210000F57432A8184C214100EA4500983100EB948F",
      INIT_7A => X"372FC362DD7EB2BA5124320000E230474BA5EA2E53F405772B73ACA27D1E8C5C",
      INIT_7B => X"44652A2653F405772B00042D86032FDFE14F314C4949A5370A03232A860F2C00",
      INIT_7C => X"E53902EE2B731F9B761FE4100085D82E00E3306D12C7BC04F2C01E221E001044",
      INIT_7D => X"F9305D34F672E41E00055C8C28328C9AA52602E4F400313D2A4760EA04322A3B",
      INIT_7E => X"704F6A32AA605C64015D0000E7D1313B3BA5DD3E340402278BBDFF314C25F402",
      INIT_7F => X"311C1E8C641000F4F8313CA55100E60449AA2B1416171C1E1FA84A130085F4ED",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"150C56F2A1470000B52E00D8DAC831483CA5C860F4047329EBA8314D3CD901AE",
      INIT_01 => X"7E8C7819110000BA2B4E32DCA5B2C11C00853D902B98DE1663790D03C52BED65",
      INIT_02 => X"912B2B141FA4250418120085EE39313C3F3D59D80259F26499193199CE9DACA2",
      INIT_03 => X"F0E4055A19A1751793E658A62B0AE653060A2C008B2E104C424AA5511826FE05",
      INIT_04 => X"4D85691CAAD905F230522332F84A2100F1F43141404A4238B42A57520594F794",
      INIT_05 => X"0000AB314244484DA52A5CC02E4606042A86C43062AF1972E61E633200F5AB31",
      INIT_06 => X"02F6304C41BD72A81A064F4A00F1182B8F4D4D2A3E1FE45D11004C097372AA70",
      INIT_07 => X"314A3C25EE9303FAFCC73143459A40AE04643142474C41199702F8303D4CA5EA",
      INIT_08 => X"004B9EAB72E56500610000104D4DA5D1802E9A5706FE5E314D311CD9E604FD9A",
      INIT_09 => X"753F1B4B000000004BCCDA72DD1E000000234541F7012629002A9A382E003032",
      INIT_0A => X"959F0000B100000000F51ABD06CB0DD9EFFB01FF1D00233D51697F95A9AFB7F9",
      INIT_0B => X"00002D37000000000000010708434F595F6B7700018100000000000000000000",
      INIT_0C => X"0000091D310000000000000000000000399D0165C90000000000000000000000",
      INIT_0D => X"6464E9B4B4000000000000000000000000000000000000005141000000000000",
      INIT_0E => X"4D4E06B4504F51B40553B793DB10135E000000000000000000000000ADB9C7D1",
      INIT_0F => X"0000000000000000000000198F4A4B4C4D4E504F51B40BCBC9CBC1044E4A4B4C",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"8C7E0005695A5000040000000000000000000000000000000000000000000000",
      INIT_25 => X"696400045E55504900054537333000052800021D140E00040A07050302029D95",
      INIT_26 => X"64E4D5BCB0A59C2E2A25201B16110C07286B270004181714151011121300096F",
      INIT_27 => X"8C101F8222232405011F02820322042304240A00B005A60AA01400990F8E4686",
      INIT_28 => X"010303030303020206060101010194877D303164AC643282781F1E8220222124",
      INIT_29 => X"0505040406060101010101030303020404040606010101020404060601010101",
      INIT_2A => X"007F00690000513D000023050505040404040606010505050404040606010101",
      INIT_2B => X"DDD5CDC10618010C0308010103FD01F603EF01EA03E601DD03D901D500D40595",
      INIT_2C => X"2B1F170F03053D0129034A01470043053D0135032A01290324011B00D405EDE5",
      INIT_2D => X"A80398018D018A00D40579012903534B3F036A01290360015803520050014B05",
      INIT_2E => X"09012903FE012903A19D958D04EE01D801CE01C403B90129037B776B6304B601",
      INIT_2F => X"5B33F5EBE3024A01290338012903CFC7BFB7AF051F012F03250129031F011803",
      INIT_30 => X"3302C001AA012925029D018E011D018101150172010B070267015901F3D7A583",
      INIT_31 => X"3B2D21190F6D012A0165011701574F0214000303F500F103454102DC01CF0137",
      INIT_32 => X"01B1ADA9039B018C018301A1016E01938F8B87045E01520148013E0171695F49",
      INIT_33 => X"420133011C010901E3DFD703FB01EC01EA00DE03C9C5C1BD04CE01BD01AF01A3",
      INIT_34 => X"3701A0012D290285017A01191109036F006B036800590353004E03FBF7F3EF04",
      INIT_35 => X"0109016F6B020401EB015D59555104DB01C701BD01AE013B3121FFE7CDB5A597",
      INIT_36 => X"AFABA704CD01B901AD019A019995918D0484016E015E014801817D79032E011A",
      INIT_37 => X"015801E9E1D503510048033C003503300026001805C9C5C1030A01F501E201B3",
      INIT_38 => X"0001A9723F00016ED91505F1CDB79D857361110D02AC01950101FDF903870178",
      INIT_39 => X"49372513D1C78D7B713F35231907B5A3998F7D73695F41372D0375000000BA1B",
      INIT_3A => X"997F655B51473D331107EDDBA96F5D5331271503F9EFD5CBC1B79D9389776553",
      INIT_3B => X"D1BFB5A39987756B594F453301F7EDDBD1B7ADA3917F6D6301F7EDE3D9BFADA3",
      INIT_3C => X"E1D7CDC3B9978D7B715F551309FFF5EBE1CFC5AB998F857351473D33210FF5DB",
      INIT_3D => X"01000000000000000000000000000000897F756B61574D43392F251B1107FDF3",
      INIT_3E => X"010000000100000000010000F302000000000100000000000000000001000000",
      INIT_3F => X"0100000001000000010000000100000001000000010000000100000001000000",
      INIT_40 => X"00F81CFE0200000000010000F802000000000000000000010000000100000000",
      INIT_41 => X"FE02000000000000F21CFE02000000010200FE02000000010000FF020000F202",
      INIT_42 => X"02301EFE02000000020000FB020000F9020000F4020000F602000000FF02F21C",
      INIT_43 => X"00000100000001000000010000FD020000F4020000F802000000000100301EF3",
      INIT_44 => X"000000010000000000000000010000000001301EF30200000000010000000100",
      INIT_45 => X"0000FE0200000000010000F902000000000000000001000000000000F21DFE02",
      INIT_46 => X"00000000000000F002000000020000FF0200000000010000000001000000F902",
      INIT_47 => X"0000010000000000000000000100000001000000010000000001000000000100",
      INIT_48 => X"00FE0200000002000000000000000000010000FE0200000000010000FE020000",
      INIT_49 => X"000000010000EF02000000000100000001000000000100000000010000000100",
      INIT_4A => X"000001001CFE020000F002000000FB020000F902000000010000F00200000001",
      INIT_4B => X"01000000010000000100000000010000FE0200000000020000FF020000000100",
      INIT_4C => X"0200C21DFE0200000000010000FB020000F9020000F802000000000000000000",
      INIT_4D => X"00000000010000FE02000000010000000001000000FE02000000000000C21DFE",
      INIT_4E => X"00000000010000000100000000000000000000000000000100000001F21CFE02",
      INIT_4F => X"0000000100C000FE02000000000100F019FE0200000000010000FB02001CFE02",
      INIT_50 => X"00000100000001000000010000000100000001000000010000FE020000000100",
      INIT_51 => X"00000000010000000100F81CFE02000000000000000001000000010000000100",
      INIT_52 => X"00000001000000000100000000010000000000000000010000000001CA19FE02",
      INIT_53 => X"0000000100C21DFE020000000001C21DFE020000000001000000000100000001",
      INIT_54 => X"FB020000F9020000000000000000010000000100000001000000010000000100",
      INIT_55 => X"02860000020000000001000000000000000001000000000000F01CFE02000000",
      INIT_56 => X"0000000001000000000000000001000000000000101EFF028600000200101EFF",
      INIT_57 => X"0100000001000000000100000001000000010000000001000000FE0200000001",
      INIT_58 => X"0000000000010000000000000000010000000000000000010000000001000000",
      INIT_59 => X"00010000000100000000010000FA020000FB020000F902000000000100000000",
      INIT_5A => X"FE02C800FE020000000100C21CFE02C21CFE0200000000010000000001000000",
      INIT_5B => X"0000000001000000000100C01DFE02000000000000000001000000000100C800",
      INIT_5C => X"0000000000010000000100000001000000010000000100000000010000000001",
      INIT_5D => X"FE02000000000000F219FE02F219FE0200000000000000000000000000010000",
      INIT_5E => X"0000000000000001F01CFE020000000100000001000000000100000000010000",
      INIT_5F => X"010000000000000000000000000001000000FF0200C21DFE0200000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"D0BD6F451E5F0442DC70563CC1342907E6D802CBC0B500000000000000000000",
      INIT_63 => X"572489B680726E67411542E90F88B1826B591163A7A29DB7975935271222DB1A",
      INIT_64 => X"3575FD0B6E5F02FBF1ED7B6309FF4AFA82E3C495909F794B47ECC298147A9476",
      INIT_65 => X"1812A2878042343D32130ED8D4AA0DCF2F3414FECBF8C5BE20B8F4B62AA07F7A",
      INIT_66 => X"000000003E3629201B08E6F352303F34301003EDE29BB6D0A78178652B452722",
      INIT_67 => X"000000000000004C0000DD0000000000003D0000000000000000000000000000",
      INIT_68 => X"0000009A62000000A200000000000000003D78000000000000C8000000000000",
      INIT_69 => X"000000000000DA000000228C00000000E4000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"ECF6A4F54BF457F3C9F264F1B4F0C4EF63110000000000000000000000000000",
      INIT_6C => X"2500049416F4A5450041931402222CFF00FED5FD9DFCFCFB71FAABF973F8AAF7",
      INIT_6D => X"941A0195D7008094198965860080AA1901793B0041BB19F5181700049418F2A5",
      INIT_6E => X"A5F90008EA1A8BC5B50022BA1A8A57780004941ADF53680004941A01E5390004",
      INIT_6F => X"80941B01A5A50008F81BF7458600809B1B8C10390041991BF3A5250041941B01",
      INIT_70 => X"01A5D90080C11C019CD70041AC1C82A5D70080941CA90DD30080941C8DA5C800",
      INIT_71 => X"0008A81DF085510080C41DEF694D0041D21D012A4A0022EB1D012ADA0041B51C",
      INIT_72 => X"1EE73E340041A21E010E2A0041E31E0145260022A21EA3A5D90022A71D01A5D7",
      INIT_73 => X"930080E41E01A5890080B91E01A5860080DD1ECA2A8690C0DD1ED5A53A0041F0",
      INIT_74 => X"E31EF92EE60080CD1E0151E60080941E012A990080C31E012A940080C01E0105",
      INIT_75 => X"A55492C0941F012A470041E11EDA65F40022C11E7B65EE00809B1E9D05EA0022",
      INIT_76 => X"80EC20012AD300809A2001A5CC0080E61FF6A5590022CD1FBA49570041CC1F01",
      INIT_77 => X"01C8A60080BA21EEA5D90041E4200159D80080A820A749D70041DF200159D700",
      INIT_78 => X"0080E521F005BA0041CA21016AAE0080E3210125AA0080E221AD45A60041CF21",
      INIT_79 => X"2201A5860080ED229645340022A22295E52E0080AD2201652E00229A2291652A",
      INIT_7A => X"9A0022E62201CE930041E32297D3920041A822FA6E910080CF2201A58E0080AD",
      INIT_7B => X"94239B455700809423EF26FE0041E32201D3EA0080F2220105E60080AA229825",
      INIT_7C => X"6C570041C425B9A5460022C0249BA5D20041992401A5D2161894240195C80041",
      INIT_7D => X"41AA259F47D80080E4250157D3004194250193C60041B2259DF4580041A225EA",
      INIT_7E => X"01A5EE0041CE26FAA59C0041E12601A59400419B2601A5920041A825B8D9D800",
      INIT_7F => X"004194281EA5D800139428CBC55800809F2701E5FE0041D4260157EE0041ED26",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[13]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"2A8D58680041B42ADE51660080DC2AA00D3B0022CD2AE02E9E00809429A4A50D",
      INIT_01 => X"B90022E92BA90EB40041E42BF5B9A80041C92BF0A56E0041AA2AC0547401A2DC",
      INIT_02 => X"C42DAFA54A00049E2DEBA5460080162DF153D80004E42CE8A5D10080942BAA6C",
      INIT_03 => X"A5D30041C42DEAA5D10080EA2D8C25CC0004DD2D0138CA0004C92DE145530041",
      INIT_04 => X"80D22EE325340041D42EF6AA260022C92ECEA5DD0004AA2D01B7D30022A82DAC",
      INIT_05 => X"99A5970080A12E89C9970008942E01A6940080A42E01D7940041C62EE6EA3A00",
      INIT_06 => X"0004E72EC925F40008C82EAE9FF40022B12EE9EAEA0041A82E01A59785A0AB2E",
      INIT_07 => X"300105D90080A83001A5D80080C53089A5A500049E2FE045490041C02FE7A5FE",
      INIT_08 => X"9100419432CEA53A0022E3320137260041A831CD25C60080E331EEA5590041A8",
      INIT_09 => X"AA32C40AEA0080E5320145E60022CD320158E600419C32A3C8990022A532C2A5",
      INIT_0A => X"BCD3B0C0A43401A5AA0080C03301474E95A0A53301A5FA0080EA320169F40022",
      INIT_0B => X"04A83501A5570080D4350188520041C63501A5460080A435B1A5D90080A734C1",
      INIT_0C => X"C8A54C0080E136EDA59900419436EEA5910041943501A5D20041A835B2A5C500",
      INIT_0D => X"00419A3AFBA56500229B3AA1EA470041BB397EA5A50041E437F0A5570022B237",
      INIT_0E => X"3A7E797B1518D03A0152791518B93AD7F9780080A23A8CEA6FB462C43A936A68",
      INIT_0F => X"5E0041D43F01385C0022AA3D01255C0022A83C01C5740080943BFCA5050022BB",
      INIT_10 => X"AA44C2A5A50041A24201586E0080AD42F5AAD90041E041B8A5D10041C04101A5",
      INIT_11 => X"2A460080AC45BC0DDA0022B1440157D30013A44401A5D20080A8440157C90080",
      INIT_12 => X"8094450157590080B1450158460041ED45B6AA460041D445BDA5460080C04501",
      INIT_13 => X"94A5980041C04684A5930041C046C053D80041E94501C9D6BFC0B745D8A5CB00",
      INIT_14 => X"0080C448B405CC0080B54888D3570080B34701A5530041DD47EEEA9C0041AA46",
      INIT_15 => X"4801A5D90022E148992AD70080944801D1D30022B24801A5D30041A84801F4CE",
      INIT_16 => X"9A0080E34AD919910080DE49E625590041E44901A5450080AA4801AAD90080A1",
      INIT_17 => X"DE4C0105CE0080C44C1FA5A50080AA4BB8575700419E4BC7A59B0080E54A0126",
      INIT_18 => X"A5850080944F1ABC970013E54E1FA5970004944E01A5580013944DBDC5D80022",
      INIT_19 => X"049452F9A56500229452C4A5D10041AA51F4A56B00049451CA0A3E0080DC511A",
      INIT_1A => X"92F8930022945301F46A0008DC53FDA5590022AA5201D8E80041CC52F9A57900",
      INIT_1B => X"0080E05401B2D70080AA540125D30080DC54012ECE0080CF5401A5CC0004D253",
      INIT_1C => X"550193570022D5550119490041C4550125350080B454CEA5D9004194540145D8",
      INIT_1D => X"2601A2E356D745260080A8550105D30080A8559A0ACA0080A155CCA5C8004194",
      INIT_1E => X"F956D3A5E60041DC5601A5990022A956D0A5900041B156CEA53A0041F85601D3",
      INIT_1F => X"A5590041B457AD4A57D162A35701A5520041C457F84AF40080CF56D605EA0080",
      INIT_20 => X"80D45CD845CE0080CC5C01D3CE0080C45C01A5CB0041E45B012E4600419458D7",
      INIT_21 => X"EE6A520080995DA2D8510080C55DE8A5490041A45DD9A5D50041945C0145D300",
      INIT_22 => X"00809D5E01E5DB0041B05DA859C80041E65D80D7580041C75DDB79550041995D",
      INIT_23 => X"6001A5C800139460BBC5580041945F01A54C0041945F01A5950041C45E91C588",
      INIT_24 => X"140080D761012A0A0080DC61DFA5DE0041A86001AED50080A76001A5D30080C6",
      INIT_25 => X"9461F1EA480022F261E00D460013946184B9170080AB61AA85170041A8618345",
      INIT_26 => X"E5AA0022DE61E245A60022A761F3A5590041A46101A5510041C0619AC54A0041",
      INIT_27 => X"4194618719D3D2A0ED618679D10041B461F3A5BA0080ED61FE25B40041E46190",
      INIT_28 => X"F42546E4C0A5629A452E0041F86201A5260080C662E3A50E0041C86201590A00",
      INIT_29 => X"0013E5621CA59A0080B062FDA5930022B962E5656E0022C662E5254A0041E162",
      INIT_2A => X"6301F8260080BA63B9A5260041A962E7C5B70080DD62E6A5AE0041C66218BC9A",
      INIT_2B => X"340080C56301052A0041D463DCA52A0041F863F731260041DD63E925260080BA",
      INIT_2C => X"DE63F7EE570041AA637CE5550041AD63EB0A370080A863A26C370022DE63C745",
      INIT_2D => X"A5D00080C5640125940080E563ED858E0041C863A13486001394639BC8580022",
      INIT_2E => X"80C865FDA5AAF2C0D665EFA5510080E565B725DA0041E5649EA5D30041C064EE",
      INIT_2F => X"0157D200419465ED19B70008E865F085B70008D365A578AE0080A965F9A5AA00",
      INIT_30 => X"0041A166F0A5980080A16601A5940080C766010D9401A2C46601A59200089466",
      INIT_31 => X"660153EE0080AB6601A5EAF2C09B660134E60080D466CCA5E60080BA6696A59A",
      INIT_32 => X"660041E36AFCA5A50022E367F3A5570041946701A5470080CE66D4BEF40080C6",
      INIT_33 => X"946AF545790041A26ABC19770041D16AF5906D00419B6AF0F3690008AA6AF526",
      INIT_34 => X"54D90022A26DA49AC80041E16D7A9857EBA0D56C0145D10008CD6BB8580A1718",
      INIT_35 => X"41A87001E5D90080C77001A5D10041C070F7A5D00041E470ECA5C91D329470B0",
      INIT_36 => X"83D3D30041A471FBA5D30022E571AC45AA0041E771A8A5A61D32E471FAA54600",
      INIT_37 => X"00049478CFC5DF0080E572010DEA0022A572FEA5D90041B471FBCCD30080A671",
      INIT_38 => X"AA9800010080B17F014E97FF62C07EF6A5A500049479D69C510041C479D4A5D3",
      INIT_39 => X"01020100000000000006000100BF00010001B100632C3FB1006364E74C0001B0",
      INIT_3A => X"408800050301E1034503030506E104AB0006050604BF00020601000301010203",
      INIT_3B => X"83E086408840010001BBF803002504B1AE4AE0A5A52523B29B0B0A3E00005D1F",
      INIT_3C => X"049CE3C86F2AE0286F2AE0009700FF802AE0FF7C39030100E1FF103903000098",
      INIT_3D => X"4AA04AE0100018E10254019B001D0019E10454029B001E001AE10454019B0020",
      INIT_3E => X"175D603A0353135587598600010003668C953F003FE07F7F2D7F010D0037E003",
      INIT_3F => X"292F22007F25B2960000492FC5060A41B2906170000D02652D00662D0B419600",
      INIT_40 => X"03215C010D04040000015303033E2F0000000004A58538B30228E0CF28230B30",
      INIT_41 => X"8661CF282704000D7C00019BE00300492FC506D32065515CB202B187B186C6A0",
      INIT_42 => X"B8000231E0074F064F01B0A780C0A0A780C7A07900000296000036E0000036E0",
      INIT_43 => X"408800CC26526A32001A042A2B03604536044088000000020000772900740274",
      INIT_44 => X"0F184D6715285C026C0B5DA00A58C8455F7A4D1B2A0900290459A01458683F55",
      INIT_45 => X"1A0C2C044088B8E33F4810B086BE1B4A874E329700B20153D580AE74B3E40252",
      INIT_46 => X"38842D464100C815D72001685815D357232A6E18254A2CB3008800E030312500",
      INIT_47 => X"4A0C9321CC2AD70BD9FE49AA2A01D9AA06F12E78004E23573A6AA6202E2A9766",
      INIT_48 => X"B30088452A19202A01DC401446000E6AFB1880CB2326018D11C0600A53076A71",
      INIT_49 => X"B92E5E592065517C2CE76A181326E1800E3A6A552025025740C54A0140977401",
      INIT_4A => X"77880001F81A022B5E01064D5E021B1A28245350601A084088B4D4EA7C606C94",
      INIT_4B => X"2BE005413F41C86144221A2A302555294C61240539172C6153054D4613000D7C",
      INIT_4C => X"12D16E0685DAB33341C8720400002D064668135788456734E2C093B35641005D",
      INIT_4D => X"41A04F5270114D8845577820A2400E1AB3009A83E01D4A87622A97B28AD3E125",
      INIT_4E => X"5D052B116045036A2D25631B1345492E183497D72001CC8EB30010C199019338",
      INIT_4F => X"124088A545B205F9A0AA61B33C41962D0A233A182F29036B04593D9700963A2A",
      INIT_50 => X"861927B33C41A855115C4D00281128782A6A054C0400495204698800A81A0164",
      INIT_51 => X"03432F00000003030203E101432700000003B2AA5390D16C94A1004E97206E01",
      INIT_52 => X"040444000004050105E192740655029292580404940394000000000005AB019B",
      INIT_53 => X"4F00000104000DE712C50261B4540074BF058CBFC8A0000D910000000004FF04",
      INIT_54 => X"000000000000000000000AFF0101010D0000BF0001D0030001E101550045A001",
      INIT_55 => X"01430002E8014F00000D01662D01430002E80202660165FC8F8F2CE008000D04",
      INIT_56 => X"E000000000834F036A8C86BE2B4C88056546014AA00301E80001E8014F06000D",
      INIT_57 => X"01000DA58580EE6A17179A208DD71102B201BBC829055E190A53A001000D882B",
      INIT_58 => X"8AA549D4532767B2E0C58A19EFB28DC58A25B2008A5B03250A010D01438B000D",
      INIT_59 => X"C8A0046F000966C9A000BB961A090064606013C00AC48CB201B8B2BB058C9AC8",
      INIT_5A => X"74D7A05D41FF8A4709597C00C1004F064F01438709E80005E808002DBF058CBF",
      INIT_5B => X"048CAA0C41FFC509C909270A4A09CA7FAB00A35D410141FFC586493B8F000000",
      INIT_5C => X"2D8D882D00450988C10F08950700E011517FCE07028C3E070786BE2A010D9709",
      INIT_5D => X"0007FD072AE0FD450B88C1BD0688C1BD0888C1BD0188C1BDA07C058C7C4B0787",
      INIT_5E => X"7B2D0C419BA58580EE6AD727D91C0A62B21061020CC107862D05000000000000",
      INIT_5F => X"04BF007F872D02858C040427E0870BC187102D7BC888CC87D0A086012D034503",
      INIT_60 => X"02D901DDA000C5A000E0115103518C0404BF00AC5F8C040400E011517F718C04",
      INIT_61 => X"04072D86052D0404BF00AB0D8C0404BF0002D001D4A000C5A000E0025102D3A0",
      INIT_62 => X"61700064E161A70066E178000DFF0074E100450BFF000000000000000000010B",
      INIT_63 => X"2F10A31B4A7F000D7F258C7CBB70417F61567C2D7C52312F10A31B4A7F902D90",
      INIT_64 => X"016F02000D000460000D80812DBBD4521A04290B51A001507DE4F814BB565231",
      INIT_65 => X"C102C13B4F0074E1009751A004574B8F1D8C3B4F4A044E4C8F130202DC2F4CA0",
      INIT_66 => X"014100009765030310D525C88C019B7C01C6A070058C70C8A03D02C13D02C12F",
      INIT_67 => X"3B83032D983607C102433D07C10241705B05463B3B4B80077E0001F104460539",
      INIT_68 => X"02540256009B7274E1009B032D04F8A001022DE001000D8105C100A300014C3B",
      INIT_69 => X"0000022DE00000022DE07A7C02C1030308D5250E8C039B007E00090072E20970",
      INIT_6A => X"02422FC100C1006F025481E7A000C53B463B804FA05000C1006F025400430386",
      INIT_6B => X"680042010103E82A71B1450A2A0A67015313D366EA1CB20241000274E1029BA6",
      INIT_6C => X"018619F70853D1D324397808D8B1B2000040D52542EF4100C5A004D5276C8C70",
      INIT_6D => X"6F01062D86890D06C58C025408B1012FE000202FB1A50557460814B1AA630026",
      INIT_6E => X"0340050501000505000005B0000035E0000035E0000032E0000030E0213FC7A0",
      INIT_6F => X"AB00050274E104340204000071000000010000000000000A000104C4050505C1",
      INIT_70 => X"0074E10454056F8A44B300C1016F05AB007E00010506FF8B968181048C025400",
      INIT_71 => X"3B3B83087E00010A8C0848A081A0012EE003037EFF8B0AAB007E00010A055681",
      INIT_72 => X"05815BA0000074E5A008D527D63B4B830E8C02549601468F52463B83268C0648",
      INIT_73 => X"D2A002032DE000C5463B834D468F5381620000032DE0AB02550AAB007E00010A",
      INIT_74 => X"6E8C06010074E10074025602540154369808C1619708C1069E8C0000082DE008",
      INIT_75 => X"0101D7A040D5274CA010D527EBA000C5A004D527560000032DE000007449A078",
      INIT_76 => X"00000007FE0101000D09B1012FE000202F108C0000032DE0008181C100A30001",
      INIT_77 => X"04C0278F1C8C05052D3A4103700045020300007E00010200007E000100000000",
      INIT_78 => X"052D00743C5617430006064906D9A0E805C3437EE1FF03050700040705400440",
      INIT_79 => X"410061004F06CDA0004F06C5A002002DE0004F014F7900000000000000FF0843",
      INIT_7A => X"00740073E1064F000073E10654069B007ED7A002C502007302743E0141064F02",
      INIT_7B => X"740073E1064F079B007E0074E102540640A00061044F024F00000073D68C079B",
      INIT_7C => X"8C062FE006520407040574000D0254060474B17746A0014180A000020D099B00",
      INIT_7D => X"04540000D82F404607C17A07C18047045000072D7A7C07C12047045006B1775C",
      INIT_7E => X"732D009B00730001EE8C01AB0073B0784601948C079B0074E1045571042D3FA0",
      INIT_7F => X"6512518800000003F28C95BF007DC101000002B077020D0000730000CF2A0077",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[13]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[13]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized18\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized18\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"AB79000DA525B200ED2B0000007E0300007E0201B9E91C801362B2BBE055344D",
      INIT_01 => X"ED2B0000007E0300007E0201A5059720495AB2BBE055344D6512518800000003",
      INIT_02 => X"B208087400000000000000000000000BAB79000DB2D3F86948020386E620B200",
      INIT_03 => X"077457A00142004571030000010101020101AD00FFB1850A2A0A67015780001C",
      INIT_04 => X"02B00132E00061044F025000012D014102410061024F015000012D0061015007",
      INIT_05 => X"2A00050B050A05EAA0FF0101B1B2DF8CEA02931913405353202DB200C5A00568",
      INIT_06 => X"2F0465E161A7D3A0000A32E002500650045006B80532E0019B0166E104040B2B",
      INIT_07 => X"732B79FC80208DB2063C2BB82B3FC87FB1A525577849412E4A202DB2AC410025",
      INIT_08 => X"05010D076A17C9A00297000B2FE003500250000000094BA0025000A551B20909",
      INIT_09 => X"FF000003BBD4664D5E290400340024642A6A6C1700BB9600C52F0006068C0150",
      INIT_0A => X"73E1029B0001D1A007CF17C971000831E00241FF0073E1036F004503742D61A7",
      INIT_0B => X"0000010000000000080000772A0074047400010000040173E1049B0002C0A001",
      INIT_0C => X"1061CC05C10005C7A07905B20348A0063A8C04483B8F0501A5B200000D04C101",
      INIT_0D => X"54035001550250BF0000007D0001000002FF0101000D00ED2B00010801118CAA",
      INIT_0E => X"62000000000062058204820000000000050202122FA5B20100000200022FE001",
      INIT_0F => X"040400012F000400012F48760004D0A00073E1007402540256616F056101AB00",
      INIT_10 => X"3F0000AAC002030000AA00000003B061AB0062E100AB000202000062000002FF",
      INIT_11 => X"6F6B4C00006333E061A7022D6B5244010000000004AB0750830001AB006F0155",
      INIT_12 => X"04C80420B200BBFC2734004F048BB29D03C1A70332E003C5B20541014F014161",
      INIT_13 => X"6C83C1A0084F6632E0000064C0A0660132E0074F05500101740001B16B04BB97",
      INIT_14 => X"02010000000100000007B06532E066962F49000065C1A0616F000000BD2A0074",
      INIT_15 => X"00000807012D070563E1FF04050663E1015400C5A064112B0601238C000461A7",
      INIT_16 => X"010000612F03E80004E804560107010003E161A7000D5E012D60000000000000",
      INIT_17 => X"000004E104C0A00033E0BF058CBFC8A0619707C1000101E45008C160533B8F08",
      INIT_18 => X"9807C100C1A00000612F03E80004E804842D000101A05008C16053A07A4407C1",
      INIT_19 => X"07C100453B3B83448C0000072DE0520000612F03E80004E804010D369808C136",
      INIT_1A => X"082D0454BE01072D6AC8A000072DE000072D694BA0060620D5252A8C6070A050",
      INIT_1B => X"6069A06A000D6AC8A000672DE06956A00447616F0500000000000000010009FE",
      INIT_1C => X"1B8C0134E007012DFF4F47A00141BB964D4F035C3061496A02091805C0A06BE5",
      INIT_1D => X"0001E1006F04E701410473600D8C01470675616F409035E09000100F250C4C52",
      INIT_1E => X"00000001042D6C58FF8F85FF6CC100A00143000101E1A5A5B2AA014F84003617",
      INIT_1F => X"3C176A2D75002D7F058C7F480100046F2AEDA002B12B3FC87F082D046E8C61AB",
      INIT_20 => X"0B35E052EDA0077AA0000D6ABB964D4F035C3061496A02091805DEA000010D00",
      INIT_21 => X"0003000D6A052DFE010D04B169000DA54578002603B2000D69000D59692D5B00",
      INIT_22 => X"030100010F154AA0616FFFC20200012929118C02C2520001E1695B2DFF4F0000",
      INIT_23 => X"6AA5B25D45A0790D8DB205000000000005AB69000D014F0141616F015235E003",
      INIT_24 => X"00A597B296C50551020405B2016F95CC49000100096A150A8C000631E0666100",
      INIT_25 => X"0636E00570015503E3A00552070201000000000000000008A5B33F0265B20243",
      INIT_26 => X"E3006F015402560061006F0256050400000000A480A004523F05000635E00000",
      INIT_27 => X"35E085FF6CCD0261616F3F05078C015D1B0008E1014F009B006A0800000D000D",
      INIT_28 => X"35E00267008529294B6C0002000000000400010F15407188C1000001072D01F7",
      INIT_29 => X"03000135E000000136E0000001DA03400100000000000500852929416CB80001",
      INIT_2A => X"000003AA01A1000135E07F058C7F48010F8C7F48016101C60169016D01C6014A",
      INIT_2B => X"000000000005B8007A2B0083C0A0007A2B0083000002E1015400AB0003030200",
      INIT_2C => X"7F238C054804042DBF04E50000762F7B2D0C41006F0154000408470247030301",
      INIT_2D => X"9604053042B2BBD00C20044D045F02E3A005058C054800007A1F5202198C05C8",
      INIT_2E => X"834D000065158C01C80000835000006600000003FFBBFC2A64178504413FA0BB",
      INIT_2F => X"79208CC4654AA0014FE405673D02292565B20241A83A6A282704C1A001C50000",
      INIT_30 => X"046F004F00000D00420201FF000004BBC81700032FE00350025000000002CBA0",
      INIT_31 => X"4A02012D03140D9061580000010004B13F04C10100020000000004F503250061",
      INIT_32 => X"00008500010F2500010F254A90CE7F00010F255A03FF6CCD850063E100010D14",
      INIT_33 => X"4F084F780001B8000131E0074F86A5B2CC00C1004F064F780001AB6B032D0445",
      INIT_34 => X"112A0000000000A412526AC0010000000004B8000131E0094F86A5B2CC00C100",
      INIT_35 => X"963B1E6D6A7512000D5700C101C1A0000003252A000000A4030301DBA0000003",
      INIT_36 => X"41B300552F497F00A505D4D50809CA87571AB35600E03A3A61013910000D5700",
      INIT_37 => X"48E09728655E2D0413002830001B2E34710011EDA0C13F000102A525698D3E52",
      INIT_38 => X"B2000048E0807C6D1B3A190078545F632E3471001100C11F009612B044A00000",
      INIT_39 => X"00000000B22A66B396124700A43A11B8443FBB96124E00A43A11B7A5852E26EA",
      INIT_3A => X"0557221A03602A5D11000037E0A5D9521957D301D508E6C0784C40AAB2085B00",
      INIT_3B => X"1C5D4A2C2A6A645D04741112501311010000E1FE00C9080F703FBBE54B655C4F",
      INIT_3C => X"490110A525FB58008D17D1B2A01148513A2C16240440160C1544151717375D52",
      INIT_3D => X"4D0C522E11001A25662965310204125013BBCC655252004D1300612112DAA008",
      INIT_3E => X"795D1300B0F18CBF00000C8C1705801D4F1A2A000000E6FF00C9010FB86D1248",
      INIT_3F => X"6060216E53520C008528145D3A116211052814BBE45D22003B044FBBC8163B30",
      INIT_40 => X"5201C1018C2D074A0000A38C8D2D074A0000A38DB88DBE2B4A8E0001E4165264",
      INIT_41 => X"4D1A002A5F008625B200420751008600008DBE2A02BBC85D7A0001A5010A41B2",
      INIT_42 => X"00B2D34A18B8D8B3AA84A545B20A99271953A6974186408E18AAB3006C2FBB96",
      INIT_43 => X"803A3129045655315C0353026311E48600000D7CBBDC63103065700918781E12",
      INIT_44 => X"605B195346B27F6696243917601A05040086A506C8D901D337B2014187A5B3AA",
      INIT_45 => X"5E1300B84E3FA525C94E25B3AA980086A501C8D901D337B21D4A9687A501D391",
      INIT_46 => X"7F0001965D033A03003A7B001B240400C852233A186D011B560552045F2A7804",
      INIT_47 => X"9B85B2AA80063804400102BBA45D1E2C0D480963028625B210661B4A000028E0",
      INIT_48 => X"9F0086866E45B2AADC703A04000102BB961A2A04860520862B9C52FEAAC041B2",
      INIT_49 => X"51022B1B01065300301000C837604E78522A280934710011000086BE1900B002",
      INIT_4A => X"008640A0683F00A5B4A5B3AA986513C087468700C817690D312217163528451A",
      INIT_4B => X"B847330FA5D391B20065B28666A8710C0F282D2B65018625B2863CE086667F66",
      INIT_4C => X"B71B00E05E632A120045B3AA985E2404A52552932501D7000D06B3AA84005D2F",
      INIT_4D => X"C5A00200000000170545B3AA8005023A2504B086BE1B4A8600B886B71B00B886",
      INIT_4E => X"11B8B2ABC50234B2AA846EA000502B00043C010495D80303A480A080A0017202",
      INIT_4F => X"00034D36E0030386ECA0F8030025044DA000382FB2D7B3CC26078CEA4801A5C9",
      INIT_50 => X"050C2600364946036B04DE86E286009600250445D1DB74A100D1206C4711B300",
      INIT_51 => X"81B3C044343B70160841A01036E052BBA453110B4C0B4A000086FC8645B3AA80",
      INIT_52 => X"A6B3AA845686009600537904A5A54781B396004E008625B28653866086A5A547",
      INIT_53 => X"92203441B3C816407E3079561C04520C46135D86009C05467B04459379398000",
      INIT_54 => X"A01AB3F852181B13459AA0AA035766420051D3B31E4A86009600532504004569",
      INIT_55 => X"B386660087671A4A0086BE1A4B860085D819D0204AD8C7581811A5AEE64046D3",
      INIT_56 => X"20582EA00D46B2AAC4454109005D2FB2EE40B8D40A0E3EC6AA6A460E8DF70674",
      INIT_57 => X"961B2A0026340087052AB92C802E1A25B21D4AF81B5344606D62455C6A3A0086",
      INIT_58 => X"28506060135987010D8700F00E5249110096481686A501D35923559340D319B2",
      INIT_59 => X"47610087A5A6808E2EB2C86B251B70620087A5A1808E2EB21C4AE03031252C0A",
      INIT_5A => X"802E8A67EAD157B2106EB2CE064A60945241B2064A9BA5E537E2B286617F00C8",
      INIT_5B => X"002D2BE000617F00DC4529701100B8893F00E055344D6512009BA525D9490281",
      INIT_5C => X"2EB4E2B27F6686DA865901002D7F058C7FC88600000003C8295211C0A0EB3F00",
      INIT_5D => X"3CE0C853030F781A120569786D001A13258CD40C4E2638701154883B8CA5E580",
      INIT_5E => X"52094004D803A505EE2B7E3042B303B8073F4886C686CA8603A30268164ABB86",
      INIT_5F => X"AA840C200B40A001B8073F45196EB3AA842A2E06466813DA0345196EB3AA803A",
      INIT_60 => X"FC471C56304164001A78785F652A1B606F0569786D001A1300A545BE40974BB3",
      INIT_61 => X"45B3020501550074015000500074045601500000007E000000000005005D2FBB",
      INIT_62 => X"000002003BE0683F00A545B2B40A0DB3FFA5B2FF00E5047000450404000001B2",
      INIT_63 => X"08510000860000381F0096485E01062F3A04C102C1A01036E0A902000D7B4801",
      INIT_64 => X"4D015E3B181B130000381F009686A581200E1502B821B2003FE0174A134ABBAD",
      INIT_65 => X"122BE0EE41B471003A051405B187C6A000EE36E0015501E7A00552870001D057",
      INIT_66 => X"B3C86567442D64606013B0ED3B2BE000267FB0EE3B2BE00000EE4AE08700B086",
      INIT_67 => X"A601D31A66C98D2A590B0EA18EB30686C1860001B2B83442230369800D74C052",
      INIT_68 => X"66964104498645D9694BB3F741C816602B62074D5E0F5586B28192E0202A1953",
      INIT_69 => X"DC0A4C0145B3AAC80A4C01A52571B3AA844E01B2018D17B30D410000864AE010",
      INIT_6A => X"2700652A1A047204655D0A1B56227C131C122C0400966B0F0096021B1045B3AA",
      INIT_6B => X"986D2504D787009686A501605BE240D3C0782702D800252DB20000762F00CC31",
      INIT_6C => X"4D00F4B3AA845C86508600D05D7C1000F865520F2B2F028725B29687052BB2AA",
      INIT_6D => X"2F45B3AA9800502A647803395D5235034E1C642C724246030A456C5997E12BC9",
      INIT_6E => X"3A38701100000D70BBC84F5601470B0C473A0119603649654F4D0400B0000036",
      INIT_6F => X"00B84C2E0F00E44C65041245B3AA8065B20065B20A4A940F60136086009C2844",
      INIT_70 => X"B3144A0086009686C00288108DB2965260781E124F8600C8391863024D626111",
      INIT_71 => X"E0603A41B3BBC044343B70160841A0B28B9C25B2AA8452312FC8A086456B4781",
      INIT_72 => X"603A41B3003FE052312F41A045939C25B2AA84144BC85214084B86718600456B",
      INIT_73 => X"654D67110045E98A3EEA00252DB3E4211B174D1B781C346A26045B8600A565E0",
      INIT_74 => X"C81994C062202DB30043E0C82A026A05390C008625B21E4A106686000002D429",
      INIT_75 => X"27E0456C550F3701C815CBC06AE6005CB20000AE015004410241018D010110B2",
      INIT_76 => X"1ED3D16CD9206A41262B8AD32781EE094A1908530146C0D3B20010B80083E054",
      INIT_77 => X"052A7B0800456914745846B3AA840000381F000043E00043E000381FBBB25157",
      INIT_78 => X"4223AA25B2AA84658677860045B3AA803A1D140500B80146E000004D1F009652",
      INIT_79 => X"48E0CC612C4421621405538647134ABBC80B008625B200B20E93EA18D91C5129",
      INIT_7A => X"009686C02A78003441B2C80B008625B2C8672A008625B20000552F4B86DDA086",
      INIT_7B => X"009600250400B86E2E0F00E0036B09140500B5A5B3AA800A5212B086BE1B4A86",
      INIT_7C => X"45578C0F4C5349D855087A195346B30000762F00A52539324EB3AA8000285D0A",
      INIT_7D => X"000103282F064668130045B3AA846D2604B2D3990046EAB3AA80306D125A8600",
      INIT_7E => X"E01A05044EA0808605C0372A01D337B21D4A8741A0683F00D0535C350002292B",
      INIT_7F => X"E19F430F64A568102600100096662112B086BE1B4A8600452A5925B3AA98078C",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[13]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized19\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized19\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"60346C1013FE68014A6BD84A13312A1857D94201D2206CD76DB81128B2A50000",
      INIT_01 => X"40641B0400195564060400D452191835636213B8BA3CE0BA010DB2032A025203",
      INIT_02 => X"00A101A2A42A1249864686034B86B2AA4781B30B4A80A00A5100860000029666",
      INIT_03 => X"4B86608645B38647E0C76D028605806E95B2BBAD457895B2AA84D3A00E51034A",
      INIT_04 => X"7F7087000145B3AA80050C2600364946036B04B086BB962A028625B2CC521408",
      INIT_05 => X"1300C80C22260400B411A585AE7E37E2B3A4502A02860585C0CDB28600A31B4A",
      INIT_06 => X"87BB9635693A2B008725B2144A194A863CE0008600E42D01460600D04761631B",
      INIT_07 => X"1000C80C6A2604B887122BE06241E01B562B0C522E2C04872003311521B2194C",
      INIT_08 => X"9687C0013AA0BAB2AD418700B2EA1C26C01257E624A19A0AE627CBB3005B1F49",
      INIT_09 => X"683F00C80C004D6561260400B8752E0F00C8535C450A47280AB8AD172BE07F26",
      INIT_0A => X"E0455314B8D8B2AA84DA8745673441B3004587D287C687DA870001B8623F40A0",
      INIT_0B => X"0087010100162F01162F45B3AADC08008625B28766D40C263870114F87B8874A",
      INIT_0C => X"000048E00000762F45B3AA8420044E8652A0864AE0A0506060134D0100870101",
      INIT_0D => X"3F4887B086BE1B4A870096531F0C0019023A351B1300A54534B38648E086876E",
      INIT_0E => X"03502A78181B1300B8753F00960025040045B3AA800A215D035250606013B845",
      INIT_0F => X"D68600968705359011935809B4B20C4A8745F00937C9777081B352009839315C",
      INIT_10 => X"0800D0651A0946032A24530800B086BE1B00B0000086A5B3AA80282802517011",
      INIT_11 => X"2E0F00D40C4D1E0978232B701100B070000DB22AEA7925B2AA840C473A785D15",
      INIT_12 => X"7C000D453E482EB2AA846326006B04E3A01E5F27B070A5D91C06B37C0001B879",
      INIT_13 => X"A545D591207912D353D201CCC00151577E800E26B37C000D000DDE00C17C6FAB",
      INIT_14 => X"000087BE1A00964D031A0F1B13A5B3AACC24612C7813548600C4636A003A0400",
      INIT_15 => X"440B4A0086B40ED03827012D3B25402641B3114AC8232D50061806518600D011",
      INIT_16 => X"0A0DB396A5539761B2000546D52E81B2064AE03A03862001797928B2FE3F7986",
      INIT_17 => X"0001CC1A13B2B90A6914B3AA8445B3AA802861013A2B623428452753086286B2",
      INIT_18 => X"AA80284547490800B00000362F00DE8C0110E8000DE8064A004BE85841014186",
      INIT_19 => X"3E266C18B4B20045D8D9192AFA0034B2AA845B8600B82B3F009C0627040045B3",
      INIT_1A => X"AA84182F28565600680112B001132BE00101762F00010087BE1A00B0A5052A58",
      INIT_1B => X"0D3B6446003A0400C84E650C4D4D633804B000BE1B00A31B4A7F00B570952DB3",
      INIT_1C => X"180086A501C8D9575920457ED99226BC9969ED20F81BB8EA270A0EB2008600A8",
      INIT_1D => X"098C9686CAA080062946004663644C013A3A13F1A010501B00000E2BE0C85228",
      INIT_1E => X"044F865C86000087BE1AB4988DB38700A54526E6A0FA94B3000028E0BBCC3127",
      INIT_1F => X"19527418254F601C30354903192604E50000A3134A86A5E53042B3E4305D7138",
      INIT_20 => X"B44E400EEEB300617FB18745B3AADC644C018625B2006186B1874687E8A0C82A",
      INIT_21 => X"B3AA841010A37FCAA0008600455326B39686206CD71C7441B2004A01417A3F00",
      INIT_22 => X"0D85B2AA800546270445D1D320C997EA29B427676C702DB8ED757992C0020AA6",
      INIT_23 => X"28E0000028E080864B01B086BE1B4A864EA000382F007E2F4F860000029B7C00",
      INIT_24 => X"2504CBA0C81B3D642A1B000086A501788620AA214DB2000028E0000028E00000",
      INIT_25 => X"392A0C5B87C0A0EB3F00B00000362FB4D49793C02ADA6A746E202DB37F669600",
      INIT_26 => X"134569F42001AAE626FE5871B3AA800022018725B21E4A009A83E0AA80703620",
      INIT_27 => X"86A5012E41B2962A6A2F30354F28270457870096282C023A7B005E270400CC5E",
      INIT_28 => X"344D6512B8DC49E0BE41005B1F4910009C0500652A4D47192A24530400C80C00",
      INIT_29 => X"0196396A780F622465780600B8FB3F00E42D01460600D00C5E2704C08600E055",
      INIT_2A => X"A08672008A2BE06F000000000005AB91F200002AE0004501BBC8166154491303",
      INIT_2B => X"40A0683FB80549E00505BF00015E0202BBAD004F0241005B2F00014D0202A480",
      INIT_2C => X"0B4A015005419BB286679441B29B03C7A0014F005B2F0001CDA0000001710202",
      INIT_2D => X"A0801046002364E700A09B044AE0A5A525B2AA8402BBAD030301B80049E00050",
      INIT_2E => X"04B8EA330F40A0683F02BBC852233A1C0674500418042B5E01062B51243A05EE",
      INIT_2F => X"9A58B3E00AC7A010502BCC8600E449530A4F655D011B5228130002BBF8030025",
      INIT_30 => X"F81A671200B086BE1B45B3AA841A2704D08600B8FE2E0F00859319D7C03E5520",
      INIT_31 => X"1000D03531315E181000965F282246033B04404765130045B3AA986A4D7B0400",
      INIT_32 => X"190065160871A07F57E80001E80100000000040046E056C0A04D3F00A86D6100",
      INIT_33 => X"4A7F105310034C054A02034B034A9B683FBBA8320000652505473A050059A096",
      INIT_34 => X"C1100000E0115100BBAD030310CFA0000000E011510204A35645A0042061B21B",
      INIT_35 => X"5C283B601C4712B8FF01552801E9BF058CBFC8A000A2520001B0039F00044104",
      INIT_36 => X"0149A00E51034A0341A0059F00014EA050000000000005965200625324104024",
      INIT_37 => X"B2144AAA8C000049328C96E5B92E6CC9F4BEB2144A8001C001B203588CAD0404",
      INIT_38 => X"B2AA80286153005205D6A07F5CA0683FBF97804EBEB2004A00E5B92E6CC9F4BE",
      INIT_39 => X"C5B20365B200000D04C2024001000001000000060002552A4001C0A00148E0E5",
      INIT_3A => X"000000000000000000000A00982F41A005CE02032D05010D00022D064BA0AA98",
      INIT_3B => X"418C7F6100010D07610045A000010D007FC101010D05000D004507C9A07F4101",
      INIT_3C => X"A105C5A0000447E000A200000000A30000292F000D08C804F1A00E51034A8004",
      INIT_3D => X"0004CA044EA080045C8C0404C1000002552A037900A280A080A004C201A58C04",
      INIT_3E => X"CCA00448E000A2000002C92A000D00420503000D004200000147E005ED044800",
      INIT_3F => X"7F61F4516761222B635D05382952095D01000002B106C1A0FFC2040002552A03",
      INIT_40 => X"D39125B3AA845201A0D8B3AA800A4D671354010000494802C001A56CFE0641B3",
      INIT_41 => X"030C6D010D9C41018F11114F4F0001C101C101C0010001A5782614B3AA84A5BD",
      INIT_42 => X"000002C82B29443A04005D1B662C4046175C11065F6271216E45254C644A0010",
      INIT_43 => X"4E0000000104B0F81400C1014F7DE4F81400BAC13F00B00D9700312F40020201",
      INIT_44 => X"400000A3134A8640A0683FB10000362FC0A0114ABB96295067062B1B0409C0A0",
      INIT_45 => X"05374500462162045E95A5DBCD25C991B2017800000400162F04162F4C7F6686",
      INIT_46 => X"281A33357848003A520F5B04007F04026702020A2F718802BB96058CCC654D11",
      INIT_47 => X"D00000A37F66BB9686206CFE06E2B27F6686DB8600005D2F0028E0867F6EBBF8",
      INIT_48 => X"47024B015E0100000003ABBF0302C4034D0100000003006E7FB1A5A525B2AA84",
      INIT_49 => X"27E0AAADE0644C018625B28C54955786000100030001E602A100740249E00003",
      INIT_4A => X"0000010006BB962229183471002504158C9602A5E64D9441B201000002BBAD48",
      INIT_4B => X"4A000549E0056A03B104432B4AA00305044604522D7F002D7F058C7FC8010000",
      INIT_4C => X"180049010425B21B4A4EE310E7A0BBAD0B51124A000549E0056A064105D5A006",
      INIT_4D => X"01654D3B05EFA00050007F78527C0652312F012D7F058C04C8A0BBA83604002B",
      INIT_4E => X"21114A0CD35765B4738DB2000028E000BBD0532453001A6342245C603B023A5D",
      INIT_4F => X"10000D450AB1F00940495441B2044152B022330F05B2000000A31B4A7FA50120",
      INIT_50 => X"2FC0A001242B000002B0443FC1A09600601B027F25B27F2101610148E0029F00",
      INIT_51 => X"0400892BE06F0001AB006F015404613F000002C003040200000000049B00005B",
      INIT_52 => X"030003252A000000A403030200000003B8000236E00155025703030100000000",
      INIT_53 => X"0003B03F01C0A0010001B810502BC1010001F303A1AB0441026A03C201000000",
      INIT_54 => X"00017A102D7B00010201E301000002AB3F000003EE0541030310C00202100000",
      INIT_55 => X"005D6100DDA09652645E245D1E34046B013B0305002A01550F003A1A3B044001",
      INIT_56 => X"282C645D0108274514056B013B032435380440010001BBC86352045065622745",
      INIT_57 => X"000003B0B2E6C0B92EB200B2AAB20B0A840026710004006B01052A5228021164",
      INIT_58 => X"0440389700B00000362F0A8C01034A014088B00B4BAD000000362F4D01588800",
      INIT_59 => X"3ECC256A8E0D262AB387B877330F4A874E874086408800A42A1B785D29052750",
      INIT_5A => X"1000A5B3AA80050C2801390CB2D9402D0DF701D327D91C5757128E62495392EA",
      INIT_5B => X"085B5397701045382AD30C2EB86E22B33C41BE4196003B5C2452045004408859",
      INIT_5C => X"5204595D9700E00D651A011605452AD30CB8D823B3E44613651A11007810004E",
      INIT_5D => X"0A41B3C829462E24084F88A58513D76C18E0AA41B34D41965C4D14090714241D",
      INIT_5E => X"9744B410C100172F4088A505CE87206E028DB33C41C9CB9500A50520EE93C006",
      INIT_5F => X"A5459A20D9E2B3C8164832284F02643F071B08B25820212B82B34A413C418051",
      INIT_60 => X"512E46C001582DB30088B09A4AE08B41D44D65525C2445045D006064390A5F88",
      INIT_61 => X"2B97A5C5398A3E52B960EA0158006A14E0E02A25822A8D49D3B5310AB4D19314",
      INIT_62 => X"1952B31C41964C062B055328270BB8EB4AE0B2A280693CB2005B1F49EB601077",
      INIT_63 => X"645D01287B045788459319D7C07E487830315CB32D4100172F498800456C9049",
      INIT_64 => X"40CAEA01B834B31E209500456C575749014A00885220016A35B34D41C82B664C",
      INIT_65 => X"022D87120D025488B00000362F4C88C08800000003A545C7D8D201D379540145",
      INIT_66 => X"A386058C87C8A0023CE05D88C1025102010D02872D00000D024B86C6861C8C03",
      INIT_67 => X"E045B2AA8400661E5C282502701605E9026DA0876101F003F45D88C101C50101",
      INIT_68 => X"0A00ECB8023CE0B251C64A0E2A976626B2AA8005001A6604EC87F0A0016E863C",
      INIT_69 => X"2A3A04003A6704455786015180B3403927B3EDDAECB8EC4AE0B2A2403927B20B",
      INIT_6A => X"F86C8B35B81121B3C8196301001A24531F60345505661E5C0A65A05D41EC4696",
      INIT_6B => X"B2012E45B2AA8400661E5C282502701605E3A0ED3CE0003F9745FE406EB30345",
      INIT_6C => X"1A19601A0400354467044088B8ED3CE0453ED949D258E6D5CAE0342001311521",
      INIT_6D => X"31CCB880693CB3436A88B8BDA8EB4AE04350239700005D1FBBC8471B293A2B5C",
      INIT_6E => X"5910050A42B2394100381FB01E4AE0CB41892295A5C57980312B8D745762D706",
      INIT_6F => X"390026462A013B5504618800A5650D0E262B01A6B3E45D01601A66005D5C4518",
      INIT_70 => X"191B3870116186652A9745196BC026600A0E93EA08C093B33A41AB7CBBE80352",
      INIT_71 => X"4427E042798800B2D9AE40AA2D1957D301F1535258B396231D445D1B055C6200",
      INIT_72 => X"BBAD4427E042595441C82F61285403052919042B1B0400981F010DE5E20EBBAD",
      INIT_73 => X"70160841A01036E052000D45790D414039072B498AB1201027B2E54AE0E5E40E",
      INIT_74 => X"476A6100190440E3974088B2CE082A696D01A6201027B3E541E541BBC044343B",
      INIT_75 => X"4560A6AE0DEA41B31000C1BD401388C1AB7C00EB1F4D8800CC340A010529652C",
      INIT_76 => X"45B28627382E014824014B0801E700E62027B200EB1F00B8C93FA5852E0A4100",
      INIT_77 => X"B3A1455A8F408800B0EE8CB44A8B00B200450100010046E0005B2700362FBBB2",
      INIT_78 => X"FAB2AA845E874C87506D416E41C82A64780453786D002A04598800A58534812E",
      INIT_79 => X"88450A2ACE25310733D92DB3B45305530C002A045387B8873CE0B24A78A82678",
      INIT_7A => X"2805530C002A044088B8723F00723907BBA41B562B18441D00526504005D2F6E",
      INIT_7B => X"044088004553149CD320D0F741B32A41C829550918245D1E00533A045B8800B4",
      INIT_7C => X"103741B200010001C05C04642504408800A4535D7804520400251D0156256019",
      INIT_7D => X"546100467683894B52D9A6B761C07948205853072B02F1B92C580DD91C2A5328",
      INIT_7E => X"B3CC5247EB2501348E0125022B019C0046C0530DF0A92CD755014A49220026C6",
      INIT_7F => X"8840010001A5653401D7197401B349411E4100381F49864D884001B2E6C0B92E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[14]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"79000D70BBC81700032FE00350027402500274025680520453220BB1B253D580",
      INIT_01 => X"032FE003500274025002740256E42472006104B1B253D580AE74B27041000000",
      INIT_02 => X"0559A0004F000000000000000000000079000D70BBA4642A6A6C1C7803061700",
      INIT_03 => X"A0024F71DA034B8C03630349005001340050006F0835BB964D4F035C1C6D4E1B",
      INIT_04 => X"010400252F490B00740B01158C0648714C03630B00740B012F8C0548070001CA",
      INIT_05 => X"32E001500550035005798C0854BBA84D226E2802173B2165611B13268C066CA0",
      INIT_06 => X"32E0019B0165E104040B2B2A00060B060A06EAA000252F0466E161A7D3A0000A",
      INIT_07 => X"014F801A04261B13000531E00031E09061BBC829711A240A635B1B135908B806",
      INIT_08 => X"C9A079000631E0060072E200ED2B00090B09168CA7004F000072268CC4654AA0",
      INIT_09 => X"E1FF0000B1B98580EE6AF72ED99CB4D3F8694822B2B1A5B20031E00250000005",
      INIT_0A => X"06970073E1015001000631E0014209CF174971EF8C03AB00740E8C0905820062",
      INIT_0B => X"610000000000000000B8030431E0026F016F00000000B008970073E1025002B0",
      INIT_0C => X"477A4B438F208CA77845A084C5A007CBA000010D2F05C1004F80058C04C8A002",
      INIT_0D => X"0000010200000100E52055007003500000A38C04540600082FE003500250007B",
      INIT_0E => X"007402540256616F026F016F0000000000B0A70132E080C0A00000B800ED2B00",
      INIT_0F => X"8C04540032E0004F0332E00061004F03B002AB006200000000006258040073E1",
      INIT_10 => X"F50161026F03250256004F000000000262E102A70162E101550254616F0000C6",
      INIT_11 => X"63000D80A00061270063E16C012D9B124100000000888801012D000000AA0002",
      INIT_12 => X"B2AA014180058CA505D324B201418245468F0303122FE7A097C0040463400000",
      INIT_13 => X"4F065001017466962FC8A0616F000000BD2A00746C83E2A0064F0000000DABE5",
      INIT_14 => X"E1616F000000000000000065962FB06632E00141616F000064C0A0650132E009",
      INIT_15 => X"00000000AB63632D61ABDA8C959500AB00050D8C00000636E0046F0045020063",
      INIT_16 => X"024FAB0033E0BF058CBFC8A00261004F61A70064E15D022D5F000D0000000000",
      INIT_17 => X"B58C61A7642D0000612F03E80004E80462403D83DD8C045400468F010D7C07C1",
      INIT_18 => X"3B3B837B8C08C0A00033E0BF058CBFC8A06A998C045400468F020D6974463B83",
      INIT_19 => X"468F398C369807C100C5A004D527B100A00033E0BF058CBFC8A05DDC3B3B8364",
      INIT_1A => X"8C070101EF026184072D000080D525138C67062D69CEA002072DE000040D604B",
      INIT_1B => X"0141696CA069672D000080D525D3A06AC16006016C2D000000000000000000E5",
      INIT_1C => X"A00000A82FCBA085FF6CCD6C4560B1850A2A0A6701D3D86074262B02B20262A0",
      INIT_1D => X"B2019B000100BFE404F0A002470145600400000100800F250C4B201035E090D0",
      INIT_1E => X"E10475616F08052DFF6CC180FF8F8C04CD04D88C61A7BBFC1600000105649CC4",
      INIT_1F => X"0031E076692D7708E80006E86661010634E06AF0A00031E090610445A0FF0001",
      INIT_20 => X"015D1BDCA002F7A004B169000D850A2A0A6701D3D86074262B02B202218C7900",
      INIT_21 => X"0000B069000D6CC38C0748A0000D6ABBD029055E190AB067000D6A672D5A6A2D",
      INIT_22 => X"A0616F01F935E0030301ED8C02A1010235E00045A0029261A75A2D6AFF6CCD00",
      INIT_23 => X"8CA780CAA07848A0B913022D000000000003000D6A5C014603030100010F154A",
      INIT_24 => X"098C800265B202410241AA8404030123462734B2000831E00000076A154D0319",
      INIT_25 => X"018E2B0603040000A40303106C2D616F00000000000000000096D80104844502",
      INIT_26 => X"5B000300000005776A00030005000D015504570356030310E80425015D2BC9A0",
      INIT_27 => X"0F15012DFF4F40000001BC042500000D35E0019B006A0008E1004F0555111211",
      INIT_28 => X"29294B6CB8010135E00067037400000000B8015235E038399540A0616F6C0001",
      INIT_29 => X"0041025D2BC9A0028E2BD3A01252024101A20000000000B8020135E003670085",
      INIT_2A => X"000000B0BF010402292A00E80001E8084A0001E80A4A0C4A0B4A05A20A4A084A",
      INIT_2B => X"6F000000000000006535E0065000006635E00550B061AB00030102E10154616F",
      INIT_2C => X"044100010D0D4A86E001413FA0044AE004450404010003C1034102C602C1A061",
      INIT_2D => X"45B2AA842004B1A5E53042B20B41024705010D00000D01410048E0084700000D",
      INIT_2E => X"06500143616F00010D044705500143616F000000788CA565D0C4B23F7F8A05B1",
      INIT_2F => X"45A000A551B2020274A5A500488719D7B2BA450105B139125841B201020D0447",
      INIT_30 => X"00020302068C04C803C0A000FF0000B1A525B200ED2B00020302118CA7004F78",
      INIT_31 => X"01CCA010102D6BC17FC6A00000000000F503250061047000000000B13F04C101",
      INIT_32 => X"0043616F010135E0019035E001669061017F35E00161FF4F632D61A73E8C0448",
      INIT_33 => X"01017450A00000000077290074B0AA8048438F0001017450A00004000D10010D",
      INIT_34 => X"6A36E001550257030301DCA0074A0000000000000077290074B0AA8048438F00",
      INIT_35 => X"453E985740D246B356010DB16B6A6BC0A0006936E0015503C0A0105269C0A000",
      INIT_36 => X"3904B87F47E000A200C84F655D2B2C5D175513010DB293B9172A4BF7B356000D",
      INIT_37 => X"6E3FA0BFDB466EA6C0BEB5D2206A2A01D82734B2010082E0000000C8291A1757",
      INIT_38 => X"12C0A06E3FA5BD452EF26B259E052526EA01D82734B20182E04590B3BA0145A0",
      INIT_39 => X"0148080F00A43A114590B3B5B22A66B30046E04590B2B6B22A66B3BBC84D5F63",
      INIT_3A => X"4E20EE7837066940AAB2B0703FBBB47138196529645D4F66003A1D5D110000E1",
      INIT_3B => X"8845AE8AE36904468C01C50097E4B200B0085B00FF8F00000037E0A58EC2C82A",
      INIT_3C => X"000000BBC8292A5D673944102CD323146B0405B165AA25A921B025E0C820CCBE",
      INIT_3D => X"058E4188D32AF052E62057D8EAA60097E4B2B2D4E6F5883E262B49532EB20000",
      INIT_3E => X"D3CB6AB200BBFF00E50130004501A5575220EE98BAB2BF00078F000052D8EAA7",
      INIT_3F => X"05DE408E8031ADB345A6C1403A66002E40A6C1B3B24897251029B3BDB2451009",
      INIT_40 => X"D90D97DFA001458CC6A08CCFA001458DC6A08DCFA0008E2BE0894100A545918B",
      INIT_41 => X"490ADC3E4925B2AA845E000086471E4AB88C8E2BE09BA54554D3B2AA80282704",
      INIT_42 => X"B200B05545644C018625B2C81624394E00176D010E411B25031711B88680E045",
      INIT_43 => X"C06CB96E622A5440D31993136AC5B21E4AB070000DB28AD301D3CE262B028974",
      INIT_44 => X"362A01175D04DA8745D10E1A0169CD872DB3AA8040642C3079136687C6A09686",
      INIT_45 => X"FE14B300007EE0C81A21630087052DB2AA8040642C307913E58745B3AA803025",
      INIT_46 => X"01A3004538946C58FE6C2DD319F141B3A5652EEA09408E0A2A8497B5C0541272",
      INIT_47 => X"02BB9601A5E14741B21B4A9BB22A8649612022205AB2AA84DD86768641A0683F",
      INIT_48 => X"00E011517FBB968620017441B200009BA5B8ED75B2AA985D1E00360052654004",
      INIT_49 => X"97B7189171E62093B5FAB3A5C51C9C107160DB4D23D827CBB3B806172BE00000",
      INIT_4A => X"611A4A000028E0009654168705A08EB2144A194AA5E58D14A19AC480D819D040",
      INIT_4B => X"E0009A83E0B02536098CBA487F055727012CD7000D06B2AA84005D2F797FC686",
      INIT_4C => X"1639E0B49A2AB4B7B30096860560FA41B2C829632218282D2B65018625B2863C",
      INIT_4D => X"2D8648A00000000000009686A56193471141B200192BE01B4A00001739E00000",
      INIT_4E => X"28644C05B24941810225B20000864AE00050000503C10241044B025604041086",
      INIT_4F => X"A00065110A00A4125202B286679441B302B0014AE0A470A59CB200A5B2174180",
      INIT_50 => X"66E0802B9C40202A1952B2174A134A85673441B39619002E044770003A3A11D9",
      INIT_51 => X"1408B2C80728157481B35252312FC1A0B20A11B2866886F5A00A510A4A9686A5",
      INIT_52 => X"7B028625B21E4A45670A1141B3C80B1408455D9C25B3AA840B4C0B4A174AC80B",
      INIT_53 => X"3A04634204A545B29704D3262E616A53218AB30A41B463002641B3963A2A1B4E",
      INIT_54 => X"442113B49311208DB3967A460128673E056763115986E8A08567181741B30096",
      INIT_55 => X"12657F621D4A0086B887132BE01E4A00963528454F364564011B713101063133",
      INIT_56 => X"AA8021623A4F6287057AD198B2863CE0E4065D68034D03462162042564390064",
      INIT_57 => X"452ADAC93ED725B3AA980028294D676504E487B28680F101572E40C74A7340B3",
      INIT_58 => X"D81713B821B379418745A0B474614014B345B245B3AA80306523642122315C13",
      INIT_59 => X"C5D125B3AA80054D3111A505D42A013425B3AA80054D31115E87B201D3CC4941",
      INIT_5A => X"0D4D6701003B2804B07FBBCC30642D72043804581002BBD00C5C0FCE0000A3A5",
      INIT_5B => X"B086BE1B408600A3B4C61A15B4B300003BE0B253D580AE74B302BBC81A2C2C60",
      INIT_5C => X"4D455D0FD30000A37F6680A00101E80000E8154A000000A525B537B3000048E0",
      INIT_5D => X"5D2FA52515210D31EA820D125727702DB200A5E500EE2702B4B22F4100BBC80C",
      INIT_5E => X"292D2B41B27F66C84E26001A200451A0003CE00D41F946F74686010D0086B000",
      INIT_5F => X"8605E07B62B20240A0003CE0965F01030560950120B8D4B20B4A965F0103206C",
      INIT_60 => X"B2C5C7F423D3D14F31330519AEE02D1786820D125727702DB200C85305291900",
      INIT_61 => X"C81647030200000500010501017E0000007E46004301500000000000B8863CE0",
      INIT_62 => X"610000B8673F0028E000C81600215029DA8C80F18CBF007D0C8C022501550150",
      INIT_63 => X"0086CAA00851B8154AE045B20526E1202A41B352610252312F01522D7A000D7B",
      INIT_64 => X"0A14EAE607208DB3B8144AE045B3AA800C1A2967606013B8143F4886C686B000",
      INIT_65 => X"87BE1AC087B2D979316B5901B3EE0D000001251A000000A40101106EA000A525",
      INIT_66 => X"04A5A58E03D12B02B821B30086BE194BED00A30086BE19CBA010501B78A00000",
      INIT_67 => X"6D1D3049630428040029745F65136D019701A30000E44C6D091C50055370421B",
      INIT_68 => X"8645D941B37F6696013A044B01A545B2819200209AE6B30541E02B620C2F0217",
      INIT_69 => X"2001B2134A96012002B20A4AC83B000125B21E4AE064390A4B8646A010502BD0",
      INIT_6A => X"534F58E6956178744946482E979704E494849724B38538F3B3454A38EAB39601",
      INIT_6B => X"05408E41B21E4A45B3AA80062A210421611B054C7828631B1340A0864AE0B254",
      INIT_6C => X"280873008625B21E4A80A0A545D7EEB3B2512E350058EAB3AA8485B3AA980086",
      INIT_6D => X"27E09686052BB9318D05061853ADDF083E1403C86074208A06B2963A295D0400",
      INIT_6E => X"6B2702B4B3B07C000DA505AAA60A2A4AC1796610078A48C226062EB200BBAD46",
      INIT_6F => X"B300009A49E0B2B8D86374B3968720B2BA058CD24887A52123CAB28766B503D9",
      INIT_70 => X"08CB863E1F4AA5B3AAC8404E7813454A0DB88974B3174AA58515000E579420C5",
      INIT_71 => X"510C5E2704B0B2C80728157481B252BBAC024E008625B21036E052144C965114",
      INIT_72 => X"0C5E2704B0023FBB1036E052BB96024E008625B286A5654781B3144A1F4A0096",
      INIT_73 => X"D7802E8AB300963A036756631B13B4A5533180CE180703682641B31B4A00C852",
      INIT_74 => X"C05D243224091B13B8123FA5E59B556F80C725B3AA8458866286F7A00000A525",
      INIT_75 => X"362FBB963A6A782F284428605F030A1B066DA00000017702D00202A480A01652",
      INIT_76 => X"5330454134712B110A440019480C4D1A24526B192B642D001142584100332F00",
      INIT_77 => X"7C400A83B300966A030241028625B2B8144AE0B8123FB8123FB0164AE0BBAC61",
      INIT_78 => X"6C094C52008625B20B4A174A00968620694D5901B20000A71FC0A00146E045F0",
      INIT_79 => X"292FB24A4901C6AA5901B31E4A0086B0A5A525B2AA840E8CE4247A0017344465",
      INIT_7A => X"4A45B3AA80393A522604A5A525B3AA84A5C55525B3AA8441A08647E000A20000",
      INIT_7B => X"B245673441B300009A49E0B22119495901B300D41686A5460034B200392BE00A",
      INIT_7C => X"009645693453013545521900175D04C0A0864AE000C8292A090086C067D71102",
      INIT_7D => X"27CB55D0150120B8D4B300968605405441B2B0354E476D0286A501D354B2114A",
      INIT_7E => X"A569CD87B2872DB2AA8453632D307913C087C6A0000028E0A5451E462B4A19B5",
      INIT_7F => X"9700642AE000A000BA6DB94145FE406EB300132BE01E4A00963A2F008705B200",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => addra(12),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(13),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized20\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized20\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1D475C2B01612200045E1C00651D601C531A0028611140864088CA1D974888D4",
      INIT_01 => X"6A5C4F013B315E13640266390C5E1B604A4E0F002828041A041C24531068033A",
      INIT_02 => X"444E031A18001972184D2B042839642E2A520714485D03304D54301A66287100",
      INIT_03 => X"65562200251E540403717946001719120539061404195C30654604251E005310",
      INIT_04 => X"D720B200A008490110DD634204285C226413246347065D4F2760462A041B3200",
      INIT_05 => X"460C6A7A0AF9692B49A6B7025840C9E77218158D0A2D2C8CEE0097E42001D720",
      INIT_06 => X"94242D58D393C0343790849FE1A7C56AF701D198202A3E570A311C035753C957",
      INIT_07 => X"8C25B22A46526C8901C58E04E4942437492A922501E5F4772AE9DF24A08E04E4",
      INIT_08 => X"1F408800F8280C24044023970000E61FBB9C163A2A0D25131B3204175C120020",
      INIT_09 => X"113741B2010100000003961A04004D63012A23172820375E0440864088000038",
      INIT_0A => X"524C5103525C304D52293417527918500466054A9F254661C0FC34A62801806E",
      INIT_0B => X"04003A65453953281A63244C510304338C8C4D2A2B2065014D66286244281E04",
      INIT_0C => X"261A03550F252B307930020460B7E4A00223D8C09519B28437243A260544042B",
      INIT_0D => X"EE34C6B200B24A24D903E66095C3B20B0A00A5256A0126A0375DC6B202508CDC",
      INIT_0E => X"B10048E00074F03F00E02F488640874088CA884001B0456841E07908374C2079",
      INIT_0F => X"51E000A200740C51AB02C2010000C203FFC20200E02F4802034B02C201000002",
      INIT_10 => X"174058B30B0AC1415141009B9BFD204D10512397B0B7BE174A8800E48C02A102",
      INIT_11 => X"B75B88A545F43349882523B30B0A2B88C14841F40A4518132602D35358513E10",
      INIT_12 => X"3108D226F0093741B300010001BBAD4427E02B88C196221A605325040B0CB7D7",
      INIT_13 => X"21A0E6D14A551946403907250260842D1461C03CE6C0612D740186CCD83DA6E0",
      INIT_14 => X"C83B4D5E0052525C35180437606122005C04030BB7C0B740B74001452AE62E53",
      INIT_15 => X"DF7F0001C8451C456052042470A5B200A59CB2CB418019024D3504408800B0BB",
      INIT_16 => X"713454642504CBCB030C0B0A7F2600A101A1BB9625240004291A175701033A11",
      INIT_17 => X"008800BBF803002504B1B74AE0B2A269D539B29B0B0A4000BB963A5E01625364",
      INIT_18 => X"3B654D003B44293A00215306642864003A66280445B340A5CB2B7EAAA38037B2",
      INIT_19 => X"5D18651345D3CC039B2B23206E613E9A5B15AA06016A12D3A6B340805888C1C8",
      INIT_1A => X"4AE0B7BBC852015C74184801630130456D0E0D2828614D05294A005F0C5F2D64",
      INIT_1B => X"17A0465753B380B74E40525141A45D2078046F35472A770469045D8840010DB7",
      INIT_1C => X"4088455C7B20D168E886409321A037614C20016A1401F427D82C94A0375DA680",
      INIT_1D => X"2741C7979253422D57D984D92D6A2A1AD9264CD703C87461D927D8B380B74840",
      INIT_1E => X"02000002B872DC170000DA53E09D00E45E01310260640F00536A0B45D3CC5521",
      INIT_1F => X"01B045D94120B4412CB445AE46B2AA84450DEA416C036C1CB3AA845801408840",
      INIT_20 => X"0B80A04B27E000DAC0DAA20141AB7CBBE445521B2A52180069644C6104638800",
      INIT_21 => X"05750F2C0635055671002A220E29384919242A1A445E0441D9EC0B53D90EDA0E",
      INIT_22 => X"9A34D13A9AE1402E623C23F42A01571421F2D8239139B29CD9E31026E837245D",
      INIT_23 => X"AB9D0E0B531D0BDA102ED906D95D019D010DDA0E0CDA4BDA5401B04538F42001",
      INIT_24 => X"54DA1E8C9CD9E3D906450A26802ECCC06C52EA3EC876F81922B2D967D9590441",
      INIT_25 => X"C1BBAD0B11384101B07C020B002364E70541AB9D3B0B53088C9CD9E3DA1D0CDA",
      INIT_26 => X"610E6BE820AA02AAD90822B27F26DA41013F97006C1F235D2A95CA87C6A07F88",
      INIT_27 => X"6A88A5C50A71466761196EB3AA842B052C0462D997B0DA020BA5450600D0602D",
      INIT_28 => X"190D6956476D0A0071445E04298CAA80602120241B255278181A5D0071445E04",
      INIT_29 => X"2535445E5C56053A4D65602800005D2F66DAA9956E002364E7AF01602A194753",
      INIT_2A => X"0D029F00D9005D1FBBC85140445C633A18583B60202018283452351A2A3A4C60",
      INIT_2B => X"C123F493E0B40320E12CC87998B7232A18535461804E23D3B2865EDAA9959D01",
      INIT_2C => X"033A4C3A610153044D1B0A00B0D9BBC8292802520A2B01115C460400460186A5",
      INIT_2D => X"1348E0398705D3536C0A8B37381522B35D88C1005D2FBBC83B67014629326063",
      INIT_2E => X"14FE5BB34D41A867314F1264606962044088A5250A069AE6E657D9C001452EB9",
      INIT_2F => X"E0AA012001B342419DA5456C19E6394C37C1264AB1143A23D35914D81820538B",
      INIT_30 => X"280465131E8CB22A6AB76A6658462A2A1580EE3A2ED3B25888C13EC0AE00459A",
      INIT_31 => X"2F0056E01C41C8072B2834154C163805578800010DAEBB96456D160D0C294A2B",
      INIT_32 => X"451812404E800E7269F400DB11401957B22741009C83E0CC1F2B28044D86005D",
      INIT_33 => X"58462A2A15A0465753B33E4088B15D41023F40A0A54534B258415888C10056E0",
      INIT_34 => X"41070B3E49010001B2CA3349469337CC0AB46A615846200A2AF700846CD90C25",
      INIT_35 => X"7A01B265AEA5A59A00465C83580E315201D353F7185874A623D346083741B203",
      INIT_36 => X"01B04569F420026A190B511A58C001B2DEA000A5056AD7406C6908696CD90CAA",
      INIT_37 => X"1064AEBBF84D39283849010600636720051B041A027C1838044001B0AE460100",
      INIT_38 => X"A6276AC7B200A5852E97A6276AC7B23D408CC83A4D6A02314E370D2A6A040053",
      INIT_39 => X"04000D39414E4100AEBE154B874F8800B0A5053458F4988869BC51182D49886A",
      INIT_3A => X"49885301D92CB33D5487581049AE410088B2C94F21003441B38F41A42216285C",
      INIT_3B => X"45101100AE41B35C419687C041C010712703B2964C4046001926045387571045",
      INIT_3C => X"050246016D45003A0C6AA04A410B0A1100FD184D3F068C9CE84A4180A0002397",
      INIT_3D => X"356383B314430F51AE4112419641462804B039B039102E3EBB966A322C041911",
      INIT_3E => X"2A6A04000319642D28180004009646002B5E010800062B018625B286456CD90C",
      INIT_3F => X"B27F260088009B38419B3C419B3F419B4541BBC80D77020567654C71003A3904",
      INIT_40 => X"CD884687B1A525CC40F16C69F1013815910E066A0C979823CB101917A09A27D8",
      INIT_41 => X"0198ACB2134895C96988C15D589500B1CA408800009C83E0803CE08740864088",
      INIT_42 => X"66414057C03806AA2CEA793B80310B2A7846172AC2E60A89202031B525010337",
      INIT_43 => X"81E0B2CA6E0814D32A5A01DB11982C2C4604D32E20C19161402D58D8E6012A46",
      INIT_44 => X"A54534008AA300D9B45B21B368416141C84D5E14345204518800000481E06410",
      INIT_45 => X"1A050D685318380440010001A844046133652D30791B114C1F47280440864088",
      INIT_46 => X"28603928360D486075053046033A2A0046455C5E0253526904140452054D3A01",
      INIT_47 => X"A000888F3C0000009804A5056A581097C0209E19094A7197D72001B33CBBC80D",
      INIT_48 => X"04A10045A003A202A201451045B3AA8006293B4F664D32654F2C002904E487E8",
      INIT_49 => X"2004005F01063B5425001E5F1405000149E0FF042D03C2030F8C03EF8C02016E",
      INIT_4A => X"1B22003A640A2A786914051D8CE029021A082A5E04523A04DCA03988C1C82B34",
      INIT_4B => X"4E282600176D11DFA02A1395A5A5408E2CDF24582E7EB2E0F732B35D41BB967A",
      INIT_4C => X"11942A3E5500F8CA530A0627AA6D2CF44E010AF741B34C010DD4275D00192431",
      INIT_4D => X"51181C281E30615D644C262C071B52012A4956342006140640010001453EA610",
      INIT_4E => X"18670300052A2A043A053A194C51030417032920150052040025044D5E543049",
      INIT_4F => X"4A406E4A18D35341F4802EE66100535840F40148B5B3A3BBC81A2B55451A2835",
      INIT_50 => X"9CEA68632A6CD1080097314134012AFEAD5720D941B200010001A525AA019B06",
      INIT_51 => X"4C264D4D11C0A0454A0900110E01D3CE60891C2595099AAE48153301D348F484",
      INIT_52 => X"4A274A09E07927D8B280A00241C8531D522E4C642D2A0C2745285E1430455C4C",
      INIT_53 => X"01B897330F4088B010694EA5653401D3CE20E3808E37691C33CBD83115931906",
      INIT_54 => X"385753B440200695C06A52D386E0A7EA17D32152C15C8601400E9A41B2000100",
      INIT_55 => X"582D2C6A146A37588920914601D1C06193D9140940D827A360A6AA252A2CA785",
      INIT_56 => X"C020F7A74086A1C03CB34E40A0A5254649622A0B9AC940146C79D2230A740169",
      INIT_57 => X"5E5D026B04559359D35DDD40A03A410201B2D82B3852D901064A807C38D7186E",
      INIT_58 => X"102EDB4AE0DD3CE03AF1DD410088FBA1B2D8974A5349D556195346B3F84A2A04",
      INIT_59 => X"2A01290366047D1A54391B603B72304D5E0400461964015D2B22004E25032A04",
      INIT_5A => X"41035E652A535217521848615D2B0C2B2C2A1B3A6552057A212D4C674746044D",
      INIT_5B => X"00E16A430F140C93BB96643A7865780D2C542600043A2F2200117893BB961A03",
      INIT_5C => X"5757EA57E6200197A046B2A140864088C0A00100E1145C2AE00097003E390700",
      INIT_5D => X"18AA23D3D3922649710A74665866E91CD820D82CD47A146C5346C001D120012A",
      INIT_5E => X"57460C800E0A01EE15C123570601310B46086CB519254665B905536B6A4C24A0",
      INIT_5F => X"4404010D3940934093C0A006410000E16D430F010DE93CE0B2311C354A6B57B4",
      INIT_60 => X"2A2822005E4D331204601E5D642D001B2A341A04281A051A5604473A5C222E2B",
      INIT_61 => X"3900B00097006D39070000E13E430FBB967102361A6A000071013B550468031B",
      INIT_62 => X"EA2152D91E3A24D953A64A495A232DE6206153F4257E520A42527839B2001055",
      INIT_63 => X"2A1461363127B3E841DD005D1F00005CE039003A000DA585EEEA582A0D4E1952",
      INIT_64 => X"645D66003B02700C150024446622244600055204003A1A3B0440010001459309",
      INIT_65 => X"49A0BBC872011E5C030464710C656234520400653A056464251A603A06381967",
      INIT_66 => X"5D4F260024546061026513242A0229062B3021470417460024003A1D64044537",
      INIT_67 => X"BBC831013A17480124354C07301A0400355F180455052B30214704FBA000BBC8",
      INIT_68 => X"B200BBF8225B4D3B04000970023B165C6E610206640474052B30214704FBA000",
      INIT_69 => X"344180EEB4012A9CE1740A17C9C053384E62D220694D845D01264100D9404E38",
      INIT_6A => X"C73E482E2C2A9A2539072692C04123016A15F493C001B2A545096A69C79C2001",
      INIT_6B => X"3282389D5B41008800963E530A6C9CAC31B238A5F1FAC8D8154AECC00191206A",
      INIT_6C => X"0100E1085E2AE045D220694D202A1401F919C1403400D9404E38B28A000D80A0",
      INIT_6D => X"04B0005E2AE0009700943907BBC801065F56184C522B30214704010D00943907",
      INIT_6E => X"E05D41E01A0504240445B3AA8030614C67005204D8A0C85F2D641D344C670052",
      INIT_6F => X"A545B2E50E0AD359603907806E3A2C8E624A0C6A26144220812CB2B35541005E",
      INIT_70 => X"000D654565030C28060C6400C41A4466222864541A293A140800B8063F408800",
      INIT_71 => X"10B0A7330F45D7FB582002D3860B74C120122A03318A382ED927B31B4A7F7C10",
      INIT_72 => X"3A1A68042563284410518A41F02A06492D601A0F2A704D53291C284524530C69",
      INIT_73 => X"10C1005B2F00362FBBC81B001E5C1F042805293A300D0046016A033A50244647",
      INIT_74 => X"0010010D65030C28040C6400B298687021E0208E20010A377301E0402E53B332",
      INIT_75 => X"41964B00603A08644600645C4D023A641E446464510400555E0E6404790000A3",
      INIT_76 => X"22471B245304000046655B5304640441AC97A585132A4E2501D3582AD737B328",
      INIT_77 => X"9A802E52C001B29F5F3476C3416541967A002901622B1353880096390D2C0E63",
      INIT_78 => X"03010DB245AEE620F70871D0112331EAB5BE68416E023319FAC139014619C620",
      INIT_79 => X"2D6461144C144AA00434716739046B86B24AE6623622FA4A27B30100E1FF8939",
      INIT_7A => X"2A4605673504538800963911010DD74086451011B338030CC541CC2822144BC8",
      INIT_7B => X"41C865216600352848222B0300255E19786B5005673504005D1F752B88C1C867",
      INIT_7C => X"95000035003480B3007321B201002D7F058C7FC8100001A56595C2005828B32B",
      INIT_7D => X"864C3297403400009D83E09AC795417FB03F330FC1A0005F2AE034C74AE00E42",
      INIT_7E => X"487AF09F0111D74014FEB3005F2AE0FF4F00007F2FB8CE3F48874088B8CE3F48",
      INIT_7F => X"624033615E72460440864088CA8746880045D220014620957820CC46E1238C74",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[14]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized21\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized21\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"3B047F2E86260B4A7941B0354F64212C606B5D680459875D8800C84F39681863",
      INIT_01 => X"6A135B239700F4046804453E523E53A6A64939B30B4A961A04007D0238650253",
      INIT_02 => X"EEA64FC19704652DC10728892AD92001D7B301415F41F001173B28041E522860",
      INIT_03 => X"01B2A3002A7E19A0193E145148A0D8D24FCC800D742734A0B3AA986513A54509",
      INIT_04 => X"112844005E5E0170280A2C0400521838045C3760A040010001A5B3AA98651300",
      INIT_05 => X"380478372F8CC80D285C4F01064D4E0228632503785D1609242A4664040C2A71",
      INIT_06 => X"181B4D56262C0664040C5C2B3628650A05532D54250C41521858046605005218",
      INIT_07 => X"005218380480A0B58CE00625370400532D2838530937490C4D02521D051B241A",
      INIT_08 => X"6D5304394E301A6618472A0453095C6E6102782A526047181A250304280A2C04",
      INIT_09 => X"000052183804338CE0605E0524447100520E0C004269306116485D0305001C04",
      INIT_0A => X"042B5C0A2C485D0330460B1405BBC84D63220039042A195C0D41521800521704",
      INIT_0B => X"0001C863355304484F010870180C622128282900525065624D48221B65022903",
      INIT_0C => X"4E4880D10179F7282C31D5800EB7007301E0402E53B380A000A0800000A30001",
      INIT_0D => X"9C254123D034262B491AA65241B2A04001A5053457404E46386CDE98E16C3780",
      INIT_0E => X"9AA19A26024A4902AA46840A115241B200B259D856612058B4B9012CD12092C0",
      INIT_0F => X"010001B045D23793094A4902268118F4E1202A3DA64026015753D2373F064619",
      INIT_10 => X"045D530E00055C2B36051A1847492E1B06140420604E6D5118380456375AA040",
      INIT_11 => X"262A1C2502808446069A5706013741B237C08CE057304D5F1A662871002A4934",
      INIT_12 => X"8EFE1B2541456123EA00746A083741B280A000A5C5C9E66C312B2B61390A8D41",
      INIT_13 => X"00A5450E032B18170149313C803403C379613EAE17D3EE014619417381D23740",
      INIT_14 => X"0001B2F9132B6801D346C0FC26C02EC001B3450A91C0C123039A5706013741B2",
      INIT_15 => X"D1A7B2863CE0016C883F8CA5052AA626036601D9403927B201005D2F68866C88",
      INIT_16 => X"522E2C603A670463EDE7A00145ED49864D88118CA545390700F458E05BD320C6",
      INIT_17 => X"2A06D8004584D22B6C30195874B3A54FBA41010001C0A0005D1FBB9665526C04",
      INIT_18 => X"AE2A2522B3384180A0CC655F4F013A48003A285F290604B05B2BE07F4C88A5A5",
      INIT_19 => X"90E080AE20D958262678C622B21C88C1881395B2933E1A57C043D1C1E606D080",
      INIT_1A => X"963A6328642E00003A1A17085F6A0C618833012DAB01350042BA000DA5A5400D",
      INIT_1B => X"14A12087B45755200D9B5B41925224000622B2E13CE08001A4E1410187AE3F41",
      INIT_1C => X"291463CA4201460C407700456C2D6701940700EE209A5BB8ED9501EEC00A5B29",
      INIT_1D => X"BEEC060086CC86B0009700FF642AE000FF6FE00135B285AEE0B9E1E020D85749",
      INIT_1E => X"520C5C1B04435D044C52633B0C433504661E00410704020CEC102EED3CE00001",
      INIT_1F => X"066B0439647100291B6301460135045C530053005E4D0C72030D67020D2A444F",
      INIT_20 => X"5986A5E56B00F45324587AD7C0F82DA2C079D7D522B3ABA5BBFC16701A405D1C",
      INIT_21 => X"9F39036D7F2A95A5258624206A00205518F82522B3E43A183409784D25780604",
      INIT_22 => X"4C0D22B2B031266060356416702A1B7860246A0300176C0426176F880100E1FF",
      INIT_23 => X"49C70CD367C06910D07E22B35D41106E7F4145B92A067AD92458740ED8579902",
      INIT_24 => X"00456CF1FA0D9258E0AA42B34D4196390964152834530F572201287B04618845",
      INIT_25 => X"0042009D83E0009700642AE00543BF058C333500420000E19F430FCF1041A0A5",
      INIT_26 => X"218AF91352A37A0343B201010001BBAD006F0155BF058C33350042A533048C96",
      INIT_27 => X"6EB7218622B39FB2D7194120740106310B2E80AE2A2522B39FE6A0A5A53C0226",
      INIT_28 => X"361B052954564346360452790C8B3345D901D3AA20DFBC95C8C003742191C058",
      INIT_29 => X"4F64511E18044735001B0B482E051B3A6300221E7C5F6A2A195D022B344B0061",
      INIT_2A => X"064D4D630404530043A852024102016965784D5D786D14281C5C651D0446030A",
      INIT_2B => X"7918006D043237472A776052283021022A042B4535200B786122003A2B5C5E01",
      INIT_2C => X"4999159A34492653A12CD3D849C1235755200D60D9806E6DB81128B300429652",
      INIT_2D => X"D34EC00183C041B20001000002B0009700642AE0334001A5A59A20DFBC466200",
      INIT_2E => X"21B2A05FA031A525869AC0FC264034C0812B627601258169F420012A2A293E01",
      INIT_2F => X"382C5318D35820D3572A5A2D4911916ECBA90021B200A5056ACA16D901EEAA00",
      INIT_30 => X"B200A080A00001B045702D016A201A6B29800E72388641206640E6E75B2B0253",
      INIT_31 => X"802E9AC0012CD469F42066401401D34AE0F46C39B1BC46A323019AC0C7465381",
      INIT_32 => X"0241005B2F00362FBBA50520814047172721740A9A53EAC02D9CA1192320AAE1",
      INIT_33 => X"F814BB7CBBC8614E5C64462A40601A5204002B04E5A0443FC0A03740A03740A0",
      INIT_34 => X"498F027E46498F0C8C034FE25E3602C1014FFFBBD4521A04290B53A001507DE4",
      INIT_35 => X"4A3F3F8300005B1F4A4D4D83958CE63F4A484883A58C293F4A488FB38C343F4A",
      INIT_36 => X"8B010DFF02C1FFBBC8523A127852631B13593D8F00005B1F4A4C4C8300005B1F",
      INIT_37 => X"7A202A0105311504380440010001FF003CE0BBA5C5F9186C0D6841002E9A26B2",
      INIT_38 => X"D7CD22B2A0F5A096536028785F640C64716B1B0A5F0E6301052D24452B605405",
      INIT_39 => X"4B209A20D7CD22B2BBA047A000B23467232A1CD3582A670A7169146CD7179AC0",
      INIT_3A => X"4913070C0071D6002364E700A000A003A0BE414E0000000004B0B23467396C9C",
      INIT_3B => X"5C45042804285F60263505004603054D643A194D1A024663153050184D5F204D",
      INIT_3C => X"CCC0514BB2720E0B714071B02FBBC827002808004E4C1A0946031C0000291B4C",
      INIT_3D => X"143721D11826A16A37CC3406D391409A0BD3D30C402E736CF3D923489957D320",
      INIT_3E => X"2AF9152AEA212BC2EAD8806EF2592353B494B200A0727FE000729301B02FB2AA",
      INIT_3F => X"2086C8002A402346420174514AC02D9C0152EA934039F14066F27900C92AE1D1",
      INIT_40 => X"052A5204791E007F4101C05A007F4A72CEA00081E072070BB2D7B5D826929101",
      INIT_41 => X"72DC2540A0002364E70081E072BBC84D650252280430296B3B0B644563011C00",
      INIT_42 => X"036B30501800686D4D0B78290C8A018E02010D03010D00007F81E000010D0000",
      INIT_43 => X"4C6161564C040D4C601E470352242366184739020D315E037000122004005D4D",
      INIT_44 => X"FA22B280A09E3F9401B1563FBBE416485D2960352E6A4D2617003A2B624D1E4B",
      INIT_45 => X"B5B200A525D7202E274987B20340E020C874E1C0522CE64180CED7202E234B20",
      INIT_46 => X"070B454958D8202A41D12A02D3D323CA39B2000069E0B2033758C7D12049C695",
      INIT_47 => X"04472B0B4D4D113050184D5F2034536529257063692A4F01784D190F660CB001",
      INIT_48 => X"0D04460202E972DC27098CBFC8A07F0072DC25401E007FC0A096456A61012928",
      INIT_49 => X"228C563FBBC8632D4D1E001D5E350C2965420A1B043050084D5F204663644563",
      INIT_4A => X"B30141A01036E0010001B19E3F000D72BB966533252F0E696C6430252D2C3504",
      INIT_4B => X"AB02C2720000000004FFC201074C01C2BE070B9E3F0001B2D720E1202A614622",
      INIT_4C => X"4A03A102C20100000003D28C020B0B304802010D02520000021A8C7302C103A1",
      INIT_4D => X"CD3D64712A520B78643079035252044D6301062D04280452002364E780026011",
      INIT_4E => X"4D66180C045D880000000004928C02B002034B02C1A03C27E0B905808E25B2AA",
      INIT_4F => X"232AD9A668C0EE9752804E23CA39B30000007250424102A0AB7CBB967A64450F",
      INIT_50 => X"80A00A27E08072D17F410086A5056A9AC80C465A2D6C5997012C91136640C7BA",
      INIT_51 => X"2062B210A31B6772A54A0B8D412D0DB8C9278DB423EAF4016AB9EEC079C94AB2",
      INIT_52 => X"6A1301D02BB92A06130A7221211852B2070B45B200B2940B52310BE642005393",
      INIT_53 => X"020B45B92A86C02057D352188A4084CC42412E2A146152D9C96A0B4922A09A79",
      INIT_54 => X"72E39E3F0100E1F0430F0072E30035071100000072C372418086CD86D17F88C1",
      INIT_55 => X"E660D02522B22E4500430C5186BBE04D5361225F535D4725633A3924535E092D",
      INIT_56 => X"A5010AB122B2F81B003B5D260557630086A501B9084AC10E578A49485D9AC000",
      INIT_57 => X"2522B3003997B5AE01E94BD97CD220EC4093B35D41F865520443340419080086",
      INIT_58 => X"8CD72A0619727A01936658F7088DA1972610277167580AC9A7E019D70857D518",
      INIT_59 => X"849319D72401910E5320D2252AF10A8D81592E00D46EC6E029B44203E6012368",
      INIT_5A => X"01419621514F781A524C1D40041B30354E7B0F044088A5451E575BCB03281CB8",
      INIT_5B => X"3717F16E01534A603A02060AB71AD95C14E1E737B2102671720E002672C0714E",
      INIT_5C => X"450A7940069C250AD128B203C2108ABE411069E071102E0001B0B239D158005B",
      INIT_5D => X"AA46005746592601D817098E522A57B461586920D8B20275A0035B04BF957D8C",
      INIT_5E => X"E0A505CEEA3EF4A1B2037E8C03A1002C2FA561B20000292F560303A503B2A5E5",
      INIT_5F => X"E371102E720000E1F0430F5D01B07C020B002364E7070A2F5801B0009700802A",
      INIT_60 => X"4D042B6B21526A293A52304D2978291E603B5D2A5004020B0000009304412C72",
      INIT_61 => X"110088000081E00B5B0100E1F0430FBBC853061B00451A6164490A6061352A0F",
      INIT_62 => X"190445D2408622402601D3372CE641A05920B83108EAF4619A533E06B32C610B",
      INIT_63 => X"692A61224D67115F2397451037890C4982B373411241C8270028080041274471",
      INIT_64 => X"AE23D3D9066ED91C0601931461AE202D6A2ABA8027B33888C1C8226651010900",
      INIT_65 => X"0072C072407240724086738800FF042D03074C04A10340010000000004A5450E",
      INIT_66 => X"D9610AD10894C06AE650216548B3BF411241C8632D220006291827246813C000",
      INIT_67 => X"0028045A02002D7F058C7FC87240A00141004FF0430F400100000003B81F3FA5",
      INIT_68 => X"29602D6061020D530572423F3061301B2835632A500465521F6034691A002861",
      INIT_69 => X"C12311D42A5E583A8A22B200A101C210000002006DE072058C72020B72BB964F",
      INIT_6A => X"C829550924044F8800FFC201074B7241BF4101BB450DD3C05349002001EAD837",
      INIT_6B => X"520C5B8800A5659583B35241965204311A052A270455884597E960FA41B31C41",
      INIT_6C => X"41C816342854005508005204598800009E83E02A88C196391E003A641C602928",
      INIT_6D => X"23C5AD8A15C9EAB380028F940E410088D388A5A549019420C1F90020A6D8B323",
      INIT_6E => X"D320624619EF184A41C74653212A199221526C79B72A8E11D301CC6D6AC093A1",
      INIT_6F => X"4088A52586F737580EC84B0157E626018D71588E37F9683E53A686215B01530D",
      INIT_70 => X"EA128D01266603402E9AB493D93A9714B39E86E30C97408800B857330F005D2F",
      INIT_71 => X"040C522E00246162001A047C8800B29349F458306158CA57D800252E064034C0",
      INIT_72 => X"E0963102544470296A0C55A46688B0D2005D1F0000E155430FBB96534D456439",
      INIT_73 => X"120A801A044088B10097006F2AE09653296A08001A0453A46488B10097006F2A",
      INIT_74 => X"5D21002A2317084086408800B0456B20F3B9B200B2B4B2140A00455920F327B2",
      INIT_75 => X"43B3CE10C1C82B652A0D6A06000019196211DD2A2A442A839B41001C97000196",
      INIT_76 => X"00D718AAD9200193B2009700463907140B9BA5C579198E00940D46C123793701",
      INIT_77 => X"4044343B0A52A01036E09B190CB29A012832B2190A1641003FE05241A045F367",
      INIT_78 => X"BB96058CC82BCA010D46B2BF058CCEC801012AA541B22588C100463907BB965C",
      INIT_79 => X"00258D02555D812EEA79C06A191300F42832B200A5856EFA012832B2140A3841",
      INIT_7A => X"E1016F2AE0004F2B00000252312F140C9BBB96534D45341B0400B045D9022AEE",
      INIT_7B => X"2902C0A001936FE00097006A390B0102030B29000002AB0454010002811A0100",
      INIT_7C => X"960120412DB92EEA12E03907B8D4B203400146A0014AE001144C030000000329",
      INIT_7D => X"B82101D1B3120A011C97C0930100E16A430FCE930002014401000002BBAD014F",
      INIT_7E => X"9B0E2BE0A5A5D920C1B2190A87A565FA014C530271260A2C2AD320014BA05A02",
      INIT_7F => X"45D9B293A525F1B3140AF804689B6C8702BBC86503356439051B0360453604B0",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[14]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized22\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized22\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized22\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized22\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"520400280445498DF12E02E023D237196FEAD157B3140A0087B00097006F2AE0",
      INIT_01 => X"616CF307B803D3591401AA20CC2B41B3005D1FBB967D526C78040C6165011734",
      INIT_02 => X"1641C83B2B44170C4946031726543A0206673D021A700D296064127588A58513",
      INIT_03 => X"45B2E100263E4650B25252312F140CA46133651528440474930000E16A430F51",
      INIT_04 => X"B2D357B2140AF8044088A525464919339A202DB31A4A12419665390A7804B0B2",
      INIT_05 => X"60462471006B0C140C0097006F2AE0140A0000211F409340010001B04559B200",
      INIT_06 => X"0100E1FF7C3903517F55880001A505263E5955087481B35252312FBBE0262030",
      INIT_07 => X"375D786D4D53152472094001B23440F17966A6808E91019798B301410C113841",
      INIT_08 => X"761FCF68C6A0684AE0140A0000761F010D9B93954C1C975201400100000003F8",
      INIT_09 => X"5C0530002A4620180086A5068D71E05753C96CD7D8632018B4B280A0140A0000",
      INIT_0A => X"9A194B82D82014D8004F01D314311201C344E12A8DB200BB965E030621631509",
      INIT_0B => X"04004D220011411000C1BD0001009E83E0A5053738EA14D32680CED7640A3CB9",
      INIT_0C => X"6DD940AE66A1B3A84E003A5204291A2547531F043664003A1A06143045214820",
      INIT_0D => X"65625404004E60520E007C18380461010001A5451E069C0094786CD108336C6C",
      INIT_0E => X"0474286261710D450D3144140640010001B8C93F003FE01000C1BD40A00241C8",
      INIT_0F => X"3B030421013B52057901354618002A3B4916064D210204004D224D4C30654E2C",
      INIT_10 => X"002B6A18696A7800001E6A4D26051A560A2B01656330175C106017292A444434",
      INIT_11 => X"00B2AAB20B0AC4044500044D2102054F2E00127C210168151F1568153860312D",
      INIT_12 => X"6D0E4F523904619EB00000362F4C9E432B41F81A05185C1508518800B0A5A5B2",
      INIT_13 => X"4427E00B0C4558342031B20B0A23410B0BA505AA2031B20B0B45B29E47E0B045",
      INIT_14 => X"0B0A008740880001B087592BE0E01A0504480F5E2F7001285D0A5DA00E41BBAD",
      INIT_15 => X"30451B1800786D1B337928450049013A1904B2D3D906692086014A7E6A0D32B3",
      INIT_16 => X"4C77BBC82B1C64493B2B0C6749022D006510603B025E3B04673924522200443B",
      INIT_17 => X"C8260087C06782B296482734340F5E270455A09E0EFF005D2F4B9EB0AB005D1F",
      INIT_18 => X"C27F4001000002B453041B6301601E5F04446564683A2A1B60034404005D1F00",
      INIT_19 => X"8C7FC8D040010001000D2848E0524010E58C02A100000D04430249E00045A0A2",
      INIT_1A => X"02044E2513070C00A00010C71040699700A4010DABA4479C40010001002D7F05",
      INIT_1B => X"BBFC2A3B1A045F64041B781B3B046C1745407028676D0C4D245228222C06533A",
      INIT_1C => X"05001E1904001C81E0AB9EBBF04C5C2824016406452964023A49350C64896810",
      INIT_1D => X"2200443B30451B0CB8C9330F000D1C41AB9EBBC846723517726A647152282240",
      INIT_1E => X"1A2A706B5E2A0C472C061910006600380440010001A857614C601B4878291E52",
      INIT_1F => X"A505D12078159CD3172EB8B29EBBC84D0A480407004E04642D15300C005E1800",
      INIT_20 => X"A5B4054077B3194100229700B0B25820C100D120034A4902F4CE20CBDAA7B200",
      INIT_21 => X"41D4526C4840706811A545B28601060120B8D4B3005B1F4910B88849E01D419E",
      INIT_22 => X"4913281A01125D3B97B8723F48864C329700A58567E6012A1A9C0B6A9722B351",
      INIT_23 => X"8EBBC829195D0050042826461300B88760E00074E062415F41C83B29676A0A4A",
      INIT_24 => X"45D90DDA602DD9073759209A58B39C41009E83E005418341008800005D1F002E",
      INIT_25 => X"AC26014058D815B3AA84005D2F45180E53797992C002D971B3AA84005D2F6486",
      INIT_26 => X"04675D232F630C6B2A1A0425170F00001A2B30554500520C402297A5E55B746A",
      INIT_27 => X"B0009700742AE01F10C12224950001C863005D2D28210905220225352C34281A",
      INIT_28 => X"B0009700F1390B00104AE00149E0BB96286353042B5E7104004604F8A026242B",
      INIT_29 => X"EA1120EAB31C4130411C86C164411D13957888850141030295000002B807330F",
      INIT_2A => X"4A10138CD12A5D4C10055241B2308295C92310C10088A505D448190EB8862002",
      INIT_2B => X"B302410100E100742AE027242B570202172FA5539997270174B3AA5D078CA863",
      INIT_2C => X"B27F009C81E08E005D1FA41D4A002A97CE8746864A88DA864688453803682641",
      INIT_2D => X"1A0ED813D3D8203401070A2A5BD821F4A1409720652EB2AA0086471297206782",
      INIT_2E => X"0F4A6497BB044AB29AD9276CDB7158262AD907232ABA0059D9C02D9C4177216C",
      INIT_2F => X"5057124071C6DACA80CE6ED2A9D6D17C19419650045C0F4088B040330FB02D33",
      INIT_30 => X"2A6B0F4D6329606A03052B44251B0405500429676A04293A4305001A033A2B62",
      INIT_31 => X"A3294196015F04092A5F6530652E115B3B97B08E4AE08E005D1FBBB061230C4D",
      INIT_32 => X"04A525D94B49612022205AD927B31026E4065D68033A035004652E25045D0000",
      INIT_33 => X"480963025004DB8D403B97000086BE190000981F102E9C3CE0A4BB96652E0150",
      INIT_34 => X"2861013A1644180F0CDC6CBBC83752280600652E0150044BAD41C829443A2C0D",
      INIT_35 => X"98651345D92A716EE09C803A8D743042B3064100981F102E8D3CE0A4BBC81B00",
      INIT_36 => X"459E072A510B647E7A6C2D92402E53B22440A240010001A525EA01511AA0B3AA",
      INIT_37 => X"601C1A03283B0440746623B871330F070B1026FF4F562323408740880024000D",
      INIT_38 => X"6CD2491973206AC7590B256441B20001000002B0000022B07400981FBBA4605C",
      INIT_39 => X"4A4E0134672093B200A10292B2C89740F425019B0668F719D7332CAAD3874014",
      INIT_3A => X"86C1A0EB3F4088B8174AE0F1411E88C100381F49864D88CD014196002C1FA5A0",
      INIT_3B => X"4B0E573CE0A525CC263E9A57234E6C38AE800A26219A0C2B38661933B2590600",
      INIT_3C => X"25B286D97FA7B00078E0574549460911D40A619598EED86B6100D1802AB25741",
      INIT_3D => X"86F45741002A9700B0009700FF792AE00241009F83E04541C84D5E0400460186",
      INIT_3E => X"67342914014769B30141C8615F7604526052042A3B42045DA0C82A1E0431044F",
      INIT_3F => X"58EE382052D941006A58114123AA80B3802AB20088C787CB8745D96CCC26A38E",
      INIT_40 => X"3A5D644C0187A501D31A03060174B2024ABB8C3FB246D5C8AA583820D8F492C0",
      INIT_41 => X"0A99C001B2004197B086BB964C39024E6421008705800E2AB96828B296485244",
      INIT_42 => X"BB8C3FA525CC263EE661956C3E014C0103D15B521915CE23D42D6A67A05308F1",
      INIT_43 => X"278DB4D1414609927949DA718C2001D3690DD92E69E02D97B2864588402A88C1",
      INIT_44 => X"00005D1F002E57005D1F088CAD0E11804E540001BB8C3F45D96C53F420490818",
      INIT_45 => X"5C522A535218005D0F78722D783745045E215F1A04F6000079E000A001864088",
      INIT_46 => X"2860012A1A243548643F48020A2B5D12053A4D032A460039012A290105005E30",
      INIT_47 => X"042804006600512B6A0C654A67065726451B605C44391B005060260010306100",
      INIT_48 => X"4BE8584121BB96706045241D52044C2627715F1A041B051B01064D2A3A014D1A",
      INIT_49 => X"D346757A01B3A8655F614C043A3A6471522C042A3B005E215F1A04B05510E800",
      INIT_4A => X"E70000E154430F4FA04C3F00B15810C14C4E9500B2D70601C9D301D813D3D30C",
      INIT_4B => X"410100E1FF54390351010001A525EE6C182A6CF50D0168190937D74DB3002364",
      INIT_4C => X"61866588CA8800B2D3D268A02A6601CB28B31E209500B8174AE0F1412088C101",
      INIT_4D => X"4E2A170400082B48038625B21288C15D419664016D603455053B6A5F27091B13",
      INIT_4E => X"3908005204D3A086410088B26340F4012E41B38241A3D8100001005D2FBBA84A",
      INIT_4F => X"2E524601019381010D45977141206A5337D90092262A1872B837AA37B2C83B00",
      INIT_50 => X"DCB2AA800365004A670965000086471E4A008163834100381FC9A081411F4110",
      INIT_51 => X"A086419686C055CA27028DB296033539071860325F038625B2006C2F45D2000A",
      INIT_52 => X"0152015204690EA363106788456C2DD301CA5781B3A465034E0052040E0CA3D7",
      INIT_53 => X"B300862BE08641A3518600B0455C2C2465005204C0A05D41C8531D522E2C784F",
      INIT_54 => X"481639034C26456A04B01D4AE04841054112412041221F9500A5E52B49C8D902",
      INIT_55 => X"013CE0ED41B2932501C918403866B2AA846A010001B8867AE01241005B1FBB96",
      INIT_56 => X"7904408640105D88000002E05555530547490840E1408800B00000362FB001B8",
      INIT_57 => X"37DB00C8D90D18D1B37E41138895C00588C10C0895C00088C1C8523B52040065",
      INIT_58 => X"D9EED524695E25C2C80348605BB38688C1598295CF1788C12B3395B2D42E14E1",
      INIT_59 => X"88459A404E2BB92E744953B30E41963B2A69640163533046030031125F884558",
      INIT_5A => X"0AB47441B33104954519EF00AE0018D58DB35D41D45D61280F38701116280F59",
      INIT_5B => X"0619EF26B20045B200A2B61A6A004D6660522004614F41C81939044B8845780E",
      INIT_5C => X"0010E66241BB45496652D13E2E0203238D11B34D8DB4D1B2144AB2681969E0AA",
      INIT_5D => X"07232CD7AD2055376A112A6914016819094077B29D45D9000D58000D1197070C",
      INIT_5E => X"0E1751571ED327012A0B58B9EE20214A1260844989522E51EB26B9EEC06A5814",
      INIT_5F => X"016914C120EE93C0D70D31CE4E0168190960843894E1A02AA12A803466600080",
      INIT_60 => X"5A02B821B3A0009B7CBBC80C262A2504B2D7ED2EF8DE95B3005B1FBB45199720",
      INIT_61 => X"3A270451229700A54526E2401C41B32241E05E05251B0A4F8845B2457911D0A0",
      INIT_62 => X"0430554500520465866988CA8800A5652E00F4570DA6400E23B32641C85D0306",
      INIT_63 => X"AA844087408197B22CF774183826A1FA016603B32641963B6A5C2B0900003B28",
      INIT_64 => X"48F4252A2CB300381F4988009612408800B8863CE0A545A620028D586CB837B2",
      INIT_65 => X"E02241C8311F24044D23970045D90D34010DA04A245846820A742A0E7B7AFE49",
      INIT_66 => X"46051B344B1405578800C84F545D023A285D781B57214F544913408800B81C4A",
      INIT_67 => X"026F00010D016195020000000000000645380186D108D0005198B37541C81B00",
      INIT_68 => X"06C1A0FF0601007FC3024100000D0303057DE0FFC5A0019F0004E78C024A004F",
      INIT_69 => X"02B0E08CADFF024706EE8CAA0041056F004505040100000000000006B03FA0A6",
      INIT_6A => X"432E4F02F40303020201000000000402B800740751010202001100A700070001",
      INIT_6B => X"C8DA02C102C20100000203042D04450404030001540000015C87E0A02E020D02",
      INIT_6C => X"53030325B2014A7F040103010000000000000000000000000CB1BF020244A997",
      INIT_6D => X"014100030D00427F7DE0007DE000433F3F010D0600512FB003BBE42D003A2978",
      INIT_6E => X"4300FE06CDFF06C207750243000A190006040D03430241000A1A0006030D0243",
      INIT_6F => X"01550BC5A01927E005510B090D00080D0641020B0A0000007F0A180006020D01",
      INIT_70 => X"07450707570B628C07480BC60B708C024100450B7E014105007DE00027E0006F",
      INIT_71 => X"0C0C762F106E074100014B06410095957695000D004202550541009595503243",
      INIT_72 => X"07070D13000000000000000000000000000D000B4D2ABB960CA506202E27E1B2",
      INIT_73 => X"6A6A251039241481F119116380EE9BEA311941B2014A86EC8661004F076F0045",
      INIT_74 => X"D3C8D9B2009F83E07F6109010D0600512F0201052D054505057DE0014CA5452E",
      INIT_75 => X"250002A5B2EB21526A0B8CA45E6A4CA0847C06C6A0027DE0962B4F560002A501",
      INIT_76 => X"006F015505450554063D8C006F01550545055406978C0BBBE0253574454B012A",
      INIT_77 => X"8C0B480BCFA0006F015509E7006F0254054505098CFF4F4AFF8F05056306278C",
      INIT_78 => X"0635024100450B61014187007DE00027E0006F01550B4519007FCDA006410B05",
      INIT_79 => X"0B158C86480B1F8C0665060606500B318C067706064E0B418C06480BC60B4F8C",
      INIT_7A => X"2AE000420375079B0001068CD8E80100000003B80B867FE0044AE0041D4B0442",
      INIT_7B => X"00A0079B0000000302B1BF330F007FE300340035007DE000433F3F0100E11E7F",
      INIT_7C => X"00347B800BC8072A6E582034C0A14607D84258D9F7B2AA841B5060644A10024C",
      INIT_7D => X"039F00014D03030000E01151013CE0454946D52E03D8D72001CB800B608D61D2",
      INIT_7E => X"43C132007F4BA0C14B007F4B03B1002364E7034300753F3F020100000003ABAB",
      INIT_7F => X"9546955801017FE395004200017FE3014D01017F0001C10A007FB1002364E701",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[14]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized23\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized23\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized23\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized23\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00450303000D4E021300000000000006B00097007F2AE095B0009700EA390795",
      INIT_01 => X"6C2F0004E1006364E70606046B000005DA8C2EC8A0724180055C1066004F036F",
      INIT_02 => X"4C7F000D7241019F00054B05928C0198000000E01151024AFF0004E11954FF00",
      INIT_03 => X"000000060000E01151079B000041020201000002B8027CE0016C8C0580E00501",
      INIT_04 => X"9506A40472BF04278C040410000D00020D0000E32FAC04060C117C430F000000",
      INIT_05 => X"033E8C453E8DF7FE1B342B53EA039798B20241026103D60000E32F0005E40501",
      INIT_06 => X"B00C5BBB963A465C4D021624720958A000BBF03269003A01054D531524720961",
      INIT_07 => X"A00300E80001E8070A72000000000005F202A1074A1E4A02C201000002B10097",
      INIT_08 => X"00000D007241A00367E01026144A10610000771F000D693FCAA01061BE4172C5",
      INIT_09 => X"7F058C7F48A00500A62F088C0169E0054A054A4B0181E0034A03070B070A0126",
      INIT_0A => X"00622FCA013B8C2F070B72012E3F01EF094A0192004501C9A09E3F6EA004002D",
      INIT_0B => X"6104016E02420000211F4C000002548C7302C103A1AB02C27200000000040505",
      INIT_0C => X"7200988C02010DB2584A666974AA58D95CC0499569CC4201D346FAE1E737B210",
      INIT_0D => X"00211FCB023F074A800249114A00A00C5103A102C20100000003B0710E0B0026",
      INIT_0E => X"00000006FF032D96354D030205E0402E13712958B21061A34502074B02724E00",
      INIT_0F => X"05010D054502034B055203007FCAA000430C51094A074A04A1AB05C201000000",
      INIT_10 => X"48573741B2020200068C0248A0004FEA430F0301027F013F1F0000000004C88C",
      INIT_11 => X"442A615202278C966A03532A1852023B8CA4536439185002A541B200A5A5D10D",
      INIT_12 => X"00007F2AE0003601558065005D25447100F4A0CC2753603A614F02138CCC2753",
      INIT_13 => X"20CC40546AC0203130B201410065142D2A19B5B203A542B2455854B2BF000400",
      INIT_14 => X"B2034300A5531C9A574014DB57B2034100699458EE18C0203130B2024100259A",
      INIT_15 => X"B3A167078CA8524A4DA549D160EA41B24DBB96A505531CE65B4026014C536C37",
      INIT_16 => X"BB966D02098CC86D024C1212E68C174F56152C051A660011E694282209010145",
      INIT_17 => X"46B22C11C300A5D78EB24A11C300A5EA793B042A46B25E11C1A8405C1C603B06",
      INIT_18 => X"A5EA793B04C874B2324300A5EA793B04D4FAB2644300E55753C9B2C84300A52A",
      INIT_19 => X"55292A64004113146D4E00000211BB9657D3EAB200E55753C9E02AD2B2194300",
      INIT_1A => X"303B0028056055292A6400416704304F1A18213B681230191D28352446260560",
      INIT_1B => X"052814000000FF48E0A5A56D1011E6B24CBBAD6A3FBBC85F62052A6400690A1A",
      INIT_1C => X"191A44396918005E45048E02427F450000A39C14052814180500294104281418",
      INIT_1D => X"291A4F0946033A2A09605D4F270D5E01482B034D0F6D01062353790246202830",
      INIT_1E => X"030A7F4DB86A3FBBC82A4B644678022A676D00462D00702425306D1228040006",
      INIT_1F => X"002A6A033A041B2B1B30452D304F5D100529395D2A1D041B1E631228640010C2",
      INIT_20 => X"275C60295030296A3B052B2A09784F044F19041B2A013B550407042A28601B04",
      INIT_21 => X"8CE849E07A7FE358010D9D010DBBC45D036D044629242145044D634D5C554831",
      INIT_22 => X"2A455254043B2869053021340D005F2B0C0C4613481600521841031745701259",
      INIT_23 => X"0E7F26A445A40000000004B8A93F0084E07C030C4E49E0BBC84D652A41052804",
      INIT_24 => X"01D38C024832007FD0015401C25246A000430C5103A102032D004F03A20C57AF",
      INIT_25 => X"E155430F0000E19F430F0000E16D430F0000E13E430F00FF006E006F04E7FFC2",
      INIT_26 => X"A5E61300B09B0000E146430F0000E154430F0000E17C430F0000E16A430F0000",
      INIT_27 => X"3897B20369206A74183860A6C9D33ECB2EB3AD8466239700000200A5E6130000",
      INIT_28 => X"00A54554D3B3AAA4644C6A13054627644C1140874088453837B3AD85673A0554",
      INIT_29 => X"29041B13005D2F40880045B3AA803A344B675D605208408845673441B32B3995",
      INIT_2A => X"5C34044F589700966A30534F784D5D0C00006A1A275009783F602A2E41020416",
      INIT_2B => X"0434712B1B182B235F34044088B20AE661E080209AF800A6AAB36988C1966A61",
      INIT_2C => X"6A03645F245F0146391B00040D285C5E0152003A1200981F40D940010001E434",
      INIT_2D => X"3404002A001096411C002555635C34045211C8476302355C00003A3A25051005",
      INIT_2E => X"221E00041A1A0012962A64015D140D0012C80700394D035555530CC82B1B185C",
      INIT_2F => X"1100171905033A6000017179511428162815002A4D4A11963815312E4C52401E",
      INIT_30 => X"2C094761530F472A04791460325406782B2867320270425303531C175C3A0346",
      INIT_31 => X"001A032B37042A631444563A0308270065630151784D04466114605203672A67",
      INIT_32 => X"032804180205132400257053031A035F0105270105036D1C1639031A03050057",
      INIT_33 => X"64285761292A4C0210963A6A782B6455021A0336785D13486302002A0953031A",
      INIT_34 => X"07052D225C042C61017A114F21281C7838530466210C9614043A021A03054D2A",
      INIT_35 => X"4C5E241B52690445640012E451543418002A640C2A4C2452220065495E045D2A",
      INIT_36 => X"60455D610012E0046D32012A20660D211A016D611405962A2A64293045490419",
      INIT_37 => X"6A04006106512432245204A81804003A3B0445530CE425661A7B015363522956",
      INIT_38 => X"6A2D25013B692B1405E07C6B78235D7A244A256B5E2A140596140B00615C051A",
      INIT_39 => X"021096144C6544632A03175D4F27241B290496396A1763020445640012C8074D",
      INIT_3A => X"05C86101556648045E4F021B005D53172A1B0C9614043A3530311F3000352824",
      INIT_3B => X"120064281220127017966A3248042B197E0CE07C2971725F67784C6544631E14",
      INIT_3C => X"4A2828625D56013A040011304D2353045C4D0D5D4F27054901041250131C165C",
      INIT_3D => X"52214814059C1728326527245303654A011260644A1F2A036D78665E033A4864",
      INIT_3E => X"1A090050131C173A5D570E28467814E064152411002F6B1D0F6D177B4B015303",
      INIT_3F => X"69280A2A1A05121C164C112C1134131254102824393065750400281248301100",
      INIT_40 => X"1B291A6E6471004E05453967007202606F286A3D406600521D17171B051B0C45",
      INIT_41 => X"0919404430261464162B04006B520465611D09001A523A4728442D0029006811",
      INIT_42 => X"004E05662600003E4D1728181B055D5F015224530B4650001B64364C1300782F",
      INIT_43 => X"20634F012B033B5E0521131130146416395E1339781A021A045D6B3061520206",
      INIT_44 => X"0C0E945C375D0946036A2F0C21131130062929045E1D4C716B304D5F2B00472B",
      INIT_45 => X"65190CC86728242A1A542B30651918385C010A0C1A1A182C04004D214D446504",
      INIT_46 => X"2A2855140D001296451A304D1F006400052701670012E0046B2A242332027830",
      INIT_47 => X"10C81A483A4406140D0012C829191B6D6C000E00006544054502252E1405E01B",
      INIT_48 => X"7851246B471A043A614F216806295D4F042A5C049652055318001E1904002A00",
      INIT_49 => X"231D07003A52195430415518042B293A172A1860293A004F3020563A02091808",
      INIT_4A => X"0400292A040C2B204D282A6D44102425280404002A1B2B03324F015F034C0505",
      INIT_4B => X"01064D470052053A510C96304D7004170753005D1405A823505D032A52002A4D",
      INIT_4C => X"2F0246524F4F2854062C28441A034D1B4D04963902630204642A03286110DC5E",
      INIT_4D => X"6804610155660011C8675B4F645D055D6361470F333461015566005310C84E1E",
      INIT_4E => X"52305D4564314430335D4528360563521873611A04C81A182C06002A21544F21",
      INIT_4F => X"5064245E16042B65620C375461650052053A2851046D4537542965056B016019",
      INIT_50 => X"5016001318125011135010113010007C1250122414165016241496705E104D63",
      INIT_51 => X"64211B64780F2A70005118003166001474610A4F655F4F1C145C3A13502A1C14",
      INIT_52 => X"174F5E131C1650042A2B48001A045C0A233A0452171A64780F5D610031660014",
      INIT_53 => X"021B5D2A2824004D2945491528245D020A672D011A631900291A68041B48001C",
      INIT_54 => X"001420635634052516641E001C173A1A1C14643A60525C2B390F29035F016503",
      INIT_55 => X"001144704D643A194D1A0E1906003A5204686D4D0B603A556314059440472432",
      INIT_56 => X"25334913C85F3B0019045D033A4418006425020A4D6713D02B6578190105291A",
      INIT_57 => X"161A005E520052111817962B0A572904386415002444662224466424664F6052",
      INIT_58 => X"7C783102604D34003A2A0D25131B32040040151A5F2423665260035C112C142C",
      INIT_59 => X"2446645C0320022A564A0400395E4B45491528645C181F29526A600352065C3B",
      INIT_5A => X"29642D39231520163C1500614A1528675F033B2B4A062861211100281B117025",
      INIT_5B => X"24003A1D2928011A0454036428712B0144150C2A2A041B460329381514042B4D",
      INIT_5C => X"032C054D02520304642D684B45491528181A0C2B011D49451D15240549521800",
      INIT_5D => X"2722711B15241128606A2830655D4F284A282862003A024E4603131C16290453",
      INIT_5E => X"4E460B051C121A0006076A13646404170000001460653A2C285C662969181C64",
      INIT_5F => X"12C80D280D001A4346041B2746184D614D1E445E0B781B0CC8161C6439040039",
      INIT_60 => X"29521B003A6A04006A03521405E0713530311F405F246A04690400391F45013A",
      INIT_61 => X"114E1139487C1E2E78147017C8076554532B0903284543460029501405962A3D",
      INIT_62 => X"5D034D1B4D04E0601A04004D1B4D243A05CE11615E1244102414701770144F4A",
      INIT_63 => X"60391D0C5E0145485F0439252B13243472426B780D6D010522023A455C243B3A",
      INIT_64 => X"2A5C19044D1B6346605E75052F45021C344C532A3A472F3A1360417E64391A28",
      INIT_65 => X"786A46621B6319604A5544486529254F410500192A440C0F28650C002B656B31",
      INIT_66 => X"6D5638041C16521B67322214DC1A0521550004000529191B475312C82A036175",
      INIT_67 => X"3B033A193A72451B243A4F714503043A2A0D25131B320417005C12285C722429",
      INIT_68 => X"71125013605F3B7F0A2B655C30652A02484E004D5D210629193A1A246B39055F",
      INIT_69 => X"962B60241D0004215C041C2861109448521B55282E28686600654A4F02395E44",
      INIT_6A => X"032B45210000316D61472A540C472B603A5D05296B4D305118002B60241D0011",
      INIT_6B => X"4E305E552C17354A006A44545E244F1A520C1B3A45013A05296D153005053A4D",
      INIT_6C => X"2B621405963A5C784966593005051B6928202A180018244D15283E0431644A41",
      INIT_6D => X"401D2A3A180079785F1005295C24664D5F1A4072510125321405E030014D5F1B",
      INIT_6E => X"4D722C0630254F784D21021B5D3A2909003A644567702A704D03645F18315E13",
      INIT_6F => X"06054D5D7624002401662142051005295C24664D5F1A4072510125321405CC26",
      INIT_70 => X"645F24222200693630294A2200285C47033B0C672A00792845442B604D603A6A",
      INIT_71 => X"71472B64711A221408784D21021B5D3A003A2A042909003A644567702A704D03",
      INIT_72 => X"003A1A3B04C82750046D2A0518245D1E2404966A62003A6219041B2834643025",
      INIT_73 => X"04001A04006108055504242866283714282C004C304D63005E1C6D6302054F2E",
      INIT_74 => X"5804660503255005734D03441804245004306136657128286100302139049652",
      INIT_75 => X"24500430613665712828610030213904C8291A001A00533A04E05D04004D7307",
      INIT_76 => X"45632C060C630150304F655D011A002937042B2E140696255005734D03441804",
      INIT_77 => X"4447251406962B5C652F32002B1918292E04B01D450A4564630729031605C837",
      INIT_78 => X"2B04534F65635204965F0205455C4D4A60521D635204A453001A2B6634042B2E",
      INIT_79 => X"021A63014F2B02733225031A04961E634A054F645304C84F645328181B3A4D1A",
      INIT_7A => X"5260280B3063520F783A18003A3A0B1406C81B04221E2B662953175213962A6D",
      INIT_7B => X"78003A7904B45428282900004D632B4D1E532862005D064744391A2812600834",
      INIT_7C => X"44004F134712E4715404004D771C0B6352245E022A18003A287D183804C82A39",
      INIT_7D => X"5F04C86B03454C2404CC26007019030474785230391B1406E04D354C261F4560",
      INIT_7E => X"3A3952181404000534200714069653401C256218041E634A0428041A044D6105",
      INIT_7F => X"004D61049646035C022868782848575D7A60215C0329044F64511E052B074501",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized24\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized24\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized24\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized24\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0C654E2B5907302A270728486700041B01053155043804966A2B30212A180051",
      INIT_01 => X"5F46011A1406965229445E4D0400315C031906483404E4282C604F4F49057004",
      INIT_02 => X"0A003529002960246C3065641A3A2A2B001A1A784C5203290633651904005330",
      INIT_03 => X"2D0138056719052965443B605219601A04506903173B1A0029065806963B515C",
      INIT_04 => X"2262780D2A6A040D282415041B05003A1A04696C6404692A474D66305F52645D",
      INIT_05 => X"54642D281800311E3453476C14192A2D4C546028784A2118402430173A36242A",
      INIT_06 => X"C8411A460431630266456771057D02055F1606CC262200314522002A451B0F64",
      INIT_07 => X"456230411A460431630266456771057D02055F1606961B04002A190105494104",
      INIT_08 => X"4046040496512452045404C80B2804960039045D4F2760456918003A2A040C52",
      INIT_09 => X"262A52246A04540452054D66015250046605191B30461406961B042B4417013A",
      INIT_0A => X"291A3B052A6A0C284D323962380A617120061406FC296110175C304D5200055C",
      INIT_0B => X"0496532D04A82019034C26740F200552010A005D67610C216600001E5F06601C",
      INIT_0C => X"2E0C1A660473467104485D033A46784F0128617018003A1A3B04967000221E1A",
      INIT_0D => X"6A301A6630712E472A043804C82A2A1C0A1864624C605D2A1A6604E428500673",
      INIT_0E => X"1D00043047704D6367002745614F04655E1A6672010428301B051804655E1A66",
      INIT_0F => X"1406965307000434520400215C2A001B78651406C8531A0C004D3404CC040521",
      INIT_10 => X"70525D224A1924221406C872710A4D255C0D5E010434520400215C2A001B7865",
      INIT_11 => X"345230460070525D221830461406961B24706B03084F671B316352171B304600",
      INIT_12 => X"000A672B473A090C1005191B3025711406C82A5F016D605E4C47390070191B08",
      INIT_13 => X"6352171B071406C86A44181404642B14055C1B5C4D30462064391A1406B45204",
      INIT_14 => X"4F655D011A3C050D4D631A232114069600054D0A000053071B3A630004301B31",
      INIT_15 => X"5E1A041B040005672B001B06E0716D010041464C1D471B672E434865005C2B30",
      INIT_16 => X"351406E0293A634E071408C8074A015E6A6554005F05056B0324700319010573",
      INIT_17 => X"08050153520B180A5F2E0A6B036A48340CC863355204005E4504191B08345234",
      INIT_18 => X"5D011E3B3A4913D44D12051C281096191B18002A021901600F6221282861000A",
      INIT_19 => X"006A0353052760363019114D3B0005440429654104961B04003A1B06004F2B02",
      INIT_1A => X"2B605D4F27603A5D054F53054F4802242263004D220011304D4A003A29242809",
      INIT_1B => X"06961B04345207342820531829654104C8654E2C60750E30455F7A34284C5F01",
      INIT_1C => X"305D232E347172017904C8630305003A2A1B14051C66387A11003A6052060D14",
      INIT_1D => X"180C5257223A4F21680454045205566500054D0A1406A85E00197A04964D001A",
      INIT_1E => X"0F05053B5C24520450044C26441800795600461028681A4C675D714D02062A5C",
      INIT_1F => X"095864711C054F2E3A05566500054D081406961A3A285C0269060000054D0A2C",
      INIT_20 => X"0496010319645D24530C306342240019465C4604005207145C5E01523A056468",
      INIT_21 => X"24003A5360534D20306570002906582006E003530651044D67295C1B02644C1B",
      INIT_22 => X"1B1706C81A04006648087018340464653B12004148180A2C606070524C522005",
      INIT_23 => X"2924224F02290E0D0C472A54102C161A005E5200521100004D2A3A024C1D2C06",
      INIT_24 => X"472452224F6728545E181C054F2E3804520552044F565B28181A0400530A784F",
      INIT_25 => X"150024446622244628281C003804C865625004001B523905241A04530C532A04",
      INIT_26 => X"52052A4760391165710470044D1A0500003A4604700434520418046D184B460C",
      INIT_27 => X"7C043804C85D4F261B60014D67600F2860520330460858064D215D0346031A01",
      INIT_28 => X"01286303790496525304003A1A18200500666960460F301A0005673A6D5C5C3B",
      INIT_29 => X"0564304102004D22005E7304E0302544002A5D603911657104E02A6A305E2F28",
      INIT_2A => X"442D031605962B04003A1A646D56435E18401C000A52022D2228350405240429",
      INIT_2B => X"211D0004302B1A1800004D617104C8435E4C781B2A63003A0663119600563025",
      INIT_2C => X"211D005D77183804961A25094D1E5F4F2C004D63014C302F4504531D5D61000A",
      INIT_2D => X"000A58643918002D22044D1A003A280B0004302F45003B1328281C0052006A06",
      INIT_2E => X"7207302F450028610019285466077851183804C8531A0C7004C82B2A2A032D22",
      INIT_2F => X"0A00125C1B30355F0024050028006A0304072A1B304D5F7004A836044D1A0019",
      INIT_30 => X"5C65193A04A8360A48603901702A4C61004709211D005D0730211D2760142836",
      INIT_31 => X"981A4D4D5218005257045205001E1A4C781A16074D612A245304C863035C0A2C",
      INIT_32 => X"225B4D080C072C0A002A5C0B306B2A19661B2B620064045C3B04005257043804",
      INIT_33 => X"225B4D5315065C3B04005257040019004D53183804DC5E011A032453003A6A78",
      INIT_34 => X"2D24601406E4285F02056000391F47381A04000460082C0F00391D4F720C7878",
      INIT_35 => X"365C2B042B0B001E191800663804C816704D020AE4716B0305642B61716D0145",
      INIT_36 => X"04C8077063012A5C704C5C30472C04003964213919180C171E1918001A090031",
      INIT_37 => X"4D2B02056907001904054611001B5C3B7C0448654F4F010A211D435E44481838",
      INIT_38 => X"46010E2B53011E190C281E06004D6137456300002A4A4F710460391165710400",
      INIT_39 => X"6028183A2578460A1A0F28601A04654D3804C863375304006965227418540400",
      INIT_3A => X"112829183804B4540004005030531D1F732E472C06191000515F2864542A2B04",
      INIT_3B => X"140F58184D1A6771601A5C301A06535D4800004C283B044C4F710438046A1B45",
      INIT_3C => X"040066003804A8183A59062C45284A1C281E3052530A1A041C702A302A2A1C0A",
      INIT_3D => X"2863036D1200056754484F01052B03536D4814090752114470003B484F111B32",
      INIT_3E => X"003A4F4A243544000567545C67390450603911657104004603047A2000531905",
      INIT_3F => X"051E19056556224C610048472C0619103452040028634B4F11003A462E051B04",
      INIT_40 => X"352B63645D014F4A0F2A2709180A00134C6D011A645D183060465C3B7C783106",
      INIT_41 => X"46706D2112E0067820004C264822001E63160864715F0219720C245300454E30",
      INIT_42 => X"045F4F64340428491A014C1D0031023405215C2A00003A1A3B04966A05215663",
      INIT_43 => X"4D522428091B606A031A5B281A63057C183804A004002A000A740D14090C4653",
      INIT_44 => X"2521252F610004282825020620061406C86301055561501A1B042459041B0006",
      INIT_45 => X"1800190305520400655F4F112009003B390A180A0013702A604D1A08522E5430",
      INIT_46 => X"52071406966A1D2C282D042C63265304A421670418493A6F3544055E2B5C442B",
      INIT_47 => X"0004005030292925385C516A010A4D4D617D1848655D01065C2B3605003A6171",
      INIT_48 => X"2A6A071860190352541C456436182005301A29784D66602A4720071406964D67",
      INIT_49 => X"052D27643908247053075C25022572672202042A52043A057C786D1406961B07",
      INIT_4A => X"194C51771800661E1428614D4C300D2503355C1406C85D570700501A20052A2B",
      INIT_4B => X"062860541830461406963A04002A190105494104A0044D1B3E0500040050302A",
      INIT_4C => X"2B6054002A180000054D0A00005E1B0A4C60520E2517052A3A4C5234242A6B15",
      INIT_4D => X"0552530444060D675C071406A4460C5809647904961901526300495104521178",
      INIT_4E => X"0A011B014C61386434043A05191B075F030A2C041B316302040050302F614D02",
      INIT_4F => X"3A44222864542A400544041D34071406C84D025018001A645D2B174E1406CC34",
      INIT_50 => X"191B3046140A0013405E5C242139644613651A11002A2B042A1A010514045205",
      INIT_51 => X"0548163B3A001191C84D2A7E18580466051A72013A3B03390364022903041804",
      INIT_52 => X"1204394A0011A41A1E0E295206453604844D2212963A041B00962828177A2C56",
      INIT_53 => X"5F1384003A2511844D6112B4783F064D1B12C8163A5E11C82B110E4D6326092D",
      INIT_54 => X"2B00119650162829292913962A6A033A3E1D2810A85C24220305321C70122432",
      INIT_55 => X"294D78092848016950644C6A3F04465E1224355C785D5B046701A4441A000229",
      INIT_56 => X"6A21490039033A00396B0429041A1E0C222D3079035D431C001A04281A61021E",
      INIT_57 => X"6D13965F30414728601A305D1B0308291A0600500412C85D4A2C2A6A645D0006",
      INIT_58 => X"294E00C86A46011E53644C01C85E2F4861008000000080000080008000808030",
      INIT_59 => X"4C1D6D285C6571211296245111964611C8524D01063A2704967A295325009629",
      INIT_5A => X"1B13964828013A2B650110E03A612404C85765001A1A0CC8795111962A444D1B",
      INIT_5B => X"5F4C1D2C48610C4613C829290179046D11C80C001B5013966A1A5212962A5218",
      INIT_5C => X"390400284E34172A2B66293267016B12046A5D0010283200522862002B133035",
      INIT_5D => X"533A04966601462C3453012C533A042A1E0452291B326513966A1978663A2B05",
      INIT_5E => X"084D4D614578415D00285D002A026664472604C8174D526865471B284A006122",
      INIT_5F => X"0D001A4346041B2746184D614D1E445E0B781B0C9661220037603A2704E04D1A",
      INIT_60 => X"04300D4630522E482472560400536122031096140B4D1E1C47202B1B0CC80D28",
      INIT_61 => X"04C807600CC80D280D001A4346041B2746184D614D1E445E0B781B0CC82A3A20",
      INIT_62 => X"215E1A2D420010E80353002903285D002A2A04962A2A04C8535050044C1F2B28",
      INIT_63 => X"1E675F00650F4F67340C47463046033A65486D0F1F292A68044D1204656D6760",
      INIT_64 => X"1C5445000019196211E45E13604578311B0F1B4D2F082D423022120621690425",
      INIT_65 => X"304D660C004F5E010948630066005C3B3061027854242F3A04CC044D45245765",
      INIT_66 => X"06057A0052294805055C4811524F11512E055D236628621B2C5C530D2A462822",
      INIT_67 => X"4D1A525D6421001A661A04001E670000536122185D28047A4F19015E4D00051A",
      INIT_68 => X"963B13056AC85711056A962912056AC83A13056AE04210056AA81C6764605104",
      INIT_69 => X"11C829652507640546152004C833475C3435C819110EC82212056A962B11056A",
      INIT_6A => X"010E0C2A5D0053042448641E00391A074D3B04C8455F7A295301520600191962",
      INIT_6B => X"096039286030473A041F3278415D042B30284428243A04527904C86204670546",
      INIT_6C => X"2B620404C829385D1A2C284D00482A001A0529034A284563114812001B280452",
      INIT_6D => X"68600704B035494F0B2004003A4A0404A41B31284A4D6725050404C82964191B",
      INIT_6E => X"394D0F1C2470033A4A0404C04C30495508004F3A52052B036801125C561A6460",
      INIT_6F => X"04686D4D0B603A55631405964D254929301528283015172136504304DC4E0226",
      INIT_70 => X"603A5563140596673A6B1753391800491428304603526319003A28041C003A52",
      INIT_71 => X"2B5E01060052483127280F5D3328285104C84D5E0400536122033A02686D4D0B",
      INIT_72 => X"72177B0339033A520C96525434180028042B44041728451C605364555D256404",
      INIT_73 => X"022B65721405C84D19250B70116427003A18004D671C1C28651E04174C2B0D4D",
      INIT_74 => X"E4025E4D001A04964E2A3A78653A25001A04C82A3A0F18001A0496006C200029",
      INIT_75 => X"50121C281418000014F0025264447804C85F61655B4D521D7804DC5F61537904",
      INIT_76 => X"003A280461524A012A6D17704C5C28785D65015C236604A81418481250125012",
      INIT_77 => X"6A044D372D283518006A1A615604961F05566778785229526A0419245E303134",
      INIT_78 => X"0064602928022A6A186051044865655625537A641E39480C0FC872260035042A",
      INIT_79 => X"B04D5E04275C0D5306493F046557202B1B0D10C84D094D694D30472C652B4867",
      INIT_7A => X"1C4C650C3B180053005205311A045C3B7C04004F5E015D2D003A310D27720011",
      INIT_7B => X"002904C853305D6562605746015204B45305220263025208001A2A7048245D20",
      INIT_7C => X"61460A6038181F296A5E3B04E40C630C0C2A29306531005204E02836003A3909",
      INIT_7D => X"08962B3A02396960304903642401465D0C461396535C190F186301701B13C82B",
      INIT_7E => X"03520CB43A00008060630289C8193904392E4838057A00690C1B701E63020058",
      INIT_7F => X"2B5E0284161B11161A11A8617848024A01840C313404A849000080614928041B",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized25\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized25\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized25\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized25\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"4C262B1B01E025018018531B606409285E03520CA4680A00840C416640690CC8",
      INIT_01 => X"22420098044D2101536A0CC863623A4F4D0829651C0084961A1A2600844D2242",
      INIT_02 => X"842B5D0346441B049628082B4A028000CC60196A0A96800D0084001904D06B24",
      INIT_03 => X"185E0400696300A425522E2C606A1B701E1A2C00410396392800171A01066803",
      INIT_04 => X"1B0F0C2744416609C86B5D5F606409645D0400804E02CC2645392F6031005200",
      INIT_05 => X"1B5425006D2102C80017800661014634184D1A044D024604961900051B017852",
      INIT_06 => X"164D024609161B13D0372D466328244E63008450316548701E311B0C96390800",
      INIT_07 => X"6300E03A61006A4950674D22416609161B13E03A61006A65042A1A6401521B13",
      INIT_08 => X"00D0701E28285204C82200312504292A5225471A2A4A00E04D08005219045D31",
      INIT_09 => X"2C242242481A0317D0645F130563426904C82200312504292F2200C8296A0F22",
      INIT_0A => X"22000960636E04961A0964544F2D4568181F291A2500C8291A03354D1B0E522E",
      INIT_0B => X"3A4F4D045201054D6122004D6F04C47000605F0C5360616E04DC5350644A001B",
      INIT_0C => X"21440CF01E4D4D32004E606709346A40690CC861626D630205221260286C04E0",
      INIT_0D => X"C81F025C2B30415D042B1108630169082B1B03655204C8630160462304004630",
      INIT_0E => X"002B2911E82B0D4D030E0C2157004D6E04C82157225B340430247150644A6C04",
      INIT_0F => X"0600050053650C3B2B1B0480186D04C80D280D2202643A190061660004522804",
      INIT_10 => X"2B033925001E6A6C04CC540084521D04602B5B043B030A001801655204966B3B",
      INIT_11 => X"630496656D6B21526A00351B3B04485F624E60462304964D2500655C445E052A",
      INIT_12 => X"75049639006A041B63022A6375049628006149471A287404E06366092808603A",
      INIT_13 => X"4D224224354878653925003B287404004404965E624D5365405E004F30606122",
      INIT_14 => X"6D2A287404E03604001B041C601B224166287404A435006D2A781B6204C86B04",
      INIT_15 => X"3A7704961A520463226041287404004404B45305390400311E60317504A43500",
      INIT_16 => X"6104C8312600001A002266042808603A6304C8495F781A785D1C600E50644A00",
      INIT_17 => X"3371287404C82904006A0329182B484166280010C800841C60616275080C2B1A",
      INIT_18 => X"603A6304A44E63471A2A4A1C04701E4D4D323404676104962553133035304C26",
      INIT_19 => X"5E031B0019182A6A2200316404A4350028615000355C09521A48606A28440407",
      INIT_1A => X"781A04603A6304963A3A670E009060357504962912050052014678317604C82B",
      INIT_1B => X"2D601B61610496520105472C304D110500900E7504C81B0084004608005D0109",
      INIT_1C => X"E0257235242353024639481C643900172A653A5F190960215C6304961B003A31",
      INIT_1D => X"285104E0631A05456334784F1A4D02180F04961B2D046762046028084D2A4E11",
      INIT_1E => X"6200390F04C851483234042B470F040C6336304D3102781A04C853062B220060",
      INIT_1F => X"001904005361221F0E00046B6528643904003A3913F81B636728041A1164541A",
      INIT_20 => X"030600490D04C85F350028440867610D042C1E30354D11C86B040C04D02B6508",
      INIT_21 => X"4C325F181804673A0B603B0E47482E730C04C81F1208251E005F4F04603A0D25",
      INIT_22 => X"0D04C87201425D056764244604480029044355633640690CA84518286700602A",
      INIT_23 => X"4603521804462E1C0F03652C2B1B2D2B6504C810605E2C2B65084D1A0452001B",
      INIT_24 => X"28452B5D0F04962553042B2804284C18410241660435505678530F04C8290400",
      INIT_25 => X"042B692F2B6504C8005513066B542500180F0496532A044D724D472B04161A03",
      INIT_26 => X"34785545043A11782A6904645D041B2B5D0F04963A6D005D6102520004243552",
      INIT_27 => X"63002844080019044B0E04C01C2A191F044443041C60192D2B6508006B049652",
      INIT_28 => X"1B0320663504520CC8471B552522001A040C43640C04C8655D051C306D453448",
      INIT_29 => X"4D110500906045781B0E04963A2E2B018004284D086771082804900A00650905",
      INIT_2A => X"3A552B0F182C3504C84D1105003A03840C63367002781A049652010557261804",
      INIT_2B => X"03002A3A606B0C049651003A3B2D002B565600254F2D6449020A2B1B043A2900",
      INIT_2C => X"466561093065312E2C3504C054003A39782C61354F64650D04C867221230351A",
      INIT_2D => X"396D0A051B36181B00351B3B043B485C182C3504E45E13602330315D6A2A4F01",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000AA3DCF22C851",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_31 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_32 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_33 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_34 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_35 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_36 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_37 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_38 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_39 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_40 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_41 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_42 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_43 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_44 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_45 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_46 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_47 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_48 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_49 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_50 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_51 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_52 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_53 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_54 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_55 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_56 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_57 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_58 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_59 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_60 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_61 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_62 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_63 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_64 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_65 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_66 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_67 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_68 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_69 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_70 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_71 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_72 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_73 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_74 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_75 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_76 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_77 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_78 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_79 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized26\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized26\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized26\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized26\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_01 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_02 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_03 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_04 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_05 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_06 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_07 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_08 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_09 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_0F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_10 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_11 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_12 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_13 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_14 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_15 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_16 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_17 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_18 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_19 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_1F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized27\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized27\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized27\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized27\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized28\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized28\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized28\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized28\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized29\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized29\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized29\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized29\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0472013A51020000604504612A78190117352C28284C003A2804527904010D00",
      INIT_01 => X"23D3008C370DD318BA43B3A5E5D11840206586B3005D1F020C9FBBA004540438",
      INIT_02 => X"DE016286B26A95B30C4A00A2860B4BCC5214084B86630000866B134A00004594",
      INIT_03 => X"B30B4A174A96002C2F0046EAB2AA844D2A12B002BB962A028625B2020201DA01",
      INIT_04 => X"01A3F84100009686A566E0802B9C40202A1952B20B4B457895B2AA84B2AA4781",
      INIT_05 => X"2DB3A5E500AE41B3B5BAB3D04D651A5C0FB4D7E79BB3AAF0175310006E015C01",
      INIT_06 => X"144C4549D86CB925B2AA845C876087005D2F4AED41B2484B7443B3A5C5D10025",
      INIT_07 => X"D441A5E5E0B441B30062BE164B86B22A976626E1342061B3AAC8603A6704B087",
      INIT_08 => X"A5B3AAB4540F4A12D287D6A000A42A4F091B6079560C314E78560011B84E49E0",
      INIT_09 => X"0028E0A5E52B98AEA0BA41B300009A49E0A5850D46E8C0D117B30086BE194BAD",
      INIT_0A => X"2FBB9655644C018725B20B4A960025040B8C1B4A134A174A0B4A0000003DE000",
      INIT_0B => X"750F5100748649E08749E0968720E125B2AA845386A5E5802702B4B386610098",
      INIT_0C => X"C1A07A3F4AA0864AE09686053042B20D4A0000762FB20313B821B300630A5100",
      INIT_0D => X"41E00A4A00312BE0084145586ED4250AB16CC9202DB300C84D11005D2F034B86",
      INIT_0E => X"19BF45CD05208DB300003FE045673441B3009687A54140661A890C13B821B200",
      INIT_0F => X"B2104AA5B3AA9800522802517011C087C0A0961A04002805140853A0B22A40D3",
      INIT_10 => X"81B2A5452623208AFE1B5188B30000532BE000BBAD08519686C0C917935809B4",
      INIT_11 => X"9A49E0A5E580EEC12331A623B4B300000D7CBBA4632A3A008605E0C00A1131A6",
      INIT_12 => X"000D70BB96665D01010500EAC91952B20101104AE0000D963478134BA0000000",
      INIT_13 => X"00C86144221A2A302555294C61142C6153054D4613000D70B07046428F007E7C",
      INIT_14 => X"B3B0863F2BE045380A0AD2202DB3968620025327028DB21E4AB2467A59694BB3",
      INIT_15 => X"A200867D134AE42834050C6B03183B412704DB86A5256A0A132B42B31E4AB474",
      INIT_16 => X"CC1A1345B3A45301050B8CDF5560190DD010053115B2AAA8602A52040042E000",
      INIT_17 => X"A200B20A0DB3F84A606A038625B29686A501C9D36C2D922502D0005398B200A2",
      INIT_18 => X"86A506D0005198B200BBAD5327E000FF006EBF058C7FC8100F8C7F4810034B01",
      INIT_19 => X"035E6A3A7011158C9635045F4D0A2B018625B21E4A000043E0B4E31541B30096",
      INIT_1A => X"8605E0190198F427F93474B20086BE1ACBA07F7DE000B886772BE000BBC8632A",
      INIT_1B => X"922D1C9849315CB3A505AE5B812E264741B3002D2BE07F4D0000A300F83A0400",
      INIT_1C => X"1C2DB3AA80406400651D6153041C223450171A06292A644C1A004D13401E4AB4",
      INIT_1D => X"B20045B2AA86A5E1209CD13E461AB8D86C521CB20000EE4AE0B086BE1BA565D5",
      INIT_1E => X"41B3004A7F66B886132BE0B4521349A000D04102064A011140A0683FB0B25453",
      INIT_1F => X"D3790802400E0EB803D359140DEA41B30B4A866C0000A3D00C1C04B20ED34647",
      INIT_20 => X"00E405254F0F408600A3000D96872001B8D8B2AA84D58700A3000D084187A5E5",
      INIT_21 => X"028625B2AB7F862D7C411E4A0096411345B3AA803A28703A04548640000048E0",
      INIT_22 => X"70BB9686A561002641B2966848002817026A6100003A3A031A2A042A4A4C606B",
      INIT_23 => X"683F41A0683F46114A00A000192BE01B4A01B0004AE0864AE0174A000002000D",
      INIT_24 => X"3441B301A5256A02553927D8B3AA80643A1919110F0441A0683F41A0683F41A0",
      INIT_25 => X"6EF7B9B20541000048E000BBAD4527E0CC656622003B02474F091B135B868567",
      INIT_26 => X"2DB3966A322C606122000039018620D8183AB2AA846987B8A6330F8621B4F419",
      INIT_27 => X"B3AA80282704452BF8D401D3D9062E41B37F618567018B6C2DD39C2D41B3B29C",
      INIT_28 => X"D580AE74B3005B1F4910B8BE49E0DC41B4A379CAE05BC0D3F9085148B3A5E52B",
      INIT_29 => X"0085497949218023CA4941B300003EE0B2484B7443B3A5E5603A41B30F4AB253",
      INIT_2A => X"010110B086BE1B4AA0000000000091010DBFA0623F0B8C0004B24558D8402EB2",
      INIT_2B => X"9B000028E0005B2FC9A000E0004F03419B0000014B02B80049E00050014101AC",
      INIT_2C => X"4D040401400202BBF80300250402BBAD030301B80049E000500000AE01500441",
      INIT_2D => X"5141044A0050007F4F520200982FBBC80B000425B29B03C7A0014F005B2F0001",
      INIT_2E => X"41B2009A83E0000028E09BA5652EEA09E3790AB34D61181326E100D8138901B2",
      INIT_2F => X"453604B401B30000864AE01066B2536A7200D4482E18550858B3009BB2866794",
      INIT_30 => X"B4315766B300005D2BE0968605E08A41B2004A00009A49E000963A2925005663",
      INIT_31 => X"D9B3A5A5AD8CF7D7C6B3454A1992208E0D9C2348A08EB300968605A0208E41B2",
      INIT_32 => X"10F10DAE81B25202E9BF058CBFC8A000000000B8A73F40A0000046E0B4C85724",
      INIT_33 => X"0404A3AA5246104510010D10C810000028E0B2FAC0FE534662C00AD122B25145",
      INIT_34 => X"4A0461049F00100B8C03C8A00B510241A0039F0010CEA07F41A001BBAADC0449",
      INIT_35 => X"20010A02D9C093B300FF1047E07F57E80001E8014010DFA000000000E011511B",
      INIT_36 => X"0B51040401C90159A0000000E0095103012D0000000000456A57EA451ED32CD7",
      INIT_37 => X"00540101A5B2AD036F0045B29731023A6D5600510138B2AA940565A00004C7A0",
      INIT_38 => X"9705A501C959BEB21B4A0505A3030028E0CC724D1D004D01118C9731023A6D56",
      INIT_39 => X"B28445A0840B8C04C8A003A102A2000000000000B8030147E000A20000292FBB",
      INIT_3A => X"A200000000000000000000B0054AE006C1A03FA002000D06088C0548A0050205",
      INIT_3B => X"4A004504488C094804598C045F8C0A4801AB00A306010D07058C1B4A0707A304",
      INIT_3C => X"04000D0000025529500454A0095104DEA00448E006BBAD0E4A080804F8043C07",
      INIT_3D => X"A00E51034A0A57074A004507A76C8C030747E09500077E0782095CA004A2FFC2",
      INIT_3E => X"950000292F5504198C030446E0034503000D95034503C9A003EC2BD8A00E4A00",
      INIT_3F => X"4D01A56500D8930057465952193188B3C241000000C1A0057B8C04A1030447E0",
      INIT_40 => X"302536000125B21E4A970101A541802E0EB20A4AAD026F00435246973A5E3904",
      INIT_41 => X"B3B4070C9C41A05E11C10174017400B10B4A0C4A074A0000973A4F010125B280",
      INIT_42 => X"510000B9251718660B53581AEA240194242346E100AAAE408E40C7DA0E98D1D3",
      INIT_43 => X"DAA00000000000404D4E83007E7EAFA5C1B2B00082E0000001E30248E000430D",
      INIT_44 => X"A30B4A86490000A3000028E0BBAD4527E001CF86B14519EF00AE0018D58DB201",
      INIT_45 => X"4120CC373EC6AA6AB29662F8280C005009F3A0956300747F49E08649E0800000",
      INIT_46 => X"C93700D319D3666C29EDB2006364E74A764B637F49E05D419B45B200B2D42E14",
      INIT_47 => X"B20B4A86D786B145B2AA803A5E5D0FD40000A37F66B08648E0683F034B86B1B4",
      INIT_48 => X"95004A906102A200000002F703A195004A03A2000000B08600A3BBC80B008625",
      INIT_49 => X"362F8601B401B8D8B3AA84506988C1F74600B800740F51BF02030300162F0C8C",
      INIT_4A => X"0000000000B0452AAE1B6CD94D9441B20045B2AA8006002504D5A00000B00000",
      INIT_4B => X"10B104432BCA014EA0000549E0054DA006511B4A0604A30301E80000E8064A00",
      INIT_4C => X"172B5814B2AA845C0460A0064A03B10000014A01B104432BCA01CE05D2A00358",
      INIT_4D => X"9A57D80E01B2516F002364E700A000A01036E010016E00016E05BBB297185219",
      INIT_4E => X"613B035F3041470050041240A0683F3F8CA5451E53D731006AD720010A746C91",
      INIT_4F => X"11517CBB9619021A18006D4204597F5DA0009B83E08D058CAA7F4A0000A38008",
      INIT_50 => X"49E00202104AE00000000046E0024568016A2AB3AA84D2044110005D2F0000E0",
      INIT_51 => X"00B801BE1B012D000000020003C003F50161036F0425004F000000000241A002",
      INIT_52 => X"00B8000136E0015503C0A00552000000000003112A0000000000A41252000000",
      INIT_53 => X"000000F77F610101A3000000014AE0106600B1BF0303C4034803C0A003A20000",
      INIT_54 => X"410000AB7A012D00B00B9B124B000002E5016101503F0000A40272A862027300",
      INIT_55 => X"5C594865B29C459709930B2A86C0610AB42A8D4654296E5354376C691941B203",
      INIT_56 => X"D8200158740100465C830AB42A8D01D3EA41B2034100B0A525EA0B40A29A0046",
      INIT_57 => X"00000000BBDC194731620D8CCC524AEBA5319CD33FA64D0AB441E0F30893D32C",
      INIT_58 => X"27B35D88C100BBAD4427E0000B4CAD0B4A2341BB0102078CAD4427E00B4A2B41",
      INIT_59 => X"023635002A79444F117BA0009B83E07F666241F8411A41B26A190B511AD800D7",
      INIT_5A => X"DC41009687A5A64AC1C90AB3B2B4712A036B2C64700034286300172804254922",
      INIT_5B => X"94B33C88C10F4196003B5C24520454044088591045382AD30C2EB86E22B33C41",
      INIT_5C => X"6C38B33C88C1B2C1406E977401B3963B5C644C3904B22586406E97B998C4983E",
      INIT_5D => X"282704A5259C914981B33D41C853241D52041A2504558845FE466141005701D7",
      INIT_5E => X"10C1804F97B0984AE08B41D44F5C044D5D7813538862C110C100C8075D30624F",
      INIT_5F => X"41C86136005C0FA545B28506594E065800009CB3E4712C0918084F106C883D50",
      INIT_60 => X"012F6B1D142853044D384100172F4988A585AE4A1814D3E74086B4018D17B33C",
      INIT_61 => X"2288C1C8371A032A5D2B2A40644B5F72040C1A2210053B03651904006B013846",
      INIT_62 => X"006B0440884538E1206C800D0A61B300981FBBF404533A04B8CB49E00B0A4F41",
      INIT_63 => X"025874010A41B33C41963A292500395505003A045988B8994AE08B4100963A3E",
      INIT_64 => X"496D451C644C11401F88C100963A4B4B2C486143463518603A044088A505EA20",
      INIT_65 => X"0D86862D88872D3B41BBAD4727E02241404100000000D04560543960196A0654",
      INIT_66 => X"7F022D00022D03005D2F481297ED0DEE4103C5A0020B8C03862DED41EE410000",
      INIT_67 => X"2FBB9601052A9299200131BA067401B2016687C901F4A000A0001297000D1B4A",
      INIT_68 => X"EC467F26005D2FBBF865254A601B562B0087A5416C182A21B2EC4187B086005D",
      INIT_69 => X"F86C8B35B81121B396652B442F5304455304EC0E009200981FBBF404455304D5",
      INIT_6A => X"962A3A04003A6704A5252AD3670A19510D01D557842A992001B38768886C8645",
      INIT_6B => X"04B0EDBB9601052A9299200131BA067401B201005D1F553188C196662112CBA0",
      INIT_6C => X"B45B01311C5258D81521B27F41005D1FBB962A38490165526C04522E2C603A67",
      INIT_6D => X"78374504533A0467A03841009B9BFD10010D2B88C1B8ED3CE0A5C52A2E5200D9",
      INIT_6E => X"B3CB41A83B044088B01D4AE000381F4910541988C1C85F2A531A00692A28043C",
      INIT_6F => X"93263E9AE0EA38D738B26F4100C82A650209586471B2587406E99C3C46064608",
      INIT_70 => X"10392702B4B3E9411388C19629294F0E4567784A2A0447125D887C000DB2D4EA",
      INIT_71 => X"00362FCCA0694100E05D6261650019652D2818032904A538EA14C62AB279AEC0",
      INIT_72 => X"B00000362F4CA00088A525A62001346120D8B7201027B3E34AE042E40EE3B000",
      INIT_73 => X"157481B25252312FC1A042BB96190305525304005D53042B1B0400981FE20EE3",
      INIT_74 => X"C0EA48258A28B3E586C15D41CC3404002A0064042B1B045987C686B0B2C80728",
      INIT_75 => X"63350748011926045D7FAB00935D2A957C000D064EE06F41B2CE48D7612053D8",
      INIT_76 => X"C816781B002F1A404D282C5F0378041F321B04BB044EE000004EE0C84D3A010A",
      INIT_77 => X"11C0A07F10C16D4100BBFFBBD47100000F8C010400B0443F000049E04127E0BB",
      INIT_78 => X"5E008725B21A4A80A00088CB88A565D049C1200D57253127B35D4100C84D0D4D",
      INIT_79 => X"6141964F4F0C002A04002804B2487920CD253127B30141005D2FBBA46A520400",
      INIT_7A => X"C87720CD253127B36D41005CE0005C2AE0B22A976625015120381421B2863CE0",
      INIT_7B => X"33B35D41009655602671002824044088A525533429012A862E98693CB32B41B2",
      INIT_7C => X"3B04380493034100B2C808356341B32241B26A5249619709374949D23E4A23D1",
      INIT_7D => X"040005274514055205385C2A020A472A5D290329061828180C28532835040035",
      INIT_7E => X"62B2AAB30B0AC4704D7F185404184C2627452B3A011A0C2470734C61380A5E01",
      INIT_7F => X"364101410000C872716019033A0540864088B8174AE049411E410141DC194731",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(12),
      I3 => ena,
      I4 => addra(14),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized30\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_ena : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized30\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized30\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized30\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \^ram_ena\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  ram_ena <= \^ram_ena\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[15]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^ram_ena\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(14),
      I2 => addra(12),
      I3 => ena,
      I4 => addra(15),
      O => \^ram_ena\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"4DC0C7B4D3583469619CD7205753018685F78701C9D3B2B14122411586C18941",
      INIT_01 => X"78172A0A38A09A2D2C2E3E8DF7616A089A974A25C9CD62F0A9790153D72CD469",
      INIT_02 => X"2C6A3AF00940382A0220D4C7232CF7946089FCC001461901D3D39841EA18C9C0",
      INIT_03 => X"492A92308AEE4FC319B4402086A038EA829398C061D72001D3866B8AEE206AC7",
      INIT_04 => X"632D00C90000000000492A46412CCC9A2683012A2A23403A6A069AEED520EAC0",
      INIT_05 => X"655D4C2B001A2A6A005D2A26644B315D09001B50035313784666125013286454",
      INIT_06 => X"127C1700696522333A035C120414505F1B1844410463032A6D033A1C28676D00",
      INIT_07 => X"00BB975C6312286A0474113840127C170065562218647F5011001A7104173840",
      INIT_08 => X"4AE02241B2DBCD2523B32B88C1B80036E0A545EA5564575320EA24A090849FB2",
      INIT_09 => X"3B0438041F034100000045311C2B492A663E570A01D8C09539B3C2415D41B81D",
      INIT_0A => X"97092A94297A01D3AA20D598B8110825028084B280A0E301051B520104300D4D",
      INIT_0B => X"1C2B6C5759002D0C6C372D032A9466B200A581EE3911AE948AE6189225019B66",
      INIT_0C => X"94A0375354400E07D311FAC6B20B0A02402DA820375E186559182A6662366119",
      INIT_0D => X"2A5200041D8CE42D002454662A6A0458B7378CC82B11640D1A030004D8A000B2",
      INIT_0E => X"0000311F114F0051E08651E0C246C24112415D410641BB9600052A2A04005F1A",
      INIT_0F => X"F02F4802030300020344A002A2000000EB8C02A10251E000A202C1A002A20000",
      INIT_10 => X"391829045FB768106C88B8E3CD864AE0C1412B88C1002B2BE0694100FFC20200",
      INIT_11 => X"0B0A2341C86D180041462404D3B75785974010B202B3962B5E0130252125002B",
      INIT_12 => X"1A2A5424001A1838045D034100B00000362F402397451834010A1123B3B7030C",
      INIT_13 => X"17064A026402290305525304500452056B03051B722218045F72782B60540005",
      INIT_14 => X"A52580EEE66A4A184627615918AAE669D539B2B70B0C030A0B0A0241961E4822",
      INIT_15 => X"B201A200A545C7D20890D123D7B3EA058CCC264A10A5382A5ED228B2384100BB",
      INIT_16 => X"A62D021A8A41B29B9BB7C7B74DA4D1014601B145460EE6A620698D3E52556C94",
      INIT_17 => X"446941B1B286679441B200981FBBF404005C044844B7DBA0B1456CFE06EA451E",
      INIT_18 => X"25A046EA3ED79AF77A492E132703D02B6CFE3762B396C5A0E445001B19046904",
      INIT_19 => X"460CA08EB2961964284A400F4D1D04623A5D645E012453306D11EDA0006597A5",
      INIT_1A => X"981F070CA5E534D519022A033E3A01D346EA012001C94074209B254C2021740A",
      INIT_1B => X"6904654D2513490B0A00A00088B2CAD749C1C046C04A37AA8037B35D41AB4000",
      INIT_1C => X"A02141963906292852061921160D1A03045F285C5E01542600105C261A030004",
      INIT_1D => X"630C45642E22270F03355C05011B5E4D785D6A5D6928651E04610010430B0A00",
      INIT_1E => X"1066000000007153E0B8D9DC1740A0B5AA06C84606B86E270AB578B39619001B",
      INIT_1F => X"0000BB962D0A45250464716571000125B29619120564603A030225B202665D41",
      INIT_20 => X"DA4C0000211F561026D90600017C000DB2D8662EF87B082A0D12B8D822B26F41",
      INIT_21 => X"6C404630C14084934642F89BEA21D9D1BA01EA6C239139B310269BD9E3DA1D0C",
      INIT_22 => X"284D035C6701062D0A0A545C5E5F60710D291A25445E04030B5340D9B2D401D3",
      INIT_23 => X"9D010D9CD9E3DA0E0CDA4BDA020C0341AB9D1D0BDA102ED9060241BB96466628",
      INIT_24 => X"0B660600240B534BDABB964D634D372D003A63024269043A6304020B10260001",
      INIT_25 => X"97B00000D94A8840A0000DD94021007F51019D000D9CD9E300240B53D90EDA0E",
      INIT_26 => X"0F526B5206190960215C63046FDA7386BC7F88C1D980E0025888C1D94186493F",
      INIT_27 => X"B27F41C8473A6A0018045F018605206C3042B2DA86C1D90ED9BBC875042B642A",
      INIT_28 => X"0E9721F4C057F425B4239139B20086A501AAD9232AD39708F1F05225B4239139",
      INIT_29 => X"CA4023911994843E97BA03D926B2863CE0006E86C10014007F258E01B908C058",
      INIT_2A => X"9D0000E01111D93CE0A5850BC8072A6E18370109D8D74201CCF75220F3797A01",
      INIT_2B => X"800444662252460B0C0E401C005365241B6449020A4D1D2400106E006E86C1AB",
      INIT_2C => X"266CD94E172E1912806EED26B2020BA525D8B190F10034AA2C940B2B3866B2AA",
      INIT_2D => X"2B40472A2B6430655F041904003B63047D5897B8863CE0A52500463E7A2A232A",
      INIT_2E => X"02032A117788B25758C0BA01068D2622B32A41C84F21605E5C00355C5C644903",
      INIT_2F => X"7A1A250B0C0F4088C0A0C86952446A6B080C5F4F3A4A4D0C303549031B0B0065",
      INIT_30 => X"DB11A08EB200BBA41A2B0400046D45003A044D5C630111675D9740A00B0A0096",
      INIT_31 => X"3CE0023F6488A50500DB1105A925AE01B32541B13E070C454946EA41C0219B00",
      INIT_32 => X"BB962B18655B4D1A046A1A2B2804456B046A88B83F330FB25700DB31B3106686",
      INIT_33 => X"006D45003A04654D251340A0514141880056E03EBBC84D114A885B5D97B0023F",
      INIT_34 => X"01B0AE40A002410000F06D0045212218004D0400046D45001B2A041B053A5C18",
      INIT_35 => X"521405BB0B0AC865622745140525031A1C3025536A645D0105305D4518380440",
      INIT_36 => X"0000BB966A3200242A1B785D290D1405BB3E218CC8634224003A2A2B043A5C4C",
      INIT_37 => X"C7B20B0AB2D90E1BD949D2E16F3E8E2E81EA12E06A68013741B20341070C0241",
      INIT_38 => X"0004005310298CC84D1B0104005310D6A000A56580EEB4B92E1A416095A3276A",
      INIT_39 => X"2CB33D52106988B07A852BE07A412B4100BBC822024D605E171A444318004146",
      INIT_3A => X"96414617285C04010D7A41394100864E8541A8614C0F2226044010B20A3401D9",
      INIT_3B => X"C19651042226044F88A5B3AAB40D00516A681145380188200DEA41B37A418F41",
      INIT_3C => X"6193386658462A2AB5B23EED1075AE0091AE4AE09CE800493F4910553D642B88",
      INIT_3D => X"0464010851000086408740884549882523B3140C140B90010D4569F420C120AA",
      INIT_3E => X"2073192B5510078A01F14943B2459CEA181326016AA10094B3AA84394E963A5C",
      INIT_3F => X"10406E3F5D41A740103A4410424410434410BBA505206A61008A03AA356C94E1",
      INIT_40 => X"4113418041BBC8374569003A3A28286A284D03603B247204284D786B04216600",
      INIT_41 => X"5864360C404688C1655495D06E88C1000E0C5D41B859330F005D1FC0A080417E",
      INIT_42 => X"47130A6123006301115C6A2A19532A18003A2A044865222B041B291A1A182004",
      INIT_43 => X"DC25BBE0652A1F305D670E2B286436042425306D12280400052A03354D18601E",
      INIT_44 => X"41C8612267650E2B5C1A650459875D88A5856EFA01E839B33841B0E6DC1700E6",
      INIT_45 => X"31B9002E16013741B2034100B2D20BA04ED35D01D337A10157C0D753B3144A16",
      INIT_46 => X"20012A18EAB92002D9CA282186EA7920386E01F44E58F253A36E026084982E0A",
      INIT_47 => X"878A6E4100A00000000000C863624529041F295E2B4C1D005E490C0FC0A0A505",
      INIT_48 => X"C2020F8C02C201C210960D01619687A5A1203912E6802ED320CEC0514BB20141",
      INIT_49 => X"1803262D46E12D1C4A332A52C001B3005B27EF8C03106E04A10045A0FF042D02",
      INIT_4A => X"2000E66CD758F815917A01B200B20AAE7E126090A7E0F732B23C7C3897A505D0",
      INIT_4B => X"9A0A93271953A6B33C407F88C1C86A6D1128610049031A04523A045F88B0459A",
      INIT_4C => X"692432005663171A036D030600520B5C5E024C524004000D3CA5C546D18AD2A0",
      INIT_4D => X"340125019B864106CE189CC081C0FC3479D3F4C00183C041B203410000964D01",
      INIT_4E => X"1C000E6841E0790860846CD1172A94A6E055590B45BE4A092A8A0A209A069A41",
      INIT_4F => X"642D6D015230250D6D184D3A0206272125552A28390CC0A0A525194940E712D9",
      INIT_50 => X"054600341A003A29044B2E0C495118002A3A550038049403410000C81911281E",
      INIT_51 => X"019C808EA6B3A3BB9652042B5D4530455C2A5218005E60663A5D181C30656556",
      INIT_52 => X"442D0052042A2A0010454E4001A58551E03420014A609900530195C001D3CE20",
      INIT_53 => X"0000009C83E04541690D7FBBC8721930455C48044D1B013A180001006A305E03",
      INIT_54 => X"1600650171794628365F2B241C001424386115060C1B65511825673A04D90341",
      INIT_55 => X"1A53135C5E015200391E294D2A285534043A442B1829096406074C52001B041C",
      INIT_56 => X"2B1F291A046501061B0440A0A1BBC85D3538041B602A3549033A2A4460392B60",
      INIT_57 => X"4074AA1952B37F267F267F26A17B88060141E05400576510645C3D36043B5544",
      INIT_58 => X"B2DB00981F005D1F010D0086F66D4100A0C821760F00556901175D04B293EA08",
      INIT_59 => X"EEEAD72D9578493ED76000232DE621219A0C2B386601B4490092EA3E2A1A3127",
      INIT_5A => X"582697576039EC8B6C112AC258B52001C8600DE0AA60849A40660157C09CD880",
      INIT_5B => X"0097006F2AE093102E45BF9A01AA26652001F45E6193589324D3B27F2645AA0D",
      INIT_5C => X"1B1D6D027956282472211140A0D341534139B00097007239070100E1065C2AE0",
      INIT_5D => X"171A6230254822005304390304250152644400104C614D013A2D255C44345460",
      INIT_5E => X"02655D184D4F0F673A03044C6D01603A485D033A52735F350050273904521D17",
      INIT_5F => X"D22BB23940A0140A7F263A4001B00097005C2AE0A1005D1FBBE01A0400450471",
      INIT_60 => X"6A0711FA3E46002AC1232A52194A242D6A07F92A2C6869E0AAC6C0291C0A2E00",
      INIT_61 => X"00A0000100E1035C2AE00097005C2AE04557B43EF96A24D9571438D7382CD42D",
      INIT_62 => X"630E5765004B220000416100611A603B721804411E00525D3D05382A0450E841",
      INIT_63 => X"24524105002A044010E80EDB3CE0B83E3F000D00AB3ABBC84D2A0153395C3528",
      INIT_64 => X"06D89AC02ADAD83161B7D204F49304948B41A019526C691941B2034100009653",
      INIT_65 => X"A080A0A565342AD208C6235826A19A23F9132BB8A6012CD3D8E00B4AF9521937",
      INIT_66 => X"46199C26D22001AAFA57862C6A95530700D9404E38A09C25D220694D7321B280",
      INIT_67 => X"8CA5A5AE3119012601D3EA23214109355858396153D400D9404E38B237CE8CB2",
      INIT_68 => X"04568CB2114E800EB7734123342ADA018E57EAE173212CC200D9404E38B2A092",
      INIT_69 => X"54030E4D6A165C1B303A5F2B2871002909340424003A1D053848010A2B302147",
      INIT_6A => X"5300665D11244F4A0052442B06440A60441A4466221405BBC81A24521A004E28",
      INIT_6B => X"030C80A00087C8594145B3AA5D033A460400D1A0A81C0065444C5D0714641E00",
      INIT_6C => X"E0009700143907BB9624003A1D23462D601A670461222B30214704030C374637",
      INIT_6D => X"27B3001439070100E1085E2AE0B226A1009A3901AA00D9404E38B237B0005E2A",
      INIT_6E => X"3F4888B269CD872D41B39687A501D31A57603927B287A525740A582401576039",
      INIT_6F => X"00C816482A1B7800310052044D5E13445E0447243A4F2567580848114088B806",
      INIT_70 => X"41A0070B64068A030C64040BB26A15F4932001D72097797A81B300005EE05D41",
      INIT_71 => X"2841009C83E096512A5D48306546701604690430784F012F0250046D0000A364",
      INIT_72 => X"6CF2D1635349C001D1B20010B23467401401F919E1D9808E710103D02353B8B3",
      INIT_73 => X"AC97B00049E03627E0A5C5DC2AD20861D7AB20318B0120386E69146CD7179AC0",
      INIT_74 => X"406441A0070C8A030C64060B00E05E05140F0C4F562C4C3B0E64040C21530441",
      INIT_75 => X"104549200270982C86CBDE188A34740286200106D3152B4995297321B31B4A7F",
      INIT_76 => X"F4C00E0A51E826389C404E80B37321B33210C1C8535C2B5B6430355F0050045B",
      INIT_77 => X"4D624D1E5F1405070C00A000864088459A2B5097EAC52DB35341452AB8204100",
      INIT_78 => X"2AE034BBFC550206296A51002818784F1A1A0000055404005F2C0628485D0304",
      INIT_79 => X"6514BAB3104E10050337D9008D31B2C441A44A25054867004704B0009700FF5F",
      INIT_7A => X"5520C6005828B33841451011B338030CC641963911000DD74F86B21492B310A5",
      INIT_7B => X"88B2AAA09A27531CF1FAC02D6749F414011917D8005828B3C83CE05D1295A5C5",
      INIT_7C => X"34BBAD006F0257D304076404D8A00101E80000E8C7410000C82A1E0567350440",
      INIT_7D => X"62411288C10043B04D330F41D710C19C46009D83E00100893907009D9113DD34",
      INIT_7E => X"366538522828194949031000893907FF34CDB88760E0005FE062415F41005FE0",
      INIT_7F => X"650E5340B4BA2526B362411241624155410096245C4045006605294C42047846",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => addra(12),
      I1 => addra(15),
      I2 => addra(13),
      I3 => ena,
      I4 => addra(14),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"083BB3625E6262864088B2D3D90655C8010A4B4939B363411241A52506F71120",
      INIT_01 => X"6914B32B88C1B2A24939B3965701665D56046804558645698D405894D1574658",
      INIT_02 => X"3000040C5F62542A0F53346B0066451C28106B874088B2B419134F622A66D817",
      INIT_03 => X"00009C051A023A1852034E245304160124001D5370420011168705A08EB2C81A",
      INIT_04 => X"B42CD0C03E4A74D831C12061686C113741B280A080A003410000960105A08EB2",
      INIT_05 => X"3741B280A001A50520012A0AA1806EFAD237408E06514AA123EA9C73012DE15B",
      INIT_06 => X"172080AEF449C17301E0236A9C23C874811817014A6641260125028084686C11",
      INIT_07 => X"686C113741B280A000B261400E032B181701F1183520CC798134EA4B842A17AE",
      INIT_08 => X"578A6D0A992241EA18C0EAB28053238E57EA06F1F20B8601EA408EA631C12061",
      INIT_09 => X"52686C113741B200B20198687002D1796CB1E0263EC816D3EE01461941730163",
      INIT_0A => X"66191CB420014619019386C001B3A5850EF4532ADCA02A03664126012AEA0D02",
      INIT_0B => X"4100A5254659182BC206063C022641A6C0012C206CD1A29A80EE2EC0BCA65519",
      INIT_0C => X"4D521D6238602A6A0478395C4D3B040764040C2153044BA04F37531B4A7F5B06",
      INIT_0D => X"004E440928440009006164713804FEA00341D06B3A55655B00003A64302A5263",
      INIT_0E => X"57306562584C613860211D051A043804598CB453040005175D61380528556906",
      INIT_0F => X"03410000BB962863534C61384805052202062F2200064102606501286300485D",
      INIT_10 => X"62498A7139A1236A9C840A11C05797003C2A0223039A5706013741B280A080A0",
      INIT_11 => X"41023918140466055D604E6D51183804FEA000B22101D35340EA18C9C03E5725",
      INIT_12 => X"25032A1844050005181A6B5E1B18380462A0818CC84755023A1A09580E00530F",
      INIT_13 => X"1D8CC825370400532D0E003A0F4D561C061804261A306116485D030504052863",
      INIT_14 => X"410000B452040000306D451B3A634B621405BB961A06280A20604E6D51183804",
      INIT_15 => X"455D0C005D2F010D2A4100BBC85F6761385C016035455304010D863CE0EC417F",
      INIT_16 => X"E0342001311521B2862601010D86260B4A734100BBC84553047B66252A2B484F",
      INIT_17 => X"2A62642C63350535003A1A280312E1A0007F332D00B001B0ED3CE04558E6D5CA",
      INIT_18 => X"4D2A62040465886DA5B2D4066A146CD02B6CD9006AB722B300BE1F040D5B41C8",
      INIT_19 => X"28720C4D6500005D6300720704402A97C84688C1A80232786D641D0C1F002845",
      INIT_1A => X"45F82620019420D96C691921C06CADB33841AB333333004801020BA5BBC86A3A",
      INIT_1B => X"6A0D516B00605555532846304A004A177B0704005D1F9000420086A9BA410188",
      INIT_1C => X"006A65042B5C484504521164163A03282446044E264522001A2A304E26006B00",
      INIT_1D => X"4200EDC3EC41ED410100E1FF9F390333FFA40B0000BBE44D650C38040C294963",
      INIT_1E => X"4AB22C2A1C00D3C923AA0025E00048682A9920582622B2BA0B0BEC005D1F9200",
      INIT_1F => X"E320F52009A6BE55112066386653D9236A2798F13E46E060C686002AAAE1D920",
      INIT_20 => X"B3BD41C82A516B2A3100612904673A5F04472A540404A5010DB2A5DE7E23D309",
      INIT_21 => X"FF642AE0001388C1D01334131B051B3967500A0404B24E1125422397BA024622",
      INIT_22 => X"605F0704B2D38923DE4023A5D8E02D0B1206AE19D8128EE38024B32A41009700",
      INIT_23 => X"961D5C302905473A286404045B88B0864188BB964A67443955005D322871352A",
      INIT_24 => X"A000963A48021966081A390440884549392B63010D4C2D01341E012E41B38241",
      INIT_25 => X"4733B866330F0000E19F430F560033E80000004933B0009700642AE0B9414E41",
      INIT_26 => X"0C63375204642B442006A7034100B0000032000033E8000000493340A0950033",
      INIT_27 => X"532B0E465704EFA0E0190305530164786A631E4D2A62040463A0A5BBC86A4418",
      INIT_28 => X"97206A20D7EA0094807CB811A8B300A0965D304D52296160462344700E396247",
      INIT_29 => X"00CE383420612D462A2A1902F4840AE8262018342305EA793B404A181148BE58",
      INIT_2A => X"E1802E262522B30033B2B1AA582EAA8DB42331CA0B5757010D03AA8661388641",
      INIT_2B => X"110853536AFE53C04A370A90118DA15AFEFB00D0407B622C5134276CCA236A14",
      INIT_2C => X"2B5F5E284D03492E15113055302C0660555553042A284D1B04527904403345B8",
      INIT_2D => X"3045213420061406C303410000000100E19F430FC1A00241C8654A29614C0A06",
      INIT_2E => X"0D00DCA03748A0C85D57071B3A634D63180A5406741820056A324C24232B0944",
      INIT_2F => X"5304245330355F2949654D0F0053784D2A28040D005B8CC8636669605D282A04",
      INIT_30 => X"0880A08437880641BB963A2F4C2B4739390F4D1A044603054606652A2A5D1824",
      INIT_31 => X"064D4D56140568036A1A4606492D3049611A023A3B625C6905602446475C1D17",
      INIT_32 => X"4001B10049E03627E0BBC80D280D451A610C5F2D60264966003B305203061911",
      INIT_33 => X"A5C1B2000DA5458E20019860EA016952882A1937B27C0046E0A0C5A0A045A031",
      INIT_34 => X"1A02C1054F2102C100027E49484D4280027EE08CA565E9958067B200007E7EAF",
      INIT_35 => X"E0F1EA02C1AB6B49E0884202C1FF0036E0100202C1FF0037E09C02C1FF0037E0",
      INIT_36 => X"090C31643F8F488CA5656E95017100252DB27402C1AB2849E0FCAF02C1AB2749",
      INIT_37 => X"93D3A02A464049025241B2034100188C243FB0BBC84768281A01000523632204",
      INIT_38 => X"0028090072A037459309C91186CEB82C582D14812D7421466160144600CCD884",
      INIT_39 => X"46054D6200280900B0C4A037258CF02A065C1B30355F00003A046A033A502446",
      INIT_3A => X"5414B272737206001E007FDF01E34E6E2FC01046A00000000000BBF02A06003A",
      INIT_3B => X"0146A87962D015028A40843838864140147886806E2A3E460601E60180CED740",
      INIT_3C => X"3745002904070C71720E7F26010DA5C5F4C949723E140A39208ECC2067191542",
      INIT_3D => X"65042C2B6518180152001C003025365D39304D5D182153043A6A04345317312D",
      INIT_3E => X"6C001A5C670009486522254D3A2A25644D5609840000C21F8E020A80A0010DDC",
      INIT_3F => X"085D431C57633524352824022F5F003B3057656622453B09653A2A052B210D52",
      INIT_40 => X"41E0292DB2002364E780A0002364E7020A01B09E3F020C72BBE0281A25005201",
      INIT_41 => X"641081E04EC046007FB09E3F070BA585AE7490196D7721190C49234B20FACC34",
      INIT_42 => X"86190FE6012DD1C92E4EBC49B8B200A080A02F010D02C8A072DC27128C02C8A0",
      INIT_43 => X"23D4589824C10020012A46664A182AE6F8C059DAAAA19A2DDE20932C0335492A",
      INIT_44 => X"630D0464020081E080A00069E0A545B2457407579961808E24646C2D92802E52",
      INIT_45 => X"5E1A198CC8632D4D1E001D5ED6A0B50C2965420A1B043050084D5F2046636445",
      INIT_46 => X"0D72BB966533252F0E696C6430252D2C3504228C563FBBA0040045686C00655D",
      INIT_47 => X"6D4A6621802E6E2CE60180CED7234CB72057D320FA43318AB997BA412AA5B300",
      INIT_48 => X"FA22B280A07F007F81E00004E80404E9641081E0002364E701454979972E7911",
      INIT_49 => X"B2000069E0A525D7202E27498740E020C874E1C0522CE64180CED7202E234B20",
      INIT_4A => X"04C1A05252312F522D00000081E001070B454958D8202A41D12A02D3D323CA39",
      INIT_4B => X"0444A0029200000000F58C01A101C1A00192720081E00000C0245C042F42050C",
      INIT_4C => X"02C202C0A002A200000000FF032D57010D574104016E00430C5100457197C202",
      INIT_4D => X"406E02A6E0697C239205D3066A4A780A262EE16074D74DB20028007F5B074A00",
      INIT_4E => X"81F4182522B26F410000000000FF032D074B02724E0000211FBBC8074D260002",
      INIT_4F => X"04241B211A3A471A56654D1D2C3504472C610B110088EA017C000D45AA19530E",
      INIT_50 => X"620000211FCC020A0088D6A941C863623A5C446308003A29112829532205454C",
      INIT_51 => X"22280400726CE00392E04528303A0F644C250069655C1C02242A312E472A6D04",
      INIT_52 => X"0439022864004A6750601A0830293B04B072BB96058CDC4604001A3008056765",
      INIT_53 => X"B072BB964A67041F29310029602635051C5C0A234601053825003A182C0F3136",
      INIT_54 => X"0B5B0081E0009700802AE0075B0000007249004207110087C8724180A0003F97",
      INIT_55 => X"22182A640C04010D00000086724EB258580E93006A48C0534940191B0A9595B2",
      INIT_56 => X"AA8060190E04B259EA38404E66003426B3AA80602A190C67534D0165554D041F",
      INIT_57 => X"180C049B3888C1C835500400340435530421125B88B2512EF500D3D9804737B3",
      INIT_58 => X"1A5E001E1A3B6A34304604391A2830652E00190F0100797828052A1934785545",
      INIT_59 => X"38053A29255C784D19492919001900530F6645636B2103042A6A614830501828",
      INIT_5A => X"000145493A370E31F20B4A57E10023D399000622B34D41C85328710031341B24",
      INIT_5B => X"392B78480E676D055E3F64243B5E0334490F2A500441720E0B71407100937206",
      INIT_5C => X"BB961A052D034E003934045BA003A2001003772F0E0C71BB0241BBD02B65082B",
      INIT_5D => X"1A565D2B635D080C2B28292019080071020439080010010D02074C807203C100",
      INIT_5E => X"0FBBC84F4802531411D2A0FFC203BB0347E0B404CDA00348E000A2AA9400BBF4",
      INIT_5F => X"5B0E0C71020C009700802AE00341000D724014007FC072C0A005410000E1F043",
      INIT_60 => X"21661813D47868207A7908D3CC0B71EE236A5BE0E737B272531061724001B00B",
      INIT_61 => X"72585D41B89E3F2D72E3009700802AE0A5457EC0DC584717235354024A40608D",
      INIT_62 => X"8027B39635412F0F412F307913300005520A291A525C1C02047A002613770000",
      INIT_63 => X"8D744034802E8AB32B88C196390352182C0851875588A5C5F4C94972532602D1",
      INIT_64 => X"4F0430354F2C0434782728020F2965001B5E4D041904403997A505EE2094264B",
      INIT_65 => X"610B11070A020ABE06BE465D41EF8C03026E03C203C1A003A20000000000C825",
      INIT_66 => X"961504393424325F030A30631A045F876388A525D700E6E120E71902B8D4B32C",
      INIT_67 => X"C0D74DB280A00200E80001E810264E4000000000802AE00241000000000085E0",
      INIT_68 => X"6A09D901AAFAAA417E60745303D39AC1DCC900E5E71740266E0106D86C2AD217",
      INIT_69 => X"0304786B5D63025D630D047101F5A001A20000B82D3F020B00070C72102E450A",
      INIT_6A => X"A52553343E23B32B41ED8C01A101C501C901C1A0BB963B6C4725630D5C606A28",
      INIT_6B => X"E8ABB35D4100C82A02084088459709404669400A41B32A419652095E78044F88",
      INIT_6C => X"88A525AE05CC2B53F4259027B32B41B82F330F401C97455889206CD033015510",
      INIT_6D => X"09441500192861108D396EC10087996B415941C80B78401E0C5F041B5D01105B",
      INIT_6E => X"3B1C2405002968040C45245D170F0053303B003A3A021E297834285400524716",
      INIT_6F => X"E01C41C85D29090053192D396079560C673904614E182A04665D56303A296449",
      INIT_70 => X"472A500F474D3704414E00603A441B4D117A0B930086E32A4100009E83E0863C",
      INIT_71 => X"1126E1342002AA46715531B27F4100A8027966251C042155654863635F044563",
      INIT_72 => X"0F45B92E03D26C25F3A7B3120A0E41102EA43CE00097006F2AE045594094038D",
      INIT_73 => X"50A4A55531B238410000E155430F455920F3E7715531B3120A16410100E15543",
      INIT_74 => X"49B4D33E570A81B3A0415D4100BB9651296A040D8CCC044AA4198C9653296A0E",
      INIT_75 => X"200661E497A5050D468160172767C97740C5B300439600430086880E88C10045",
      INIT_76 => X"0567646021482828120100E1026F2AE09B190BC8471A4F0D2B01650204781915",
      INIT_77 => X"01C8072815B25252312F140C9BBBE416341B04769B7A88B0023F010D52BB966A",
      INIT_78 => X"B045B200A505B20141E50201E60085B200430155C0046E2B97B0006F2AE08538",
      INIT_79 => X"72631B4F64210D4D632A3A5F03173B52341B04318CC84D5E14341B04549B4088",
      INIT_7A => X"970055390B0102029E0000B01036E09B190C45594094032832B200BB96494C67",
      INIT_7B => X"AB0454010002811A0100E1016F2AE0004F93029E00002B2B02C0A001A46FE000",
      INIT_7C => X"45B3AACC0F03310252062A2B24681360A010660000762F124B0148A000000000",
      INIT_7D => X"60600F1B107193150E88C187210097006F2AE0030A00ABAB02620000B0000002",
      INIT_7E => X"0093BE15BBFC21483417579B79A0C85E2C34535D783A5F11602620286445215E",
      INIT_7F => X"BB9645140BC83B0849932E22B2140A9B419BA5A58E52198D71208DDE209A58B2",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(12),
      I3 => ena,
      I4 => addra(14),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"E81933D92DB29665390878040C2865006B043B280461935068410100E16A430F",
      INIT_01 => X"1E043A6A601C30354937486537454004B8933CE04549EED52E02E04053D31401",
      INIT_02 => X"0088A525200C118E41202A199304E5A6E60048877E12B44118B82AB32541C853",
      INIT_03 => X"C81660065E01465D0055A01036E093B2AA4ED35D01D22BB2140A0097006F2AE0",
      INIT_04 => X"8CB04D1F4C932E22B23841C85F62001745721B135587598845498DF12E22B3BB",
      INIT_05 => X"039C07D32A19ACB2930000E16A430F4093C0A03227E07F2606410000BB965307",
      INIT_06 => X"B1009700FF802AE004415D410000C85E012A455270160840A01036E0B42AD324",
      INIT_07 => X"31CC0757808E91019798B30241F03269003A01054D53152472095D01016E4088",
      INIT_08 => X"9B4AE0140A0000761FDC93C6A0934AE002456886C10E88C106410641000000B2",
      INIT_09 => X"2383D82A18EA010337B2AA806439052A676D003A55680A1970114A02409BC0A0",
      INIT_0A => X"3136066C05301A01700D4C3049012A031C06301A01124C8C452994E1402EFAA1",
      INIT_0B => X"032A579720D3B3007FAB009300B8B7330FBBC80700231D30492E4D5F20003903",
      INIT_0C => X"1A041C5D4A530CB298426C29CD206C57C0586EB4801CE6EA559BC001D34E2002",
      INIT_0D => X"A59A26022B3E1497293168013741B303410000D053644C265772043A2904003A",
      INIT_0E => X"A1790A9140B400201441D7C041B203410000004EE0023FC07FAB00934E4001A5",
      INIT_0F => X"281CA6406638608457375899082A7908D3EA2140AE46A64D579740148EA19720",
      INIT_10 => X"201871BEA1430DD3FE2A26D54662E0AAE600340D8E212199C499242031C72501",
      INIT_11 => X"078CCC524A9E2561C934A640AE464120F420932CA5D3AC25C0C0A925640157D3",
      INIT_12 => X"46EA01AA2031B20092BBAD4427E00B0A0088B2F76834036681B35D4100BBC80B",
      INIT_13 => X"00362FB09EBB9661223904529E6088B09EBBC84F523904B09EBB96002C1F05D3",
      INIT_14 => X"5D9EA07B41594100000070BE16B269CD872D22603A01B4D71102B3874088B000",
      INIT_15 => X"09D3FF092DBF512E576E05CB2B58146A0D32B2B0354F50054F2F4861003A1904",
      INIT_16 => X"E09E06A505D906532AA8200153545CC057CB2C0A74EAE6C7008D11EA912ADE15",
      INIT_17 => X"A58560B3AA80180845B205D32421603A41B387B092F58C013CE001929E0E773C",
      INIT_18 => X"0D02A201410000B2489920203A022A52C823C6D3F878E02D1786CC38B3923CE0",
      INIT_19 => X"0001E87F26014100B12800312FC0A0E441FFC202098CA2480000162F198C0201",
      INIT_1A => X"E6613E2A1AB2897E9EB488411D418C88C100ABA4A4000D7F26064100B19B00E8",
      INIT_1B => X"41B2E51973C700CE18001C866A0C7BC240C7D12357535B21062E1892EAC18067",
      INIT_1C => X"61469CD337B2F6DC179E010DB2F4CE20015301C6209401B46C57D2B8B2880688",
      INIT_1D => X"912ADE1509D3FFA9B3009E83E09E4D109E000DA5254E45998B6517A64A1892EA",
      INIT_1E => X"31EBD90054747A01D1E486D72A9520D941B2034100B2370A20012AD30A71EEE0",
      INIT_1F => X"8CC8472C001A031E1924520CDCA0A525CA20A2005C3E342C4A00AD852A95092D",
      INIT_20 => X"A096540752114D10502688C100BBE4712C04472C484C6138704C5C6A65280C25",
      INIT_21 => X"88A5E5D53902D12703B3C8167847782F06466813B81D49E08841005B1F4910ED",
      INIT_22 => X"40142C680D74B31788C10074E062411288C100C8533A025C4D60465C3B7C0440",
      INIT_23 => X"0093A525D75525D9272C93208AB200007F2FB8723F48874088A5252057685597",
      INIT_24 => X"4A96014D442A03500400314536045D86B8F2330F4A8640877B1241B88E3CE08D",
      INIT_25 => X"52046404003544038625B2863CE0964E0335042A4A4C6050018625B2863CE01A",
      INIT_26 => X"D1005357208E2D01F46CC9408E812067386A17D3467590B1B34588C1C82A5D01",
      INIT_27 => X"E00000E1F1430FCF8297D52310C100B28E24947401C92A8118F453C9BCD123EC",
      INIT_28 => X"E00100E100742AE027242B005B2FBB45D23793E900EE06032A9C2BB20101104A",
      INIT_29 => X"4418041912C0864610C01F974810C01E86C189410101C00601C1000000009F83",
      INIT_2A => X"B2304100D7FB58B26441843804776410C1222495754A41C84F655F4F60641E4C",
      INIT_2B => X"04C102B0009700F1390B00104AE00141254AE09665322E405C04E5DBB200D237",
      INIT_2C => X"08106E10DC1B102E9C3CE00087A91388C19C411D4A12411D4A31419664346A26",
      INIT_2D => X"3A632851306135690278244D39010C1B0005291963260187048CAA3188C18018",
      INIT_2E => X"83E03010C14110BBE43671003A2804652E0150045C6762393554003B30526103",
      INIT_2F => X"040594B27F267F267F267F267F267F26008885D90737E2B34A41009F83E0009F",
      INIT_30 => X"EE3915810EAE0169146100D94B20F481D907205768D520B5116146F50D6C2D92",
      INIT_31 => X"7F408845D919FA63E02D7A03D326D3B31788C100981F102E9C3CE0B2D3572681",
      INIT_32 => X"27B2C82944252C0D480963025004DB9CB2EE40B8D42A8DD90740262A41B39C41",
      INIT_33 => X"2022205AD927B310261788C1B806172BE0B88D4AE08D005D1F010D4558262AD9",
      INIT_34 => X"01C9D36C3E01EA51B9B2030AA5C5F9DCD8265826D3D927B20087A525D96B4961",
      INIT_35 => X"05A08EB296011B4D052A564D02692A20045D87B89C4AE09C005D1F000DA525F4",
      INIT_36 => X"BB966A04002904004E013A2B62215304C0A07F2606410000D0631D785D131687",
      INIT_37 => X"0101E608060A42B2070A0341009F83E0744574FF23CD03439579412C4100AB24",
      INIT_38 => X"035200452B0D00530029201538046A0341000000BBAD236F070C744AE0B2D320",
      INIT_39 => X"17611C702A0D00124002404BBBB428046D181C281E341A002B280460215C0649",
      INIT_3A => X"5941000048E0314100381F49864D2097B8164AE0F1411F41000145B34B47E080",
      INIT_3B => X"B056005D1FBBC8294801623A61640500466231040C4D5E040046012B047C5740",
      INIT_3C => X"AA844B4EF186C1BB8C3F4B0E96311A786B5D0F2A024D56040005472C31047186",
      INIT_3D => X"0B4A0086F92B88C1000100E1FF5439034001B8A2330F4088A5259A0C2B3866B3",
      INIT_3E => X"0300016A1D64530B5F87A5452EAA0AE0139119E02D6A41B387A56595A2802AB3",
      INIT_3F => X"47532A0E57651005633A6A01094C5253043104462A411C4A1D4A96013A483165",
      INIT_40 => X"66CC14B8D8B3AA8030611C782F64126886B00078E0C455006565013B29495622",
      INIT_41 => X"18394E14054C2188C1024B45D18E973ECE5725B2AA984D6B002A520445B28519",
      INIT_42 => X"B00078E0C8294801260C2A023A1630011C60285D38294F0468031B2A06215F28",
      INIT_43 => X"060069650C311A286200612000292830451A28202A3A2A1B09106E7F412B7F95",
      INIT_44 => X"41B0573CE0560093533CE000000053A5B2570600B00078E096013A5506292969",
      INIT_45 => X"C1AA6039EC0B33C646230A651431CC78B8AEC06628B280A04C3FFF212E54418E",
      INIT_46 => X"D007D978950146240358E02E46000DAA82E987143E9BC05871FE5397416C928B",
      INIT_47 => X"61C98D2A95206B0068F4A19A006E00F4404707D8077A59EA06188A79D82CD32B",
      INIT_48 => X"8C7F4810010D45DE06CA0BD76C18239C00D3C0660800841897E180EE52913826",
      INIT_49 => X"6460456A1405B2D220B4C0623E7319A64A186E3E2DF1B8AEC06628B3002EBF05",
      INIT_4A => X"7FB1009700792AE0000079E000C14B97C14D10C100F84C0128614D285130255D",
      INIT_4B => X"01B0009700FF792AE002410000C85D005218003A3A01281A3B04002804400F00",
      INIT_4C => X"B305411241454100B01D450A2A63142C4504401F88C10000381F4086401E9740",
      INIT_4D => X"80600AC17C0100F13AB2AA84408197408745D166530AD557840A7CC06A62202D",
      INIT_4E => X"49F925AA37B3A340875682419C0555022827044088000D854100B8863CE0B297",
      INIT_4F => X"81C101C6A0810E0BA3BB965201052B016534712B220039040052015204A5252B",
      INIT_50 => X"1A00862055CA2BB92A86B20042075100865E87210088B8164AE0A34C865088B0",
      INIT_51 => X"A36B88A5B3AA8003652C78134555D240D927012A4C19B3AA84B88680E096354F",
      INIT_52 => X"8AB837AA37B38160A085413141963A7B2C24651408B2CA539C25AA37B381000D",
      INIT_53 => X"0AB886BE1B4A87CEA08141B2D3CE2001CA25AA37B3A34088A58551E034200131",
      INIT_54 => X"B2452A11019C404759B200381F49106A866E88CA88C61E88C100D00C0035645C",
      INIT_55 => X"005D2F4901BBA832182845040046010125B2114A000000AB2F4088B84849E045",
      INIT_56 => X"5341B31D41CE4189410000B25755204D005198B38626754100BBAD4527E0484E",
      INIT_57 => X"0618054364006944105D88C62A88C1070695C00F88C1010295A5652E69883757",
      INIT_58 => X"3945182000521D48656834632A11616E97C81C88C12F2995D62388C1CC654D11",
      INIT_59 => X"0941967A25330031020229045788453EF35903946A459E218AD8B94EB3874196",
      INIT_5A => X"6363024204517F88C196295067062B1B04095588A5451424612702B480C9E9B3",
      INIT_5B => X"5660295000178C96C8103EF96A268AE618901123B20088A5252A41B303419652",
      INIT_5C => X"D2D4410088B1BB96653A47014A1920046439500400696510E610BBE43A3B3A1A",
      INIT_5D => X"2920042428042B6A035218006A03281A3B045211000D66064E000D89007FE3A4",
      INIT_5E => X"4D3B2C6153242D186019604D311E0C4F52183A05391E6101290400311E5F0349",
      INIT_5F => X"28606A03045D30620028784F2C1C281A3B043A055103062A0D2A624D0206391B",
      INIT_60 => X"215E606013D9A002000DA5E580605B41B2A4280A002A5C09B84E49E0BB962B2E",
      INIT_61 => X"401C41B37D88C100C8413E063A27044088B29868408E03B32641964816292844",
      INIT_62 => X"D723D346759051B305411241454100C82D2222022903042537044088B24619E1",
      INIT_63 => X"8625B20D411288C1A839000217640C4A2D5C190A5B88456AFB186A732767EAD1",
      INIT_64 => X"656556001B04B0154AE022414574B3484100005D2FBBC8622100643905005201",
      INIT_65 => X"1F4088A545496023B32B88C1009601692F28196565004112055D011E3B3A0000",
      INIT_66 => X"9C67000C486601B31841A525CE40546CD15B238600AE20CE4014B32A41000038",
      INIT_67 => X"0513408C03480202000D00000000000000965C60015028454749084088A5C5DC",
      INIT_68 => X"C1A003B88C003403E73F03128C0348A006872BD88C000000E01151FFC5040405",
      INIT_69 => X"0000BBFF06E58CAA0141FF03470606011D8C0425004F00000000000000A90606",
      INIT_6A => X"03CCA0724100420751004F0000000000AB0002007FCBA0003400770077021500",
      INIT_6B => X"C16E7195C0A002A2000000AB03010D01420075024F8761014F1D4A87000D0345",
      INIT_6C => X"9111B2AA845D03014C044F004F00000000000000000000000000EE02A1AB8002",
      INIT_6D => X"5407988C0B480705762F093F1F4107077DE008002D017DE0014CB24A42788617",
      INIT_6E => X"06098CFF4F4AFF8F06066307278C006F015506450654073D8C006F0155064506",
      INIT_6F => X"000B070D0000211FCEA006410B058C0B480BCFA0006F015509E7006F02540645",
      INIT_70 => X"000D004296044100000D0941034100450B778C0841800B007F242A002E2F0004",
      INIT_71 => X"D5A07F7DE005420B258C7F480B2F8C145532430745070707580B498C0A550095",
      INIT_72 => X"0D6195004F00000000000000000000000000B809077FE045B2AA800646630C0E",
      INIT_73 => X"232D3A00191B000F53001B1C064D2A22023A3B04747F024B3F00000101130F8C",
      INIT_74 => X"30416410B8AD330F4A8666A009002D017DE0004F08010D01423F3FB07FBBC86D",
      INIT_75 => X"4B3EB2AA8005D47868B200A54A66B20425B200420404762F4518318E25B3AA80",
      INIT_76 => X"0A190005040D03430241000A1A0005030D0243014100030DB2CA4004650AAE69",
      INIT_77 => X"00080D0641030B0A0000007F0A180005020D014300FE05CDFF05C20675024300",
      INIT_78 => X"0600490B5A8C0841800B0086242A002E2F0017000B070D002364E704500B090D",
      INIT_79 => X"074100014B064100000D00420255054100000D004296044100000D0941034100",
      INIT_7A => X"39074F000001007FE3037500F03F49A0000000000006782A00982F106E040E4C",
      INIT_7B => X"75020201E300000000AB009F83E0079B00010000003F1FDD00007DE0009700EA",
      INIT_7C => X"35572A2A5140445C633A0569220C655D64440035280001050052180698D1B201",
      INIT_7D => X"0000E011510241AB029F0001005D2FBB965D5560456020200C674551042A1B04",
      INIT_7E => X"02B1002364E703B1002364E70043C15A007F4B030302007DE007510000000303",
      INIT_7F => X"0A5496620042079B0149010D8C079B000D0043075100B1002364E7C119007F4B",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => addra(13),
      I1 => ena,
      I2 => addra(15),
      I3 => addra(12),
      I4 => addra(14),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8F8C0261950340A0004F000000000000000000E1EA430F962D0100E11E7F2AE0",
      INIT_01 => X"0580E003975006007FD8A0034F00420751FF000D2E4B0557074A000505040413",
      INIT_02 => X"05014C2E45050000E01151024AFF010DBFA0059F0005CF05A98C039B0006B58C",
      INIT_03 => X"00000000B0049F00010001E302350042075100000000F02FC0A0FF006C2F024C",
      INIT_04 => X"06C1050510F3A8620045A0047304348C03C8A01080E0006E026E01802AE00000",
      INIT_05 => X"014100BB966639002A70320033442472096103C003010DBFA00080E000503F04",
      INIT_06 => X"E1036EE3456C9C0C8A3474019798B2031B8CB23440F17966A6808E91019798B2",
      INIT_07 => X"03002D7F058C7FC87201930000000000B1BF0241024602C0A002A20000000001",
      INIT_08 => X"368C033C070A0000472FD6D9DA015E01568CBE69E0030069E003D6015A010193",
      INIT_09 => X"00E80001E804002D0181E00000962F4B104F010072DC256401000D72C8724C72",
      INIT_0A => X"AB0181E0BE41FF000D72020C72EA064ABF01C252068C01A1010081E003F1A004",
      INIT_0B => X"0179A002074C80A01E27E000A00C5100457197C2020444A002920000000000AB",
      INIT_0C => X"009300FF032D04BBE04547036A01012A012D00555E041C5430314A0E2A500475",
      INIT_0D => X"A00A27E07141800244094A00024E000002C202C0A002A200000000720E714071",
      INIT_0E => X"00000000A18C024549D866B3AA840C2153782A69044001000D814102034B02F2",
      INIT_0F => X"042D06074B026105026E006364E7035D000005E505E905C2050644A005A20000",
      INIT_10 => X"642D55380456A0023500000D000000007F2AE002740751007DE00000000000FF",
      INIT_11 => X"1CE65BB203410065699458EE18B2024100B3531C8D11B20141C004528CC86528",
      INIT_12 => X"014FEA430F041E0002A557CB491A02D131B202A505531C9A57B2034300A50553",
      INIT_13 => X"7237455D02521F293A095C03738CD2031B01292B52A0B804BB966D0200E60074",
      INIT_14 => X"635D03218CA453603A614D286D6358033B8CEA03532A181F293A095803558CCD",
      INIT_15 => X"96458EB200A568B201418045412A4004C0A045B2C82753442A61412F34530152",
      INIT_16 => X"B2455854B200A54554B20141BF37E1388E00AD452099BEB2BFA5019798B20000",
      INIT_17 => X"63124C018F6B8CA47C134C018F7B8CDC6A2A195C631254018FA501D320016A4C",
      INIT_18 => X"8CDC6A2A19286D125411358CDC6A2A195C4D1154114B8CAA676D104E115B8CDC",
      INIT_19 => X"572079D1C05826E2B280A0000000AB45B2CD3110098CAA676D106A1B1054111F",
      INIT_1A => X"5B212DD16952572079D1C058266378212A19A01A01849E212A02D11C2A0E6252",
      INIT_1B => X"45A6C100A7B2F6310FBBD4690469241050A0010048E0A5C5978479D1C00DF840",
      INIT_1C => X"016E1226C8182E3E4648B2804D106E1B4A7FA5E540A6C12A45A6202E4100C12A",
      INIT_1D => X"2031192E208E7846972C573A6AA640A6DEC02D0A0E4106E1002E0DB89CD1029C",
      INIT_1E => X"00D4106E950048E0A5452D03860C46F85753C99C512438234604D32E20C191E1",
      INIT_1F => X"752BF8D469EB00001815D34A21012AFA41205B51206A612DEA202601D027D8B2",
      INIT_20 => X"53200119EF2121E719C90078982C37EAC02AE120E0EA38D718007C318D012A0C",
      INIT_21 => X"00005B1FD51193010D89010D4EBBB24653536A971401AA4667192E2E0E46D542",
      INIT_22 => X"3E595508FAA00BD9365B41D3A8D36A0A2927218A2C45389011402618592374B2",
      INIT_23 => X"D045D0C10E7F2600000000000084E0753F000DB7005B1FBBA585AEFE5B212762",
      INIT_24 => X"01A1FF016E002364E7144A064A01920166000002C202C1A0020497C27F006EE3",
      INIT_25 => X"97006F2AE0009700642AE00097005C2AE00097005C2AE0BE8C02009700BFDE8C",
      INIT_26 => X"C2A584E000140C0097006F2AE0009700792AE0009700802AE00097006F2AE000",
      INIT_27 => X"3988C19C50052902021764072861012A60000225B22B88C10000B8C46584E0B8",
      INIT_28 => X"C100C85D7A0001C002B82994823E0E02B834B2016112419664000245003401B2",
      INIT_29 => X"100D208DB3863CE03341009686C00A1148C059159091B23841960025044B2388",
      INIT_2A => X"25C128B35D88C185358C81CD0631CACB253869F4C0F45323860269EE40464380",
      INIT_2B => X"1837D920100700570AC128B33841E46200050C26453604575D125B549745EA48",
      INIT_2C => X"3110D1D8086A063E7A59EAA60020016A146A376C3EB8D94AE01026024100B2CB",
      INIT_2D => X"C1082A6920D94559D8C049535825C1084077A5C52E6657D927D96C7397623682",
      INIT_2E => X"002634A6E0392093453107B449C0612093A505250D3C06575520ADA525100725",
      INIT_2F => X"AAB9A00D6A536CDE6494B440A0E4A725AD25B77932461445B1A540A601AA2394",
      INIT_30 => X"EA2320A6402DC1EE7B46E4B58920E3182D01496E460174402D1989A5B9340634",
      INIT_31 => X"49310DCAC0793E57E4B594F18D01C0F4BE2006380C970620A6E4B26A1994608A",
      INIT_32 => X"0DC9092A216153A7D357D3402D390D2D464100536153538A851019F50DA66C59",
      INIT_33 => X"D523370A2079D297D3456C73082D0153EA390D9A19511AA72526D97938402D39",
      INIT_34 => X"0881D38B20A12351D9B94C20CAD30103F11875EA55B845386179B4F50D6680EE",
      INIT_35 => X"189C072A6C51A340C72093B2D315D7182BF8D52621D20AEA912D495366B440B9",
      INIT_36 => X"04CA40B42093B26149E6533ED9EED3412E0D57D1C00145F8B515B401D3517810",
      INIT_37 => X"EE075349FA6B0891BC2E38B2F119526C39B84039A7B253EE201917930065C998",
      INIT_38 => X"EECC40E62AD8B67A01B2012508316AAA0593C60054747A014538618E58D24420",
      INIT_39 => X"91D345380157D3002A5818573A6A060A0A29456A13823E66A640C7C093A50540",
      INIT_3A => X"01A54506BEF420A2602A2618F7498A95FE39A7453861781401D35123E657D911",
      INIT_3B => X"849F94044494248A244569F420A220712AA1B2012557B4C52AE60557D300E6C0",
      INIT_3C => X"9820019240345D31FC79D32CD35380D1238A26413A6A464086A60097E4A78590",
      INIT_3D => X"90A7D9C001A525B493A38E02510D57BA14742CD197C0600A570A97EE2A6CDF06",
      INIT_3E => X"0AD2669AC4A7E56CD01943089888E5B20165B7048B512E4624D8240006030A8D",
      INIT_3F => X"299241F8698457A7858CC491649A04E08AC49501510BD30E0A379E649404C487",
      INIT_40 => X"2020F32A02A62D9C8457293CE33E34068602F81402945BEA4B24A0D898189241",
      INIT_41 => X"E1200DD387E1E4A74519072D0A6BC840067AD42679F955C0D1174A5B0D998A84",
      INIT_42 => X"5B9C849788C0D887208AC909007C208674901151682006CCD80997182AB9BD06",
      INIT_43 => X"172E26660A2D0A9235A02A409AE4A7453812F4800731EA0AD2403A0BD34EB706",
      INIT_44 => X"4DE1E5B22ACC27208EEA5924A12A409A64409789604601AA208741D46A2B381A",
      INIT_45 => X"D3D3B5A5C5DA072A31D75301D3D315250366415321691B49E1530AA64014D1B8",
      INIT_46 => X"2A01D1C061209345586908D3572ED7D1410053942093B2A1006E0C2A2A6A0607",
      INIT_47 => X"D9A5E5077AD995C0612093A5250D3940D13F263138C8D85540AE4991C001B26A",
      INIT_48 => X"2C26190AC0EA77B91720CAD3E320C708AEE0DE3545294C2015259CD3172A6920",
      INIT_49 => X"38EAF42A6CB537011AD3C820611833699279F82319783F19CE06AE2EAD262B82",
      INIT_4A => X"062A782E07E000D92E0E68C90AD12C4620C1112BF8181537780E140A6AD16E81",
      INIT_4B => X"14E180CE25AA572014A145BFD3D7C0C300C0FA49C001B257F8408AF8F09F790E",
      INIT_4C => X"202A3E662E2A0EC858B901D97837986E972A456A133EFAA6522A1001C9EAB26A",
      INIT_4D => X"D3A34006BEF420D3A5C54E2E06464C2094A06E4A00D34006BEF4206AC7B90526",
      INIT_4E => X"7908D3460858D72101D34608EAB920EA0B00B4A032A5A51249C13179B2D720CA",
      INIT_4F => X"0499050A466119BC9A3C01D940AA2A6A846CD71101404600D940B7840AB406D3",
      INIT_50 => X"B485B4C093A492042086E4008EC4929F8487E48BC080B48500C045B9F4E64034",
      INIT_51 => X"B2A553910506E1D92A3E0740598004E0A7457A00D448198EE5B4340623318DE5",
      INIT_52 => X"A53EE686A745D907E05BD32B79FC31412EEA09E0206991050641B42B598004E0",
      INIT_53 => X"970A0DBA01D9333814D8D1C0AF01D4AA6600482A3120D3CC4979D7AC20F401A7",
      INIT_54 => X"04E0B22E263759404601863200A56CF39CE5B2F80B4A086A0D8D2158196ED153",
      INIT_55 => X"25AA2CD140147886806E2A8187C06C296DD1C92E4EBC9AC858C001E5B4480494",
      INIT_56 => X"474E4014A5C5742A2A720D346CD20B25D158AA41802E0EB239D118312AA620F2",
      INIT_57 => X"E54089917988897109254510492E0A17520165B7D204F49304948B052A2E0A90",
      INIT_58 => X"9702B94E0158D72BEA5564575320EA042AABE5E0CA012AFA780886AB2588E4A7",
      INIT_59 => X"049704D33ED13479996E94333812F4C2D1E0AB01D30CC020F9B51886F05C2C6A",
      INIT_5A => X"14014A004700A865A8652A49B414015748196A18B74E2CDB585D20C92D7179D2",
      INIT_5B => X"D220694D20D9170A312C340106C9206AAB2526E17908202026590BA5AA612A17",
      INIT_5C => X"2DAE45402EEA0DC6234A2E16C2D140A901EA7A216AC81AC2D1E0B245403A1B71",
      INIT_5D => X"4893400060B7048B01EAD90BD3582A0E972001926C79B49C208E8AA74559CB58",
      INIT_5E => X"99208E81FE344089E100E03401D758E0A90000E0BDCA2EC820019A20C90C5201",
      INIT_5F => X"3EA50520816F31008867AAC0940780AE2EE6239159BC19B3B245B2038D97520A",
      INIT_60 => X"20F9182D6C2C67387037297A01B251EA01D35123531991A3201237495760A66C",
      INIT_61 => X"14009A00CC049FF404C1BC85A50540D82D34213A06D000943119EF7A0145385C",
      INIT_62 => X"408A986E972AB201311C52986E970A9101059A40B4BABCD100C0A785BCC1C0A6",
      INIT_63 => X"014B51204174C8F41E611955C02D2CD360745303C740064100F46CDB20010A68",
      INIT_64 => X"2E17F412802E373A0EB90ACA00CAEAD820016AFC79C05131102C579704536820",
      INIT_65 => X"0A312B0E0020FA019AAAD807AA20570E1461468AE0D9C0012CD2E02A385300D4",
      INIT_66 => X"D1EE2041A785782E51E693E4B2AA5540CA3FA66E66200D39C00A34A5452D490E",
      INIT_67 => X"6A536CD37946650A016A2614650A66EA5564575320EA24A08E90849F016A148A",
      INIT_68 => X"D10097E4230A6A536100C8C815D3E695D1972D0A2614E620D37946010A60840A",
      INIT_69 => X"451913B8D73FA6A0D3075201C9EAE5A7652E5714EABCF1F42AB893C0462A9B15",
      INIT_6A => X"141831AEC0FE495306C079D7D5018A0F9A48B52019170A4C01251913B8D720D3",
      INIT_6B => X"2E9A2146BC945799262EDF2526012A4AF326C17120946AAB205714014C81E987",
      INIT_6C => X"8D92C001452ACC0B51EA5D014C81151102D92E092D5D018AAE019362980A9840",
      INIT_6D => X"2C46E03B1826580A4771828C20012A58C066089710115391C001B2014C494E20",
      INIT_6E => X"209A30C144410E0E57AE462AC87940D8276C1C4B000E3407348ED1D808A09A2D",
      INIT_6F => X"54810ACAAA0AE606A63E53EA6146828C20012A58C066089710115391C001B29C",
      INIT_70 => X"D1D8080AE6C08DF49921B1FA25D0076A0E3826C1552E580AD0BC8A0FD9026C79",
      INIT_71 => X"D3201A17A6E02A57812C57AE462AC8792A78461740D8276C1C4B000E3407348E",
      INIT_72 => X"376C691941A505D70740543727012A862523456CB7466CB7D3120023DB4B03D3",
      INIT_73 => X"192AF009404A3E8153B4310393184CC001C855018E41342A9CD7400E464620F4",
      INIT_74 => X"C00280845549D7C700348E01D1613803B328419A40AEC001C95601D366414547",
      INIT_75 => X"3803B328419A40AEC001C94501D36641A525E9F4312E98693CB24A1935388EA2",
      INIT_76 => X"CC5349C14D2146019901D4482E31375837611997C0414549D7C700348E01D161",
      INIT_77 => X"79C0D2C04145191CAA57802B2A0D12206A42B2D3D26840C74E0040377401A525",
      INIT_78 => X"6A775900AE20EA2B452D746140C759AA0E4A4820EA2BB253D73100EA34611997",
      INIT_79 => X"54E93C46386AB72DF457537037452A06A6CE00CE5332A505CE5312F11855802E",
      INIT_7A => X"F913C98D2121EA2B115109356C699CC041A5C59C003400EA201899F219457952",
      INIT_7B => X"0DD3471141B2D920012C20D93826000DE68011922D4A99C0D71AF915932CA1BC",
      INIT_7C => X"DA882606C093B25826022B382A0A8320EA0B0A46311C376CD711013741A5E58D",
      INIT_7D => X"C059A5250D49CE2523B29C3CDED719A6790A712101392041B25ED2089C00D208",
      INIT_7E => X"6C29E70B26C255616F01E3C041459309C8402E27612A0EB4AE79625517200A66",
      INIT_7F => X"27386A224538860146BFDD0307C900A6AA05AAD90855C900CE383484199C40B4",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(12),
      I2 => addra(14),
      I3 => addra(15),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"26A1970094A365610AC2310134F461120D46404902524145EA190CD366122D6B",
      INIT_01 => X"C12A86F97A4145788E17666A0E2BB9CE19382A03D828B2D820014A2E14C22702",
      INIT_02 => X"D42057D9357911D1D32141D82093B9A82D38691B072A19530700D3D3152A1992",
      INIT_03 => X"6A2EB14500D3B52057D91501977101313C2C2E191819F97A53072B4145385D02",
      INIT_04 => X"9B80D1256095A300200153022084386C6CAD40D12A628D74C08AE69801340853",
      INIT_05 => X"0E1A8A01F149B94E014C2D06C10AB1D7C0011AC9116AAE3D01D765E179A601EA",
      INIT_06 => X"A5452E20665806A62AD9C0D85940464620A641B29C00E659209A273ED0532223",
      INIT_07 => X"590A65412E20665806A62AD9C0D85940464620A64145EA123769202A66401441",
      INIT_08 => X"11947E224510172EB86E22A5A5252345385871573A6A065810112A7846176161",
      INIT_09 => X"9460891C91A34D0260840AE6536A250280848A181593C0414519F5201111AA0A",
      INIT_0A => X"20E90849E047B32CD9E6209125A340B42383C041B225DF41C37901D3AA34A623",
      INIT_0B => X"2945933742B2D8D719069C794A258197714164492A062EA19A24D92A522823CC",
      INIT_0C => X"343141EA18003474222C46196C9C0B318A06C9EA02526C69194145DE24183440",
      INIT_0D => X"B82141EA18D334C0790C5241A5E5792B613F03B4C0018A4A40EA38B2D82B6200",
      INIT_0E => X"463DA62801D1802E8E2B4A40C76EAE409A40EA7834C123D96E733DA3409A40EA",
      INIT_0F => X"C04145938951C623F9D35458D3792D6A08D3C041A585F7D32551D328B2D471A0",
      INIT_10 => X"38E0C997A0260191C041A5653421802EEE740126C623F9D35458D3792D6A08D3",
      INIT_11 => X"BCF91393C038E0C9973D0193C041452D15D72D14060057C05C06A682190A93C0",
      INIT_12 => X"554100AEC093A1E046828A1815D3D3C041A5E52D7A530A9CD7C04BF7DE8A18B5",
      INIT_13 => X"06A68219AAC041A5A53C0226022BA37A012C2A1C2A1A93230353687A41B2F9D3",
      INIT_14 => X"01D4482E3137A3004034E051D7C04145684120CA20D99389C0FC263DA628C15C",
      INIT_15 => X"F4666119CA546100AE716A48B2D34506FE4988074AC02A53975301AA2AD16A98",
      INIT_16 => X"CCC041B219782054A26681A505A0263E26C8D7252D46812D1401D73410176600",
      INIT_17 => X"2E81D998318B20A12D74812D147817D8A8A52546F9132B1874618A18B5BCF913",
      INIT_18 => X"0A742A0E7B4014A5254E416C01D7458A18154078951017068141A62001C94541",
      INIT_19 => X"4E3814195100D39A99212A806E9141260420575341452A0C356C187527386AB7",
      INIT_1A => X"1811573A6A069A5B5500EA4900CEEA010A262E579720D32CD386266C551CD72D",
      INIT_1B => X"414519CA54F9936F01DB801120575341A5A5972001D9CA65610A9A7A19D93A74",
      INIT_1C => X"12D33AE66CD960349441A5258A61516C69087A012C927AB94C7A0A11903100C0",
      INIT_1D => X"1561612EEE7820CAD3A36E0260842A52344620CA2041B295200DEA414558F47E",
      INIT_1E => X"215D812AD30C2EB86E222C9C3C022557E6209CEA2CCC6C112A94748534E6E0DE",
      INIT_1F => X"232B01A6254120F460842A52344620AA204145F83115F1468AAD25684120CA20",
      INIT_20 => X"4D45D95510078A02512822016AD740382A01940B372AEDC0016A146A6084D7D1",
      INIT_21 => X"D2206C571955970203D3CE2053072B0143B22193E96B08802E8A01CAB706B86A",
      INIT_22 => X"208D41A545092A9520A33C0225C2234566B7B949D755C1200101DE9709AA2E81",
      INIT_23 => X"0A170A06E65327004FC179D7D52CE54089917988897153680A667946014A30C1",
      INIT_24 => X"4A07EA910034FA019A0C254120F4370360846AAC204A4E0AF13A1B2A19722331",
      INIT_25 => X"61B7D204F49304948B01D820D941A5A59A26022BD8FC34012CEA6193F781317E",
      INIT_26 => X"F26B400A016B1140AE042E0380348438FE6C9CAB5F232CF9132BE140F4009431",
      INIT_27 => X"97025241B246199CC01CD9388E03862001EA0D0193A62B6280AE59193886798E",
      INIT_28 => X"3AD23755944145EA0D02526C69112581383ECA169C8B21418941C06EC820016A",
      INIT_29 => X"787003D346385797C0783A23B201D3D324795B156B1140AE24B279F708931901",
      INIT_2A => X"D34006740145191C526C691153EA00883401D355414034782E04D99C81D20440",
      INIT_2B => X"A0463DA628C1311B4038380A2A23A50588200186E02A274AF920FA45389918D3",
      INIT_2C => X"A0462AD51901524145E9AAC2802E5220CEC00A262E018E01CB08805140B45441",
      INIT_2D => X"20823C038D1926782E048034456CC98D3DA62801CB882A8D2001D8206CD17837",
      INIT_2E => X"2AA26501CB8801C9EA0DEA01EEB82310175241A585F7D32522A5053B582D782E",
      INIT_2F => X"B820932C2A1CD3582A676236C9CD6914C100E0190BD3532523B2971880345638",
      INIT_30 => X"01AA4E2142B2979820026B110134074A4914C6A0462A46E665A146C0D3C00197",
      INIT_31 => X"B2EA802E260125EA0D026084382AE6EA1AF16A2180AEFA015338A5258A01B420",
      INIT_32 => X"114E20AA200145C13338DB996501F40DEA208D924638212C6A172AEA0D025241",
      INIT_33 => X"114E808E7121236A172AEA0D02520DEA3E06015241B26A14F50D0653D76CF319",
      INIT_34 => X"D1BCD3C041B2D82D746126374957C0D1F9B576C623A12081202A5800FAA22C07",
      INIT_35 => X"9A196AF32067BE9CD3172A955241B245DE803406B2582D146125A340B4400649",
      INIT_36 => X"41A50554254638DB19F4CE2101D1042A5C1B536E93122DE19CD31752307C27B9",
      INIT_37 => X"0A0AB76140A9250DEA8138662019156A97022AC2462E1441A046C08823D11852",
      INIT_38 => X"3866410018179CD3B72C9B663758AE20CC5326387895C206232C6B1140AE042A",
      INIT_39 => X"2C01F147110246417E882001311CA046EA41A5258A59182B58D3935C0126022B",
      INIT_3A => X"A6032C115241B2D93DA65601998151C0003400D1E486D72A6B532001D7E01831",
      INIT_3B => X"70213103803400D819318BC1E6648071C1206738010A422CD406032A03A0C07C",
      INIT_3C => X"042A9520D941B2F147112123CB089725019B864139477E0825013487E1792B61",
      INIT_3D => X"D2375557EE5F4100D726C20641806E5851D7C0A10040772CD1543852C20620EA",
      INIT_3E => X"2B78269A0446D98B4100D7D2C08D12370F6B1140AE042A38866193D320181784",
      INIT_3F => X"819CD3B7402A92234A49DE00D1E486D723F9132BD23755C206206C9C9184190A",
      INIT_40 => X"D328372358740A4A4E600AC2458120342C5706F009460C33039C0B6A9702B94E",
      INIT_41 => X"9A23CA406EB26152D320029CE02E2B2A0EB4812C582D74382AA22C53D7584E02",
      INIT_42 => X"02002A0ACB382CD32014064A30B94ED95C40D37920D96C69194145556F4026C0",
      INIT_43 => X"804E08D72DC01269141E4A186C378468013741B2032A69454179AAD3A1262186",
      INIT_44 => X"D3535820A63FA63101314EE12383C041A525466140060A38C0522C5302207661",
      INIT_45 => X"1225790D41A01972494819142CE333385DC1208120342C340758F009E0342001",
      INIT_46 => X"65F3C041452914010E2EC2792065515CB2AA26A6370DE2C046C0610094D20B26",
      INIT_47 => X"3DA6450199211959490234207426802E0A2A012AC2482E61236A9C8468B9172A",
      INIT_48 => X"2073B9C001D7194A181AD20897182581D820140191F418311201E3C041455153",
      INIT_49 => X"694006028D922CD79389232A265394C00AEEA6E0F3086084680157C04145198A",
      INIT_4A => X"29112A94012A92992001C940149401408E57D9C041A525869A51063825816908",
      INIT_4B => X"2123CCD83D0193C041456A123769202A66401441B203806E2AC345C1540199E1",
      INIT_4C => X"86CCD83DFE1B406841208A20D9783AA120014AC8408E83F847190AF701EA3911",
      INIT_4D => X"4640390725E100C0CBE9C041B286E02DE33563414579376C37C058140240772C",
      INIT_4E => X"48D77EAA064A4902CB1860848A18B5C06AA620C1C05C06A6A645019921A68034",
      INIT_4F => X"6A1286C001D760EA61366157D2E8C041A5454ED1082AF915D5088993C041B2CE",
      INIT_50 => X"8A181593C0A120342C882001AA59012586406E97B9F83911E0470D416E026084",
      INIT_51 => X"84B245197827CB65A5856E950125028084E97C346C193C2A11D14A5519A64D61",
      INIT_52 => X"2E61589B20D3B2AA2AA1209011209A5805800E0E454A19207985C909179A2394",
      INIT_53 => X"C06A052D6C316E0580AEBA200186E280CEB1B24554938AA5055EA1800EA66240",
      INIT_54 => X"B5273485B485B44A4A4A8DA52BF8D46C9E5301D7B2C90C930A61804E01742C94",
      INIT_55 => X"2E170E4723CC260D1209B82994623E46742C4620015146F800AEB5DAB52B4A19",
      INIT_56 => X"20CB5726791C6CEA0A196F109300EA26013A01D3373886C87231EB23680D4E2A",
      INIT_57 => X"D386854A0CD357C0016C0BD36A110120301C22B4738DA545AE8AE36904468CE1",
      INIT_58 => X"6B8071A525ABAA3E2613B8D8A50594014A7EA50000000500000000A50005A501",
      INIT_59 => X"0D4A40B81CAA46406E45DE20944534AAA5658A3AE1401C41859A20575B264519",
      INIT_5A => X"208D45B2C5C96C1957D3D3B29A574941A52552D9792EBBA5452794453ED9806E",
      INIT_5B => X"58074A30014A27218AA525100D588A40A6A5E5532A11344569F4003485B96808",
      INIT_5C => X"40E926BF9824C1E02D8C203A008A2D54613958C0D82C3A2AF918922D2D2A01D3",
      INIT_5D => X"80693C45FE539CD1014C53D780691C609561F96B20EAA08E45EAD10B97E61557",
      INIT_5E => X"09802E0A2A0259C8C0D15B2B78953ED348EA23A5E549AA79A3C00E0A97BE5834",
      INIT_5F => X"816F31008867AAC0940780AE2EE6239159BC19B34558342659186C1C23B258F0",
      INIT_60 => X"032AE32086E13420022AE6B858580E9353D3453801802EC7C0D12E2DB5A50520",
      INIT_61 => X"31A50525A2A50520816F31008867AAC0940780AE2EE6239159BC19B3A5659501",
      INIT_62 => X"AA86B5406E20D8B2D46AC75837D15B2B78952345789523A5451E09D8235700DB",
      INIT_63 => X"26C05820D15301572624C19C98218E6C57D85754C020ECF2B8204E61D2C8000E",
      INIT_64 => X"D901462067C97740C5B2862D01D91851663800800EC1406E21016A61A0D3A340",
      INIT_65 => X"2281F4D82E38EA1A41238E2BFE22B46A17D3EE01071A2A2E41B2EE4034032A52",
      INIT_66 => X"F4819A2B7810072681AB0526203714203444403AFA18928A20010A11E1980892",
      INIT_67 => X"80544034C15724E99C4009722A5227D8580E93375227629A006A2A3E463941E0",
      INIT_68 => X"45198661A0A505AE61A045581361A0A5650D61A0B22AD361A0B2D8000E061017",
      INIT_69 => X"C5A5255753C22641207A0123A505532401CCA525AA41A5056A61A045190D61A0",
      INIT_6A => X"664126E1DB209369D22003862058F728800E37A5650A9A2093376A0927C97740",
      INIT_6B => X"0D0210110D86C1F2EB00E62357C8D900D22401D101EA79B81128A50579108438",
      INIT_6C => X"8D924622A525D948B54901C850B945B80A7220589204D020FA2C52B9D8186DB8",
      INIT_6D => X"53028622B2D35914422303646C9B2522B22AD90697802E8A623622A525D98E20",
      INIT_6E => X"53775A3701D7346C9B2522B2C818D3145A53384A69C8C02DF934742CAAAA01D1",
      INIT_6F => X"6DD1C92E4EBC9AC858C0014557D34014874100DB9121A0588E083C41B26A463E",
      INIT_70 => X"BC9AC858C00145342A1982580E1B2D49D7018D21866A20D3CC6CD371CCC06C29",
      INIT_71 => X"181326616C58F4425320412E462001C83BA5259A0C52580E93536C3ED1C92E4E",
      INIT_72 => X"F42400060A746C92A7452A15D71852C98D00C8D520B4CB240119084858D84C65",
      INIT_73 => X"AE18B197C001A5458ED26123B42C582A2A15404957300103C874C120B42E1781",
      INIT_74 => X"B29A3E46255531459CE05209516E4B255531A5E55229073655314538D8D32A0A",
      INIT_75 => X"94849404C12A0500E0B2746C11D86022A525B4404E804E482E22B22AB4809722",
      INIT_76 => X"276CDB71494EB7143E570A01F4CE2001D94CD3D13AFA38A5C12A058494849484",
      INIT_77 => X"F708802ECC23D11C5369F4A0265845CA84976601077120F9B578D7BC4E01D3D3",
      INIT_78 => X"F40106591293F829F401101733C248F4406EB7038600CC2001A565F427537979",
      INIT_79 => X"B2D39C8900D1AA417E402E625759182E2DB5D3A545F4802E118E01D157860134",
      INIT_7A => X"2E01AA4A2107539324296D4066522C6A97022A38EA1A0ACA206CB96E01976DD3",
      INIT_7B => X"2B5258A5451ED3AA54230A26142A2DB4488418F43E664A182631EBD9C003CAD7",
      INIT_7C => X"C92046262A03C02069F41A41B28E00E54AE15509D359252A2DB20191C06C8C29",
      INIT_7D => X"81A51871A62AC8188E412E67032E3E4627218A45930966230720FAD8202DA505",
      INIT_7E => X"1189ACB2687AFEA5010A4E85A5252AE120E606B8849A530DD2001C3420266767",
      INIT_7F => X"05EEA625800D17806C11B2C906F16EB8FA054A41D748B2D1C0FE2058D879620D",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => addra(12),
      I1 => addra(13),
      I2 => addra(14),
      I3 => addra(15),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Mem_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"239C000D17B28A34203B851103B84E23901989ACB2D74C25054A41F418C8B6A5",
      INIT_01 => X"0A742520618AA65D58EEABA5056A9A08141A2057D92525456951EA4005800E74",
      INIT_02 => X"0500D0199C07262B45C94D009BEA24D82002D3F90845A58174852A792DA52514",
      INIT_03 => X"3B450652103725B246E03420015511013420D9C058264558098DA0F9AAE12E16",
      INIT_04 => X"003C4A01D340F498A505D40A02B84E23D81C522018AEB29C40103701D3EA89F1",
      INIT_05 => X"0D0C4AC0584EEAB4D718A5E1A0869CD118800E7238269C27452AF14120710171",
      INIT_06 => X"8038269C87800D11A525CC202E4E026A3A25A501A5AE2002344066B8452A5837",
      INIT_07 => X"2625B49A574929140105489340F498800D11B49A5749291463FEF97AA36A202D",
      INIT_08 => X"E62003342401E82BA505E6B96EC12079EED8C0EE799225B24A502BB83761498A",
      INIT_09 => X"20010A7425A28A182003582D41006AC836A505E6B96EC120589325A525731901",
      INIT_0A => X"1CE641230A4E2145E99A02D8204E40F918C020F2D825A525F253D2806E2AE134",
      INIT_0B => X"9A08147A97716180AEE627380A21B2D12002534A411EAAFA21B26A270398D10D",
      INIT_0C => X"D3D3ACB234800E26C03E148643236815C8B6A5A546400E46A6006A01D0F721B2",
      INIT_0D => X"A505EED16A18D34667190D01206E8A4D000D12577832A5256EB895C804339C07",
      INIT_0E => X"2A1831AAB2D481208E81E0A053C0382621A5A553004EC0E12A03D3200398D121",
      INIT_0F => X"E96B617998B7262100197924F89721A50520C100F40178862758983B6178D59C",
      INIT_10 => X"2D8D2A482B2A664621B2CE3785A037C123EA4A7819974127F89757783245190C",
      INIT_11 => X"1C2245D2C800D478684258281569D338B4802395C8244557D3425C18148E67E0",
      INIT_12 => X"4026452AD855EF0020A6B88A402645D72458D8C0EA07DD23B20A4E4323DD026C",
      INIT_13 => X"800E742346200251065127380DDD032AD92B8518A6808EB723882019CE06AAE6",
      INIT_14 => X"585417DD23B295082B6A1333016A2A40F418DD23B24624585417316A22A525F4",
      INIT_15 => X"6C1C2345F2EA8B00F406D318DD032AD92BB448842A1837B9EE01594026B24624",
      INIT_16 => X"0D22A5458927D8F224186EC323DD026C1C22A5452E01F71551E60146270398D1",
      INIT_17 => X"00D318DD23A58591376994550900D040F418DDD3B2D7855201AA2640462601EC",
      INIT_18 => X"A66C1C22B26A3AC0EE79922EC12334800E26C0E100AE224557510D01D3D8239C",
      INIT_19 => X"9019AA2AD10DE06900E657CC58B2462402C9C9F758D848E0F22402F319C90760",
      INIT_1A => X"23F7F5236C1C22456C73158326A501D940264558136127B8379C07B94E23A505",
      INIT_1B => X"D3232AD9AA224597716100D14421A6416CA5814026A5C5DC85749C472A0A7441",
      INIT_1C => X"B5579340232A2AB73E06CC49018D92A03EDB665220AA02AAD9082245AA426C57",
      INIT_1D => X"062C49B20A4E61592E420131260D74F81922452D2AE100BA0223D74B80EEDA14",
      INIT_1E => X"6A2B583722A52513EEC0E1005906022621FA19D3B92E06F755A585F100924301",
      INIT_1F => X"2A790D2D580E935381436119B7C0013812376C790DB286208E2762E99A01D800",
      INIT_20 => X"0E6137581422A525462402C9470057D302238B01D3D86EA525F47422B239D158",
      INIT_21 => X"23EEC01C2D61342A19020AE6C1D19700F422A505EE01402620380ACE23796A41",
      INIT_22 => X"3722A565342AC87900D71894C723D7799100D320FA19C8B6B2CB240131E60169",
      INIT_23 => X"388A89F1619C914E412D57D8000D7121D138B2D70198C821D158800E7789F198",
      INIT_24 => X"06D000D01922454953FC00DBD123D018402E58EE7858C8B706911122A5859133",
      INIT_25 => X"8B000D3421D138B2D75755E120084AC0F819224558EEB8209A802E1A37800A13",
      INIT_26 => X"F10157D5B8A097017129D823D89C2000D019224593D824581A8789F1C12346EA",
      INIT_27 => X"342402C9472A790D00E622B2C8E08C19C12351185201101721D1582A39274589",
      INIT_28 => X"0D11D1EE46796CB1A5C52A575800E631EB2601C8D922A5A546476C01D34623C8",
      INIT_29 => X"38A6416CA501D50B316A22456C3E0094A5C123CB5000D8792062A541790D0681",
      INIT_2A => X"97571A411223CA39A525A6416CB811852621FA193406F7554597716100F47961",
      INIT_2B => X"0AFE2B580D0AD222456B276C0DD32A3EEEF420570E14015354660058756C49F7",
      INIT_2C => X"3EC6535802D3599723CA39B2C8246C71170751D200CE575322A5050AB401D3E8",
      INIT_2D => X"B4512E6220EA1900275828156919D9CC1523CA39B2862D015923D3D3A7202A8A",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000385C058EA525",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_31 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_32 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_33 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_34 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_35 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_36 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_37 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_38 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_39 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_3F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_40 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_41 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_42 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_43 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_44 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_45 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_46 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_47 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_48 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_49 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_4F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_50 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_51 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_52 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_53 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_54 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_55 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_56 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_57 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_58 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_59 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_5F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_60 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_61 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_62 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_63 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_64 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_65 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_66 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_67 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_68 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_69 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_6F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_70 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_71 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_72 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_73 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_74 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_75 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_76 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_77 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_78 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_79 => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7A => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7B => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7C => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7D => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7E => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_7F => X"5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[7]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(12),
      I2 => addra(14),
      I3 => addra(15),
      I4 => ena,
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem_blk_mem_gen_prim_width is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mem_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end Mem_blk_mem_gen_prim_width;

architecture STRUCTURE of Mem_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.Mem_blk_mem_gen_prim_wrapper_init
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized0\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized10\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized11\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized12\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized13\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized14\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ram_ena => ram_ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized15\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized16\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized17\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[13]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[13]\ => \addra[13]\,
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized18\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[13]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized18\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized18\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized18\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized18\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[13]\ => \addra[13]\,
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized19\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized19\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized19\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized19\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized19\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \addra[14]\,
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized2\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      DOADO(7 downto 0) => DOADO(7 downto 0),
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized20\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized20\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized20\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized20\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized20\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \addra[14]\,
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized21\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized21\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized21\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized21\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized21\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \addra[14]\,
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized22\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized22\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized22\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized22\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized22\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \addra[14]\,
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized23\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized23\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized23\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized23\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized23\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized24\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized24\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized24\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized24\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized24\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized25\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized25\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized25\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized25\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized25\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized26\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized26\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized26\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized26\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized26\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized27\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized27\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized27\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized27\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized27\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized28\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized28\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized28\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized28\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized28\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized29\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized29\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized29\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized29\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized29\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized30\ is
  port (
    \douta[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_ena : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized30\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized30\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized30\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized30\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[15]\(7 downto 0) => \douta[15]\(7 downto 0),
      ena => ena,
      ram_ena => ram_ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized4\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized5\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Mem_blk_mem_gen_prim_width__parameterized9\ is
  port (
    \douta[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Mem_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \Mem_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \Mem_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\Mem_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => \douta[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mem_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end Mem_blk_mem_gen_generic_cstr;

architecture STRUCTURE of Mem_blk_mem_gen_generic_cstr is
  signal ram_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_ena : STD_LOGIC;
  signal \ramloop[0].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_8\ : STD_LOGIC;
begin
\has_mux_a.A\: entity work.Mem_blk_mem_gen_mux
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[2].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[2].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[2].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[2].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[2].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[2].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(7) => \ramloop[1].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6) => \ramloop[1].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(5) => \ramloop[1].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(4) => \ramloop[1].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[1].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[1].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[1].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[1].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(7 downto 0) => ram_douta(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(7) => \ramloop[15].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(6) => \ramloop[15].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(5) => \ramloop[15].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(4) => \ramloop[15].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(3) => \ramloop[15].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(2) => \ramloop[15].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(1) => \ramloop[15].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(0) => \ramloop[15].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(7) => \ramloop[14].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(6) => \ramloop[14].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(5) => \ramloop[14].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(4) => \ramloop[14].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(3) => \ramloop[14].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(2) => \ramloop[14].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(1) => \ramloop[14].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(0) => \ramloop[14].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(7) => \ramloop[13].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(6) => \ramloop[13].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(5) => \ramloop[13].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(4) => \ramloop[13].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(3) => \ramloop[13].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(2) => \ramloop[13].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(1) => \ramloop[13].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(0) => \ramloop[13].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(7) => \ramloop[12].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(6) => \ramloop[12].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(5) => \ramloop[12].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(4) => \ramloop[12].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(3) => \ramloop[12].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(2) => \ramloop[12].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(1) => \ramloop[12].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(0) => \ramloop[12].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(7) => \ramloop[19].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(6) => \ramloop[19].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(5) => \ramloop[19].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(4) => \ramloop[19].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(3) => \ramloop[19].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(2) => \ramloop[19].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(1) => \ramloop[19].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(0) => \ramloop[19].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(7) => \ramloop[18].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(6) => \ramloop[18].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(5) => \ramloop[18].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(4) => \ramloop[18].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(3) => \ramloop[18].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(2) => \ramloop[18].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(1) => \ramloop[18].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(0) => \ramloop[18].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(7) => \ramloop[17].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(6) => \ramloop[17].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(5) => \ramloop[17].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(4) => \ramloop[17].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(3) => \ramloop[17].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(2) => \ramloop[17].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(1) => \ramloop[17].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(0) => \ramloop[17].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(7) => \ramloop[16].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(6) => \ramloop[16].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(5) => \ramloop[16].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(4) => \ramloop[16].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(3) => \ramloop[16].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(2) => \ramloop[16].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(1) => \ramloop[16].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(0) => \ramloop[16].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(7) => \ramloop[23].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(6) => \ramloop[23].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(5) => \ramloop[23].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(4) => \ramloop[23].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(3) => \ramloop[23].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(2) => \ramloop[23].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(1) => \ramloop[23].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(0) => \ramloop[23].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(7) => \ramloop[22].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(6) => \ramloop[22].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(5) => \ramloop[22].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(4) => \ramloop[22].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(3) => \ramloop[22].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(2) => \ramloop[22].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(1) => \ramloop[22].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(0) => \ramloop[22].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(7) => \ramloop[7].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(6) => \ramloop[7].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(5) => \ramloop[7].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(4) => \ramloop[7].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(3) => \ramloop[7].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(2) => \ramloop[7].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(1) => \ramloop[7].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[7].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(7) => \ramloop[21].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(6) => \ramloop[21].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(5) => \ramloop[21].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(4) => \ramloop[21].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(3) => \ramloop[21].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(2) => \ramloop[21].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(1) => \ramloop[21].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(0) => \ramloop[21].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(7) => \ramloop[20].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(6) => \ramloop[20].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(5) => \ramloop[20].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(4) => \ramloop[20].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(3) => \ramloop[20].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(2) => \ramloop[20].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(1) => \ramloop[20].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(0) => \ramloop[20].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(7) => \ramloop[27].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(6) => \ramloop[27].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(5) => \ramloop[27].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(4) => \ramloop[27].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(3) => \ramloop[27].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(2) => \ramloop[27].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(1) => \ramloop[27].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(0) => \ramloop[27].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(7) => \ramloop[26].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(6) => \ramloop[26].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(5) => \ramloop[26].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(4) => \ramloop[26].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(3) => \ramloop[26].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(2) => \ramloop[26].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(1) => \ramloop[26].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(0) => \ramloop[26].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(7) => \ramloop[25].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(6) => \ramloop[25].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(5) => \ramloop[25].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(4) => \ramloop[25].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(3) => \ramloop[25].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(2) => \ramloop[25].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(1) => \ramloop[25].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(0) => \ramloop[25].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(7) => \ramloop[24].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(6) => \ramloop[24].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(5) => \ramloop[24].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(4) => \ramloop[24].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(3) => \ramloop[24].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(2) => \ramloop[24].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(1) => \ramloop[24].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(0) => \ramloop[24].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(7) => \ramloop[31].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(6) => \ramloop[31].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(5) => \ramloop[31].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(4) => \ramloop[31].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(3) => \ramloop[31].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(2) => \ramloop[31].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(1) => \ramloop[31].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(0) => \ramloop[31].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(7) => \ramloop[30].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(6) => \ramloop[30].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(5) => \ramloop[30].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(4) => \ramloop[30].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(3) => \ramloop[30].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(2) => \ramloop[30].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(1) => \ramloop[30].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(0) => \ramloop[30].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(7) => \ramloop[29].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(6) => \ramloop[29].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(5) => \ramloop[29].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(4) => \ramloop[29].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(3) => \ramloop[29].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(2) => \ramloop[29].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(1) => \ramloop[29].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(0) => \ramloop[29].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(7) => \ramloop[28].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(6) => \ramloop[28].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(5) => \ramloop[28].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(4) => \ramloop[28].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(3) => \ramloop[28].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(2) => \ramloop[28].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(1) => \ramloop[28].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(0) => \ramloop[28].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(7) => \ramloop[6].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(6) => \ramloop[6].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(5) => \ramloop[6].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(4) => \ramloop[6].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(3) => \ramloop[6].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(2) => \ramloop[6].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(1) => \ramloop[6].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[6].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(7) => \ramloop[5].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(6) => \ramloop[5].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(5) => \ramloop[5].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(4) => \ramloop[5].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(3) => \ramloop[5].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(2) => \ramloop[5].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(1) => \ramloop[5].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[5].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(7) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(6) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(5) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(4) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(3) => \ramloop[4].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(2) => \ramloop[4].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(1) => \ramloop[4].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[4].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(7) => \ramloop[11].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(6) => \ramloop[11].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(5) => \ramloop[11].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(4) => \ramloop[11].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(3) => \ramloop[11].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(2) => \ramloop[11].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(1) => \ramloop[11].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[11].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(7) => \ramloop[10].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(6) => \ramloop[10].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(5) => \ramloop[10].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(4) => \ramloop[10].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(3) => \ramloop[10].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(2) => \ramloop[10].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(1) => \ramloop[10].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(0) => \ramloop[10].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(7) => \ramloop[9].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(6) => \ramloop[9].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(5) => \ramloop[9].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(4) => \ramloop[9].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(3) => \ramloop[9].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(2) => \ramloop[9].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(1) => \ramloop[9].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(0) => \ramloop[9].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(7) => \ramloop[8].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(6) => \ramloop[8].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(5) => \ramloop[8].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(4) => \ramloop[8].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(3) => \ramloop[8].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(2) => \ramloop[8].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(1) => \ramloop[8].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(0) => \ramloop[8].ram.r_n_7\,
      DOADO(7) => \ramloop[3].ram.r_n_0\,
      DOADO(6) => \ramloop[3].ram.r_n_1\,
      DOADO(5) => \ramloop[3].ram.r_n_2\,
      DOADO(4) => \ramloop[3].ram.r_n_3\,
      DOADO(3) => \ramloop[3].ram.r_n_4\,
      DOADO(2) => \ramloop[3].ram.r_n_5\,
      DOADO(1) => \ramloop[3].ram.r_n_6\,
      DOADO(0) => \ramloop[3].ram.r_n_7\,
      addra(3 downto 0) => addra(15 downto 12),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      ena => ena
    );
\ramloop[0].ram.r\: entity work.Mem_blk_mem_gen_prim_width
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[0].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7 downto 0) => ram_douta(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[10].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[10].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[10].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[10].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[10].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[10].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[10].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[10].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[10].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[10].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[11].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[11].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[11].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[11].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[11].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[11].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[11].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[11].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[11].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[11].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[12].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[12].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[12].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[12].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[12].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[12].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[12].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[12].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[12].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[12].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[13].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[13].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[13].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[13].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[13].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[13].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[13].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[13].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[13].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[13].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[14].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[14].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[14].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[14].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[14].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[14].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[14].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[14].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[14].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[14].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[15].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[15].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[15].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[15].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[15].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[15].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[15].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[15].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[15].ram.r_n_7\,
      ram_ena => ram_ena,
      wea(0) => wea(0)
    );
\ramloop[16].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[16].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[16].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[16].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[16].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[16].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[16].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[16].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[16].ram.r_n_7\,
      ena => \ramloop[0].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[17].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[1].ram.r_n_8\,
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[17].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[17].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[17].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[17].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[17].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[17].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[17].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[17].ram.r_n_7\,
      wea(0) => wea(1)
    );
\ramloop[18].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[13]\ => \ramloop[2].ram.r_n_8\,
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[18].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[18].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[18].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[18].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[18].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[18].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[18].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[18].ram.r_n_7\,
      wea(0) => wea(1)
    );
\ramloop[19].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized18\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[13]\ => \ramloop[3].ram.r_n_8\,
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[19].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[19].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[19].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[19].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[19].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[19].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[19].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[19].ram.r_n_7\,
      wea(0) => wea(1)
    );
\ramloop[1].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[1].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[1].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[1].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[1].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[1].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[1].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[1].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[1].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[1].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[20].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized19\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \ramloop[4].ram.r_n_8\,
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[20].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[20].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[20].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[20].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[20].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[20].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[20].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[20].ram.r_n_7\,
      wea(0) => wea(1)
    );
\ramloop[21].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized20\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \ramloop[5].ram.r_n_8\,
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[21].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[21].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[21].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[21].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[21].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[21].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[21].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[21].ram.r_n_7\,
      wea(0) => wea(1)
    );
\ramloop[22].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized21\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \ramloop[6].ram.r_n_8\,
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[22].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[22].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[22].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[22].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[22].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[22].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[22].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[22].ram.r_n_7\,
      wea(0) => wea(1)
    );
\ramloop[23].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized22\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \ramloop[7].ram.r_n_8\,
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[23].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[23].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[23].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[23].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[23].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[23].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[23].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[23].ram.r_n_7\,
      wea(0) => wea(1)
    );
\ramloop[24].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized23\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[24].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[24].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[24].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[24].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[24].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[24].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[24].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[24].ram.r_n_7\,
      ena => \ramloop[8].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[25].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized24\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[25].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[25].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[25].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[25].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[25].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[25].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[25].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[25].ram.r_n_7\,
      ena => \ramloop[9].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[26].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized25\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[26].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[26].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[26].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[26].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[26].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[26].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[26].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[26].ram.r_n_7\,
      ena => \ramloop[10].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[27].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized26\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[27].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[27].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[27].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[27].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[27].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[27].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[27].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[27].ram.r_n_7\,
      ena => \ramloop[11].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[28].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized27\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[28].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[28].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[28].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[28].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[28].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[28].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[28].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[28].ram.r_n_7\,
      ena => \ramloop[12].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[29].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized28\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[29].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[29].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[29].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[29].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[29].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[29].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[29].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[29].ram.r_n_7\,
      ena => \ramloop[13].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[2].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[2].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[2].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[2].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[2].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[2].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[2].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[2].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[2].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[2].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[30].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized29\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[30].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[30].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[30].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[30].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[30].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[30].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[30].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[30].ram.r_n_7\,
      ena => \ramloop[14].ram.r_n_8\,
      wea(0) => wea(1)
    );
\ramloop[31].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized30\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(15 downto 8),
      \douta[15]\(7) => \ramloop[31].ram.r_n_0\,
      \douta[15]\(6) => \ramloop[31].ram.r_n_1\,
      \douta[15]\(5) => \ramloop[31].ram.r_n_2\,
      \douta[15]\(4) => \ramloop[31].ram.r_n_3\,
      \douta[15]\(3) => \ramloop[31].ram.r_n_4\,
      \douta[15]\(2) => \ramloop[31].ram.r_n_5\,
      \douta[15]\(1) => \ramloop[31].ram.r_n_6\,
      \douta[15]\(0) => \ramloop[31].ram.r_n_7\,
      ena => ena,
      ram_ena => ram_ena,
      wea(0) => wea(1)
    );
\ramloop[3].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[3].ram.r_n_8\,
      DOADO(7) => \ramloop[3].ram.r_n_0\,
      DOADO(6) => \ramloop[3].ram.r_n_1\,
      DOADO(5) => \ramloop[3].ram.r_n_2\,
      DOADO(4) => \ramloop[3].ram.r_n_3\,
      DOADO(3) => \ramloop[3].ram.r_n_4\,
      DOADO(2) => \ramloop[3].ram.r_n_5\,
      DOADO(1) => \ramloop[3].ram.r_n_6\,
      DOADO(0) => \ramloop[3].ram.r_n_7\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[4].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[4].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[4].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[4].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[4].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[4].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[4].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[4].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[4].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[4].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[5].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[5].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[5].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[5].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[5].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[5].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[5].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[5].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[5].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[5].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[6].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[6].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[6].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[6].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[6].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[6].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[6].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[6].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[6].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[6].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[7].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[7].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[7].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[7].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[7].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[7].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[7].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[7].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[7].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[7].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[8].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[8].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[8].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[8].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[8].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[8].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[8].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[8].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[8].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[8].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[9].ram.r\: entity work.\Mem_blk_mem_gen_prim_width__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[9].ram.r_n_8\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      \douta[7]\(7) => \ramloop[9].ram.r_n_0\,
      \douta[7]\(6) => \ramloop[9].ram.r_n_1\,
      \douta[7]\(5) => \ramloop[9].ram.r_n_2\,
      \douta[7]\(4) => \ramloop[9].ram.r_n_3\,
      \douta[7]\(3) => \ramloop[9].ram.r_n_4\,
      \douta[7]\(2) => \ramloop[9].ram.r_n_5\,
      \douta[7]\(1) => \ramloop[9].ram.r_n_6\,
      \douta[7]\(0) => \ramloop[9].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mem_blk_mem_gen_top : entity is "blk_mem_gen_top";
end Mem_blk_mem_gen_top;

architecture STRUCTURE of Mem_blk_mem_gen_top is
begin
\valid.cstr\: entity work.Mem_blk_mem_gen_generic_cstr
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(15 downto 0) => dina(15 downto 0),
      douta(15 downto 0) => douta(15 downto 0),
      ena => ena,
      wea(1 downto 0) => wea(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem_blk_mem_gen_v8_3_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mem_blk_mem_gen_v8_3_1_synth : entity is "blk_mem_gen_v8_3_1_synth";
end Mem_blk_mem_gen_v8_3_1_synth;

architecture STRUCTURE of Mem_blk_mem_gen_v8_3_1_synth is
begin
\gnativebmg.native_blk_mem_gen\: entity work.Mem_blk_mem_gen_top
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(15 downto 0) => dina(15 downto 0),
      douta(15 downto 0) => douta(15 downto 0),
      ena => ena,
      wea(1 downto 0) => wea(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem_blk_mem_gen_v8_3_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of Mem_blk_mem_gen_v8_3_1 : entity is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of Mem_blk_mem_gen_v8_3_1 : entity is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of Mem_blk_mem_gen_v8_3_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of Mem_blk_mem_gen_v8_3_1 : entity is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of Mem_blk_mem_gen_v8_3_1 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of Mem_blk_mem_gen_v8_3_1 : entity is "32";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of Mem_blk_mem_gen_v8_3_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of Mem_blk_mem_gen_v8_3_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of Mem_blk_mem_gen_v8_3_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of Mem_blk_mem_gen_v8_3_1 : entity is "Estimated Power for IP     :     5.097001 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of Mem_blk_mem_gen_v8_3_1 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of Mem_blk_mem_gen_v8_3_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of Mem_blk_mem_gen_v8_3_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of Mem_blk_mem_gen_v8_3_1 : entity is "Mem.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of Mem_blk_mem_gen_v8_3_1 : entity is "Mem.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of Mem_blk_mem_gen_v8_3_1 : entity is 65536;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of Mem_blk_mem_gen_v8_3_1 : entity is 65536;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of Mem_blk_mem_gen_v8_3_1 : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of Mem_blk_mem_gen_v8_3_1 : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of Mem_blk_mem_gen_v8_3_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of Mem_blk_mem_gen_v8_3_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of Mem_blk_mem_gen_v8_3_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of Mem_blk_mem_gen_v8_3_1 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of Mem_blk_mem_gen_v8_3_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of Mem_blk_mem_gen_v8_3_1 : entity is 2;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of Mem_blk_mem_gen_v8_3_1 : entity is 2;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of Mem_blk_mem_gen_v8_3_1 : entity is 65536;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of Mem_blk_mem_gen_v8_3_1 : entity is 65536;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of Mem_blk_mem_gen_v8_3_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of Mem_blk_mem_gen_v8_3_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of Mem_blk_mem_gen_v8_3_1 : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of Mem_blk_mem_gen_v8_3_1 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of Mem_blk_mem_gen_v8_3_1 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Mem_blk_mem_gen_v8_3_1 : entity is "blk_mem_gen_v8_3_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mem_blk_mem_gen_v8_3_1 : entity is "yes";
end Mem_blk_mem_gen_v8_3_1;

architecture STRUCTURE of Mem_blk_mem_gen_v8_3_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.Mem_blk_mem_gen_v8_3_1_synth
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      dina(15 downto 0) => dina(15 downto 0),
      douta(15 downto 0) => douta(15 downto 0),
      ena => ena,
      wea(1 downto 0) => wea(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mem is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mem : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mem : entity is "Mem,blk_mem_gen_v8_3_1,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of Mem : entity is "Mem,blk_mem_gen_v8_3_1,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.3,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_XDEVICEFAMILY=artix7,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_USE_BRAM_BLOCK=0,C_ENABLE_32BIT_ADDRESS=0,C_CTRL_ECC_ALGO=NONE,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=0,C_BYTE_SIZE=8,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=1,C_INIT_FILE_NAME=Mem.mif,C_INIT_FILE=Mem.mem,C_USE_DEFAULT_DATA=1,C_DEFAULT_DATA=0,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=1,C_HAS_REGCEA=0,C_USE_BYTE_WEA=1,C_WEA_WIDTH=2,C_WRITE_MODE_A=WRITE_FIRST,C_WRITE_WIDTH_A=16,C_READ_WIDTH_A=16,C_WRITE_DEPTH_A=65536,C_READ_DEPTH_A=65536,C_ADDRA_WIDTH=16,C_HAS_RSTB=0,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=0,C_HAS_REGCEB=0,C_USE_BYTE_WEB=1,C_WEB_WIDTH=2,C_WRITE_MODE_B=WRITE_FIRST,C_WRITE_WIDTH_B=16,C_READ_WIDTH_B=16,C_WRITE_DEPTH_B=65536,C_READ_DEPTH_B=65536,C_ADDRB_WIDTH=16,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_EN_ECC_PIPE=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=0,C_DISABLE_WARN_BHV_COLL=0,C_EN_SLEEP_PIN=0,C_USE_URAM=0,C_EN_RDADDRA_CHG=0,C_EN_RDADDRB_CHG=0,C_EN_DEEPSLEEP_PIN=0,C_EN_SHUTDOWN_PIN=0,C_EN_SAFETY_CKT=0,C_DISABLE_WARN_BHV_RANGE=0,C_COUNT_36K_BRAM=32,C_COUNT_18K_BRAM=0,C_EST_POWER_SUMMARY=Estimated Power for IP     _     5.097001 mW}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Mem : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Mem : entity is "blk_mem_gen_v8_3_1,Vivado 2015.4";
end Mem;

architecture STRUCTURE of Mem is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "32";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     5.097001 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "Mem.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "Mem.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 65536;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 65536;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 2;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 2;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 65536;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 65536;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.Mem_blk_mem_gen_v8_3_1
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => B"0000000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => dina(15 downto 0),
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(15 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(15 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(15 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(15 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(1 downto 0) => B"00",
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(1 downto 0) => wea(1 downto 0),
      web(1 downto 0) => B"00"
    );
end STRUCTURE;
