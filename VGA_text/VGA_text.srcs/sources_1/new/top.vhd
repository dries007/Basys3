library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

entity top is
    Port (  
        vgaRed : out STD_LOGIC_VECTOR (3 downto 0);
        vgaGreen : out STD_LOGIC_VECTOR (3 downto 0);
        vgaBlue : out STD_LOGIC_VECTOR (3 downto 0);
        Hsync : out STD_LOGIC;
        Vsync : out STD_LOGIC;
        clk : in STD_LOGIC
    );
end top;

architecture Behavioral of top is

component ClockDivider
    port (
        inClock : in std_logic;
        pixelClock : out std_logic
    );
end component;

component Vga
    Port (   
        clk : in STD_LOGIC;
        enable : out STD_LOGIC;
        hSync : out STD_LOGIC;
        vSync : out STD_LOGIC;
        column : out natural range 0 to 1280;
        row : out natural range 0 to 1024
    );
end component;

signal pixel_clock : STD_LOGIC;
signal disp_on : STD_LOGIC;
signal x : natural range 0 to 1280;
signal y : natural range 0 to 1024;

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

clock0 : ClockDivider 
    port map (
        inClock => clk,
        pixelClock => pixel_clock
    );
vga0 : Vga
    port map (
        clk => pixel_clock,
        enable => disp_on,
        hSync => Hsync,
        vSync => Vsync,
        column => x,
        row => y
    );

process (pixel_clock, disp_on, x, y)
begin
    if (rising_edge(pixel_clock)) then
        if (disp_on = '1') then
--            if y < 16 and x < 15 then
                if x mod 5 = 0 then
                    vgaRed  <= "1111";
                else
                    vgaRed  <= "0000";    
                end if;
                if y mod 5 = 0 then
                    vgaBlue <= "1111";
                else
                    vgaBlue <= "0000";    
                end if;
--                vgaRed      <= "0000";
                vgaGreen    <= "0000";
--                vgaBlue     <= "1111";
--            else
--                vgaRed      <= "0000";
--                vgaGreen    <= "0000";
--                vgaBlue     <= "0000";
--            end if;
        else
            vgaRed      <= "0000";
            vgaGreen    <= "0000";
            vgaBlue     <= "0000";
        end if;
    end if;
end process;

end Behavioral;
