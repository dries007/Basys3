library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;
use work.Font.all;

entity top is
    Port (  
        vgaRed : out STD_LOGIC_VECTOR (3 downto 0);
        vgaGreen : out STD_LOGIC_VECTOR (3 downto 0);
        vgaBlue : out STD_LOGIC_VECTOR (3 downto 0);
        Hsync : out STD_LOGIC;
        Vsync : out STD_LOGIC;
        clk : in STD_LOGIC;
        btnC : in STD_LOGIC;
        btnU : in STD_LOGIC;
        btnL : in STD_LOGIC;
        btnR : in STD_LOGIC;
        btnD : in STD_LOGIC
    );
end top;

architecture Behavioral of top is

component ClockDivider
    port (
        inClock : in std_logic;
        pixelClock : out std_logic;
        clk25MHz : out std_logic
    );
end component;

component Vga
    Port (   
        clk : in std_logic;
        enable : out std_logic;
        hSync : out std_logic;
        vSync : out std_logic;
        column : out integer range 0 to 1688;
        row : out integer range 0 to 1066
    );
end component;

component FiFo is
  port (
    clk : in std_logic;
    srst : in std_logic;
    din : in std_logic_vector(7 downto 0);
    wr_en : in std_logic;
    rd_en : in std_logic;
    dout : out std_logic_vector(7 downto 0);
    full : out std_logic;
    empty : out std_logic
  );
end component;

component FrameBuffer is
  port (
    wea : in std_logic_vector(0 downto 0);
    
    clka : in std_logic;
    addra : in std_logic_vector(13 downto 0);
    dina : in std_logic_vector(7 downto 0);
    
    clkb : in std_logic;
    addrb : in std_logic_vector(13 downto 0);
    doutb : out std_logic_vector(7 downto 0)
  );
end component;

signal pixel_clock : std_logic := '0';
signal clk25MHz : std_logic := '0';
signal clk2Hz : std_logic := '0';
signal clk1Hz : std_logic := '0';

signal disp_on : std_logic := '0';
signal splash : std_logic := '1';
signal x : integer range 0 to 1688; -- 1280 / 8 = 160
signal y : integer range 0 to 1066; --1024 / 16 = 64

signal fb_in_we : std_logic_vector(0 downto 0) := (others =>'1');
signal fb_in_addr : std_logic_vector(13 downto 0) := (others =>'0');
signal fb_in_dat : std_logic_vector(7 downto 0) := (others =>'0');

signal fb_out_addr : std_logic_vector(13 downto 0);
signal fb_out_dat : std_logic_vector(7 downto 0);

--signal fifo_in : std_logic_vector(7 downto 0);
--signal fifo_out : std_logic_vector(7 downto 0);
--signal fifo_wr_en : std_logic;
--signal fifo_rd_en : std_logic;
--signal fifo_full : std_logic;
--signal fifo_empty : std_logic;

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

clock0: ClockDivider 
    port map (
        inClock => clk,
        pixelClock => pixel_clock,
        clk25MHz => clk25MHz
    );
vga0: Vga
    port map (
        clk => pixel_clock,
        enable => disp_on,
        hSync => Hsync,
        vSync => Vsync,
        column => x,
        row => y
    );
frameBuffer0: FrameBuffer
    port map (
        clka => clk,
        wea => fb_in_we,
        addra => fb_in_addr,
        dina => fb_in_dat,
        
        clkb => pixel_clock,
        addrb => fb_out_addr,
        doutb => fb_out_dat
    );
--fifo0: FiFo
--    port map (
--        clk => clk,
--        din => fifo_in,
--        dout => fifo_out,
--        wr_en => fifo_wr_en,
--        rd_en => fifo_rd_en,
--        full => fifo_full,
--        empty => fifo_empty
--    );

-- draw text buffer
process (pixel_clock, disp_on, x, y)
    variable char : std_logic_vector(7 downto 0);
    variable nextchar : std_logic_vector(7 downto 0);
    variable charX : integer range 0 to 8;
    variable charY : integer range 0 to 8;
begin
    if (rising_edge(pixel_clock)) then
        if (disp_on = '1') then
            charX := x mod 8;
            charY := y mod 16;
            if (charX = 0) then
                char := nextchar;
                fb_out_addr <= conv_std_logic_vector((160 * (y / 16)) + (x / 8) + 1, 14);
            elsif (charX = 4) then
                nextchar := fb_out_dat;
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
            if x = 1280 then
                fb_out_addr <= conv_std_logic_vector(160 * (y / 16), 14);
            elsif x = 1290 then
                nextchar := fb_out_dat;
            end if;
            vgaRed      <= "0000";
            vgaGreen    <= "0000";
            vgaBlue     <= "0000";
        end if;
    end if;
end process;

-- slow clock devider
process (clk25MHz)
    constant MAX : integer := 25000000/2;
    variable counter : integer range 0 to MAX := 0;
begin
    if rising_edge(clk25MHz) then
        if counter < MAX then
            counter := counter + 1;
        else
            counter := 0;
        end if;
        if counter = 0 then
            clk1Hz <= not(clk1Hz);
            clk2Hz <= not(clk2Hz);
        end if;
        if counter = MAX / 2 then
            clk2Hz <= not(clk2Hz);
        end if;
    end if;
end process;

-- the any key...
process (clk25MHz)
begin
    if rising_edge(clk25MHz) then
        if btnC = '1' then
            splash <= '0';
        end if;
    end if;
end process;

-- splash blink
process (clk, splash, clk2Hz, clk1Hz)
    constant BLINKDATA : string := "Press any key to continue...";
    variable counter : integer range 0 to 10240 := 0;
begin
    if rising_edge(clk) then
        if splash = '1' then
            if counter >= blinkData'LENGTH then
                counter := 0;
            else
                counter := counter + 1;
            end if;
            fb_in_dat <= clk1Hz & conv_std_logic_vector(character'pos(BLINKDATA(counter + 1)), 7);
            fb_in_addr <= conv_std_logic_vector(160 * 21 + 66 + counter, 14);
        else
            if counter = 10240 then
                counter := 0;
            else
                counter := counter + 1;
            end if;
            fb_in_addr <= conv_std_logic_vector(counter, 14);
            fb_in_dat <= "00000000";
        end if;
    end if;
end process;

end Behavioral;
