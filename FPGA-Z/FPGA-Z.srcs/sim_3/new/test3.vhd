library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity test3 is
end test3;

architecture Behavioral of test3 is

component Ram is
    Port 
    ( 
        clk : in std_logic;
        re : in std_logic_vector (1 downto 0);
        we : in std_logic_vector (1 downto 0);
        addr : in integer range 0 to 16#1FFFF#;
        dat_r : out std_logic_vector (15 downto 0);
        dat_w : in std_logic_vector (15 downto 0)
    );
end component;

constant clk_period : time := 20 ns;

signal clk_1 : std_logic := '0';
signal clk_4 : std_logic := '0';
signal re : std_logic_vector (1 downto 0) := "00";
signal we : std_logic_vector (1 downto 0) := "00";
signal addr : integer range 0 to 16#1FFFF# := 0;
signal dat_r : std_logic_vector (15 downto 0) := (others => 'U');
signal dat_w : std_logic_vector (15 downto 0) := (others => 'U');

begin

ram0: Ram
  port map (
    clk => clk_4,
    re => re,
    we => we,
    addr => addr,
    dat_r => dat_r,
    dat_w => dat_w
  );

process
begin
    clk_1 <= not clk_1;
    
    clk_4 <= not clk_4;
    wait for clk_period;
    clk_4 <= not clk_4;
    wait for clk_period;
    
    clk_4 <= not clk_4;
    wait for clk_period;
    clk_4 <= not clk_4;
    wait for clk_period;
    
    clk_4 <= not clk_4;
    wait for clk_period;
    clk_4 <= not clk_4;
    wait for clk_period;
end process;

process(clk_1)
    variable i : integer range 0 to 12 := 1;
    file      outfile  : text is out "out.txt";  --declare output file
    variable  outline  : line;   --line number declaration  
begin
    if rising_edge(clk_1) then
        
        
        addr <= addr + 5;
        dat_w(7 downto 0) <= conv_std_logic_vector(addr + (i * 8), 8);
        dat_w(15 downto 8) <= conv_std_logic_vector((i * 8) - addr, 8);
        
        if addr >= 25 then
            addr <= 0;
            case i is
                when 0 =>
                    re <= "00";
                    we <= "01";
                when 1 =>
                    re <= "01";
                    we <= "00";
                when 2 =>
                    re <= "10";
                    we <= "00";
                when 3 =>
                    re <= "11";
                    we <= "00";
                
                when 4 =>
                    re <= "00";
                    we <= "10";
                when 5 => 
                    re <= "01";
                    we <= "00";
                when 6 =>
                    re <= "10";
                    we <= "00";
                when 7 =>
                    re <= "11";
                    we <= "00";
                
                when 8 =>
                    re <= "00";
                    we <= "11";
                when 9 => 
                    re <= "01";
                    we <= "00";
                when 10 =>
                    re <= "10";
                    we <= "00";
                when 11 =>
                    re <= "11";
                    we <= "00";
                    
                when others =>
                    re <= "UU";
                    we <= "UU";
            end case;
            i := i + 1;
        end if;
    end if;
end process;

end Behavioral;
