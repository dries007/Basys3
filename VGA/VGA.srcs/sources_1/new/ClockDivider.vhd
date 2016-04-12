library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClockDivider is
    Generic (
        DEVIDER : integer := 2
    );
    Port (
        clk_in : in STD_LOGIC := '0';
        clk_out : out STD_LOGIC := '0'
    );
end ClockDivider;

architecture Behavioral of ClockDivider is
    signal temp : STD_LOGIC := '0';
    signal counter : integer range 0 to DEVIDER := 0;
begin
    process(clk_in) begin
        if (rising_edge(clk_in)) then 
            if (counter = DEVIDER) then
                counter <= 0;
                temp <= NOT(temp);
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    clk_out <= temp;
    
end Behavioral;