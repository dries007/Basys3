library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

entity top is
    Port (  
        vgaRed : out STD_LOGIC_VECTOR (3 downto 0);
        vgaGreen : out STD_LOGIC_VECTOR (3 downto 0);
        vgaBlue : out STD_LOGIC_VECTOR (3 downto 0);
        Hsync : out STD_LOGIC;
        Vsync : out STD_LOGIC;
        led : out STD_LOGIC_VECTOR (15 downto 0);
        sw : in STD_LOGIC_VECTOR (15 downto 0);
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
        clkIn : in std_logic;
        clk108M : out std_logic;
        clk10M : out std_logic
    );
end component;

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

component Framebuffer is
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

type state_type is (splash, writing, blank, halt);
signal current_s, next_s : state_type := splash;

signal clk_108M : std_logic := '0';
signal clk_10M : std_logic := '0';
signal clk_10 : std_logic := '0';
signal clk_2 : std_logic := '0';
signal clk_1 : std_logic := '0';
signal clk_1k : std_logic := '0';

signal fb_in_we : std_logic_vector(0 downto 0) := (others =>'1');
signal fb_in_addr : std_logic_vector(13 downto 0) := (others =>'0');
signal fb_in_dat : std_logic_vector(7 downto 0) := (others =>'0');

signal fb_out_addr : std_logic_vector(13 downto 0) := (others =>'0');
signal fb_out_dat : std_logic_vector(7 downto 0) := (others =>'0');

signal rng_seed : std_logic_vector(15 downto 0) := (others =>'0');
signal rng_seed_en : std_logic := '0';
signal rng_clk : std_logic := '0';
signal rng_out : std_logic_vector(15 downto 0) := (others =>'0');

signal runtime : unsigned(32 downto 0) := (others => '0');

--------------------------------------------------------
begin --                      BEGIN
--------------------------------------------------------

clock0: ClockDivider 
    port map (
        clkIn => clk,
        clk108M => clk_108M,
        clk10M => clk_10M
    );

vga0: Vga
    port map (
        clk => clk_108M,
        hSync => Hsync,
        vSync => Vsync,
        vgaRed => vgaRed,
        vgaGreen => vgaGreen,
        vgaBlue => vgaBlue,
        fbOutAddr => fb_out_addr,
        fbOutDat => fb_out_dat
    );

frameBuffer0: Framebuffer
    port map (
        clka => clk,
        wea => fb_in_we,
        addra => fb_in_addr,
        dina => fb_in_dat,
        
        clkb => clk_108M,
        addrb => fb_out_addr,
        doutb => fb_out_dat
    );

prng0: Prng
    port map (
        seed => rng_seed,
        seed_en => rng_seed_en,
        clk => rng_clk,
        rnd => rng_out
    );


-- PRNG test
rng_seed <= sw;
led <= rng_out;
process (clk_10)
begin
    if rising_edge(clk_10) then
        if btnL = '1' then
            rng_seed_en <= '1';
            rng_clk <= not(rng_clk);
        else
            rng_seed_en <= '0';
        end if;
        if btnR = '1' then
            rng_clk <= not(rng_clk);
        end if;
    end if;
end process;


-- debug info
-- led <= (clk_1, clk_2, runtime(13 downto 0));
-- led <= clk_1 & clk_2 & std_logic_vector(runtime(17 downto 4));

-- slow clock devider
process (clk_10M)
    constant MAX : integer := 10000000/2;
    variable counter : integer range 0 to MAX := 0;
begin
    if rising_edge(clk_10M) then
        if counter < MAX then
            counter := counter + 1;
        else
            counter := 0;
        end if;
        if counter = 0 then
            clk_1 <= not(clk_1);
        end if;
        if counter mod (MAX / 2) = 0 then
            clk_2 <= not(clk_2);
        end if;
        if counter mod (MAX / 1000) = 0 then
            clk_1k <= not(clk_1k);
        end if;
        if counter mod (MAX / 10) = 0 then
            clk_10 <= not(clk_10);
        end if;
    end if;
end process;

-- runtime counter
process (clk_1k)
begin
    if rising_edge(clk_1k) then
        runtime <= runtime + 1;
    end if;
end process;

-- next state
process (current_s, clk)
begin
    if rising_edge(clk) then
        current_s <= next_s;   --state change.        
    end if;
end process;

----state machine process.
--process (current_s, input)
--begin
--    case current_s is
--        when splash =>
            
--        when writing =>
        
--    end case;
--end process;

--process (current_s, clk, btnC)
--begin
--  if rising_edge(clk) and current_s = splash and btnC = '1' then
--    next_s <= halt;
--  end if;
--end process;

-- SPLASH STATE
process (clk, current_s, clk_2, clk_1, btnC)
    constant BLINKDATA : string := "Press any key to continue...";
    variable counter : integer range 0 to 10240 := 0;
begin
    if rising_edge(clk) then
        if current_s = splash then
            if counter >= blinkData'LENGTH then
                counter := 0;
            else
                counter := counter + 1;
            end if;
            fb_in_dat <= clk_1 & conv_std_logic_vector(character'pos(BLINKDATA(counter + 1)), 7);
            fb_in_addr <= conv_std_logic_vector(160 * 21 + 66 + counter, 14);
            if clk_1 = '1' and btnC = '1' then
                next_s <= blank;
            end if;
        elsif current_s = halt then
            if clk_1 = '0' and btnC = '1' then
                next_s <= splash;
            end if;
        elsif current_s = blank then
            if counter = 10240 then
                counter := 0;
                next_s <= halt;
            else
                counter := counter + 1;
            end if;
            fb_in_addr <= conv_std_logic_vector(counter, 14);
            fb_in_dat <= "00000000";
        end if;
    end if;
end process;

end Behavioral;
