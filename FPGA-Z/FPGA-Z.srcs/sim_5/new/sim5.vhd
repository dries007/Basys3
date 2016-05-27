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

signal clk_main : std_logic := '0';
signal clk_cpu : std_logic := '0';
signal clk_2cpu : std_logic := '0';
signal clk_6cpu : std_logic := '0';

constant clk_period : time := 5 ns;

begin


-- Fast clock devider
process (clk_main)
    variable i : integer range 0 to 11 := 0;
begin
    if rising_edge(clk_main) then
        if i < 11 then
            i := i + 1;
        else
            i := 0;
        end if;
        clk_6cpu <= not(clk_6cpu);
        if i mod 3 = 0 then
            clk_2cpu <= not(clk_2cpu);
        end if;
        if i mod 6 = 0 then
            clk_cpu <= not(clk_cpu);
        end if;
    end if;
end process;

process
begin
    clk_main <= not clk_main;
    wait for clk_period/2;
end process;

end Behavioral;