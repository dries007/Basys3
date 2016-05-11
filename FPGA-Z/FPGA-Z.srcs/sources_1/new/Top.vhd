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
constant CPU_FREQ : integer := 10_000_000;
constant BLINKDATA : string := "Press any key to continue...";
constant TYPE_LRG_CNT : std_logic_vector := "00";
constant TYPE_SML_CNT : std_logic_vector := "01";
constant TYPE_VAR : std_logic_vector := "10";
constant TYPE_OMITTED : std_logic_vector := "11";

-- CLOCK --------------------------------------------------------
component ClockDivider
    port (
        clkIn : in std_logic;
        clk108M : out std_logic;
        clk_cpu : out std_logic;
        clk2cpu : out std_logic;
        clk4cpu : out std_logic;
        clk6cpu : out std_logic
    );
end component;

signal clk_vga : std_logic := '0';
signal clk_cpu : std_logic := '0';
signal clk_2cpu : std_logic := '0';
signal clk_4cpu : std_logic := '0';
signal clk_6cpu : std_logic := '0';
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

-- RAM ----------------------------------------------------------
-- NEEDS to run at 6x CPU freq, for 1 CPU cycle mem access
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
signal ram_addr : integer range 0 to 16#1FFFF# := 0;
signal ram_dat_r : std_logic_vector(15 downto 0) := (others => '0');
signal ram_dat_w : std_logic_vector(15 downto 0) := (others => '0');

-- STACK --------------------------------------------------------
component Stack is
  port (
    a : in std_logic_vector(9 downto 0);
    d : in std_logic_vector(15 downto 0);
    clk : in std_logic;
    we : in std_logic;
    spo : out std_logic_vector(15 downto 0)
  );
end component;

signal stack_addr : std_logic_vector(9 downto 0) := (others => '0');
signal stack_dat_w : std_logic_vector(15 downto 0) := (others => '0');
signal stack_we : std_logic := '0';
signal stack_dat_r : std_logic_vector(15 downto 0) := (others => '0');

-- MISC ---------------------------------------------------------
-- runtime in ms
signal runtime : unsigned(32 downto 0) := (others => '0');

-- FUNCTIONS ----------------------------------------------------
function cursor_delta(current : integer range 0 to CHARS; delta : integer range -CHARS to CHARS := 1; modulo : integer range 0 to CHARS := CHARS) return integer is
begin
    return (current + delta) mod modulo;
end cursor_delta;

function pad_string(input : string; size : positive; hex : std_logic_vector := "") return string is
    variable tmp: string(1 to size) := (others => NUL);
