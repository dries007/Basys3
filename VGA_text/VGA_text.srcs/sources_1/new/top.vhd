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
        --led : out std_logic_vector (15 downto 0);
        clk : in std_logic
    );
end top;

architecture Behavioral of top is

-- CONSTANTS ----------------------------------------------------
constant COLS : integer := 160;
constant ROWS : integer := 64;
constant CHARS : integer := COLS * ROWS;
constant ROM_SIZE : integer := CHARS * 2;
constant CPU_FREQ : integer := 9_000_000;

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

--led <= clk_1 & clk_2 & std_logic_vector(runtime(17 downto 4));

-- CPU ---------------------------------------------------------
process (clk_cpu)
    -- State stack system
    constant STATE_STACK_MAX : integer := 15;
    type state_type is (COPY, COPY2, RESET, ERROR, ERROR_STUCK, WRITE, READ, READ_MENU, BLANK, 
    -- SCROLL, SCROLL_W,
    GAME_R_0, GAME_R_ROLL, GAME_R_PLACE_START, GAME_R_PLACE_BET, GAME_R_PLACE_SAVE,
    GAME_HL_0, GAME_HL_BET, GAME_HL_BET_2
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
    constant HL_MONEY_START : integer := 3129; -- fb index for printing the $ --- ---.-- string 
    constant HL_FIRST_CARD : integer := 3788; -- fb index for printing the first card
    constant HL_SECOND_CARD : integer := 4108; -- fb index for printing the second card
    
    variable card_first : integer range 2 to 12 := 2;
    variable bet_higher : boolean := true;
    variable bet_money : integer range 0 to 1_000_00 := 0;
    
    
begin
    if rising_edge(clk_cpu) then
        rng_seed_en <= '0';
        fb_a_en <= '0';
        fb_a_we <= "0";
        case state(state_index) is
        ---------------------------------------------
        when COPY =>
            fb_index := 0;
            rom_addr <= std_logic_vector(to_unsigned(CHARS * game, 15));
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
                    game := index_delta(game, modulo => GAMES);
                when (x"02") | (x"32") => -- down or 2
                    fb_a_dat_in <= x"20";  -- space
                    game := index_delta(game, delta => -1, modulo => GAMES);
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
        when GAME_HL_0 =>
            fb_index := index_delta(fb_index); -- by default +1 index
            case fb_index is
            when 1 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START, 14));
                fb_a_dat_in <= ascii_i(money, 7);
            when 2 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START + 1, 14));
                fb_a_dat_in <= ascii_i(money, 6);
            when 3 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START + 2, 14));
                fb_a_dat_in <= ascii_i(money, 5);
            when 4 => -- Space, so skip '+ 3'
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START + 4, 14));
                fb_a_dat_in <= ascii_i(money, 4);
            when 5 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START + 5, 14));
                fb_a_dat_in <= ascii_i(money, 3);
            when 6 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START + 6, 14));
                fb_a_dat_in <= ascii_i(money, 2);
            when 7 => -- Dot, so skip '+ 7'
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START + 8, 14));
                fb_a_dat_in <= ascii_i(money, 1);
            when 8 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_MONEY_START + 9, 14));
                fb_a_dat_in <= ascii_i(money, 0);
                
            when 10 => -- pick number (2 -> 12)
                card_first := 2 + (to_integer(unsigned(rng_out)) mod 11);
                
            when 20 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_FIRST_CARD, 14));
                fb_a_dat_in <= ascii_i(card_first, 1);
            when 21 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_FIRST_CARD + 1, 14));
                fb_a_dat_in <= ascii_i(card_first, 0);
                
                    
            when COLS * 49 =>
                msg := pad_string("   Bet higher", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 50 =>
                msg := pad_string("   Bet lower", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
                
            when COLS * 51 =>
                input_max := 2;
                input := 0;
                state_index := state_index + 1; state(state_index) := READ_MENU;    
                
            when COLS * 51 + 1 =>
                if input = 1 then -- 0 = higher, 1 = lower
                    bet_higher := false;
                else
                    bet_higher := true;
                end if;
                 state(state_index) := GAME_HL_BET;
                fb_index := COLS * 49; -- start of blanking
                state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
            when others =>
            end case;
        ---------------------------------------------
        when GAME_HL_BET =>
            state(state_index) := GAME_HL_BET_2; -- after amount, save & go back to main menu
            input := 0; -- reset
            if money > 1_000_00 then -- can't bet more then you have
                input_max := 1_000_00;
            else
                input_max := money;
            end if;
            state_index := state_index + 1; state(state_index) := READ; -- read = state after write
            fb_index := COLS * 49; -- position question
            msg := pad_string("   Amount? (Max 1 000.00 $) ", msg'LENGTH);
            state_index := state_index + 1; state(state_index) := WRITE;
        ---------------------------------------------
        when GAME_HL_BET_2 =>
            fb_index := index_delta(fb_index); -- by default +1 index
            case fb_index is
            when COLS * 50 =>
                money := money - input;
                bet_money := input;
                rnd := 1 + (to_integer(unsigned(rng_out)) mod 13); -- pick number (1 -> 13)
            when COLS * 50 + 1 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_SECOND_CARD, 14));
                fb_a_dat_in <= ascii_i(rnd, 1);
            when COLS * 50 + 2 =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(HL_SECOND_CARD + 1, 14));
                fb_a_dat_in <= ascii_i(rnd, 0);
            
            when COLS * 50 + 3 =>
                if rnd = card_first then -- 1:1 payout
                    money := money + bet_money;
                    state(state_index) := GAME_HL_0; -- go back to main menu
                    fb_index := COLS * 49; -- start of blanking
                    state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
                end if;    
            when COLS * 50 + 4 =>
                if rnd < card_first then
                    fb_index := COLS * 51 - 1; -- -1 for default +1
                else 
                    fb_index := COLS * 52 - 1; -- -1 for default +1
                end if;
                
            when COLS * 51 => ------------------ RND < FIRST CARD aka LOWER
                if bet_higher then -- you lost
                    state(state_index) := GAME_HL_0; -- go back to main menu
                    fb_index := COLS * 49; -- start of blanking
                    state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
                end if;
            when COLS * 51 + 1 => -- you won, but how much?
                case card_first is
                when 2 => money := money + ((bet_money * 107) / 10); -- *x/10 because no floating point stuff
                when 3 => money := money + ((bet_money * 53) / 10);
                when 4 => money := money + ((bet_money * 35) / 10);
                when 5 => money := money + ((bet_money * 26) / 10);
                when 6 => money := money + ((bet_money * 21) / 10);
                when 7 => money := money + ((bet_money * 17) / 10);
                when 8 => money := money + ((bet_money * 15) / 10);
                when 9 => money := money + ((bet_money * 13) / 10);
                when 10 to 12 => money := money + ((bet_money * 11) / 10);
                end case;
                state(state_index) := GAME_HL_0; -- go back to main menu
                fb_index := COLS * 49; -- start of blanking
                state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
                
                
            when COLS * 52 => ------------------ RND > FIRST CARD aka HIGER
                if not bet_higher then -- you lost
                    state(state_index) := GAME_HL_0; -- go back to main menu
                    fb_index := COLS * 49; -- start of blanking
                    state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
                end if;
            when COLS * 52 + 1 => -- you won, but how much?
                case card_first is
                when 12 => money := money + ((bet_money * 107) / 10);
                when 11 => money := money + ((bet_money * 53) / 10);
                when 10 => money := money + ((bet_money * 35) / 10);
                when 9 => money := money + ((bet_money * 26) / 10);
                when 8 => money := money + ((bet_money * 21) / 10);
                when 7 => money := money + ((bet_money * 17) / 10);
                when 6 => money := money + ((bet_money * 15) / 10);
                when 5 => money := money + ((bet_money * 13) / 10);
                when 2 to 4 => money := money + ((bet_money * 11) / 10);
                end case;
                state(state_index) := GAME_HL_0; -- go back to main menu
                fb_index := COLS * 49; -- start of blanking
                state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
            when others =>
            end case;
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
            
            when 10 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_RND_START, 14));
                fb_a_dat_in <= ascii_i(rnd, 1);
            when 11 =>
                fb_a_addr <= std_logic_vector(to_unsigned(R_RND_START + 1, 14));
                fb_a_dat_in <= ascii_i(rnd, 0);
            
            
            -- Show number of bets placed
            when 20 =>
                fb_a_addr <= std_logic_vector(to_unsigned(COLS*19 + 149, 14));
                fb_a_dat_in <= ascii_i(bets_index, 1);
            when 21 =>
                fb_a_addr <= std_logic_vector(to_unsigned(COLS*19 + 150, 14));
                fb_a_dat_in <= ascii_i(bets_index, 0);
            
            
