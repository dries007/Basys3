library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

use work.Font.all;

entity top is
    Port (  
        vgaRed : out std_logic_vector (3 downto 0);
        vgaGreen : out std_logic_vector (3 downto 0);
        vgaBlue : out std_logic_vector (3 downto 0);
        Hsync : out std_logic;
        Vsync : out std_logic;
        led : out std_logic_vector (15 downto 0);
        sw : in std_logic_vector (15 downto 0);
        clk : in std_logic;
        btnC : in std_logic;
        btnU : in std_logic;
        btnL : in std_logic;
        btnR : in std_logic;
        btnD : in std_logic;
        PS2Clk : in std_logic;
        PS2Data : in std_logic;
        RsRx : inout std_logic;
        RsTx : inout std_logic
    );
end top;

architecture Behavioral of top is

-- CONSTANTS ----------------------------------------------------
constant COLS : integer := 160;
constant ROWS : integer := 64;
constant CHARS : integer := COLS * ROWS;
constant BLINKDATA : string := "Press any key to continue...";

-- CLOCK --------------------------------------------------------
component ClockDivider
    port (
        clkIn : in std_logic;
        clk108M : out std_logic;
        clk10M : out std_logic;
        clk20M : out std_logic;
        clk60M : out std_logic
    );
end component;

signal clk_108M : std_logic := '0';
signal clk_10M : std_logic := '0';
signal clk_20M : std_logic := '0';
signal clk_60M : std_logic := '0';
signal clk_10 : std_logic := '0';
signal clk_2 : std_logic := '0';
signal clk_1 : std_logic := '0';
signal clk_1k : std_logic := '0';

-- VGA controller -----------------------------------------------
component Vga
    Port (   
        clk : in std_logic;
        hSync : out std_logic;
        vSync : out std_logic;
        vgaRed : out std_logic_vector (3 downto 0);
        vgaGreen : out std_logic_vector (3 downto 0);
        vgaBlue : out std_logic_vector (3 downto 0);
        fbOutAddr : out std_logic_vector(13 downto 0);
        fbOutDat : in std_logic_vector(7 downto 0)
    );
end component;

signal vga_addr : std_logic_vector(13 downto 0) := (others =>'0');
signal vga_dat : std_logic_vector(7 downto 0) := (others =>'0');

-- FRAMEBUFFER --------------------------------------------------
component Framebuffer is
    port (
        clka : in std_logic;
        ena : in std_logic;
        wea : in std_logic_vector(0 downto 0);
        addra : in std_logic_vector(13 downto 0);
        dina : in std_logic_vector(7 downto 0);
        douta : out std_logic_vector(7 downto 0);
        
        clkb : in std_logic;
        web : in std_logic_vector(0 downto 0);
        addrb : in std_logic_vector(13 downto 0);
        dinb : in std_logic_vector(7 downto 0);
        doutb : out std_logic_vector(7 downto 0)
    );
end component;

signal fb_a_we : std_logic_vector(0 downto 0) := (others =>'0');
signal fb_a_addr : std_logic_vector(13 downto 0) := (others =>'0');
signal fb_a_dat_in : std_logic_vector(7 downto 0) := (others =>'0');
signal fb_a_dat_out : std_logic_vector(7 downto 0) := (others =>'0');
signal fb_a_en : std_logic := '0';

-- RNG ----------------------------------------------------------
component Prng is
    Generic
    (
        BITS : integer :=  16
    );
    Port 
    ( 
        seed : in std_logic_vector (16-1 downto 0);
        seed_en : in std_logic;
        clk : in std_logic;
        rnd : out std_logic_vector (16-1 downto 0)
    );
end component;

signal rng_seed : std_logic_vector(15 downto 0) := (others =>'0');
signal rng_seed_en : std_logic := '0';
signal rng_clk : std_logic := '0';
signal rng_out : std_logic_vector(15 downto 0) := (others =>'0');

-- KEYBOARD CONTROLLER ------------------------------------------
component ps2_keyboard_to_ascii is
    Generic
    (
        CLK_FREQ : integer := 10_000_000;
        REPEAT_DELAY : integer := 15
    );
    Port 
    ( 
        clk        : in  std_logic;                     --system clock input
        ps2_clk    : in  std_logic;                     --clock signal from ps2 keyboard
        ps2_data   : in  std_logic;                     --data signal from ps2 keyboard
        ascii_new  : out std_logic;                     --output flag indicating new ascii value
        ascii_code : out std_logic_vector(6 downto 0)   --ascii value
    );
