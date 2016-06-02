library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.math_real.all;

use ieee.std_logic_textio.all;
use std.textio.all;

use work.Font.all;

entity top is
    Port (  
        vgaRed : out std_logic_vector (3 downto 0);
        vgaGreen : out std_logic_vector (3 downto 0);
        vgaBlue : out std_logic_vector (3 downto 0);
        Hsync : out std_logic;
        Vsync : out std_logic;
        PS2Clk : in std_logic;
        PS2Data : in std_logic;
        led : out std_logic_vector (15 downto 0);
        clk : in std_logic
    );
end top;

architecture Behavioral of top is

-- CONSTANTS ----------------------------------------------------
constant COLS : integer := 160;
constant ROWS : integer := 64;
constant CHARS : integer := COLS * ROWS;
constant ROM_SIZE : integer := CHARS * 2;
constant CPU_FREQ : integer := 10_000_000;

-- CLOCK --------------------------------------------------------
component ClockDivider
    port (
        clk : in std_logic;
        clk_vga : out std_logic;
        clk_cpu : out std_logic;
        clk_2cpu : out std_logic
    );
end component;

signal clk_vga : std_logic := '0';
signal clk_cpu : std_logic := '0';
signal clk_2cpu : std_logic := '0';
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
-- NEEDS to run at 2x CPU freq, for 1 CPU cycle mem access
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

-- ROM --------------------------------------------------
-- NEEDS to run at 2x CPU freq, for 1 CPU cycle mem access
component Rom is 
    port (
        clka : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
end component;

signal rom_addr : std_logic_vector(14 downto 0) := (others =>'0');
signal rom_dat : std_logic_vector(7 downto 0) := (others =>'0');

-- KEYBOARD CONTROLLER ------------------------------------------
-- NEEDS to be at CPU freq
component ps2_keyboard_to_ascii is
    Generic
    (
        CLK_FREQ : integer := CPU_FREQ
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
signal rng_out : std_logic_vector(15 downto 0) := (others =>'0');


-- MISC ---------------------------------------------------------
-- runtime in ms
signal runtime : unsigned(32 downto 0) := (others => '0');

-- FUNCTIONS ----------------------------------------------------
function index_delta(current : integer range 0 to CHARS; delta : integer range -CHARS to CHARS := 1; modulo : integer range 0 to CHARS := CHARS) return integer is
begin
    return (current + delta) mod modulo;
end index_delta;

function pad_string(input : string; size : positive; char : character := character'val(0)) return string is
    variable tmp: string(1 to size) := (others => NUL);
begin
    if input'length >= size then
        tmp := input(1 to size);
    else
        tmp(1 to input'length) := input;
        tmp(input'length + 1 to size) := (others => char);
    end if;
    return tmp;
end pad_string;

function ascii_i(i : integer range -999_999 to 999_999; didget : integer range 0 to 10 := 0; inverted : boolean := false; sign : boolean := false) return std_logic_vector(7 downto 0) is
    variable tmp : std_logic_vector(7 downto 0) := (others => '0');
begin
    if inverted then
        tmp(7) := '1';
    end if;
    if sign then
        if i > 0 then
            tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('+'), 7));
        else
            tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('-'), 7));
        end if;
    else
        tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('0') + ((i mod (10 ** (didget + 1))) / (10 ** didget)), 7));
    end if;
    return tmp;
end ascii_i;

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

clock0: ClockDivider 
    port map (
        clk => clk,
        clk_vga => clk_vga,
        clk_cpu => clk_cpu,
        clk_2cpu => clk_2cpu
    );
-- Slow clock devider
process (clk_cpu)
    constant MAX : integer := CPU_FREQ/2;
    variable i : integer range 0 to MAX := 0;
begin
    if rising_edge(clk_cpu) then
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
        clk => clk_vga,
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
        clka => clk_2cpu,
        ena => fb_a_en,
        wea => fb_a_we,
        addra => fb_a_addr,
        dina => fb_a_dat_in,
        douta => fb_a_dat_out,
        
        clkb => clk_vga,
        web => "0",
        addrb => vga_addr,
        dinb => x"00",
        doutb => vga_dat
    );

