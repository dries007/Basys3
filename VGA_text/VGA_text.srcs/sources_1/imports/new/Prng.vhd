library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Seeded PRNG (linear feedback shift register)
-- Thanks wikipedia for the consept and explaination
entity Prng is
    Generic 
    ( 
        BITS : integer := 32
    ); 
    Port 
    ( 
        seed : in std_logic_vector (BITS-1 downto 0);
        seed_en : in std_logic;
        clk : in std_logic;
        rnd : out std_logic_vector (BITS-1 downto 0)
    );
end Prng;

architecture Behavioral of Prng is

begin

process (clk)
    variable tmp_a : std_logic_vector(BITS-1 downto 0) := ('1', '0', '1', others => '0');
    variable tmp_b : std_logic := '0';
begin
    if rising_edge(clk) then
        if seed_en = '1' then
            tmp_a := seed;
        else
            tmp_b := tmp_a(BITS-1) xor tmp_a(BITS-2);
            tmp_a := tmp_a(BITS-2 downto 0) & tmp_b;
            rnd <= tmp_a;
        end if;
    end if;
end process;

end Behavioral;