begin
    if hex'length = 0 then
        if input'length >= size then
            tmp := input(1 to size);
        else
            tmp(1 to input'length) := input;
            tmp(input'length + 1 to size) := (others => ' ');
        end if;
    else
        if input'length >= (size - (hex'length / 4) - 1) then
            tmp(1 to (size - (hex'length / 4)) - 1) := input(1 to (size - (hex'length / 4)) - 1); -- copy over as much as will fit
            tmp(size - (hex'length / 4)) := ' '; -- add space
            for i in 0 to (hex'length / 4) - 1 loop -- per 4 bits
                case to_integer(unsigned(hex(hex'length - (4 * i) to hex'length - (4 * i) - 4))) is
                    when 0 => tmp(size - (hex'length / 4) + i) := '0';
                    when 1 => tmp(size - (hex'length / 4) + i) := '1';
                    when 2 => tmp(size - (hex'length / 4) + i) := '2';
                    when 3 => tmp(size - (hex'length / 4) + i) := '3';
                    when 4 => tmp(size - (hex'length / 4) + i) := '4';
                    when 5 => tmp(size - (hex'length / 4) + i) := '5';
                    when 6 => tmp(size - (hex'length / 4) + i) := '6';
                    when 7 => tmp(size - (hex'length / 4) + i) := '7';
                    when 8 => tmp(size - (hex'length / 4) + i) := '8';
                    when 9 => tmp(size - (hex'length / 4) + i) := '9';
                    when 10 => tmp(size - (hex'length / 4) + i) := 'A';
                    when 11 => tmp(size - (hex'length / 4) + i) := 'B';
                    when 12 => tmp(size - (hex'length / 4) + i) := 'D';
                    when 13 => tmp(size - (hex'length / 4) + i) := 'D';
                    when 14 => tmp(size - (hex'length / 4) + i) := 'E';
                    when 15 => tmp(size - (hex'length / 4) + i) := 'F';
                    when others => tmp(size - (hex'length / 4) + i) := '?';
                end case;
            end loop;
        else
            tmp(1 to input'length) := input;
            tmp(input'length + 1 to size) := (others => ' ');
        end if;
    end if;
    return tmp;
end pad_string;

function ascii_c(char : character; inverted : boolean := false) return std_logic_vector(7 downto 0) is
    variable tmp : std_logic_vector(7 downto 0) := (others => '0');
begin
    if inverted then
        tmp(7) := '1';
    end if;    
    tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos(char), 7));
    return tmp;
end ascii_c;

function ascii_b(b : std_logic; inverted : boolean := false) return std_logic_vector(7 downto 0) is
    variable tmp : std_logic_vector(7 downto 0) := '0' & std_logic_vector(to_unsigned(character'pos('0'), 7));
begin
    if inverted then
        tmp(7) := '1';
    end if;
    tmp(0) := b;
    return tmp;
end ascii_b;

function ascii_i(i : integer range 0 to 999_999; didget : integer range 0 to 10 := 0; inverted : boolean := false) return std_logic_vector(7 downto 0) is
    variable tmp : std_logic_vector(7 downto 0) := (others => '0');
begin
    if inverted then
        tmp(7) := '1';
    end if;
    tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('0') + ((i mod (10 ** (didget + 1))) / (10 ** didget)), 7));
    return tmp;
end ascii_i;

function ascii_x(i : integer range 0 to 16#FF_FFFF#; didget : integer range 0 to 10 := 0; inverted : boolean := false) return std_logic_vector(7 downto 0) is
    variable tmp : std_logic_vector(7 downto 0) := (others => '0');
begin
    if inverted then
        tmp(7) := '1';
    end if;
    case to_integer(shift_right(to_unsigned(i, 6 * 4), 4 * didget) and "000000000000000000001111") is
        when 0 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('0'), 7));
        when 1 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('1'), 7));
        when 2 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('2'), 7));
        when 3 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('3'), 7));
        when 4 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('4'), 7));
        when 5 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('5'), 7));
        when 6 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('6'), 7));
        when 7 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('7'), 7));
        when 8 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('8'), 7));
        when 9 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('9'), 7));
        when 10 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('A'), 7));
        when 11 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('B'), 7));
        when 12 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('C'), 7));
        when 13 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('D'), 7));
        when 14 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('E'), 7));
        when 15 => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('F'), 7));
        when others => tmp(6 downto 0) := std_logic_vector(to_unsigned(character'pos('?'), 7));
    end case;
    return tmp;
end ascii_x;

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

-- CLOCK --------------------------------------------------------
clock0: ClockDivider 
    port map (
        clkIn => clk,
        clk108M => clk_vga,
        clk_cpu => clk_cpu,
        clk2cpu => clk_2cpu,
        clk4cpu => clk_4cpu,
        clk6cpu => clk_6cpu
    );
-- Slow clock devider
process (clk_cpu)
    constant MAX : integer := 10000000/2;
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
        clk => clk_cpu,
        ps2_clk => PS2Clk,
        ps2_data => PS2Data,
        ascii_new => kb_event,
        ascii_code => kb_acsii
    );

-- RAM ----------------------------------------------------------
ram0: Ram
    port map (
        clk => clk_6cpu,
        re => ram_re,
        we => ram_we,
        addr => ram_addr,
        dat_r => ram_dat_r,
        dat_w => ram_dat_w
    );
    
-- STACK --------------------------------------------------------
stack0: Stack
    port map (
        a => stack_addr,
        d => stack_dat_w,
        clk => clk_cpu,
        we => stack_we,
        spo => stack_dat_r
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
process (clk_cpu)
    type state_type is 
    (
        RESET, BLANK, SCROLL, SCROLL_W, LOAD, DEBUG, DEBUG_KB, ERROR, -- Background states, used for 'interpreter' stuff
        FETCH, FETCH_OP, DECODE, EXEC -- Z machine states
    );
    variable state : state_type := RESET;-- LOAD;-- The current/next state
    variable next_state : state_type := RESET; -- The state to go to, after finishing the current one.
    
    type instuction_type is
    (
        OP_NOP, OP_PRINT, OP_POP, OP_PRINT_NL, OP_STATUS, OP_VERIFY, OP_COMP_ZERO, OP_GET_SIBLING, OP_GET_CHILD, OP_GET_PARENT, OP_GET_PROP_LEN,
        OP_INC, OP_DEC, OP_PRINT_ADDR, OP_REMOVE_OBJ, OP_PRINT_OBJ, OP_JUMP, OP_PRINT_PADDR, OP_LOAD, OP_NOT_BW, OP_COMP_EQ, OP_COMP_LT, 
        OP_COMP_GT, OP_DEC_CHK, OP_INC_CHK, OP_JIN, OP_TEST, OP_OR_BW, OP_AND_BW, OP_TEST_ATTR, OP_SET_ATTR, OP_CLEAR_ATTR, OP_STORE, 
        OP_INSERT_OBJ, OP_LOADW, OP_LOADB, OP_GET_PROP, OP_GET_PROP_ADDR, OP_GET_NEXT_PROP, OP_ADD, OP_SUB, OP_MUL, OP_DIV, OP_MOD, OP_CALL, 
        OP_STOREW, OP_STOREB, OP_PUT_PROP, OP_SREAD, OP_PRINT_CHAR, OP_PRINT_NUM, OP_RND, OP_PUSH, OP_PULL, OP_SPLIT_WINDOW, OP_SET_WINDOW
    );
    variable instruction : instuction_type := OP_NOP;
    variable instruction_raw : std_logic_vector(7 downto 0) := (others => '0');
    
    variable ret : boolean := false;
    
    variable fetch_string : boolean := false;
    
    variable branch : boolean := false;
    variable branch_on_true : boolean := false;
    variable branch_fetch : boolean := false;
    variable branch_offset : std_logic_vector(15 downto 0) := (others => '0');
    
    variable store : boolean := false;
    variable store_fetch : boolean := false;
    variable store_var : std_logic_vector(7 downto 0) := (others => '0');
    
    variable op0_fetch : boolean := false;
    variable op0_type : std_logic_vector(1 downto 0) := "00";
    variable op0      : std_logic_vector(15 downto 0) := (others => '0');
    variable op1_fetch : boolean := false;
    variable op1_type : std_logic_vector(1 downto 0) := "00";
    variable op1      : std_logic_vector(15 downto 0) := (others => '0');
    variable op2_fetch : boolean := false;
    variable op2_type : std_logic_vector(1 downto 0) := "00";
    variable op2      : std_logic_vector(15 downto 0) := (others => '0');
    variable op3_fetch : boolean := false;
    variable op3_type : std_logic_vector(1 downto 0) := "00";
    variable op3      : std_logic_vector(15 downto 0) := (others => '0');
    
    variable delay : boolean := false;-- Delay 1 clock tick
    variable cursor : integer range 0 to CHARS := 0;
    variable message : string(1 to COLS);
    
    variable flags1 : std_logic_vector(15 downto 0) := (others => '0');
    variable flags2 : std_logic_vector(15 downto 0) := (others => '0');
    variable high : integer range 0 to 16#FFFF# := 0;
    variable pc : integer range 0 to 16#1FFFF# := 0;
    variable dict : integer range 0 to 16#FFFF# := 0;
    variable objtab : integer range 0 to 16#FFFF# := 0;
    variable globals : integer range 0 to 16#FFFF# := 0;
    variable static : integer range 0 to 16#FFFF# := 0;
    variable abbreviations : integer range 0 to 16#FFFF# := 0;
    variable length : integer range 0 to 16#FF_FFFF# := 0;
    variable checksum : integer range 0 to 16#FFFF# := 0;
begin    
    if rising_edge(clk_cpu) then
        fb_a_en <= '0';
        fb_a_we <= "0";
        ram_re <= "00";
        ram_we <= "00";
        if delay then
            delay := false;
        elsif kb_event = '1' and kb_acsii = "0011011" then
            cursor := 0;
            state := BLANK;
            next_state := LOAD;
        else
            case state is
            ---------------------------------------------
            --          Z STATES
            ---------------------------------------------------------------------------------------------------------------------------------------
            when EXEC =>
            
                state := ERROR;
                message := pad_string("Debug", message'LENGTH, ram_dat_r);
                
                -- state := FETCH;
            when FETCH_OP =>
                pc := pc + 1;
                if op0_fetch then
                    op0_fetch := false;
                    case op0_type is
                        when TYPE_LRG_CNT =>
                            op0 := ram_dat_r;
                            pc := pc + 1;
                        when TYPE_SML_CNT | TYPE_VAR =>
                            op0 := "00000000" & ram_dat_r(15 downto 8);
                        when TYPE_OMITTED =>
                            op0 := (others => '0');
                    end case;
                elsif op1_fetch then
                    op1_fetch := false;
                    case op1_type is
                        when TYPE_LRG_CNT =>
                            op1 := ram_dat_r;
                            pc := pc + 1;
                        when TYPE_SML_CNT | TYPE_VAR =>
                            op1 := "00000000" & ram_dat_r(15 downto 8);
                        when TYPE_OMITTED =>
                            op1 := (others => '0');
                    end case;
                elsif op2_fetch then
                    op2_fetch := false;
                    case op2_type is
                        when TYPE_LRG_CNT =>
                            op2 := ram_dat_r;
                            pc := pc + 1;
                        when TYPE_SML_CNT | TYPE_VAR =>
                            op2 := "00000000" & ram_dat_r(15 downto 8);
                        when TYPE_OMITTED =>
                            op2 := (others => '0');
                    end case;
                elsif op3_fetch then
                    op3_fetch := false;
                    case op3_type is
                        when TYPE_LRG_CNT =>
                            op3 := ram_dat_r;
                            pc := pc + 1;
                        when TYPE_SML_CNT | TYPE_VAR =>
                            op3 := "00000000" & ram_dat_r(15 downto 8);
                        when TYPE_OMITTED =>
                            op3 := (others => '0');
                    end case;
                elsif store_fetch then
                    store_fetch := false;
                    store_var := ram_dat_r(15 downto 8);
                elsif branch_fetch then
                    branch_fetch := false;
                    branch_offset := ram_dat_r;
                elsif fetch_string then
                    -- todo
                end if;
                ram_re <= "11";
                ram_addr <= pc;
                -- if no more fetch steps will follow, go to the next stage, don't need to check op0
                if not (op1_fetch or op2_fetch or op3_fetch or store_fetch or branch_fetch or fetch_string) then
                    state := EXEC;
                end if;
            ---------------------------------------------    
            when FETCH =>
                ram_re <= "11";
                ram_addr <= pc;
                state := DECODE;
                if pc > length then
                    cursor := 0;
                    state := ERROR;
                    message := pad_string("PC > length?", message'LENGTH);
                end if;
            ---------------------------------------------
            when DECODE =>
                state := FETCH_OP;
                pc := pc + 1;
                ram_re <= "11";
                ram_addr <= pc;
                instruction_raw := ram_dat_r(15 downto 8);
                -- Short form ------------------------
                if ram_dat_r(15 downto 14) = "10" then
                    -- 0OP ------------------------------
                    if ram_dat_r(13 downto 12) = "11" then
                        case to_integer(unsigned(ram_dat_r(9 downto 8))) is
                        when 0 => -- rtrue
                            instruction := OP_NOP;
                            ret := true;
                            op0 := "0000000000000001";
                            op0_type := TYPE_SML_CNT;
                        when 1 => -- rfalse
                            instruction := OP_NOP;
                            ret := true;
                            op0 := "0000000000000000";
                            op0_type := TYPE_SML_CNT;
                        when 2 => -- print (literal-string)
                            instruction := OP_PRINT;
                            fetch_string := true;
                        when 3 => -- print_ret (literal-string)
                            instruction := OP_PRINT;
                            fetch_string := true;
                            ret := true;
                            op0 := "0000000000000001";
                            op0_type := TYPE_SML_CNT;
                        when 4 => -- nop
                            instruction := OP_NOP;
                        when 5 => -- save ?(label) -- TODO
                            instruction := OP_NOP;
                            branch := true;
                            branch_fetch := true;
--                            branch_on_true := ram_dat_r(7) = '1';
--                            branch_fetch := ram_dat_r(6) = '0';
--                            branch_offset := "0000000000" & ram_dat_r(5 downto 0);
                        when 6 => -- save ?(label) -- TODO
                            instruction := OP_NOP;
                            branch := true;
                            branch_fetch := true;
--                            branch_on_true := ram_dat_r(7) = '1';
--                            branch_fetch := ram_dat_r(6) = '0';
--                            branch_offset := "0000000000" & ram_dat_r(5 downto 0);
                        when 7 => -- restart -- TODO
                            instruction := OP_NOP;
                            state := ERROR;
                            message := pad_string("Power cycling is the restart in this universe!", message'LENGTH, ram_dat_r);
                        when 8 => -- ret_popped
                            instruction := OP_POP;
                            ret := true;
                        when 9 => -- pop
                            instruction := OP_POP;
                        when 10 =>
                            instruction := OP_NOP;
                            state := ERROR;
                            message := pad_string("It is now safe to power off your computer.", message'LENGTH, ram_dat_r);
                        when 11 =>
                            instruction := OP_PRINT_NL;
                        when 12 =>
                            instruction := OP_STATUS;
                        when 13 =>
                            instruction := OP_VERIFY;
                        when others =>
                            cursor := 0;
                            state := ERROR;
                            message := pad_string("Instruction undecodable. Short, 0OP", message'LENGTH, ram_dat_r);
                        end case;
                    -- 1OP ------------------------------
                    else
                        op0_type := ram_dat_r(11 downto 10);
                        if op0_type /= TYPE_LRG_CNT then -- NOT Lage constant that will require later fetching, BUT Variable or small constant
                            op0 := "00000000" & ram_dat_r(7 downto 0);
                            pc := pc + 1; -- Increment PC again, since the 2nd byte of the word we got is (part of) the operand
                        else
                            op0_fetch := true;
                        end if;
                        ram_re <= "11";
                        ram_addr <= pc;
                        case to_integer(unsigned(ram_dat_r(9 downto 8))) is
                        when 0 =>
                            instruction := OP_COMP_ZERO;
                            branch := true;
                        when 1 =>
                            instruction := OP_GET_SIBLING;
                            store := true;
                            store_fetch := true;
                            branch := true;
                            branch_fetch := true;
                        when 2 =>
                            instruction := OP_GET_CHILD;
                            store := true;
                            store_fetch := true;
                            branch := true;
                            branch_fetch := true;
                        when 3 =>
                            instruction := OP_GET_PARENT;
                            store := true;
                            store_fetch := true;
                        when 4 =>
                            instruction := OP_GET_PROP_LEN;
                            store := true;
                            store_fetch := true;
                        when 5 =>
                            instruction := OP_INC;
                        when 6 =>
                            instruction := OP_DEC;
                        when 7 =>
                            instruction := OP_PRINT_ADDR;
                        when 9 =>
                            instruction := OP_REMOVE_OBJ;
                        when 10 =>
                            instruction := OP_PRINT_OBJ;
                        when 11 =>
                            instruction := OP_NOP;
                            ret := true;
                        when 12 =>
                            instruction := OP_JUMP;
                        when 13 =>
                            instruction := OP_PRINT_PADDR;
                        when 14 =>
                            instruction := OP_LOAD;
                            store := true;
                            store_fetch := true;
                        when 15 =>
                            instruction := OP_NOT_BW;
                            store := true;
                            store_fetch := true;
                        when others =>
                            cursor := 0;
                            state := ERROR;
                            message := pad_string("Instruction undecodable. Short, 1OP", message'LENGTH, ram_dat_r);
                        end case;
                    end if;
                -- Variable form ---------------------
                elsif ram_dat_r(15 downto 14) = "11" then
                    pc := pc + 1; -- second byte was type info, inc again
                    ram_re <= "11";
                    ram_addr <= pc;
                    op0_type := ram_dat_r(7 downto 6);
                    op1_type := ram_dat_r(5 downto 4);
                    op2_type := ram_dat_r(3 downto 2);
                    op3_type := ram_dat_r(1 downto 0);
                    if op0_type /= TYPE_OMITTED then
                        op0_fetch := true;
                    end if;
                    if op1_type /= TYPE_OMITTED then
                        op1_fetch := true;
                    end if;
                    if op2_type /= TYPE_OMITTED then
                        op2_fetch := true;
                    end if;
                    if op3_type /= TYPE_OMITTED then
                        op3_fetch := true;
                    end if;
                    -- VAR ------------------------------
                    if ram_dat_r(13) = '1' then
                        case to_integer(unsigned(ram_dat_r(12 downto 8))) is
                        when 0 => -- call routine ...0 to 3 args... -> (result)
                            instruction := OP_CALL;
                            store := true;
                            store_fetch := true;
                        when 1 => -- storew array word-index value
                            instruction := OP_STOREW;
                        when 2 => -- storeb array byte-index value
                            instruction := OP_STOREB;
                        when 3 => -- put_prop object property value
                            instruction := OP_PUT_PROP;
                        when 4 => -- sread text parse
                            instruction := OP_SREAD;
                        when 5 => -- print_char output-character-code
                            instruction := OP_PRINT_CHAR;
                        when 6 => -- print_num value
                            instruction := OP_PRINT_NUM;
                        when 7 => -- random range -> (result)
                            instruction := OP_RND;
                            store := true;
                            store_fetch := true;
                        when 8 => -- push value
                            instruction := OP_PUSH;
                        when 9 => -- pull (variable)
                            instruction := OP_PULL;
                        when 10 => -- split_window lines
                            instruction := OP_SPLIT_WINDOW;
                        when 11 => -- set_window window
                            instruction := OP_SET_WINDOW;
                        when others =>
                            cursor := 0;
                            state := ERROR;
                            message := pad_string("Instruction undecodable. Variable, VAR", message'LENGTH, ram_dat_r);
                        end case;
                    -- 2OP ------------------------------
                    else
                        -- TODO ??? Is this correct ??
                        case to_integer(unsigned(ram_dat_r(12 downto 8))) is
                        when 0 =>
                            instruction := OP_COMP_ZERO;
                            branch := true;
                        when 1 =>
                            instruction := OP_GET_SIBLING;
                            store := true;
                            store_fetch := true;
                            branch := true;
                            branch_fetch := true;
                        when 2 =>
                            instruction := OP_GET_CHILD;
                            store := true;
                            store_fetch := true;
                            branch := true;
                            branch_fetch := true;
                        when 3 =>
                            instruction := OP_GET_PARENT;
                            store := true;
                            store_fetch := true;
                        when 4 =>
                            instruction := OP_GET_PROP_LEN;
                            store := true;
                            store_fetch := true;
                        when 5 =>
                            instruction := OP_INC;
                        when 6 =>
                            instruction := OP_DEC;
                        when 7 =>
                            instruction := OP_PRINT_ADDR;
                        when 9 =>
                            instruction := OP_REMOVE_OBJ;
                        when 10 =>
                            instruction := OP_PRINT_OBJ;
                        when 11 =>
                            instruction := OP_NOP;
                            ret := true;
                        when 12 =>
                            instruction := OP_JUMP;
                        when 13 =>
                            instruction := OP_PRINT_PADDR;
                        when 14 =>
                            instruction := OP_LOAD;
                            store := true;
                            store_fetch := true;
                        when 15 =>
                            instruction := OP_NOT_BW;
                            store := true;
                            store_fetch := true;
                        when others =>
                            cursor := 0;
                            state := ERROR;
                            message := pad_string("Instruction undecodable. Variable, 2OP", message'LENGTH, ram_dat_r);
                        end case;
                    end if;
                -- Long form -------------------------
                else -- Always 2OP
                    -- Type OP 1
                    if ram_dat_r(14) = '0' then
                        op0_type := "01";
                    else
                        op0_type := "10";
                    end if;
                    -- Type OP 2
                    if ram_dat_r(13) = '0' then
                        op1_type := "01";
                    else
                        op1_type := "10";
                    end if;
                    case to_integer(unsigned(ram_dat_r(12 downto 8))) is
                    when 1 => -- je a b ?(label)
                        instruction := OP_COMP_EQ;
                        branch := true;
                        branch_fetch := true;
                    when 2 => -- jl a b ?(label)
                        instruction := OP_COMP_LT;
                        branch := true;
                        branch_fetch := true;
                    when 3 => -- jg a b ?(label)
                        instruction := OP_COMP_GT;
                        branch := true;
                        branch_fetch := true;
                    when 4 => -- dec_chk (variable) value ?(label)
                        instruction := OP_DEC_CHK;
                        branch := true;
                        branch_fetch := true;
                    when 5 => -- inc_chk (variable) value ?(label)
                        instruction := OP_INC_CHK;
                        branch := true;
                        branch_fetch := true;
                    when 6 => -- jin obj1 obj2 ?(label)
                        instruction := OP_JIN;
                        branch := true;
                        branch_fetch := true;
                    when 7 => -- test bitmap flags ?(label)
                        instruction := OP_TEST;
                        branch := true;
                        branch_fetch := true;
                    when 8 => -- or a b -> (result)
                        instruction := OP_OR_BW;
                        store := true;
                        store_fetch := true;
                    when 9 => -- and a b -> (result)
                        instruction := OP_AND_BW;
                        store := true;
                        store_fetch := true;
                    when 10 => -- test_attr object attribute ?(label)
                        instruction := OP_TEST_ATTR;
                        branch := true;
                        branch_fetch := true;
                    when 11 => -- set_attr object attribute
                        instruction := OP_SET_ATTR;    
                    when 12 => -- set_attr object attribute
                        instruction := OP_CLEAR_ATTR;
                    when 13 => -- set_attr object attribute
                        instruction := OP_STORE;
                    when 14 => -- insert_obj object destination
                        instruction := OP_INSERT_OBJ;
                    when 15 => -- loadw array word-index -> (result)
                        instruction := OP_LOADW;
                        store := true;
                        store_fetch := true;
                    when 16 => -- loadb array byte-index -> (result)
                        instruction := OP_LOADB;
                        store := true;
                        store_fetch := true;
                    when 17 => -- get_prop object property -> (result)
                        instruction := OP_GET_PROP;
                        store := true;
                        store_fetch := true;
                    when 18 => -- get_prop_addr object property -> (result)
                        instruction := OP_GET_PROP_ADDR;
                        store := true;
                        store_fetch := true;
                    when 19 => -- get_next_prop object property -> (result)
                        instruction := OP_GET_NEXT_PROP;
                        store := true;
                        store_fetch := true;
                    when 20 => -- add a b -> (result)
                        instruction := OP_ADD;
                        store := true;
                        store_fetch := true;
                    when 21 => -- sub a b -> (result)
                        instruction := OP_SUB;
                        store := true;
                        store_fetch := true;
                    when 22 => -- mul a b -> (result)
                        instruction := OP_MUL;
                        store := true;
                        store_fetch := true;
                    when 23 => -- div a b -> (result)
                        instruction := OP_DIV;
                        store := true;
                        store_fetch := true;
                    when 24 => -- mod a b -> (result)
                        instruction := OP_MOD;
                        store := true;
                        store_fetch := true;
                    when others =>
                        cursor := 0;
                        state := ERROR;
                        message := pad_string("Instruction undecodable. Long", message'LENGTH, ram_dat_r);
                    end case;
                end if;
            ---------------------------------------------------------------------------------------------------------------------------------------
            --          INTERPRETER STATES
            ---------------------------------------------
            when RESET => -- splash screen
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_dat_in <= clk_1 & std_logic_vector(to_unsigned(character'pos(blinkData(cursor + 1)), 7));
                fb_a_addr <= std_logic_vector(to_unsigned(cursor + COLS * 21 + 66, 14));
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
                fb_a_addr <= std_logic_vector(to_unsigned(cursor, 14));
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
                fb_a_dat_in <= '1' & std_logic_vector(to_unsigned(character'pos(message(cursor + 1)), 7));
                fb_a_addr <= std_logic_vector(to_unsigned(cursor, 14));
                cursor := cursor_delta(cursor, modulo => message'LENGTH);
                if cursor = 0 then
                    cursor := COLS;
                    state := DEBUG;
                end if;
            ---------------------------------------------
            when LOAD =>
                cursor := cursor_delta(cursor);
                ram_re <= "11";
                case cursor is
                when 1 =>
                    ram_re <= "10";
                    ram_addr <= 16#00#;
                when 2 =>
                    if ram_dat_r(15 downto 8) /= x"03" then
                        cursor := 0;
                        state := ERROR;
                        message := pad_string("Version != 3", message'LENGTH);
                    end if;
                    ram_addr <= 16#01#; -- Flags 1
                when 3 =>
                    ram_re <= "00";
                    flags1 := ram_dat_r;
                    -- SET FLAGS 1 BITS
                    flags1(4) := '0';
                    flags1(5) := '0';
                    flags1(6) := '0';
                    ram_dat_w <= flags1;
                    ram_we <= "11";
                when 4 =>
                    ram_addr <= 16#04#; -- Base of high memory (byte address)
                when 5 =>
                    high := to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#06#; -- Initial value of program counter (byte address)
                when 6 =>
                    pc := to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#08#; -- Location of dictionary (byte address)
                when 7 =>
                    dict := to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#0A#; -- Location of object table (byte address)
                when 8 =>
                    objtab := to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#0C#; --     Location of global variables table (byte address)
                when 9 =>
                    globals := to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#0E#; --     Base of static memory (byte address)
                when 10 => 
                    static := to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#10#; --     Flags 2
                when 11 =>
                    flags2 := ram_dat_r;
                    ram_addr <= 16#18#; -- Location of abbreviations table (byte address)
                when 12 =>
                    abbreviations := to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#1A#; -- Length of file, Not always available
                when 13 =>
                    length := 2 * to_integer(unsigned(ram_dat_r));
                    ram_addr <= 16#1C#; -- Checksum, Not always available
                when 14 =>
                    checksum := to_integer(unsigned(ram_dat_r));
                when 15 => -- HEADER LOADED
                    ram_re <= "00";
                    cursor := 0;
                    state := FETCH;
                when others =>
                    ram_re <= "00";
                    cursor := 0;
                    state := ERROR;
                    message := pad_string("Illegal load state.", message'LENGTH);
                end case;
            ---------------------------------------------
            when SCROLL => -- move all of the screen up one row, read part
                fb_a_en <= '1';
                -- Read next line's char
                fb_a_addr <= std_logic_vector(to_unsigned((cursor + COLS) mod CHARS, 14));
                state := SCROLL_W;
            when SCROLL_W => -- Write part of scroll state
                fb_a_en <= '1';
                -- Write current char
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(cursor, 14));
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
            when DEBUG =>
                fb_a_en <= '1';
                fb_a_we <= "1";
                fb_a_addr <= std_logic_vector(to_unsigned(cursor, 14));
                fb_a_dat_in <= (others => '0');
                case cursor is
                    when 0 to COLS - 1 => -- Leave top line
                        fb_a_en <= '0';
                        fb_a_we <= "0";
                
                    when COLS + 0 =>    fb_a_dat_in <= ascii_c('F');
                    when COLS + 1 =>    fb_a_dat_in <= ascii_c('l');
                    when COLS + 2 =>    fb_a_dat_in <= ascii_c('a');
                    when COLS + 3 =>    fb_a_dat_in <= ascii_c('g');
                    when COLS + 4 =>    fb_a_dat_in <= ascii_c('s');
                    when COLS + 5 =>    fb_a_dat_in <= ascii_c('1');
                    when COLS + 6 =>    fb_a_dat_in <= ascii_c(':');
                    when COLS + 16 =>   fb_a_dat_in <= ascii_b(flags1(15));
                    when COLS + 17 =>   fb_a_dat_in <= ascii_b(flags1(14));
                    when COLS + 18 =>   fb_a_dat_in <= ascii_b(flags1(13));
                    when COLS + 19 =>   fb_a_dat_in <= ascii_b(flags1(12));
                    when COLS + 20 =>   fb_a_dat_in <= ascii_b(flags1(11));
                    when COLS + 21 =>   fb_a_dat_in <= ascii_b(flags1(10));
                    when COLS + 22 =>   fb_a_dat_in <= ascii_b(flags1(9));
                    when COLS + 23 =>   fb_a_dat_in <= ascii_b(flags1(8));
                    when COLS + 24 =>   fb_a_dat_in <= ascii_b(flags1(7));
                    when COLS + 25 =>   fb_a_dat_in <= ascii_b(flags1(6));
                    when COLS + 26 =>   fb_a_dat_in <= ascii_b(flags1(5));
                    when COLS + 27 =>   fb_a_dat_in <= ascii_b(flags1(4));
                    when COLS + 28 =>   fb_a_dat_in <= ascii_b(flags1(3));
                    when COLS + 29 =>   fb_a_dat_in <= ascii_b(flags1(2));
                    when COLS + 30 =>   fb_a_dat_in <= ascii_b(flags1(1));
                    when COLS + 31 =>   fb_a_dat_in <= ascii_b(flags1(0));
                    
                    when 2 * COLS + 0 =>    fb_a_dat_in <= ascii_c('F');
                    when 2 * COLS + 1 =>    fb_a_dat_in <= ascii_c('l');
                    when 2 * COLS + 2 =>    fb_a_dat_in <= ascii_c('a');
                    when 2 * COLS + 3 =>    fb_a_dat_in <= ascii_c('g');
                    when 2 * COLS + 4 =>    fb_a_dat_in <= ascii_c('s');
                    when 2 * COLS + 5 =>    fb_a_dat_in <= ascii_c('2');
                    when 2 * COLS + 6 =>    fb_a_dat_in <= ascii_c(':');
                    when 2 * COLS + 16 =>   fb_a_dat_in <= ascii_b(flags2(15));
                    when 2 * COLS + 17 =>   fb_a_dat_in <= ascii_b(flags2(14));
                    when 2 * COLS + 18 =>   fb_a_dat_in <= ascii_b(flags2(13));
                    when 2 * COLS + 19 =>   fb_a_dat_in <= ascii_b(flags2(12));
                    when 2 * COLS + 20 =>   fb_a_dat_in <= ascii_b(flags2(11));
                    when 2 * COLS + 21 =>   fb_a_dat_in <= ascii_b(flags2(10));
                    when 2 * COLS + 22 =>   fb_a_dat_in <= ascii_b(flags2(9));
                    when 2 * COLS + 23 =>   fb_a_dat_in <= ascii_b(flags2(8));
                    when 2 * COLS + 24 =>   fb_a_dat_in <= ascii_b(flags2(7));
                    when 2 * COLS + 25 =>   fb_a_dat_in <= ascii_b(flags2(6));
                    when 2 * COLS + 26 =>   fb_a_dat_in <= ascii_b(flags2(5));
                    when 2 * COLS + 27 =>   fb_a_dat_in <= ascii_b(flags2(4));
                    when 2 * COLS + 28 =>   fb_a_dat_in <= ascii_b(flags2(3));
                    when 2 * COLS + 29 =>   fb_a_dat_in <= ascii_b(flags2(2));
                    when 2 * COLS + 30 =>   fb_a_dat_in <= ascii_b(flags2(1));
                    when 2 * COLS + 31 =>   fb_a_dat_in <= ascii_b(flags2(0));
                    
                    when 3 * COLS + 0 =>    fb_a_dat_in <= ascii_c('H');
                    when 3 * COLS + 1 =>    fb_a_dat_in <= ascii_c('i');
                    when 3 * COLS + 2 =>    fb_a_dat_in <= ascii_c('g');
                    when 3 * COLS + 3 =>    fb_a_dat_in <= ascii_c('h');
                    when 3 * COLS + 4 =>    fb_a_dat_in <= ascii_c(':');
                    when 3 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 3 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 3 * COLS + 18 =>   fb_a_dat_in <= ascii_x(high, 3);
                    when 3 * COLS + 19 =>   fb_a_dat_in <= ascii_x(high, 2);
                    when 3 * COLS + 20 =>   fb_a_dat_in <= ascii_x(high, 1);
                    when 3 * COLS + 21 =>   fb_a_dat_in <= ascii_x(high, 0);
                    
                    when 4 * COLS + 0 =>    fb_a_dat_in <= ascii_c('P');
                    when 4 * COLS + 1 =>    fb_a_dat_in <= ascii_c('C');
                    when 4 * COLS + 2 =>    fb_a_dat_in <= ascii_c(':');
                    when 4 * COLS + 3 =>    fb_a_dat_in <= ascii_c(' ');
                    when 4 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 4 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 4 * COLS + 18 =>   fb_a_dat_in <= ascii_x(pc, 3);
                    when 4 * COLS + 19 =>   fb_a_dat_in <= ascii_x(pc, 2);
                    when 4 * COLS + 20 =>   fb_a_dat_in <= ascii_x(pc, 1);
                    when 4 * COLS + 21 =>   fb_a_dat_in <= ascii_x(pc, 0);
                    
                    when 5 * COLS + 0 =>    fb_a_dat_in <= ascii_c('D');
                    when 5 * COLS + 1 =>    fb_a_dat_in <= ascii_c('i');
                    when 5 * COLS + 2 =>    fb_a_dat_in <= ascii_c('c');
                    when 5 * COLS + 3 =>    fb_a_dat_in <= ascii_c('t');
                    when 5 * COLS + 4 =>    fb_a_dat_in <= ascii_c(':');
                    when 5 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 5 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 5 * COLS + 18 =>   fb_a_dat_in <= ascii_x(dict, 3);
                    when 5 * COLS + 19 =>   fb_a_dat_in <= ascii_x(dict, 2);
                    when 5 * COLS + 20 =>   fb_a_dat_in <= ascii_x(dict, 1);
                    when 5 * COLS + 21 =>   fb_a_dat_in <= ascii_x(dict, 0);
                    
                    when 6 * COLS + 0 =>    fb_a_dat_in <= ascii_c('O');
                    when 6 * COLS + 1 =>    fb_a_dat_in <= ascii_c('b');
                    when 6 * COLS + 2 =>    fb_a_dat_in <= ascii_c('j');
                    when 6 * COLS + 3 =>    fb_a_dat_in <= ascii_c(':');
                    when 6 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 6 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 6 * COLS + 18 =>   fb_a_dat_in <= ascii_x(objtab, 3);
                    when 6 * COLS + 19 =>   fb_a_dat_in <= ascii_x(objtab, 2);
                    when 6 * COLS + 20 =>   fb_a_dat_in <= ascii_x(objtab, 1);
                    when 6 * COLS + 21 =>   fb_a_dat_in <= ascii_x(objtab, 0);
                    
                    when 7 * COLS + 0 =>    fb_a_dat_in <= ascii_c('G');
                    when 7 * COLS + 1 =>    fb_a_dat_in <= ascii_c('l');
                    when 7 * COLS + 2 =>    fb_a_dat_in <= ascii_c('o');
                    when 7 * COLS + 3 =>    fb_a_dat_in <= ascii_c('b');
                    when 7 * COLS + 4 =>    fb_a_dat_in <= ascii_c('a');
                    when 7 * COLS + 5 =>    fb_a_dat_in <= ascii_c('l');
                    when 7 * COLS + 6 =>    fb_a_dat_in <= ascii_c('s');
                    when 7 * COLS + 7 =>    fb_a_dat_in <= ascii_c(':');
                    when 7 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 7 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 7 * COLS + 18 =>   fb_a_dat_in <= ascii_x(globals, 3);
                    when 7 * COLS + 19 =>   fb_a_dat_in <= ascii_x(globals, 2);
                    when 7 * COLS + 20 =>   fb_a_dat_in <= ascii_x(globals, 1);
                    when 7 * COLS + 21 =>   fb_a_dat_in <= ascii_x(globals, 0);
                    
                    when 8 * COLS + 0 =>    fb_a_dat_in <= ascii_c('S');
                    when 8 * COLS + 1 =>    fb_a_dat_in <= ascii_c('t');
                    when 8 * COLS + 2 =>    fb_a_dat_in <= ascii_c('a');
                    when 8 * COLS + 3 =>    fb_a_dat_in <= ascii_c('t');
                    when 8 * COLS + 4 =>    fb_a_dat_in <= ascii_c('i');
                    when 8 * COLS + 5 =>    fb_a_dat_in <= ascii_c('c');
                    when 8 * COLS + 6 =>    fb_a_dat_in <= ascii_c(':');
                    when 8 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 8 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 8 * COLS + 18 =>   fb_a_dat_in <= ascii_x(static, 3);
                    when 8 * COLS + 19 =>   fb_a_dat_in <= ascii_x(static, 2);
                    when 8 * COLS + 20 =>   fb_a_dat_in <= ascii_x(static, 1);
                    when 8 * COLS + 21 =>   fb_a_dat_in <= ascii_x(static, 0);
                    
                    when 9 * COLS + 0 =>    fb_a_dat_in <= ascii_c('A');
                    when 9 * COLS + 1 =>    fb_a_dat_in <= ascii_c('b');
                    when 9 * COLS + 2 =>    fb_a_dat_in <= ascii_c('b');
                    when 9 * COLS + 3 =>    fb_a_dat_in <= ascii_c('r');
                    when 9 * COLS + 4 =>    fb_a_dat_in <= ascii_c('e');
                    when 9 * COLS + 5 =>    fb_a_dat_in <= ascii_c('v');
                    when 9 * COLS + 6 =>    fb_a_dat_in <= ascii_c(':');
                    when 9 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 9 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 9 * COLS + 18 =>   fb_a_dat_in <= ascii_x(abbreviations, 3);
                    when 9 * COLS + 19 =>   fb_a_dat_in <= ascii_x(abbreviations, 2);
                    when 9 * COLS + 20 =>   fb_a_dat_in <= ascii_x(abbreviations, 1);
                    when 9 * COLS + 21 =>   fb_a_dat_in <= ascii_x(abbreviations, 0);
                    
                    when 10 * COLS + 0 =>    fb_a_dat_in <= ascii_c('L');
                    when 10 * COLS + 1 =>    fb_a_dat_in <= ascii_c('e');
                    when 10 * COLS + 2 =>    fb_a_dat_in <= ascii_c('n');
                    when 10 * COLS + 3 =>    fb_a_dat_in <= ascii_c('g');
                    when 10 * COLS + 4 =>    fb_a_dat_in <= ascii_c('t');
                    when 10 * COLS + 5 =>    fb_a_dat_in <= ascii_c('h');
                    when 10 * COLS + 6 =>    fb_a_dat_in <= ascii_c(':');
                    when 10 * COLS + 16 =>   fb_a_dat_in <= ascii_i(length, 4);
                    when 10 * COLS + 17 =>   fb_a_dat_in <= ascii_i(length, 3);
                    when 10 * COLS + 18 =>   fb_a_dat_in <= ascii_i(length, 2);
                    when 10 * COLS + 19 =>   fb_a_dat_in <= ascii_i(length, 1);
                    when 10 * COLS + 20 =>   fb_a_dat_in <= ascii_i(length, 0);
                    
                    when 11 * COLS + 0 =>    fb_a_dat_in <= ascii_c('C');
                    when 11 * COLS + 1 =>    fb_a_dat_in <= ascii_c('h');
                    when 11 * COLS + 2 =>    fb_a_dat_in <= ascii_c('e');
                    when 11 * COLS + 3 =>    fb_a_dat_in <= ascii_c('c');
                    when 11 * COLS + 4 =>    fb_a_dat_in <= ascii_c('k');
                    when 11 * COLS + 5 =>    fb_a_dat_in <= ascii_c('s');
                    when 11 * COLS + 6 =>    fb_a_dat_in <= ascii_c('u');
                    when 11 * COLS + 7 =>    fb_a_dat_in <= ascii_c('m');
                    when 11 * COLS + 8 =>    fb_a_dat_in <= ascii_c(':');
                    when 11 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 11 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 11 * COLS + 18 =>   fb_a_dat_in <= ascii_x(checksum, 3);
                    when 11 * COLS + 19 =>   fb_a_dat_in <= ascii_x(checksum, 2);
                    when 11 * COLS + 20 =>   fb_a_dat_in <= ascii_x(checksum, 1);
                    when 11 * COLS + 21 =>   fb_a_dat_in <= ascii_x(checksum, 0);
                    
                    when 12 * COLS + 0 =>    fb_a_dat_in <= ascii_c('R');
                    when 12 * COLS + 1 =>    fb_a_dat_in <= ascii_c('A');
                    when 12 * COLS + 2 =>    fb_a_dat_in <= ascii_c('M');
                    when 12 * COLS + 3 =>    fb_a_dat_in <= ascii_c(' ');
                    when 12 * COLS + 4 =>    fb_a_dat_in <= ascii_c('R');
                    when 12 * COLS + 5 =>    fb_a_dat_in <= ascii_c('e');
                    when 12 * COLS + 6 =>    fb_a_dat_in <= ascii_c('a');
                    when 12 * COLS + 7 =>    fb_a_dat_in <= ascii_c('d');
                    when 12 * COLS + 8 =>    fb_a_dat_in <= ascii_c(':');
                    when 12 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 12 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 12 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(ram_dat_r)), 3);
                    when 12 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(ram_dat_r)), 2);
                    when 12 * COLS + 20 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(ram_dat_r)), 1);
                    when 12 * COLS + 21 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(ram_dat_r)), 0);
                    when 12 * COLS + 32 =>   fb_a_dat_in <= ascii_i(to_integer(unsigned(ram_dat_r)), 4);
                    when 12 * COLS + 33 =>   fb_a_dat_in <= ascii_i(to_integer(unsigned(ram_dat_r)), 3);
                    when 12 * COLS + 34 =>   fb_a_dat_in <= ascii_i(to_integer(unsigned(ram_dat_r)), 2);
                    when 12 * COLS + 35 =>   fb_a_dat_in <= ascii_i(to_integer(unsigned(ram_dat_r)), 1);
                    when 12 * COLS + 36 =>   fb_a_dat_in <= ascii_i(to_integer(unsigned(ram_dat_r)), 0);
                    
                    when 13 * COLS + 0 =>    fb_a_dat_in <= ascii_c('I');
                    when 13 * COLS + 1 =>    fb_a_dat_in <= ascii_c('n');
                    when 13 * COLS + 2 =>    fb_a_dat_in <= ascii_c('s');
                    when 13 * COLS + 3 =>    fb_a_dat_in <= ascii_c('t');
                    when 13 * COLS + 4 =>    fb_a_dat_in <= ascii_c('r');
                    when 13 * COLS + 5 =>    fb_a_dat_in <= ascii_c('u');
                    when 13 * COLS + 6 =>    fb_a_dat_in <= ascii_c('c');
                    when 13 * COLS + 7 =>    fb_a_dat_in <= ascii_c('t');
                    when 13 * COLS + 8 =>    fb_a_dat_in <= ascii_c('i');
                    when 13 * COLS + 9 =>    fb_a_dat_in <= ascii_c('o');
                    when 13 * COLS + 10 =>   fb_a_dat_in <= ascii_c('n');
                    when 13 * COLS + 11 =>   fb_a_dat_in <= ascii_c(':');
                    when 13 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 13 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 13 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(instruction_raw)), 1);
                    when 13 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(instruction_raw)), 0);
                    
                    when 14 * COLS + 0 =>    fb_a_dat_in <= ascii_c('O');
                    when 14 * COLS + 1 =>    fb_a_dat_in <= ascii_c('P');
                    when 14 * COLS + 2 =>    fb_a_dat_in <= ascii_c('0');
                    when 14 * COLS + 3 =>    fb_a_dat_in <= ascii_c(':');
                    when 14 * COLS + 4 =>    fb_a_dat_in <= ascii_c(' ');
                    when 14 * COLS + 5 =>    fb_a_dat_in <= ascii_b(op0_type(1));
                    when 14 * COLS + 6 =>    fb_a_dat_in <= ascii_b(op0_type(0));
                    when 14 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 14 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 14 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op0)), 3);
                    when 14 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op0)), 2);
                    when 14 * COLS + 20 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op0)), 1);
                    when 14 * COLS + 21 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op0)), 0);
                    
                    when 15 * COLS + 0 =>    fb_a_dat_in <= ascii_c('O');
                    when 15 * COLS + 1 =>    fb_a_dat_in <= ascii_c('P');
                    when 15 * COLS + 2 =>    fb_a_dat_in <= ascii_c('1');
                    when 15 * COLS + 3 =>    fb_a_dat_in <= ascii_c(':');
                    when 15 * COLS + 4 =>    fb_a_dat_in <= ascii_c(' ');
                    when 15 * COLS + 5 =>    fb_a_dat_in <= ascii_b(op1_type(1));
                    when 15 * COLS + 6 =>    fb_a_dat_in <= ascii_b(op1_type(0));
                    when 15 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 15 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 15 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op1)), 3);
                    when 15 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op1)), 2);
                    when 15 * COLS + 20 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op1)), 1);
                    when 15 * COLS + 21 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op1)), 0);
                    
                    when 16 * COLS + 0 =>    fb_a_dat_in <= ascii_c('O');
                    when 16 * COLS + 1 =>    fb_a_dat_in <= ascii_c('P');
                    when 16 * COLS + 2 =>    fb_a_dat_in <= ascii_c('2');
                    when 16 * COLS + 3 =>    fb_a_dat_in <= ascii_c(':');
                    when 16 * COLS + 4 =>    fb_a_dat_in <= ascii_c(' ');
                    when 16 * COLS + 5 =>    fb_a_dat_in <= ascii_b(op2_type(1));
                    when 16 * COLS + 6 =>    fb_a_dat_in <= ascii_b(op2_type(0));
                    when 16 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 16 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 16 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op2)), 3);
                    when 16 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op2)), 2);
                    when 16 * COLS + 20 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op2)), 1);
                    when 16 * COLS + 21 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op2)), 0);
                    
                    when 17 * COLS + 0 =>    fb_a_dat_in <= ascii_c('O');
                    when 17 * COLS + 1 =>    fb_a_dat_in <= ascii_c('P');
                    when 17 * COLS + 2 =>    fb_a_dat_in <= ascii_c('3');
                    when 17 * COLS + 3 =>    fb_a_dat_in <= ascii_c(':');
                    when 17 * COLS + 4 =>    fb_a_dat_in <= ascii_c(' ');
                    when 17 * COLS + 5 =>    fb_a_dat_in <= ascii_b(op3_type(1));
                    when 17 * COLS + 6 =>    fb_a_dat_in <= ascii_b(op3_type(0));
                    when 17 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 17 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 17 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op3)), 3);
                    when 17 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op3)), 2);
                    when 17 * COLS + 20 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op3)), 1);
                    when 17 * COLS + 21 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(op3)), 0);
                    
                    when 18 * COLS + 0 =>    fb_a_dat_in <= ascii_c('S');
                    when 18 * COLS + 1 =>    fb_a_dat_in <= ascii_c('t');
                    when 18 * COLS + 2 =>    fb_a_dat_in <= ascii_c('o');
                    when 18 * COLS + 3 =>    fb_a_dat_in <= ascii_c('r');
                    when 18 * COLS + 4 =>    fb_a_dat_in <= ascii_c('e');
                    when 18 * COLS + 5 =>    fb_a_dat_in <= ascii_c(':');
                    when 18 * COLS + 6 =>    fb_a_dat_in <= ascii_c(' ');
                    when 18 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 18 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 18 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(store_var)), 1);
                    when 18 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(store_var)), 0);
                    
                    when 19 * COLS + 0 =>    fb_a_dat_in <= ascii_c('B');
                    when 19 * COLS + 1 =>    fb_a_dat_in <= ascii_c('r');
                    when 19 * COLS + 2 =>    fb_a_dat_in <= ascii_c('a');
                    when 19 * COLS + 3 =>    fb_a_dat_in <= ascii_c('n');
                    when 19 * COLS + 4 =>    fb_a_dat_in <= ascii_c('c');
                    when 19 * COLS + 5 =>    fb_a_dat_in <= ascii_c('h');
                    when 19 * COLS + 6 =>    fb_a_dat_in <= ascii_c(':');
                    when 19 * COLS + 7 =>    fb_a_dat_in <= ascii_c(' ');
                    when 19 * COLS + 16 =>   fb_a_dat_in <= ascii_c('0');
                    when 19 * COLS + 17 =>   fb_a_dat_in <= ascii_c('x');
                    when 19 * COLS + 18 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(branch_offset)), 3);
                    when 19 * COLS + 19 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(branch_offset)), 2);
                    when 19 * COLS + 20 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(branch_offset)), 1);
                    when 19 * COLS + 21 =>   fb_a_dat_in <= ascii_x(to_integer(unsigned(branch_offset)), 0);

                    when others =>
                        -- Nothing
                end case;
                cursor := cursor_delta(cursor);
                if cursor = 0 then
                    state := DEBUG_KB;
                    cursor := 32 * COLS;
                end if;
            when DEBUG_KB =>
                if kb_event = '1' then
                    -- By default, we want to write a space to the current position
                    fb_a_en <= '1';
                    fb_a_we <= "1";
                    fb_a_addr <= std_logic_vector(to_unsigned(cursor, 14));
                    fb_a_dat_in <= "00100000";  -- space
                    
                    -- IF Backspace
                    if kb_acsii = "0001000" then
                        cursor := cursor_delta(cursor, -1);
                    -- ELSE IF Enter (treated like carage return, not line feed)
                    elsif kb_acsii = "0001101" then
                        if cursor / COLS = (ROWS - 1) then
                            state := SCROLL;
                            next_state := DEBUG_KB;
                            cursor := 0;
                        else
                            cursor := cursor_delta(cursor, COLS - (cursor mod COLS));    
                        end if;
                    -- ELSE IF NULL Continue
                    elsif kb_acsii = "0000000" then
                        state := FETCH;
                    -- ELSE IF Delete (wipe whole screen)
                    elsif kb_acsii = "1111111" then
                        fb_a_en <= '0';
                        fb_a_we <=  "0";
                        cursor := 0;
                        state := BLANK;
                        next_state := DEBUG_KB;
                    -- OTHERWISE print character to screen
                    else
                        fb_a_dat_in <= '0' & kb_acsii;
                        cursor := cursor_delta(cursor);
                    end if;
                -- No kb event, blink cursors
                else
                    fb_a_en <= '1';
                    fb_a_we <= "1";
                    fb_a_addr <= std_logic_vector(to_unsigned(cursor, 14));
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