end component;

signal kb_event : std_logic := '0';
signal kb_acsii : std_logic_vector(6 downto 0) := (others => '0');

-- RAM ----------------------------------------------------------
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

signal ram_re : std_logic_vector(1 downto 0) := (others => '0');
signal ram_we : std_logic_vector(1 downto 0) := (others => '0');
signal ram_addr : integer := 0;
signal ram_dat_r : std_logic_vector(15 downto 0) := (others => '0');
signal ram_dat_w : std_logic_vector(15 downto 0) := (others => '0');

-- MISC ---------------------------------------------------------
-- runtime in ms
signal runtime : unsigned(32 downto 0) := (others => '0');

-- FUNCTIONS ----------------------------------------------------
function cursor_delta(current : integer range 0 to CHARS; delta : integer range -CHARS to CHARS := 1; modulo : integer range 0 to CHARS := CHARS) return integer is
begin
    return (current + delta) mod modulo;
end cursor_delta;

function pad_string(input : string; size : positive) return string is
    variable tmp: string(1 to size) := (others => NUL);
begin
    if input'length >= size then
        tmp := input(1 to size);
    else
        tmp(1 to input'length) := input;
        tmp(input'length + 1 to size) := (others => ' ');
    end if;
    return tmp;
end pad_string;

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

-- CLOCK --------------------------------------------------------
clock0: ClockDivider 
    port map (
        clkIn => clk,
        clk108M => clk_108M,
        clk10M => clk_10M,
        clk20M => clk_20M,
        clk60M => clk_60M
    );
-- slow clock devider
process (clk_10M)
    constant MAX : integer := 10000000/2;
    variable i : integer range 0 to MAX := 0;
begin
    if rising_edge(clk_10M) then
        if i < MAX then
            i := i + 1;
        else
            i := 0;
        end if;
        if i = 0 then
            clk_1 <= not(clk_1);
        end if;
        if i mod (MAX / 2) = 0 then
            clk_2 <= not(clk_2);
        end if;
        if i mod (MAX / 1000) = 0 then
            clk_1k <= not(clk_1k);
        end if;
        if i mod (MAX / 10) = 0 then
            clk_10 <= not(clk_10);
        end if;
    end if;
end process;

-- VGA controller -----------------------------------------------
vga0: Vga
    port map (
        clk => clk_108M,
        hSync => Hsync,
        vSync => Vsync,
        vgaRed => vgaRed,
        vgaGreen => vgaGreen,
        vgaBlue => vgaBlue,
        fbOutAddr => vga_addr,
        fbOutDat => vga_dat
    );

-- FRAMEBUFFER --------------------------------------------------
frameBuffer0: Framebuffer
    port map (
        clka => clk_20M,
        ena => fb_a_en,
        wea => fb_a_we,
        addra => fb_a_addr,
        dina => fb_a_dat_in,
        douta => fb_a_dat_out,
        
        clkb => clk_108M,
        web => "0",
        addrb => vga_addr,
        dinb => x"00",
        doutb => vga_dat
    );

-- RNG ----------------------------------------------------------
prng0: Prng
    port map (
        seed => rng_seed,
        seed_en => rng_seed_en,
        clk => rng_clk,
        rnd => rng_out
    );

-- KEYBOARD CONTROLLER ------------------------------------------
keyboard0: ps2_keyboard_to_ascii
    port map (
        clk => clk_10M,
        ps2_clk => PS2Clk,
        ps2_data => PS2Data,
        ascii_new => kb_event,
        ascii_code => kb_acsii
    );

-- RAM ----------------------------------------------------------
--signal ram_re : std_logic_vector(1 downto 0) := (others => '0');
--signal ram_we : std_logic_vector(1 downto 0) := (others => '0');
--signal ram_addr : integer := 0;
--signal ram_dat_r : std_logic_vector(15 downto 0) := (others => '0');
--signal ram_dat_w : std_logic_vector(15 downto 0) := (others => '0');
ram0: Ram
    port map (
        clk => clk_60M,
        re => re,
        we => we,
        addr => addr,
        dat_r => dat_r,
        dat_w => dat_w
    );

-- MISC ---------------------------------------------------------
-- runtime cursor
process (clk_1k)
begin
    if rising_edge(clk_1k) then
        runtime <= runtime + 1;
    end if;
end process;

---- PRNG test
--rng_seed <= sw;
--led <= rng_out;
--process (clk_10)
--begin
--    if rising_edge(clk_10) then
--        if btnL = '1' then
--            rng_seed_en <= '1';
--            rng_clk <= not(rng_clk);
--        else
--            rng_seed_en <= '0';
--        end if;
--        if btnR = '1' then
--            rng_clk <= not(rng_clk);
--        end if;
--    end if;
--end process;


---- debug info
-- led <= (clk_1, clk_2, runtime(13 downto 0));
-- led <= clk_1 & clk_2 & std_logic_vector(runtime(17 downto 4));

-- MAIN ---------------------------------------------------------
-- CPU control state machine, not a proper FSM!
process (clk_10M)
    type state_type is (RESET, BLANK, SCROLL, SCROLL_W, LOAD, TEST, ERROR);
    variable next_state : state_type := RESET; -- The state to go to, after finishing the current one.
    variable state : state_type := RESET;-- The current/next state
    
    variable delay : boolean := false;-- Delay 1 clock tick
    variable cursor : integer range 0 to CHARS := 0;
    variable message : string(1 to 160);
    
    variable flags1 : std_logic_vector(15 downto 0) := (others => '0');
    variable flags2 : std_logic_vector(15 downto 0) := (others => '0');
    variable high : integer range 0 to 16#FFFF# := 0;
    variable pc : integer range 0 to 16#FFFF# := 0;
    variable dict : integer range 0 to 16#FFFF# := 0;
    variable objtab : integer range 0 to 16#FFFF# := 0;
    variable globals : integer range 0 to 16#FFFF# := 0;
    variable static : integer range 0 to 16#FFFF# := 0;
begin
    if rising_edge(clk_10M) then
        fb_a_en <= '0';
        fb_a_we <= "0";
        ram_en <= '0';
        ram_we <= "00";
        if delay then
            delay := false;
        else
            case state is
            ---------------------------------------------
            when RESET => -- splash screen
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_dat_in <= clk_1 & conv_std_logic_vector(character'pos(BLINKDATA(cursor + 1)), 7);
                fb_a_addr <= conv_std_logic_vector(COLS * 21 + 66 + cursor, 14);
                cursor := cursor_delta(cursor, modulo => blinkData'LENGTH);
                if kb_event = '1' then
                    cursor := 0;
                    state := BLANK;
                    next_state := LOAD;
                end if;
            ---------------------------------------------
            when BLANK => -- erase all of the screen
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= conv_std_logic_vector(cursor, 14);
                fb_a_dat_in <= x"00";
                cursor := cursor_delta(cursor);
                if cursor = 0 then
                    state := next_state;
                    next_state := RESET;
                end if;
            ---------------------------------------------
            when ERROR =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_dat_in <= '1' & conv_std_logic_vector(character'pos(message(cursor + 1)), 7);
                fb_a_addr <= conv_std_logic_vector(cursor, 14);
                cursor := cursor_delta(cursor, modulo => message'LENGTH);
                if cursor = 0 then
                    cursor := 160;
                    state := TEST;
                    next_state := TEST;
                end if;
            ---------------------------------------------
            when LOAD => -- Dirty sequential loading of data from RAM
                cursor := cursor_delta(cursor);
                ram_en <= '1';
                case cursor is
                when 1 =>
                    ram_addr <= conv_std_logic_vector(16#00#, 16);
                when 2 =>
                    if ram_dat_out(15 downto 8) /= x"03" then
                        cursor := 0;
                        state := ERROR;
                        next_state := RESET;
                        message := pad_string("Version != 3", message'LENGTH);
                    end if;
                    ram_addr <= conv_std_logic_vector(16#01#, 16); -- Flags 1
                when 3 =>
                    flags1 := ram_dat_out;
                    -- SET FLAGS 1 BITS
                    flags1(4) := '0';
                    flags1(5) := '0';
                    flags1(6) := '0';
                    ram_dat_in <= flags1;
                    ram_we <= "11";
                when 4 =>
                    ram_addr <= conv_std_logic_vector(16#04#, 16); -- Base of high memory (byte address)
                when 5 =>
                    high := conv_integer(ram_dat_out);
                    ram_addr <= conv_std_logic_vector(16#06#, 16); -- Initial value of program counter (byte address)
                when 6 =>
                    pc := conv_integer(ram_dat_out);
                    ram_addr <= conv_std_logic_vector(16#08#, 16); -- Location of dictionary (byte address)
                when 7 =>
                    dict := conv_integer(ram_dat_out);
                    ram_addr <= conv_std_logic_vector(16#0A#, 16); -- Location of object table (byte address)
                when 8 =>
                    objtab := conv_integer(ram_dat_out);
                    ram_addr <= conv_std_logic_vector(16#0C#, 16); -- 	Location of global variables table (byte address)
                when 9 =>
                    globals := conv_integer(ram_dat_out);
                    ram_addr <= conv_std_logic_vector(16#0E#, 16); -- 	Base of static memory (byte address)
                when 10 => 
                    static := conv_integer(ram_dat_out);
                    ram_addr <= conv_std_logic_vector(16#10#, 16); -- 	Flags 2
                when 11 =>
                    flags2 := ram_dat_out;
                    --flags2()
                    
                    cursor := 0;
                    state := ERROR;
                    next_state := RESET;
                    message := pad_string("It works. Untill this point that is...", message'LENGTH);
                    
                    -- todo: check bits
                    
                when others =>
                    cursor := 0;
                    state := ERROR;
                    next_state := RESET;
                    message := pad_string("Illegal load state", message'LENGTH);
                end case;
            ---------------------------------------------
            when SCROLL => -- move all of the screen up one row, read part
                fb_a_en <= '1';
                -- Read next line's char
                fb_a_addr <= conv_std_logic_vector((cursor + COLS) mod CHARS, 14);
                state := SCROLL_W;
            when SCROLL_W => -- Write part of scroll state
                fb_a_en <= '1';
                -- Write current char
                fb_a_we <= "1";
                fb_a_addr <= conv_std_logic_vector(cursor, 14);
                -- Last line is special
                if cursor > COLS * (ROWS - 1) then
                    fb_a_dat_in <= x"00";
                    -- Last character is the exit condition 
                    if cursor = CHARS - 1 then
                        -- Wrap cursor to fist col, last line
                        cursor := (ROWS - 1) * COLS;
                        state := next_state;
                        next_state := RESET;
                    -- Last line doesn't need to go back to read the mem
                    else
                        cursor := cursor_delta(cursor);
                        state := SCROLL_W;
                    end if;
                -- Copy data
                else
                    cursor := cursor_delta(cursor);
                    fb_a_dat_in <= fb_a_dat_out;
                    state := SCROLL;
                end if;
            ---------------------------------------------
            
            ---------------------------------------------
            when TEST =>
                if kb_event = '1' then
                    -- By default, we want to write a space to the current position
                    fb_a_en <= '1';
                    fb_a_we <= "1";
                    fb_a_addr <= conv_std_logic_vector(cursor, 14);
                    fb_a_dat_in <= "00100000";  -- space
                    
                    -- IF Backspace
                    if kb_acsii = "0001000" then
                        cursor := cursor_delta(cursor, -1);
                    -- ELSE IF Enter (treated like carage return, not line feed)
                    elsif kb_acsii = "0001101" then
                        if cursor / COLS = (ROWS - 1) then
                            state := SCROLL;
                            next_state := TEST;
                            cursor := 0;
                        else
                            cursor := cursor_delta(cursor, COLS - (cursor mod COLS));    
                        end if;
                    -- ELSE IF Escape (wipe whole screen)
                    elsif kb_acsii = "0011011" then
                        fb_a_en <= '0';
                        fb_a_we <=  "0";
                        cursor := 0;
                        state := BLANK;
                        next_state := TEST;
                    -- OTHERWISE print character to screen
                    else
                        fb_a_dat_in <= '0' & kb_acsii;
                        cursor := cursor_delta(cursor);
                    end if;
                -- No kb event, blink cursors
                else
                    fb_a_en <= '1';
                    fb_a_we <= "1";
                    fb_a_addr <= conv_std_logic_vector(cursor, 14);
                    if clk_2 = '1' then
                        fb_a_dat_in <= "00100000";  -- space
                    else
                        fb_a_dat_in <= "01011111";  -- underscore
                    end if;
                end if;
            ---------------------------------------------
            when others => -- WTF?
                cursor := 0;
                state := ERROR;
                message := pad_string("Illegal state", message'LENGTH);
            end case;
        end if;
    end if;
end process;

end Behavioral;