-- ROM ----------------------------------------------------------    
rom0: Rom
    port map (
        clka => clk_2cpu,
        addra => rom_addr,
        douta => rom_dat
    );
    
-- RNG ----------------------------------------------------------
prng0: Prng
    port map (
        seed => rng_seed,
        seed_en => rng_seed_en,
        clk => clk_cpu,
        rnd => rng_out
    );

-- KEYBOARD CONTROLLER ------------------------------------------
keyboard0: ps2_keyboard_to_ascii
    port map (
        clk => clk_cpu,
        ps2_clk => PS2Clk,
        ps2_data => PS2Data,
        ascii_new => kb_event,
        ascii_code => kb_acsii
    );
    
-- MISC ---------------------------------------------------------
-- runtime counter
process (clk_1k)
begin
    if rising_edge(clk_1k) then
        runtime <= runtime + 1;
    end if;
end process;

led <= clk_1 & clk_2 & std_logic_vector(runtime(17 downto 4));

-- CPU ---------------------------------------------------------
process (clk_cpu)
    -- State stack system
    constant STATE_STACK_MAX : integer := 15;
    type state_type is (COPY, COPY2, RESET, ERROR, ERROR_STUCK, WRITE, READ_INT, READ_FLT, READ_MENU, BLANK, SCROLL, SCROLL_W,
    GAME_R_0, GAME_R_ROLL, GAME_R_PLACE_START, GAME_R_PLACE_BET, GAME_R_PLACE_SAVE,
    GAME_HL_0
    );
    type state_type_arry is array(STATE_STACK_MAX downto 0) of state_type;
    variable state_index : integer range 0 to STATE_STACK_MAX := 0;
    variable state : state_type_arry := (others => RESET);
    
    -- Frame buffer index (also used as loop counter)
    variable fb_index : integer range 0 to CHARS := 0;
    
    -- Could have used enum, but then had to convert to ints anyway
    constant GAMES : integer := 2; -- count of 
    constant GAME_R : integer := 0;
    constant GAME_HL : integer := 1;
    variable game : integer range 0 to GAMES-1 := 0;
    
    variable money : integer range 0 to 999_999_99 := 1_000_00; -- in cents
    variable rnd : integer range 0 to 36; -- used for storing last rnd number from both games
    variable input : integer range 0 to 1_000_00 := 0; -- used to read a number from keyboard & for menu structures
    variable input_max : integer range 0 to 1_000_00 := 1_000_00; -- used to limit the input
        
    variable msg_inverted : std_logic := '0'; -- invert the text aka set the first bit
    variable msg : string(1 to CHARS); -- maximum of 160 characters, used by WRITE
    variable msg_index : integer range 0 to CHARS := 0; -- used by WRITE to store internal position within the msg
    
    -- STUFF FOR ROULETTE -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    constant R_MONEY_START : integer := 3132; -- For printing the $ --- ---.-- string 
    constant R_RND_START : integer := 3108; -- For printing the rolled number
    
    -- stack-like system for placing bets
    constant BETS_MAX : integer := 25; -- place maximum of 25 bets per game
    type bet_type is 
        record
            kind : integer range 0 to 8; -- type of bet, but type is a reserved keyword. vhdl naming is torture 0=NONE 1=Plein 2=Cheval(Horizontal) 3=Cheval(Vertical) 4=Trans 5=TransSimple 6=Carre 7=Colonne 8=Simple
            number : integer range 0 to 36; -- meaning depends on type of bet
            money : integer range 0 to 1_000_00; -- max bet per bet
        end record;
    type bets_type is array (BETS_MAX downto 0) of bet_type;
    variable bets_index : integer range 0 to BETS_MAX := 0;
    variable bets : bets_type;
    
    -- STUFF FOR HL -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    constant SCROLL_END : integer := COLS * 51;
    constant INPUT_LINE : integer := COLS * 62;
    
