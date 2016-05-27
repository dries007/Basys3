library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity SystemTest is
end SystemTest;

architecture Behavioral of SystemTest is

component top is
    Port (  
        vgaRed : out std_logic_vector (3 downto 0);
        vgaGreen : out std_logic_vector (3 downto 0);
        vgaBlue : out std_logic_vector (3 downto 0);
        Hsync : out std_logic;
        Vsync : out std_logic;
        led : out std_logic_vector (15 downto 0);
        sw : in std_logic_vector (15 downto 0);
        clk : in std_logic;
        btnC : in std_logic;
        btnU : in std_logic;
        btnL : in std_logic;
        btnR : in std_logic;
        btnD : in std_logic;
        PS2Clk : in std_logic;
        PS2Data : in std_logic;
        RsRx : inout std_logic;
        RsTx : inout std_logic
    );
end component;

constant clk_period : time := 1 ns;

signal vgaRed : std_logic_vector (3 downto 0);
signal vgaGreen :std_logic_vector (3 downto 0);
signal vgaBlue :std_logic_vector (3 downto 0);
signal Hsync :std_logic;
signal Vsync :std_logic;
signal led :std_logic_vector (15 downto 0);
signal sw :std_logic_vector (15 downto 0);
signal clk :std_logic := '0';
signal btnC :std_logic;
signal btnU :std_logic;
signal btnL :std_logic;
signal btnR :std_logic;
signal btnD :std_logic;
signal PS2Clk :std_logic;
signal PS2Data :std_logic;
signal RsRx : std_logic;
signal RsTx : std_logic;

begin

top0: top
  port map (
    vgaRed => vgaRed,
    vgaGreen => vgaGreen,
    vgaBlue => vgaBlue,
    Hsync => Hsync,
    sw => sw,
    clk => clk,
    btnC => btnC,
    btnU => btnU,
    btnL => btnL,
    btnR => btnR,
    btnD => btnD,
    PS2Clk => PS2Clk,
    PS2Data => PS2Data,
    RsRx => RsRx,
    RsTx => RsTx
  );

process
begin
    clk <= not clk;
    wait for clk_period/2;
end process;

end Behavioral;
