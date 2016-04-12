library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_top is
    Port ( 
        led : out STD_LOGIC_VECTOR (2 downto 0);
        clk : in STD_LOGIC;
        vgaRed : out STD_LOGIC_VECTOR(3 downto 0);
        vgaBlue : out STD_LOGIC_VECTOR(3 downto 0);
        vgaGreen : out STD_LOGIC_VECTOR(3 downto 0);
        Hsync : out STD_LOGIC;
        Vsync : out STD_LOGIC
    );
end test_top;

architecture Behavioral of test_top is
    
    constant REFRESH_RATE : natural := 60;
    
    constant WIDTH : natural := 640;
    constant FRONT_PORCH_H : natural := 16;
    constant SYNC_PULSE_H : natural := 96;
    constant BACK_PORCH_H : natural := 48;
    constant WHOLE_LINE : natural := WIDTH + FRONT_PORCH_H + SYNC_PULSE_H + BACK_PORCH_H;
    
    constant HEIGHT : natural := 480;
    constant FRONT_PORCH_V : natural := 10;
    constant SYNC_PULSE_V : natural := 2;
    constant BACK_PORCH_V : natural := 33;
    constant WHOLE_FRAME : natural := HEIGHT + FRONT_PORCH_V + SYNC_PULSE_V + BACK_PORCH_V;
    
    signal clk_pxl : STD_LOGIC := '0';
    signal h_count : integer range 0 to WHOLE_LINE;
    signal v_count : integer range 0 to WHOLE_FRAME;
    
begin

CD_PXL_CLK: entity work.ClockDivider
    generic map (
        CLK_IN_HZ => 100000000,
        CLK_OUT_HZ => 25175000
    )
    port map (
        clk_in => clk,
        clk_out => clk_pxl
    );
    
process (clk_pxl)
begin
    if (rising_edge(clk_pxl)) then
        if (h_count = WHOLE_LINE) then
            h_count <= 0;
            led(1) <= '1'; -- debug
        else
            h_count <= h_count + 1;
            led(1) <= '0'; -- debug
        end if;
    end if;
end process;

process (clk_pxl)
begin
    if (rising_edge(clk_pxl)) then
        if ((v_count = WHOLE_FRAME) and (h_count = WHOLE_LINE)) then
            v_count <= 0;
            led(2) <= '1'; -- debug
        elsif (h_count = WHOLE_LINE) then
            v_count <= v_count + 1;
            led(2) <= '0'; -- debug
        end if;
    end if;
end process;

led(0) <= clk_pxl;

end Behavioral;