begin
    if rising_edge(clk_cpu) then
        rng_seed_en <= '0';
        fb_a_en <= '0';
        fb_a_we <= "0";
        case state(state_index) is
        ---------------------------------------------
        when COPY =>
            fb_index := 0;
            rom_addr <= std_logic_vector(to_unsigned(CHARS * game + fb_index, 15));
            state(state_index) := COPY2;
        when COPY2 =>
            fb_a_en <= '1';
            fb_a_we <= "1";
            fb_a_addr <= std_logic_vector(to_unsigned(fb_index, 14));
            fb_a_dat_in <= rom_dat;
            fb_index := index_delta(fb_index);
            rom_addr <= std_logic_vector(to_unsigned(CHARS * game + fb_index, 15));
            if fb_index = 0 then
                state_index := state_index - 1;
            end if;
        ---------------------------------------------
        when RESET =>
            fb_a_en <= '1';
            fb_a_we <= "1";
            fb_a_addr <= std_logic_vector(to_unsigned(game * COLS + 23 * COLS + 70, 14));
            fb_a_dat_in <= x"10";  -- '>' indicator arrow
            
            if kb_event = '1' then
                case '0' & kb_acsii is
                -- vhdl syntax is strang. ()'s are required to make it show up as a boolean?
                when (x"01") | (x"38") => -- up or 8
                    fb_a_dat_in <= x"20";  -- space
                    game := index_delta(game, delta => -1, modulo => GAMES);
                when (x"02") | (x"32") => -- down or 2
                    fb_a_dat_in <= x"20";  -- space
                    game := index_delta(game, modulo => GAMES);
                when x"0d" => -- enter
                    rng_seed <= std_logic_vector(runtime(15 downto 0));
                    rng_seed_en <= '1';
                    case game is
                    when GAME_R =>
                        state(state_index) := GAME_R_0; -- override current status, we don't need to come back.    
                    when GAME_HL =>
                         state(state_index) := GAME_HL_0; -- override current status, we don't need to come back.
                    end case;
                    state_index := state_index + 1; state(state_index) := COPY; -- But first, copy the game screen
                when others =>
                    -- nop
                end case;
            end if;
        ---------------------------------------------
        when GAME_R_0 =>
            -- by default +1 index & enable write to fb
            fb_index := index_delta(fb_index);
            fb_a_en <= '1';
            fb_a_we <= "1";
            case fb_index is -- start with 1 because of the default +1
            when 1 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START, 14));
                fb_a_dat_in <= ascii_i(money, 7);
            when 2 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START + 1, 14));
                fb_a_dat_in <= ascii_i(money, 6);
            when 3 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START + 2, 14));
                fb_a_dat_in <= ascii_i(money, 5);
            when 4 => -- Space, so skip '+ 3'
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START + 4, 14));
                fb_a_dat_in <= ascii_i(money, 4);
            when 5 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START + 5, 14));
                fb_a_dat_in <= ascii_i(money, 3);
            when 6 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START + 6, 14));
                fb_a_dat_in <= ascii_i(money, 2);
            when 7 => -- Dot, so skip '+ 7'
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START + 8, 14));
                fb_a_dat_in <= ascii_i(money, 1);
            when 8 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_MONEY_START + 9, 14));
                fb_a_dat_in <= ascii_i(money, 0);
            
            -- todo: draw bets
            
            -- waist a bunch of cycles, but makes logic less complex
            
            
            
            when COLS * 49 => -- line 49 is 2 lines below the last line of the 'image'
                msg := pad_string("   Roll", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
                if bets_index = BETS_MAX then
                    fb_index := COLS * 57 - 1; -- skip over all the other options, out of betspace
                end if;
            when COLS * 50 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place plein bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 51 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place horizontal cheval bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 52 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place horizontal cheval bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 53 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place transversale bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 54 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place transversale simple bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;    
            when COLS * 55 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place carre bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;    
            when COLS * 56 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place colonne bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 57 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place chance simple bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 58 => 
                if bets_index = BETS_MAX then
                    input_max := 1; -- only roll option was printed
                else
                    input_max := 9; -- normal
                end if;
                state_index := state_index + 1; state(state_index) := READ_MENU;
            when COLS * 58 + 1 => -- only get here once done read_menu
                if input = 0 then -- if roll
                    state(state_index) := GAME_R_ROLL; -- override return state
                else -- if place bet
                    bets(bets_index).kind := input;
                    state(state_index) := GAME_R_PLACE_START;  -- override return state
                end if;
                fb_index := COLS * 49; -- start of blanking
                state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
                
                
            -- infinite loop here (until enter)
--                fb_index := COLS * 58 - 1; -- -1 because of the default +1 
--                fb_a_addr <= std_logic_vector(to_unsigned(input * COLS + (49 * COLS + 1), 14)); -- line (49 + menu) + 1 
--                fb_a_dat_in <= x"10";  -- '>' indicator arrow
--                if kb_event = '1' then
--                    case '0' & kb_acsii is
--                    -- vhdl syntax is strange. ()'s are required to make it show up as a boolean?
--                    when (x"01") | (x"38") => -- up or 8
--                        fb_a_dat_in <= x"20";  -- space
--                        input := index_delta(input, delta => -1, modulo => 9);
--                    when (x"02") | (x"32") => -- down or 2
--                        fb_a_dat_in <= x"20";  -- space
--                        input := index_delta(input, modulo => 9);
--                    when x"0d" => -- enter
--                        if input = 0 then -- if roll
--                            state(state_index) := GAME_R_ROLL; -- override return state
--                        else -- if place bet
--                            bets(bets_index).kind := input;
--                            state(state_index) := GAME_R_PLACE_START;  -- override return state
--                        end if;
--                        fb_index := COLS * 49; -- start of blanking
--                        state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
--                         -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--                    when others =>
--                        -- nop
--                    end case;
--                end if;
            when others => -- after writes
                fb_a_en <= '0';
                fb_a_we <= "0";
            end case;
        ---------------------------------------------
        when GAME_R_PLACE_START =>
            case bets(bets_index).kind is
            when 1 => -- plein
                state(state_index) := GAME_R_PLACE_BET; -- after number, read amount
                input_max := 36; 
                state_index := state_index + 1; state(state_index) := READ_INT; -- Read after the write
                fb_index := COLS * 49;
                msg := pad_string("   Number? (0 - 36) ", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when 2 to 6 => -- cheval H or V, trans, trans simple or carre
                state(state_index) := GAME_R_PLACE_BET; -- after number, read amount
                input_max := 35;
                state_index := state_index + 1; state(state_index) := READ_INT; -- Read after the write
                fb_index := COLS * 49;
                msg := pad_string("   First number? (0 - 35) ", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when 7 to 8 => -- colonne or simple
                state(state_index) := READ_MENU;
            when others =>
                state(state_index) := ERROR; -- ??
            end case;
        ---------------------------------------------
        when GAME_R_PLACE_BET =>
        
        -- todo: verify input!!!!!!!
        
            state(state_index) := GAME_R_PLACE_SAVE; -- after amount, save & go back to main menu
            bets(bets_index).number := input; -- save the input
            input := 0; -- reset
            state_index := state_index + 1; state(state_index) := READ_FLT;
            fb_index := COLS * 49; -- position question
            msg := pad_string("   Amount? (Max 1 000.00 $)", msg'LENGTH);
            state_index := state_index + 1; state(state_index) := WRITE;
            
            
            
            
            
        ---------------------------------------------
        when GAME_R_PLACE_SAVE =>
            bets(bets_index).money := input; -- save input
            bets_index := bets_index + 1; -- finalize bet
            fb_index := 0; -- reset
            fb_index := COLS * 49; -- start of blanking
            state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
            state(state_index) := GAME_R_0; -- go back to main menu
        ---------------------------------------------
        when GAME_R_ROLL =>
            fb_index := index_delta(fb_index); -- by default +1 index
            case fb_index is -- start with 1 because of the default +1
            when 1 => -- do actual rnd number getting
                rnd := to_integer(unsigned(rng_out)) mod 37;
            when 2 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(R_RND_START, 14));
                fb_a_dat_in <= ascii_i(rnd, 1);
            when 3 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(R_RND_START + 1, 14));
                fb_a_dat_in <= ascii_i(rnd, 0);
            when 4 =>
                -- todo: compare each bet, 
                state(state_index) := GAME_R_0;                
            
            
            
            
            when others =>
                -- nop
            end case;
        
        when GAME_HL_0 =>
        ---------------------------------------------
        when READ_FLT =>
            
            fb_a_en <= '1';
            fb_a_we <= "1";
            if kb_event = '1' then -- kb event, handle that
                fb_a_addr <= std_logic_vector(to_unsigned(INPUT_LINE + msg_index, 14));
                fb_a_dat_in <= "00100000";  -- space, default. Used because it kills the underscore cursor
                
                -- IF Backspace
                if kb_acsii = "0001000" then
                    if msg_index /= 0 then -- if we can go back
                        msg_index := index_delta(msg_index, -1);
                    end if;
                -- ELSE IF Enter (treated as ok)
                elsif kb_acsii = "0001101" then
                    state_index := state_index - 1; -- pop one of the state stack
                -- ELSE any character
                else
                    if msg_index /= msg'LENGTH then -- 160 chars is more then enough
                        fb_a_dat_in <= '0' & kb_acsii; -- visual echo
--                        msg(msg_index + 1) := character'val(to_integer(unsigned(kb_acsii))); -- storage
                        msg_index := index_delta(msg_index, modulo => msg'LENGTH);
                    end if;
                end if;
                
            else -- No kb event, blink cursors
                fb_a_addr <= std_logic_vector(to_unsigned(fb_index, 14));
                if clk_2 = '1' then
                    fb_a_dat_in <= x"20";  -- space
                else
                    fb_a_dat_in <= x"5F";  -- underscore
                end if;
            end if;
            
        ---------------------------------------------    
        when READ_INT =>
        
        
        
        
            fb_a_en <= '1';
            fb_a_we <= "1";
            if kb_event = '1' then -- kb event, handle that
                fb_a_addr <= std_logic_vector(to_unsigned(INPUT_LINE + msg_index, 14));
                fb_a_dat_in <= "00100000";  -- space, default. Used because it kills the underscore cursor
                
                -- IF Backspace
                if kb_acsii = "0001000" then
                    if msg_index /= 0 then -- if we can go back
                        msg_index := index_delta(msg_index, -1);
                    end if;
                -- ELSE IF Enter (treated as ok)
                elsif kb_acsii = "0001101" then
                    state_index := state_index - 1; -- pop one of the state stack
                -- ELSE any character
                else
                    if msg_index /= msg'LENGTH then -- 160 chars is more then enough
                        fb_a_dat_in <= '0' & kb_acsii; -- visual echo
--                        msg(msg_index + 1) := character'val(to_integer(unsigned(kb_acsii))); -- storage
                        msg_index := index_delta(msg_index, modulo => msg'LENGTH);
                    end if;
                end if;
                
            else -- No kb event, blink cursors
                fb_a_addr <= std_logic_vector(to_unsigned(fb_index, 14));
                if clk_2 = '1' then
                    fb_a_dat_in <= x"20";  -- space
                else
                    fb_a_dat_in <= x"5F";  -- underscore
                end if;
            end if;
            
            
            
            
            
            
            
        ---------------------------------------------
        when READ_MENU =>
            fb_a_en <= '1';
            fb_a_we <= "1";
            fb_a_addr <= std_logic_vector(to_unsigned(input * COLS + (49 * COLS + 1), 14)); -- line (49 + menu) + 1 
            fb_a_dat_in <= x"10";  -- '>' indicator arrow
            if kb_event = '1' then
                case '0' & kb_acsii is
                -- vhdl syntax is strange. ()'s are required to make it show up as a boolean?
                when (x"01") | (x"38") => -- up or 8
                    fb_a_dat_in <= x"20";  -- space
                    input := index_delta(input, delta => -1, modulo => input_max);
                when (x"02") | (x"32") => -- down or 2
                    fb_a_dat_in <= x"20";  -- space
                    input := index_delta(input, modulo => input_max);
                when x"0d" => -- enter
                    state_index := state_index - 1;
                when others =>
                    -- nop
                end case;
            end if;
        ---------------------------------------------
        when ERROR_STUCK =>
            --
        when ERROR =>
            state(state_index) := ERROR_STUCK; -- override return state
            state_index := state_index + 1; state(state_index) := WRITE; -- put next state on stack
            msg_inverted := '1';
            msg := pad_string("Internal error occured.", msg'LENGTH);
            fb_index := 0;
        ---------------------------------------------
        when WRITE =>
            fb_a_en <= '1';
            fb_a_we <= "1";
            case character'pos(msg(msg_index + 1)) is
            when 10 | 13 =>
                if fb_index mod COLS = COLS - 1 then
                    msg_index := index_delta(msg_index, modulo => msg'LENGTH);
                end if;
                fb_a_dat_in <= msg_inverted & "0100000"; -- space
            when others =>
                fb_a_dat_in <= msg_inverted & std_logic_vector(to_unsigned(character'pos(msg(msg_index + 1)), 7));
                msg_index := index_delta(msg_index, modulo => msg'LENGTH);
            end case;
            fb_a_addr <= std_logic_vector(to_unsigned(fb_index, 14));
            fb_index := index_delta(fb_index);
            if msg_index = 0 or character'pos(msg(msg_index + 1)) = 0 then -- message ran out or character is null
                msg_index := 0;
                msg_inverted := '0';
                state_index := state_index - 1; -- pop one of the state stack
            end if;
            if fb_index = 0 then
                state_index := state_index + 1; state(state_index) := SCROLL; -- put next state on stack
            end if;
        ---------------------------------------------
        when BLANK => -- Clear from fb_index to last line, then reset fb_index to 0
            fb_a_en <= '1';
            fb_a_we <= "1";
            fb_a_addr <= std_logic_vector(to_unsigned(fb_index, 14));
            fb_a_dat_in <= x"00";
            fb_index := index_delta(fb_index);
            if fb_index = CHARS - COLS then -- don't kill the last line
                fb_index := 0; -- reset index, to facilitate the use as loop counter
                state_index := state_index - 1; -- pop one of the state stack
            end if;
        ---------------------------------------------    
        when SCROLL => -- move all of the screen up one row, read part
            fb_a_en <= '1';
            -- Read next line's char
            fb_a_addr <= std_logic_vector(to_unsigned((fb_index + COLS) mod CHARS, 14));
            state(state_index) := SCROLL_W; -- override current state
        when SCROLL_W => -- Write part of scroll state
            fb_a_en <= '1';
            -- Write current char
            fb_a_we <= "1";
            fb_a_addr <= std_logic_vector(to_unsigned(fb_index, 14));
            -- Last line is special
            if fb_index > INPUT_LINE then
                fb_a_dat_in <= x"00";
                -- Last character is the exit condition 
                if fb_index = CHARS - 1 then
                    -- Wrap fb_index to fist col, last line
                    fb_index := INPUT_LINE;
                    state_index := state_index - 1; -- pop one of the state stack
                -- Last line doesn't need to go back to read the mem
                else
                    fb_index := index_delta(fb_index);
                    state(state_index) := SCROLL_W; -- override return state
                end if;
            -- Copy data
            else
                fb_index := index_delta(fb_index);
                fb_a_dat_in <= fb_a_dat_out;
                state(state_index) := SCROLL; -- override return state
            end if;
        ---------------------------------------------
        when others => -- WTF?
            state(state_index) := ERROR; -- override return state
            state_index := state_index + 1; state(state_index) := WRITE; -- put next state on stack
            msg := pad_string("Illegal state", msg'LENGTH);
        end case;
    end if;
end process;

end Behavioral;