--            -- ============================================================ PYTHON GENERATED VHDL ============================================================
--                -- This code should generate 25 bets with names: ('Plain', 'Cheval H', 'Cheval V', 'Trans', 'Trans S', 'Carre', 'Colonne', 'Simple')
--                when COLS*21 + COLS*0 + 0 => if bets_index <= 0 then fb_index := COLS*21 + COLS*1 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*0 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*0 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 113, 14)); fb_a_dat_in <= ascii_i(bets(0).money, 5);
--                when COLS*21 + COLS*0 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 115, 14)); fb_a_dat_in <= ascii_i(bets(0).money, 4);
--                when COLS*21 + COLS*0 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 116, 14)); fb_a_dat_in <= ascii_i(bets(0).money, 3);
--                when COLS*21 + COLS*0 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 117, 14)); fb_a_dat_in <= ascii_i(bets(0).money, 2);
--                when COLS*21 + COLS*0 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*0 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 119, 14)); fb_a_dat_in <= ascii_i(bets(0).money, 1);
--                when COLS*21 + COLS*0 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 120, 14)); fb_a_dat_in <= ascii_i(bets(0).money, 0);
--                when COLS*21 + COLS*0 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 122, 14));
--                    case bets(0).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 123, 14));
--                    case bets(0).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 124, 14));
--                    case bets(0).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 125, 14));
--                    case bets(0).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 126, 14));
--                    case bets(0).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 127, 14));
--                    case bets(0).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 128, 14));
--                    case bets(0).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 129, 14));
--                    case bets(0).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*0 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 131, 14)); fb_a_dat_in <= ascii_i(bets(0).number, 1);
--                when COLS*21 + COLS*0 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*0 + 132, 14)); fb_a_dat_in <= ascii_i(bets(0).number, 0);
--                when COLS*21 + COLS*1 + 0 => if bets_index <= 1 then fb_index := COLS*21 + COLS*2 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*1 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*1 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 113, 14)); fb_a_dat_in <= ascii_i(bets(1).money, 5);
--                when COLS*21 + COLS*1 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 115, 14)); fb_a_dat_in <= ascii_i(bets(1).money, 4);
--                when COLS*21 + COLS*1 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 116, 14)); fb_a_dat_in <= ascii_i(bets(1).money, 3);
--                when COLS*21 + COLS*1 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 117, 14)); fb_a_dat_in <= ascii_i(bets(1).money, 2);
--                when COLS*21 + COLS*1 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*1 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 119, 14)); fb_a_dat_in <= ascii_i(bets(1).money, 1);
--                when COLS*21 + COLS*1 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 120, 14)); fb_a_dat_in <= ascii_i(bets(1).money, 0);
--                when COLS*21 + COLS*1 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 122, 14));
--                    case bets(1).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 123, 14));
--                    case bets(1).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 124, 14));
--                    case bets(1).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 125, 14));
--                    case bets(1).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 126, 14));
--                    case bets(1).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 127, 14));
--                    case bets(1).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 128, 14));
--                    case bets(1).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 129, 14));
--                    case bets(1).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*1 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 131, 14)); fb_a_dat_in <= ascii_i(bets(1).number, 1);
--                when COLS*21 + COLS*1 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*1 + 132, 14)); fb_a_dat_in <= ascii_i(bets(1).number, 0);
--                when COLS*21 + COLS*2 + 0 => if bets_index <= 2 then fb_index := COLS*21 + COLS*3 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*2 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*2 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 113, 14)); fb_a_dat_in <= ascii_i(bets(2).money, 5);
--                when COLS*21 + COLS*2 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 115, 14)); fb_a_dat_in <= ascii_i(bets(2).money, 4);
--                when COLS*21 + COLS*2 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 116, 14)); fb_a_dat_in <= ascii_i(bets(2).money, 3);
--                when COLS*21 + COLS*2 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 117, 14)); fb_a_dat_in <= ascii_i(bets(2).money, 2);
--                when COLS*21 + COLS*2 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*2 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 119, 14)); fb_a_dat_in <= ascii_i(bets(2).money, 1);
--                when COLS*21 + COLS*2 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 120, 14)); fb_a_dat_in <= ascii_i(bets(2).money, 0);
--                when COLS*21 + COLS*2 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 122, 14));
--                    case bets(2).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 123, 14));
--                    case bets(2).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 124, 14));
--                    case bets(2).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 125, 14));
--                    case bets(2).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 126, 14));
--                    case bets(2).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 127, 14));
--                    case bets(2).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 128, 14));
--                    case bets(2).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 129, 14));
--                    case bets(2).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*2 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 131, 14)); fb_a_dat_in <= ascii_i(bets(2).number, 1);
--                when COLS*21 + COLS*2 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*2 + 132, 14)); fb_a_dat_in <= ascii_i(bets(2).number, 0);
--                when COLS*21 + COLS*3 + 0 => if bets_index <= 3 then fb_index := COLS*21 + COLS*4 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*3 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*3 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 113, 14)); fb_a_dat_in <= ascii_i(bets(3).money, 5);
--                when COLS*21 + COLS*3 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 115, 14)); fb_a_dat_in <= ascii_i(bets(3).money, 4);
--                when COLS*21 + COLS*3 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 116, 14)); fb_a_dat_in <= ascii_i(bets(3).money, 3);
--                when COLS*21 + COLS*3 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 117, 14)); fb_a_dat_in <= ascii_i(bets(3).money, 2);
--                when COLS*21 + COLS*3 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*3 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 119, 14)); fb_a_dat_in <= ascii_i(bets(3).money, 1);
--                when COLS*21 + COLS*3 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 120, 14)); fb_a_dat_in <= ascii_i(bets(3).money, 0);
--                when COLS*21 + COLS*3 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 122, 14));
--                    case bets(3).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 123, 14));
--                    case bets(3).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 124, 14));
--                    case bets(3).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 125, 14));
--                    case bets(3).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 126, 14));
--                    case bets(3).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 127, 14));
--                    case bets(3).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 128, 14));
--                    case bets(3).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 129, 14));
--                    case bets(3).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*3 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 131, 14)); fb_a_dat_in <= ascii_i(bets(3).number, 1);
--                when COLS*21 + COLS*3 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*3 + 132, 14)); fb_a_dat_in <= ascii_i(bets(3).number, 0);
--                when COLS*21 + COLS*4 + 0 => if bets_index <= 4 then fb_index := COLS*21 + COLS*5 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*4 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*4 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 113, 14)); fb_a_dat_in <= ascii_i(bets(4).money, 5);
--                when COLS*21 + COLS*4 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 115, 14)); fb_a_dat_in <= ascii_i(bets(4).money, 4);
--                when COLS*21 + COLS*4 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 116, 14)); fb_a_dat_in <= ascii_i(bets(4).money, 3);
--                when COLS*21 + COLS*4 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 117, 14)); fb_a_dat_in <= ascii_i(bets(4).money, 2);
--                when COLS*21 + COLS*4 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*4 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 119, 14)); fb_a_dat_in <= ascii_i(bets(4).money, 1);
--                when COLS*21 + COLS*4 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 120, 14)); fb_a_dat_in <= ascii_i(bets(4).money, 0);
--                when COLS*21 + COLS*4 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 122, 14));
--                    case bets(4).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 123, 14));
--                    case bets(4).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 124, 14));
--                    case bets(4).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 125, 14));
--                    case bets(4).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 126, 14));
--                    case bets(4).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 127, 14));
--                    case bets(4).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 128, 14));
--                    case bets(4).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 129, 14));
--                    case bets(4).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*4 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 131, 14)); fb_a_dat_in <= ascii_i(bets(4).number, 1);
--                when COLS*21 + COLS*4 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*4 + 132, 14)); fb_a_dat_in <= ascii_i(bets(4).number, 0);
--                when COLS*21 + COLS*5 + 0 => if bets_index <= 5 then fb_index := COLS*21 + COLS*6 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*5 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*5 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 113, 14)); fb_a_dat_in <= ascii_i(bets(5).money, 5);
--                when COLS*21 + COLS*5 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 115, 14)); fb_a_dat_in <= ascii_i(bets(5).money, 4);
--                when COLS*21 + COLS*5 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 116, 14)); fb_a_dat_in <= ascii_i(bets(5).money, 3);
--                when COLS*21 + COLS*5 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 117, 14)); fb_a_dat_in <= ascii_i(bets(5).money, 2);
--                when COLS*21 + COLS*5 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*5 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 119, 14)); fb_a_dat_in <= ascii_i(bets(5).money, 1);
--                when COLS*21 + COLS*5 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 120, 14)); fb_a_dat_in <= ascii_i(bets(5).money, 0);
--                when COLS*21 + COLS*5 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 122, 14));
--                    case bets(5).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 123, 14));
--                    case bets(5).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 124, 14));
--                    case bets(5).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 125, 14));
--                    case bets(5).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 126, 14));
--                    case bets(5).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 127, 14));
--                    case bets(5).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 128, 14));
--                    case bets(5).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 129, 14));
--                    case bets(5).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*5 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 131, 14)); fb_a_dat_in <= ascii_i(bets(5).number, 1);
--                when COLS*21 + COLS*5 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*5 + 132, 14)); fb_a_dat_in <= ascii_i(bets(5).number, 0);
--                when COLS*21 + COLS*6 + 0 => if bets_index <= 6 then fb_index := COLS*21 + COLS*7 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*6 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*6 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 113, 14)); fb_a_dat_in <= ascii_i(bets(6).money, 5);
--                when COLS*21 + COLS*6 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 115, 14)); fb_a_dat_in <= ascii_i(bets(6).money, 4);
--                when COLS*21 + COLS*6 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 116, 14)); fb_a_dat_in <= ascii_i(bets(6).money, 3);
--                when COLS*21 + COLS*6 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 117, 14)); fb_a_dat_in <= ascii_i(bets(6).money, 2);
--                when COLS*21 + COLS*6 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*6 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 119, 14)); fb_a_dat_in <= ascii_i(bets(6).money, 1);
--                when COLS*21 + COLS*6 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 120, 14)); fb_a_dat_in <= ascii_i(bets(6).money, 0);
--                when COLS*21 + COLS*6 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 122, 14));
--                    case bets(6).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 123, 14));
--                    case bets(6).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 124, 14));
--                    case bets(6).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 125, 14));
--                    case bets(6).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 126, 14));
--                    case bets(6).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 127, 14));
--                    case bets(6).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 128, 14));
--                    case bets(6).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 129, 14));
--                    case bets(6).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*6 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 131, 14)); fb_a_dat_in <= ascii_i(bets(6).number, 1);
--                when COLS*21 + COLS*6 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*6 + 132, 14)); fb_a_dat_in <= ascii_i(bets(6).number, 0);
--                when COLS*21 + COLS*7 + 0 => if bets_index <= 7 then fb_index := COLS*21 + COLS*8 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*7 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*7 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 113, 14)); fb_a_dat_in <= ascii_i(bets(7).money, 5);
--                when COLS*21 + COLS*7 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 115, 14)); fb_a_dat_in <= ascii_i(bets(7).money, 4);
--                when COLS*21 + COLS*7 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 116, 14)); fb_a_dat_in <= ascii_i(bets(7).money, 3);
--                when COLS*21 + COLS*7 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 117, 14)); fb_a_dat_in <= ascii_i(bets(7).money, 2);
--                when COLS*21 + COLS*7 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*7 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 119, 14)); fb_a_dat_in <= ascii_i(bets(7).money, 1);
--                when COLS*21 + COLS*7 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 120, 14)); fb_a_dat_in <= ascii_i(bets(7).money, 0);
--                when COLS*21 + COLS*7 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 122, 14));
--                    case bets(7).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 123, 14));
--                    case bets(7).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 124, 14));
--                    case bets(7).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 125, 14));
--                    case bets(7).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 126, 14));
--                    case bets(7).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 127, 14));
--                    case bets(7).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 128, 14));
--                    case bets(7).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 129, 14));
--                    case bets(7).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*7 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 131, 14)); fb_a_dat_in <= ascii_i(bets(7).number, 1);
--                when COLS*21 + COLS*7 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*7 + 132, 14)); fb_a_dat_in <= ascii_i(bets(7).number, 0);
--                when COLS*21 + COLS*8 + 0 => if bets_index <= 8 then fb_index := COLS*21 + COLS*9 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*8 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*8 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 113, 14)); fb_a_dat_in <= ascii_i(bets(8).money, 5);
--                when COLS*21 + COLS*8 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 115, 14)); fb_a_dat_in <= ascii_i(bets(8).money, 4);
--                when COLS*21 + COLS*8 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 116, 14)); fb_a_dat_in <= ascii_i(bets(8).money, 3);
--                when COLS*21 + COLS*8 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 117, 14)); fb_a_dat_in <= ascii_i(bets(8).money, 2);
--                when COLS*21 + COLS*8 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*8 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 119, 14)); fb_a_dat_in <= ascii_i(bets(8).money, 1);
--                when COLS*21 + COLS*8 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 120, 14)); fb_a_dat_in <= ascii_i(bets(8).money, 0);
--                when COLS*21 + COLS*8 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 122, 14));
--                    case bets(8).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 123, 14));
--                    case bets(8).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 124, 14));
--                    case bets(8).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 125, 14));
--                    case bets(8).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 126, 14));
--                    case bets(8).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 127, 14));
--                    case bets(8).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 128, 14));
--                    case bets(8).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 129, 14));
--                    case bets(8).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*8 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 131, 14)); fb_a_dat_in <= ascii_i(bets(8).number, 1);
--                when COLS*21 + COLS*8 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*8 + 132, 14)); fb_a_dat_in <= ascii_i(bets(8).number, 0);
--                when COLS*21 + COLS*9 + 0 => if bets_index <= 9 then fb_index := COLS*21 + COLS*10 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*9 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*9 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 113, 14)); fb_a_dat_in <= ascii_i(bets(9).money, 5);
--                when COLS*21 + COLS*9 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 115, 14)); fb_a_dat_in <= ascii_i(bets(9).money, 4);
--                when COLS*21 + COLS*9 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 116, 14)); fb_a_dat_in <= ascii_i(bets(9).money, 3);
--                when COLS*21 + COLS*9 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 117, 14)); fb_a_dat_in <= ascii_i(bets(9).money, 2);
--                when COLS*21 + COLS*9 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*9 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 119, 14)); fb_a_dat_in <= ascii_i(bets(9).money, 1);
--                when COLS*21 + COLS*9 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 120, 14)); fb_a_dat_in <= ascii_i(bets(9).money, 0);
--                when COLS*21 + COLS*9 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 122, 14));
--                    case bets(9).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 123, 14));
--                    case bets(9).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 124, 14));
--                    case bets(9).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 125, 14));
--                    case bets(9).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 126, 14));
--                    case bets(9).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 127, 14));
--                    case bets(9).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 128, 14));
--                    case bets(9).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 129, 14));
--                    case bets(9).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*9 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 131, 14)); fb_a_dat_in <= ascii_i(bets(9).number, 1);
--                when COLS*21 + COLS*9 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*9 + 132, 14)); fb_a_dat_in <= ascii_i(bets(9).number, 0);
--                when COLS*21 + COLS*10 + 0 => if bets_index <= 10 then fb_index := COLS*21 + COLS*11 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*10 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*10 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 113, 14)); fb_a_dat_in <= ascii_i(bets(10).money, 5);
--                when COLS*21 + COLS*10 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 115, 14)); fb_a_dat_in <= ascii_i(bets(10).money, 4);
--                when COLS*21 + COLS*10 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 116, 14)); fb_a_dat_in <= ascii_i(bets(10).money, 3);
--                when COLS*21 + COLS*10 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 117, 14)); fb_a_dat_in <= ascii_i(bets(10).money, 2);
--                when COLS*21 + COLS*10 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*10 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 119, 14)); fb_a_dat_in <= ascii_i(bets(10).money, 1);
--                when COLS*21 + COLS*10 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 120, 14)); fb_a_dat_in <= ascii_i(bets(10).money, 0);
--                when COLS*21 + COLS*10 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 122, 14));
--                    case bets(10).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 123, 14));
--                    case bets(10).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 124, 14));
--                    case bets(10).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 125, 14));
--                    case bets(10).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 126, 14));
--                    case bets(10).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 127, 14));
--                    case bets(10).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 128, 14));
--                    case bets(10).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 129, 14));
--                    case bets(10).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*10 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 131, 14)); fb_a_dat_in <= ascii_i(bets(10).number, 1);
--                when COLS*21 + COLS*10 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*10 + 132, 14)); fb_a_dat_in <= ascii_i(bets(10).number, 0);
--                when COLS*21 + COLS*11 + 0 => if bets_index <= 11 then fb_index := COLS*21 + COLS*12 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*11 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*11 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 113, 14)); fb_a_dat_in <= ascii_i(bets(11).money, 5);
--                when COLS*21 + COLS*11 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 115, 14)); fb_a_dat_in <= ascii_i(bets(11).money, 4);
--                when COLS*21 + COLS*11 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 116, 14)); fb_a_dat_in <= ascii_i(bets(11).money, 3);
--                when COLS*21 + COLS*11 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 117, 14)); fb_a_dat_in <= ascii_i(bets(11).money, 2);
--                when COLS*21 + COLS*11 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*11 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 119, 14)); fb_a_dat_in <= ascii_i(bets(11).money, 1);
--                when COLS*21 + COLS*11 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 120, 14)); fb_a_dat_in <= ascii_i(bets(11).money, 0);
--                when COLS*21 + COLS*11 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 122, 14));
--                    case bets(11).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 123, 14));
--                    case bets(11).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 124, 14));
--                    case bets(11).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 125, 14));
--                    case bets(11).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 126, 14));
--                    case bets(11).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 127, 14));
--                    case bets(11).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 128, 14));
--                    case bets(11).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 129, 14));
--                    case bets(11).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*11 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 131, 14)); fb_a_dat_in <= ascii_i(bets(11).number, 1);
--                when COLS*21 + COLS*11 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*11 + 132, 14)); fb_a_dat_in <= ascii_i(bets(11).number, 0);
--                when COLS*21 + COLS*12 + 0 => if bets_index <= 12 then fb_index := COLS*21 + COLS*13 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*12 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*12 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 113, 14)); fb_a_dat_in <= ascii_i(bets(12).money, 5);
--                when COLS*21 + COLS*12 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 115, 14)); fb_a_dat_in <= ascii_i(bets(12).money, 4);
--                when COLS*21 + COLS*12 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 116, 14)); fb_a_dat_in <= ascii_i(bets(12).money, 3);
--                when COLS*21 + COLS*12 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 117, 14)); fb_a_dat_in <= ascii_i(bets(12).money, 2);
--                when COLS*21 + COLS*12 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*12 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 119, 14)); fb_a_dat_in <= ascii_i(bets(12).money, 1);
--                when COLS*21 + COLS*12 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 120, 14)); fb_a_dat_in <= ascii_i(bets(12).money, 0);
--                when COLS*21 + COLS*12 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 122, 14));
--                    case bets(12).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 123, 14));
--                    case bets(12).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 124, 14));
--                    case bets(12).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 125, 14));
--                    case bets(12).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 126, 14));
--                    case bets(12).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 127, 14));
--                    case bets(12).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 128, 14));
--                    case bets(12).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 129, 14));
--                    case bets(12).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*12 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 131, 14)); fb_a_dat_in <= ascii_i(bets(12).number, 1);
--                when COLS*21 + COLS*12 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*12 + 132, 14)); fb_a_dat_in <= ascii_i(bets(12).number, 0);
--                when COLS*21 + COLS*13 + 0 => if bets_index <= 13 then fb_index := COLS*21 + COLS*14 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*13 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*13 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 113, 14)); fb_a_dat_in <= ascii_i(bets(13).money, 5);
--                when COLS*21 + COLS*13 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 115, 14)); fb_a_dat_in <= ascii_i(bets(13).money, 4);
--                when COLS*21 + COLS*13 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 116, 14)); fb_a_dat_in <= ascii_i(bets(13).money, 3);
--                when COLS*21 + COLS*13 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 117, 14)); fb_a_dat_in <= ascii_i(bets(13).money, 2);
--                when COLS*21 + COLS*13 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*13 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 119, 14)); fb_a_dat_in <= ascii_i(bets(13).money, 1);
--                when COLS*21 + COLS*13 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 120, 14)); fb_a_dat_in <= ascii_i(bets(13).money, 0);
--                when COLS*21 + COLS*13 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 122, 14));
--                    case bets(13).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 123, 14));
--                    case bets(13).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 124, 14));
--                    case bets(13).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 125, 14));
--                    case bets(13).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 126, 14));
--                    case bets(13).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 127, 14));
--                    case bets(13).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 128, 14));
--                    case bets(13).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 129, 14));
--                    case bets(13).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*13 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 131, 14)); fb_a_dat_in <= ascii_i(bets(13).number, 1);
--                when COLS*21 + COLS*13 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*13 + 132, 14)); fb_a_dat_in <= ascii_i(bets(13).number, 0);
--                when COLS*21 + COLS*14 + 0 => if bets_index <= 14 then fb_index := COLS*21 + COLS*15 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*14 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*14 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 113, 14)); fb_a_dat_in <= ascii_i(bets(14).money, 5);
--                when COLS*21 + COLS*14 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 115, 14)); fb_a_dat_in <= ascii_i(bets(14).money, 4);
--                when COLS*21 + COLS*14 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 116, 14)); fb_a_dat_in <= ascii_i(bets(14).money, 3);
--                when COLS*21 + COLS*14 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 117, 14)); fb_a_dat_in <= ascii_i(bets(14).money, 2);
--                when COLS*21 + COLS*14 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*14 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 119, 14)); fb_a_dat_in <= ascii_i(bets(14).money, 1);
--                when COLS*21 + COLS*14 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 120, 14)); fb_a_dat_in <= ascii_i(bets(14).money, 0);
--                when COLS*21 + COLS*14 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 122, 14));
--                    case bets(14).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 123, 14));
--                    case bets(14).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 124, 14));
--                    case bets(14).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 125, 14));
--                    case bets(14).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 126, 14));
--                    case bets(14).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 127, 14));
--                    case bets(14).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 128, 14));
--                    case bets(14).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 129, 14));
--                    case bets(14).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*14 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 131, 14)); fb_a_dat_in <= ascii_i(bets(14).number, 1);
--                when COLS*21 + COLS*14 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*14 + 132, 14)); fb_a_dat_in <= ascii_i(bets(14).number, 0);
--                when COLS*21 + COLS*15 + 0 => if bets_index <= 15 then fb_index := COLS*21 + COLS*16 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*15 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*15 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 113, 14)); fb_a_dat_in <= ascii_i(bets(15).money, 5);
--                when COLS*21 + COLS*15 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 115, 14)); fb_a_dat_in <= ascii_i(bets(15).money, 4);
--                when COLS*21 + COLS*15 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 116, 14)); fb_a_dat_in <= ascii_i(bets(15).money, 3);
--                when COLS*21 + COLS*15 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 117, 14)); fb_a_dat_in <= ascii_i(bets(15).money, 2);
--                when COLS*21 + COLS*15 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*15 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 119, 14)); fb_a_dat_in <= ascii_i(bets(15).money, 1);
--                when COLS*21 + COLS*15 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 120, 14)); fb_a_dat_in <= ascii_i(bets(15).money, 0);
--                when COLS*21 + COLS*15 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 122, 14));
--                    case bets(15).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 123, 14));
--                    case bets(15).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 124, 14));
--                    case bets(15).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 125, 14));
--                    case bets(15).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 126, 14));
--                    case bets(15).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 127, 14));
--                    case bets(15).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 128, 14));
--                    case bets(15).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 129, 14));
--                    case bets(15).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*15 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 131, 14)); fb_a_dat_in <= ascii_i(bets(15).number, 1);
--                when COLS*21 + COLS*15 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*15 + 132, 14)); fb_a_dat_in <= ascii_i(bets(15).number, 0);
--                when COLS*21 + COLS*16 + 0 => if bets_index <= 16 then fb_index := COLS*21 + COLS*17 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*16 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*16 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 113, 14)); fb_a_dat_in <= ascii_i(bets(16).money, 5);
--                when COLS*21 + COLS*16 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 115, 14)); fb_a_dat_in <= ascii_i(bets(16).money, 4);
--                when COLS*21 + COLS*16 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 116, 14)); fb_a_dat_in <= ascii_i(bets(16).money, 3);
--                when COLS*21 + COLS*16 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 117, 14)); fb_a_dat_in <= ascii_i(bets(16).money, 2);
--                when COLS*21 + COLS*16 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*16 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 119, 14)); fb_a_dat_in <= ascii_i(bets(16).money, 1);
--                when COLS*21 + COLS*16 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 120, 14)); fb_a_dat_in <= ascii_i(bets(16).money, 0);
--                when COLS*21 + COLS*16 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 122, 14));
--                    case bets(16).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 123, 14));
--                    case bets(16).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 124, 14));
--                    case bets(16).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 125, 14));
--                    case bets(16).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 126, 14));
--                    case bets(16).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 127, 14));
--                    case bets(16).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 128, 14));
--                    case bets(16).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 129, 14));
--                    case bets(16).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*16 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 131, 14)); fb_a_dat_in <= ascii_i(bets(16).number, 1);
--                when COLS*21 + COLS*16 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*16 + 132, 14)); fb_a_dat_in <= ascii_i(bets(16).number, 0);
--                when COLS*21 + COLS*17 + 0 => if bets_index <= 17 then fb_index := COLS*21 + COLS*18 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*17 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*17 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 113, 14)); fb_a_dat_in <= ascii_i(bets(17).money, 5);
--                when COLS*21 + COLS*17 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 115, 14)); fb_a_dat_in <= ascii_i(bets(17).money, 4);
--                when COLS*21 + COLS*17 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 116, 14)); fb_a_dat_in <= ascii_i(bets(17).money, 3);
--                when COLS*21 + COLS*17 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 117, 14)); fb_a_dat_in <= ascii_i(bets(17).money, 2);
--                when COLS*21 + COLS*17 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*17 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 119, 14)); fb_a_dat_in <= ascii_i(bets(17).money, 1);
--                when COLS*21 + COLS*17 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 120, 14)); fb_a_dat_in <= ascii_i(bets(17).money, 0);
--                when COLS*21 + COLS*17 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 122, 14));
--                    case bets(17).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 123, 14));
--                    case bets(17).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 124, 14));
--                    case bets(17).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 125, 14));
--                    case bets(17).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 126, 14));
--                    case bets(17).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 127, 14));
--                    case bets(17).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 128, 14));
--                    case bets(17).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 129, 14));
--                    case bets(17).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*17 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 131, 14)); fb_a_dat_in <= ascii_i(bets(17).number, 1);
--                when COLS*21 + COLS*17 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*17 + 132, 14)); fb_a_dat_in <= ascii_i(bets(17).number, 0);
--                when COLS*21 + COLS*18 + 0 => if bets_index <= 18 then fb_index := COLS*21 + COLS*19 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*18 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*18 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 113, 14)); fb_a_dat_in <= ascii_i(bets(18).money, 5);
--                when COLS*21 + COLS*18 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 115, 14)); fb_a_dat_in <= ascii_i(bets(18).money, 4);
--                when COLS*21 + COLS*18 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 116, 14)); fb_a_dat_in <= ascii_i(bets(18).money, 3);
--                when COLS*21 + COLS*18 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 117, 14)); fb_a_dat_in <= ascii_i(bets(18).money, 2);
--                when COLS*21 + COLS*18 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*18 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 119, 14)); fb_a_dat_in <= ascii_i(bets(18).money, 1);
--                when COLS*21 + COLS*18 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 120, 14)); fb_a_dat_in <= ascii_i(bets(18).money, 0);
--                when COLS*21 + COLS*18 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 122, 14));
--                    case bets(18).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 123, 14));
--                    case bets(18).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 124, 14));
--                    case bets(18).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 125, 14));
--                    case bets(18).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 126, 14));
--                    case bets(18).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 127, 14));
--                    case bets(18).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 128, 14));
--                    case bets(18).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 129, 14));
--                    case bets(18).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*18 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 131, 14)); fb_a_dat_in <= ascii_i(bets(18).number, 1);
--                when COLS*21 + COLS*18 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*18 + 132, 14)); fb_a_dat_in <= ascii_i(bets(18).number, 0);
--                when COLS*21 + COLS*19 + 0 => if bets_index <= 19 then fb_index := COLS*21 + COLS*20 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*19 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*19 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 113, 14)); fb_a_dat_in <= ascii_i(bets(19).money, 5);
--                when COLS*21 + COLS*19 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 115, 14)); fb_a_dat_in <= ascii_i(bets(19).money, 4);
--                when COLS*21 + COLS*19 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 116, 14)); fb_a_dat_in <= ascii_i(bets(19).money, 3);
--                when COLS*21 + COLS*19 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 117, 14)); fb_a_dat_in <= ascii_i(bets(19).money, 2);
--                when COLS*21 + COLS*19 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*19 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 119, 14)); fb_a_dat_in <= ascii_i(bets(19).money, 1);
--                when COLS*21 + COLS*19 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 120, 14)); fb_a_dat_in <= ascii_i(bets(19).money, 0);
--                when COLS*21 + COLS*19 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 122, 14));
--                    case bets(19).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 123, 14));
--                    case bets(19).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 124, 14));
--                    case bets(19).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 125, 14));
--                    case bets(19).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 126, 14));
--                    case bets(19).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 127, 14));
--                    case bets(19).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 128, 14));
--                    case bets(19).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 129, 14));
--                    case bets(19).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*19 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 131, 14)); fb_a_dat_in <= ascii_i(bets(19).number, 1);
--                when COLS*21 + COLS*19 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*19 + 132, 14)); fb_a_dat_in <= ascii_i(bets(19).number, 0);
--                when COLS*21 + COLS*20 + 0 => if bets_index <= 20 then fb_index := COLS*21 + COLS*21 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*20 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*20 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 113, 14)); fb_a_dat_in <= ascii_i(bets(20).money, 5);
--                when COLS*21 + COLS*20 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 115, 14)); fb_a_dat_in <= ascii_i(bets(20).money, 4);
--                when COLS*21 + COLS*20 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 116, 14)); fb_a_dat_in <= ascii_i(bets(20).money, 3);
--                when COLS*21 + COLS*20 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 117, 14)); fb_a_dat_in <= ascii_i(bets(20).money, 2);
--                when COLS*21 + COLS*20 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*20 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 119, 14)); fb_a_dat_in <= ascii_i(bets(20).money, 1);
--                when COLS*21 + COLS*20 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 120, 14)); fb_a_dat_in <= ascii_i(bets(20).money, 0);
--                when COLS*21 + COLS*20 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 122, 14));
--                    case bets(20).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 123, 14));
--                    case bets(20).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 124, 14));
--                    case bets(20).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 125, 14));
--                    case bets(20).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 126, 14));
--                    case bets(20).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 127, 14));
--                    case bets(20).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 128, 14));
--                    case bets(20).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 129, 14));
--                    case bets(20).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*20 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 131, 14)); fb_a_dat_in <= ascii_i(bets(20).number, 1);
--                when COLS*21 + COLS*20 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*20 + 132, 14)); fb_a_dat_in <= ascii_i(bets(20).number, 0);
--                when COLS*21 + COLS*21 + 0 => if bets_index <= 21 then fb_index := COLS*21 + COLS*22 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*21 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*21 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 113, 14)); fb_a_dat_in <= ascii_i(bets(21).money, 5);
--                when COLS*21 + COLS*21 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 115, 14)); fb_a_dat_in <= ascii_i(bets(21).money, 4);
--                when COLS*21 + COLS*21 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 116, 14)); fb_a_dat_in <= ascii_i(bets(21).money, 3);
--                when COLS*21 + COLS*21 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 117, 14)); fb_a_dat_in <= ascii_i(bets(21).money, 2);
--                when COLS*21 + COLS*21 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*21 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 119, 14)); fb_a_dat_in <= ascii_i(bets(21).money, 1);
--                when COLS*21 + COLS*21 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 120, 14)); fb_a_dat_in <= ascii_i(bets(21).money, 0);
--                when COLS*21 + COLS*21 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 122, 14));
--                    case bets(21).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 123, 14));
--                    case bets(21).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 124, 14));
--                    case bets(21).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 125, 14));
--                    case bets(21).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 126, 14));
--                    case bets(21).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 127, 14));
--                    case bets(21).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 128, 14));
--                    case bets(21).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 129, 14));
--                    case bets(21).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*21 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 131, 14)); fb_a_dat_in <= ascii_i(bets(21).number, 1);
--                when COLS*21 + COLS*21 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*21 + 132, 14)); fb_a_dat_in <= ascii_i(bets(21).number, 0);
--                when COLS*21 + COLS*22 + 0 => if bets_index <= 22 then fb_index := COLS*21 + COLS*23 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*22 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*22 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 113, 14)); fb_a_dat_in <= ascii_i(bets(22).money, 5);
--                when COLS*21 + COLS*22 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 115, 14)); fb_a_dat_in <= ascii_i(bets(22).money, 4);
--                when COLS*21 + COLS*22 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 116, 14)); fb_a_dat_in <= ascii_i(bets(22).money, 3);
--                when COLS*21 + COLS*22 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 117, 14)); fb_a_dat_in <= ascii_i(bets(22).money, 2);
--                when COLS*21 + COLS*22 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*22 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 119, 14)); fb_a_dat_in <= ascii_i(bets(22).money, 1);
--                when COLS*21 + COLS*22 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 120, 14)); fb_a_dat_in <= ascii_i(bets(22).money, 0);
--                when COLS*21 + COLS*22 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 122, 14));
--                    case bets(22).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 123, 14));
--                    case bets(22).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 124, 14));
--                    case bets(22).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 125, 14));
--                    case bets(22).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 126, 14));
--                    case bets(22).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 127, 14));
--                    case bets(22).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 128, 14));
--                    case bets(22).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 129, 14));
--                    case bets(22).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*22 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 131, 14)); fb_a_dat_in <= ascii_i(bets(22).number, 1);
--                when COLS*21 + COLS*22 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*22 + 132, 14)); fb_a_dat_in <= ascii_i(bets(22).number, 0);
--                when COLS*21 + COLS*23 + 0 => if bets_index <= 23 then fb_index := COLS*21 + COLS*24 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*23 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*23 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 113, 14)); fb_a_dat_in <= ascii_i(bets(23).money, 5);
--                when COLS*21 + COLS*23 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 115, 14)); fb_a_dat_in <= ascii_i(bets(23).money, 4);
--                when COLS*21 + COLS*23 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 116, 14)); fb_a_dat_in <= ascii_i(bets(23).money, 3);
--                when COLS*21 + COLS*23 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 117, 14)); fb_a_dat_in <= ascii_i(bets(23).money, 2);
--                when COLS*21 + COLS*23 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*23 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 119, 14)); fb_a_dat_in <= ascii_i(bets(23).money, 1);
--                when COLS*21 + COLS*23 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 120, 14)); fb_a_dat_in <= ascii_i(bets(23).money, 0);
--                when COLS*21 + COLS*23 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 122, 14));
--                    case bets(23).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 123, 14));
--                    case bets(23).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 124, 14));
--                    case bets(23).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 125, 14));
--                    case bets(23).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 126, 14));
--                    case bets(23).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 127, 14));
--                    case bets(23).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 128, 14));
--                    case bets(23).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 129, 14));
--                    case bets(23).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*23 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 131, 14)); fb_a_dat_in <= ascii_i(bets(23).number, 1);
--                when COLS*21 + COLS*23 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*23 + 132, 14)); fb_a_dat_in <= ascii_i(bets(23).number, 0);
--                when COLS*21 + COLS*24 + 0 => if bets_index <= 24 then fb_index := COLS*21 + COLS*25 - 1; end if;-- skip this row 
--                when COLS*21 + COLS*24 + 1 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 111, 14)); fb_a_dat_in <= x"24"; -- $
--                when COLS*21 + COLS*24 + 2 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 113, 14)); fb_a_dat_in <= ascii_i(bets(24).money, 5);
--                when COLS*21 + COLS*24 + 3 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 115, 14)); fb_a_dat_in <= ascii_i(bets(24).money, 4);
--                when COLS*21 + COLS*24 + 4 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 116, 14)); fb_a_dat_in <= ascii_i(bets(24).money, 3);
--                when COLS*21 + COLS*24 + 5 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 117, 14)); fb_a_dat_in <= ascii_i(bets(24).money, 2);
--                when COLS*21 + COLS*24 + 6 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 118, 14)); fb_a_dat_in <= x"2e"; -- .
--                when COLS*21 + COLS*24 + 7 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 119, 14)); fb_a_dat_in <= ascii_i(bets(24).money, 1);
--                when COLS*21 + COLS*24 + 8 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 120, 14)); fb_a_dat_in <= ascii_i(bets(24).money, 0);
--                when COLS*21 + COLS*24 + 9 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 122, 14));
--                    case bets(24).kind is
--                        when 1 => fb_a_dat_in <= x"50"; -- P
--                        when 2 => fb_a_dat_in <= x"43"; -- C
--                        when 3 => fb_a_dat_in <= x"43"; -- C
--                        when 4 => fb_a_dat_in <= x"54"; -- T
--                        when 5 => fb_a_dat_in <= x"54"; -- T
--                        when 6 => fb_a_dat_in <= x"43"; -- C
--                        when 7 => fb_a_dat_in <= x"43"; -- C
--                        when 8 => fb_a_dat_in <= x"53"; -- S
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 10 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 123, 14));
--                    case bets(24).kind is
--                        when 1 => fb_a_dat_in <= x"6c"; -- l
--                        when 2 => fb_a_dat_in <= x"68"; -- h
--                        when 3 => fb_a_dat_in <= x"68"; -- h
--                        when 4 => fb_a_dat_in <= x"72"; -- r
--                        when 5 => fb_a_dat_in <= x"72"; -- r
--                        when 6 => fb_a_dat_in <= x"61"; -- a
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"69"; -- i
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 11 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 124, 14));
--                    case bets(24).kind is
--                        when 1 => fb_a_dat_in <= x"61"; -- a
--                        when 2 => fb_a_dat_in <= x"65"; -- e
--                        when 3 => fb_a_dat_in <= x"65"; -- e
--                        when 4 => fb_a_dat_in <= x"61"; -- a
--                        when 5 => fb_a_dat_in <= x"61"; -- a
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6c"; -- l
--                        when 8 => fb_a_dat_in <= x"6d"; -- m
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 12 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 125, 14));
--                    case bets(24).kind is
--                        when 1 => fb_a_dat_in <= x"69"; -- i
--                        when 2 => fb_a_dat_in <= x"76"; -- v
--                        when 3 => fb_a_dat_in <= x"76"; -- v
--                        when 4 => fb_a_dat_in <= x"6e"; -- n
--                        when 5 => fb_a_dat_in <= x"6e"; -- n
--                        when 6 => fb_a_dat_in <= x"72"; -- r
--                        when 7 => fb_a_dat_in <= x"6f"; -- o
--                        when 8 => fb_a_dat_in <= x"70"; -- p
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 13 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 126, 14));
--                    case bets(24).kind is
--                        when 1 => fb_a_dat_in <= x"6e"; -- n
--                        when 2 => fb_a_dat_in <= x"61"; -- a
--                        when 3 => fb_a_dat_in <= x"61"; -- a
--                        when 4 => fb_a_dat_in <= x"73"; -- s
--                        when 5 => fb_a_dat_in <= x"73"; -- s
--                        when 6 => fb_a_dat_in <= x"65"; -- e
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"6c"; -- l
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 14 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 127, 14));
--                    case bets(24).kind is
--                        when 2 => fb_a_dat_in <= x"6c"; -- l
--                        when 3 => fb_a_dat_in <= x"6c"; -- l
--                        when 7 => fb_a_dat_in <= x"6e"; -- n
--                        when 8 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 15 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 128, 14));
--                    case bets(24).kind is
--                        when 5 => fb_a_dat_in <= x"53"; -- S
--                        when 7 => fb_a_dat_in <= x"65"; -- e
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 16 =>
--                    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 129, 14));
--                    case bets(24).kind is
--                        when 2 => fb_a_dat_in <= x"48"; -- H
--                        when 3 => fb_a_dat_in <= x"56"; -- V
--                        when others => fb_a_dat_in <= x"20"; -- space
--                    end case;
--                when COLS*21 + COLS*24 + 17 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 131, 14)); fb_a_dat_in <= ascii_i(bets(24).number, 1);
--                when COLS*21 + COLS*24 + 18 => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*24 + 132, 14)); fb_a_dat_in <= ascii_i(bets(24).number, 0);
--                -- ============================================================ END OF PYTHON GENERATED VHDL ============================================================
            
            
            
            
            when COLS * 49 => -- line 49 is 2 lines below the last line of the 'image'
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Roll", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 50 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                if bets_index = BETS_MAX then
                    fb_index := COLS * 57 - 1; -- skip over all the other options, out of betspace
                else
                    msg := pad_string("   Place plein bet", msg'LENGTH);
                    state_index := state_index + 1; state(state_index) := WRITE;    
                end if;
            when COLS * 51 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place horizontal cheval bet", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when COLS * 52 =>
                fb_a_en <= '0';
                fb_a_we <= "0";
                msg := pad_string("   Place vertical cheval bet", msg'LENGTH);
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
                input := 0;
                state_index := state_index + 1; state(state_index) := READ_MENU;
            when COLS * 58 + 1 => -- only get here once done read_menu
                fb_a_en <= '0';
                fb_a_we <= "0";
                if input = 0 then -- if roll
                    state(state_index) := GAME_R_ROLL; -- override return state
                else -- if place bet
                    bets(bets_index).kind := input;
                    state(state_index) := GAME_R_PLACE_START;  -- override return state
                end if;
                fb_index := COLS * 49; -- start of blanking
                state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
                
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
                input := 0;
                state_index := state_index + 1; state(state_index) := READ; -- Read after the write
                fb_index := COLS * 49;
                msg := pad_string("   Number? (0 - 36) ", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when 2 to 6 => -- cheval H or V, trans, trans simple or carre
                state(state_index) := GAME_R_PLACE_BET; -- after number, read amount
                input_max := 36;
                input := 0;
                state_index := state_index + 1; state(state_index) := READ; -- Read after the write
                fb_index := COLS * 49;
                msg := pad_string("   First number? (0 - 36) ", msg'LENGTH);
                state_index := state_index + 1; state(state_index) := WRITE;
            when 7 to 8 => -- colonne or simple
                input := 0;
                state(state_index) := READ_MENU;
            when others =>
                state(state_index) := ERROR; -- ??
            end case;
        ---------------------------------------------
        when GAME_R_PLACE_BET =>
            state(state_index) := GAME_R_PLACE_SAVE; -- after amount, save & go back to main menu
            bets(bets_index).number := input; -- save the input
            input := 0; -- reset
            if money > 1_000_00 then -- can't bet more then you have
                input_max := 1_000_00;
            else
                input_max := money;
            end if;
            state_index := state_index + 1; state(state_index) := READ; -- read = state after write
            fb_index := COLS * 49; -- position question
            msg := pad_string("   Amount? (Max 1 000.00 $) ", msg'LENGTH);
            state_index := state_index + 1; state(state_index) := WRITE;
            
            
            
            
            
        ---------------------------------------------
        when GAME_R_PLACE_SAVE =>
            money := money - input;
            bets(bets_index).money := input; -- save input
            bets_index := bets_index + 1; -- finalize bet
            state(state_index) := GAME_R_0; -- go back to main menu
            fb_index := COLS * 49; -- start of blanking
            state_index := state_index + 1; state(state_index) := BLANK; -- blank from line 49 to last-1 line
        ---------------------------------------------
        when GAME_R_ROLL =>
            fb_index := index_delta(fb_index); -- by default +1 index
            case fb_index is -- start with 1 because of the default +1
            when 1 => -- do actual rnd number getting
                rnd := to_integer(unsigned(rng_out)) mod 37;
                bets_index := 0;
            
            when 2 =>
            
                -- todo: compare each bet, and reset them
                bets_index := 0;
                state(state_index) := GAME_R_0;
                state_index := state_index + 1; state(state_index) := COPY; -- Clear the list
            
            
            
            
            when others =>
                -- nop
            end case;
        
        
        
        
        
        
        ---------------------------------------------    
        when READ => -- No cursor, easy numeric input.
            if kb_event = '1' then -- kb event, handle that
                case kb_acsii is
                when "0001000" => -- backspace
                    input := input / 10;
                when "0001101" => -- enter
                    msg_index := 0;
                    state_index := state_index - 1; -- pop one of the state stack
                when "0110000" => -- 0
                    input := input * 10;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0110001" => -- 1
                    input := input * 10 + 1;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0110010" => -- 2
                    input := input * 10 + 2;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0110011" => -- 3
                    input := input * 10 + 3;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0110100" => -- 4
                    input := input * 10 + 4;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0110101" => -- 5
                    input := input * 10 + 5;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0110110" => -- 6
                    input := input * 10 + 6;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0110111" => -- 7
                    input := input * 10 + 7;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0111000" => -- 8
                    input := input * 10 + 8;
                    if input > input_max then
                        input := input_max;
                    end if;
                when "0111001" => -- 9
                    input := input * 10 + 9;
                    if input > input_max then
                        input := input_max;
                    end if;
                when others =>
                    -- nop
                end case;
            else -- No kb event, print input (abuses msg_index to get a secondary loop counter. Uses fb_index as actual frame buffer pointer)
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(fb_index + msg_index, 14));
                if input_max > 99 then -- money
                    case msg_index is
                    when 0 => fb_a_dat_in <= x"24"; -- $
                    when 1 => fb_a_dat_in <= ascii_i(input, 5);
                    when 2 => fb_a_dat_in <= ascii_i(input, 4);
                    when 3 => fb_a_dat_in <= ascii_i(input, 3);
                    when 4 => fb_a_dat_in <= ascii_i(input, 2);
                    when 5 => fb_a_dat_in <= x"2e"; -- .
                    when 6 => fb_a_dat_in <= ascii_i(input, 1);
                    when 7 => fb_a_dat_in <= ascii_i(input, 0);
                    when others => -- never gets here.
                    end case;
                    msg_index := index_delta(msg_index, modulo => 8); 
                else -- any other number (always < 99)
                    case msg_index is
                    when 0 => fb_a_dat_in <= ascii_i(input, 1);
                    when 1 => fb_a_dat_in <= ascii_i(input, 0);
                    when others => -- never gets here.
                    end case;
                    msg_index := index_delta(msg_index, modulo => 2);
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
--            if fb_index = 0 then
--                state_index := state_index + 1; state(state_index) := SCROLL; -- put next state on stack
--            end if;
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
--        when SCROLL => -- move all of the screen up one row, read part
--            fb_a_en <= '1';
--            -- Read next line's char
--            fb_a_addr <= std_logic_vector(to_unsigned((fb_index + COLS) mod CHARS, 14));
--            state(state_index) := SCROLL_W; -- override current state
--        when SCROLL_W => -- Write part of scroll state
--            fb_a_en <= '1';
--            -- Write current char
--            fb_a_we <= "1";
--            fb_a_addr <= std_logic_vector(to_unsigned(fb_index, 14));
--            -- Last line is special
--            if fb_index > INPUT_LINE then
--                fb_a_dat_in <= x"00";
--                -- Last character is the exit condition 
--                if fb_index = CHARS - 1 then
--                    -- Wrap fb_index to fist col, last line
--                    fb_index := INPUT_LINE;
--                    state_index := state_index - 1; -- pop one of the state stack
--                -- Last line doesn't need to go back to read the mem
--                else
--                    fb_index := index_delta(fb_index);
--                    state(state_index) := SCROLL_W; -- override return state
--                end if;
--            -- Copy data
--            else
--                fb_index := index_delta(fb_index);
--                fb_a_dat_in <= fb_a_dat_out;
--                state(state_index) := SCROLL; -- override return state
--            end if;
        ---------------------------------------------
        when others => -- WTF?
            state(state_index) := ERROR; -- override return state
            state_index := state_index + 1; state(state_index) := WRITE; -- put next state on stack
            msg := pad_string("Illegal state", msg'LENGTH);
        end case;
    end if;
end process;

end Behavioral;
