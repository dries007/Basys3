library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;
use work.Font.all;

-- Information from http://tinyvga.com/vga-timing/1280x1024@60Hz
entity Vga is
    Generic (
        H_PIX : integer := 1280; -- Horizontal frame size
        H_FP : integer := 48; -- Horizontal Front Porch
        H_SY : integer := 112; -- Horizontal Sync
        H_BP : integer := 248; -- Horizontal Back Porch
        H_POL : std_logic := '1'; -- Horizontal Sync Polarity
        V_PIX : integer := 1024; -- Vertical frame size
        V_FP : integer := 1; -- Vertical Front Porch
        V_SY : integer := 3; -- Vertical Sync
        V_BP : integer := 36; -- Vertical Back Porch
        V_POL : std_logic := '1' -- Vertical Sync Polarity
    );
    Port
    (
        clk : in std_logic;
        hSync : out std_logic;
        vSync : out std_logic;
        vgaRed : out std_logic_vector (3 downto 0);
        vgaGreen : out std_logic_vector (3 downto 0);
        vgaBlue : out std_logic_vector (3 downto 0);
        fbOutAddr : out std_logic_vector(13 downto 0);
        fbOutDat : in std_logic_vector(7 downto 0)
    );
end Vga;

architecture Behavioral of Vga is

constant H_MAX : integer := H_PIX + H_FP + H_SY + H_BP; -- 1688 for 1280x1024@60Hz
constant V_MAX : integer := V_PIX + V_FP + V_SY + V_BP; -- 1066 for 1280x1024@60Hz

signal enable : std_logic := '0';
signal h_count : integer range 0 to H_MAX - 1 := 0;  --horizontal counter (counts the columns)
signal v_count : integer range 0 to V_MAX - 1 := 0;  --vertical counter (counts the rows)

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

process(clk)
begin
    if (rising_edge(clk)) then
        --counters
        if (h_count < H_MAX - 1) then
            h_count <= h_count + 1;
        else
            h_count <= 0;
            if (v_count < V_MAX - 1) then
                v_count <= v_count + 1;
            else
                v_count <= 0;
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
        --set display enable output
        if (h_count < H_PIX AND v_count < V_PIX) then
            enable <= '1';
        else
            enable <= '0';
        end if;
    end if;
end process;

-- draw text buffer
process (clk)
    variable char : std_logic_vector(7 downto 0);
    variable nextChar : std_logic_vector(7 downto 0);
    variable charX : integer range 0 to 8;
    variable charY : integer range 0 to 16;
begin
    if (rising_edge(clk)) then
        if (enable = '1') then
            charX := h_count mod 8;
            charY := v_count mod 16;
            if (charX = 0) then
                char := nextChar;
                fbOutAddr <= conv_std_logic_vector((160 * (v_count / 16)) + (h_count / 8) + 1, 14);
            elsif (charX = 4) then
                nextChar := fbOutDat;
            end if;
            if (char(7) = '1' xor draw_char(charX, charY, conv_integer(char and "01111111"))) then
                vgaRed      <= "1111";
                vgaGreen    <= "1111";
                vgaBlue     <= "1111";
            else
                vgaRed      <= "0000";
                vgaGreen    <= "0000";
                vgaBlue     <= "0000";
            end if;
        else -- outside displayable area
            if h_count = 1280 then
                fbOutAddr <= conv_std_logic_vector(160 * (v_count / 16), 14);
            elsif h_count = 1290 then
                nextChar := fbOutDat;
            end if;
            vgaRed      <= "0000";
            vgaGreen    <= "0000";
            vgaBlue     <= "0000";
        end if;
    end if;
end process;

--------------------------------------------------------
end Behavioral; --             END
--------------------------------------------------------
