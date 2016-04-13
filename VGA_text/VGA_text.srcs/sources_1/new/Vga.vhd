library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

-- Information from http://tinyvga.com/vga-timing/1280x1024@60Hz
entity Vga is
    Generic (
        H_PIX : natural := 1280; -- Horizontal frame size
        H_FP : natural := 48; -- Horizontal Front Porch
        H_SY : natural := 112; -- Horizontal Sync
        H_BP : natural := 248; -- Horizontal Back Porch
        H_POL : std_logic := '1'; -- Horizontal Sync Polarity
        V_PIX : natural := 1024; -- Vertical frame size
        V_FP : natural := 1; -- Vertical Front Porch
        V_SY : natural := 3; -- Vertical Sync
        V_BP : natural := 36; -- Vertical Back Porch
        V_POL : std_logic := '1' -- Vertical Sync Polarity
    );
    Port
    (
        clk : in STD_LOGIC;
        enable : out STD_LOGIC;
        hSync : out STD_LOGIC;
        vSync : out STD_LOGIC;
        column : out natural range 0 to 1280;
        row : out natural range 0 to 1024
    );
end Vga;

architecture Behavioral of Vga is

constant H_MAX : natural := H_PIX + H_FP + H_SY + H_BP; -- 1688 for 1280x1024@60Hz
constant V_MAX : natural := V_PIX + V_FP + V_SY + V_BP; -- 1066 for 1280x1024@60Hz

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

process(clk)
    variable h_count : natural range 0 to H_MAX - 1 := 0;  --horizontal counter (counts the columns)
    variable v_count : natural range 0 to V_MAX - 1 := 0;  --vertical counter (counts the rows)
begin
    if (rising_edge(clk)) then
        --counters
        if (h_count < H_MAX - 1) then
            h_count := h_count + 1;
        else
            h_count := 0;
            if (v_count < V_MAX - 1) then
                v_count := v_count + 1;
            else
                v_count := 0;
            end if;
        end if;
        --horizontal sync signal
        if (h_count < H_PIX + H_FP or h_count > H_PIX + H_FP + H_SY) then
            hSync <= not H_POL;
        else
            hSync <= H_POL;
        end if;
        --vertical sync signal
        if (v_count < V_PIX + V_FP or v_count > V_PIX + V_FP + V_SY) then
            vSync <= not V_POL;
        else
            vSync <= V_POL;
        end if;
        --set pixel coordinates
        if (h_count < H_PIX) then
            column <= h_count;
        end if;
        if (v_count < V_PIX) then
            row <= v_count;
        end if;
        --set display enable output
        if (h_count < H_PIX AND v_count < V_PIX) then
            enable <= '1';
        else
            enable <= '0';
        end if;
    end if;
end process;

--------------------------------------------------------
end Behavioral; --             END
--------------------------------------------------------
