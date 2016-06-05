----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2016 09:32:19 PM
-- Design Name: 
-- Module Name: test1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test1 is
end test1;

architecture Behavioral of test1 is

component Vga
    Port (   
        clk : in std_logic;
        hSync : out std_logic;
        vSync : out std_logic;
        vgaRed : out std_logic_vector (3 downto 0);
        vgaGreen : out std_logic_vector (3 downto 0);
        vgaBlue : out std_logic_vector (3 downto 0);
        fbOutAddr : out std_logic_vector(13 downto 0);
        fbOutDat : in std_logic_vector(7 downto 0)
    );
end component;

constant clk_period : time := 9259 ps;

signal clk : std_logic;
signal hSync : std_logic;
signal vSync : std_logic;
signal vgaRed : std_logic_vector (3 downto 0);
signal vgaGreen : std_logic_vector (3 downto 0);
signal vgaBlue : std_logic_vector (3 downto 0);
signal fbOutAddr : std_logic_vector(13 downto 0);
signal fbOutDat : std_logic_vector(7 downto 0) := (others => '0');

begin

vga0: Vga
    port map (
        clk => clk,
        hSync => Hsync,
        vSync => Vsync,
        vgaRed => vgaRed,
        vgaGreen => vgaGreen,
        vgaBlue => vgaBlue,
        fbOutAddr => fbOutAddr,
        fbOutDat => fbOutDat
    );

process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
    fbOutDat <= fbOutAddr(7 downto 0);
end process;


end Behavioral;
