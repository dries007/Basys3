library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;
-- todo: optimize

entity Ram is
    Port 
    ( 
        clk : in std_logic;
        re : in std_logic_vector (1 downto 0);
        we : in std_logic_vector (1 downto 0);
        addr : in integer range 0 to 16#1FFFF#;
        dat_r : out std_logic_vector (15 downto 0);
        dat_w : in std_logic_vector (15 downto 0)
    );
end Ram;

architecture Behavioral of Ram is

component Mem is
    port 
    (
        clka : in std_logic;
        ena : in std_logic;
        wea : in std_logic_vector(0 downto 0);
        addra : in std_logic_vector(16 downto 0);
        dina : in std_logic_vector(7 downto 0);
        douta : out std_logic_vector(7 downto 0)
    );
end component;

signal ram_en : std_logic := '0';
signal ram_we : std_logic := '0';
signal ram_addr : std_logic_vector(16 downto 0) := (others => '0');
signal ram_dat_in : std_logic_vector(7 downto 0) := (others => '0');
signal ram_dat_out : std_logic_vector(7 downto 0) := (others => '0');

begin

mem0: Mem
  port map (
    clka => clk,
    ena => ram_en,
    wea(0) => ram_we,
    addra => ram_addr,
    dina => ram_dat_in,
    douta => ram_dat_out
  );

process (clk)
    type state_type is (S0, S1, S2, S3, S4, S5);
    variable state : state_type := S0;-- The current/next state
    variable tmp : std_logic_vector(15 downto 0) := (others => '0');
begin
    if rising_edge(clk) then
        ram_en <= '1';
        ram_we <= '0';
        case state is
        when S0 =>
            state := S1;
        when S1 =>
            dat_r <= (others => 'U'); 
            ram_addr <= conv_std_logic_vector(addr, 17);
            state := S2;
        when S2 =>
            -- Write first byte if required
            if we(1) = '1' then
                ram_we <= '1';
                ram_dat_in <= dat_w(15 downto 8); 
            end if;
            state := S3;
        when S3 =>
            -- Read fist byte if required
            if re(1) = '1' then
                tmp(15 downto 8) := ram_dat_out;
            else
                tmp(15 downto 8) := (others => 'U');
            end if;
            state := S4;
            ram_addr <= conv_std_logic_vector(addr + 1, 17);
        when S4 =>
            -- Write second byte if required
            if we(0) = '1' then
                ram_we <= '1';
                ram_dat_in <= dat_w(7 downto 0);
            end if;
            state := S5;
        when S5 =>
            -- Read second byte if required
            if re(0) = '1' then
                tmp(7 downto 0) := ram_dat_out;
            else
                tmp(7 downto 0) := (others => 'U');
            end if;
            dat_r <= tmp;
            state := S0;
        end case;
    end if;
end process;

end Behavioral;
