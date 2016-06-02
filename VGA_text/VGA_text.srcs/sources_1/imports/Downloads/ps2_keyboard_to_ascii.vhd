--------------------------------------------------------------------------------
--
--   filename:         ps2_keyboard_to_ascii.vhd
--   dependencies:     ps2_keyboard.vhd, debounce.vhd
--   design software:  quartus ii 32-bit version 12.1 build 177 sj full version
--
--   hdl code is provided "as is."  digi-key expressly disclaims any
--   warranty of any kind, whether express or implied, including but not
--   limited to, the implied warranties of merchantability, fitness for a
--   particular purpose, or non-infringement. in no event shall digi-key
--   be liable for any incidental, special, indirect or consequential
--   damages, lost profits or lost data, harm to your equipment, cost of
--   procurement of substitute goods, technology or services, any claims
--   by third parties (including but not limited to any defense thereof),
--   any claims for indemnity or contribution, or other similar costs.
--
--   version history
--   version 1.0 11/29/2013 scott larson
--     initial public release
--    
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ps2_keyboard_to_ascii is
    generic
    (
        clk_freq                  : integer := 100_000_000 --system clock frequency in hz
    );
    port
    (
        clk        : in  std_logic;                     --system clock input
        ps2_clk    : in  std_logic;                     --clock signal from ps2 keyboard
        ps2_data   : in  std_logic;                     --data signal from ps2 keyboard
        ascii_new  : out std_logic;                     --output flag indicating new ascii value
        ascii_code : out std_logic_vector(6 downto 0)   --ascii value
    );
end ps2_keyboard_to_ascii;

architecture behavior of ps2_keyboard_to_ascii is  
  type machine is(ready, new_code, translate, output);              --needed states
  signal state             : machine;                               --state machine
  signal ps2_code_new      : std_logic;                             --new ps2 code flag from ps2_keyboard component
  signal ps2_code          : std_logic_vector(7 downto 0);          --ps2 code input form ps2_keyboard component
  signal prev_ps2_code_new : std_logic := '1';                      --value of ps2_code_new flag on previous clock
  signal break             : std_logic := '0';                      --'1' for break code, '0' for make code
  signal e0_code           : std_logic := '0';                      --'1' for multi-code commands, '0' for single code commands
  signal caps_lock         : std_logic := '0';                      --'1' if caps lock is active, '0' if caps lock is inactive
  signal control_r         : std_logic := '0';                      --'1' if right control key is held down, else '0'
  signal control_l         : std_logic := '0';                      --'1' if left control key is held down, else '0'
  signal shift_r           : std_logic := '0';                      --'1' if right shift is held down, else '0'
  signal shift_l           : std_logic := '0';                      --'1' if left shift is held down, else '0'
  signal ascii             : std_logic_vector(7 downto 0) := x"ff"; --internal value of ascii translation

  --declare ps2 keyboard interface component
  component ps2_keyboard is
    generic(
      clk_freq              : integer  --system clock frequency in hz
    );
    port(
      clk          : in  std_logic;                     --system clock
      ps2_clk      : in  std_logic;                     --clock signal from ps2 keyboard
      ps2_data     : in  std_logic;                     --data signal from ps2 keyboard
      ps2_code_new : out std_logic;                     --flag that new ps/2 code is available on ps2_code bus
      ps2_code     : out std_logic_vector(7 downto 0)); --code received from ps/2
  end component;

begin

  --instantiate ps2 keyboard interface logic
  ps2_keyboard_0:  ps2_keyboard
    generic map(clk_freq => clk_freq)
    port map(clk => clk, ps2_clk => ps2_clk, ps2_data => ps2_data, ps2_code_new => ps2_code_new, ps2_code => ps2_code);

  process(clk)
  begin
    if(clk'event and clk = '1') then
      prev_ps2_code_new <= ps2_code_new; --keep track of previous ps2_code_new values to determine low-to-high transitions
      case state is
      
        --ready state: wait for a new ps2 code to be received
        when ready =>
            ascii_new <= '0';
          if(prev_ps2_code_new = '0' and ps2_code_new = '1') then --new ps2 code received
                                                   --reset new ascii code indicator
            state <= new_code;                                      --proceed to new_code state
          else                                                    --no new ps2 code received yet
            state <= ready;                                         --remain in ready state
          end if;
          
        --new_code state: determine what to do with the new ps2 code  
        when new_code =>
            ascii_new <= '0';
          if(ps2_code = x"f0") then    --code indicates that next command is break
            break <= '1';                --set break flag
            state <= ready;              --return to ready state to await next ps2 code
          elsif(ps2_code = x"e0") then --code indicates multi-key command
            e0_code <= '1';              --set multi-code command flag
            state <= ready;              --return to ready state to await next ps2 code
          else                         --code is the last ps2 code in the make/break code
            ascii(7) <= '1';             --set internal ascii value to unsupported code (for verification)
            state <= translate;          --proceed to translate state
          end if;

        --translate state: translate ps2 code to ascii value
        when translate =>
            ascii_new <= '0';
            break <= '0';    --reset break flag
            e0_code <= '0';  --reset multi-code command flag
            
            --handle codes for control, shift, and caps lock
            case ps2_code is
              when x"58" =>                   --caps lock code
                if(break = '0') then            --if make command
                  caps_lock <= not caps_lock;     --toggle caps lock
                end if;
              when x"14" =>                   --code for the control keys
                if(e0_code = '1') then          --code for right control
                  control_r <= not break;         --update right control flag
                else                            --code for left control
                  control_l <= not break;         --update left control flag
                end if;
              when x"12" =>                   --left shift code
                shift_l <= not break;           --update left shift flag
              when x"59" =>                   --right shift code
                shift_r <= not break;           --update right shift flag
              when others => null;
            end case;
            
            if(control_l = '0' and control_r = '0') then
              --translate characters that do not depend on shift, or caps lock
              if(e0_code = '1') then 
                -- Multi keys
                case ps2_code is
                  when x"71" => ascii <= x"7f"; --delete
                  when x"75" => ascii <= x"01"; --up
                  when x"72" => ascii <= x"02"; --down
                  when x"6b" => ascii <= x"03"; --left
                  when x"74" => ascii <= x"04"; --right
                  
                  -- Keypad controls
                  when x"a4" => ascii <= x"2f"; --/
                  when x"5a" => ascii <= x"0d"; --enter
                  
                  when others => null;
                end case;
              else
                -- Single characters
                case ps2_code is
                  when x"7e" => ascii <= x"00"; --null character, for scroll lock
                  when x"29" => ascii <= x"20"; --space
                  when x"66" => ascii <= x"08"; --backspace (bs control code)
                  when x"0d" => ascii <= x"09"; --tab (ht control code)
                  when x"5a" => ascii <= x"0d"; --enter (cr control code)
                  when x"76" => ascii <= x"1b"; --escape (esc control code)
                  
                  when x"05" => ascii <= x"0e"; --F1
                  when x"06" => ascii <= x"0f"; --F2
                  when x"04" => ascii <= x"10"; --F3
                  when x"0c" => ascii <= x"11"; --F4
                  when x"03" => ascii <= x"12"; --F5
                  when x"0b" => ascii <= x"13"; --F6
                  when x"83" => ascii <= x"14"; --F7
                  when x"0a" => ascii <= x"15"; --F8
                  when x"01" => ascii <= x"16"; --F9
                  when x"09" => ascii <= x"17"; --F10
                  when x"78" => ascii <= x"18"; --F11
                  when x"07" => ascii <= x"19"; --F12
                  
                  -- Keypad controls
                  when x"70" => ascii <= x"30"; --0
                  when x"69" => ascii <= x"31"; --1
                  when x"72" => ascii <= x"32"; --2
                  when x"7a" => ascii <= x"33"; --3
                  when x"6b" => ascii <= x"34"; --4
                  when x"73" => ascii <= x"35"; --5
                  when x"74" => ascii <= x"36"; --6
                  when x"6c" => ascii <= x"37"; --7
                  when x"75" => ascii <= x"38"; --8
                  when x"7d" => ascii <= x"39"; --9
                  
                  when x"7c" => ascii <= x"2a"; --*
                  when x"7b" => ascii <= x"2d"; ---
                  when x"79" => ascii <= x"2b"; --+
                  
                  when others => null;
                end case;
              end if;
              
              --translate letters (these depend on both shift and caps lock)
              if ((shift_r = '0' and shift_l = '0' and caps_lock = '0') or ((shift_r = '1' or shift_l = '1') and caps_lock = '1')) then
                --letter is lowercase
                case ps2_code is              
                  when x"1c" => ascii <= x"61"; --a
                  when x"32" => ascii <= x"62"; --b
                  when x"21" => ascii <= x"63"; --c
                  when x"23" => ascii <= x"64"; --d
                  when x"24" => ascii <= x"65"; --e
                  when x"2b" => ascii <= x"66"; --f
                  when x"34" => ascii <= x"67"; --g
                  when x"33" => ascii <= x"68"; --h
                  when x"43" => ascii <= x"69"; --i
                  when x"3b" => ascii <= x"6a"; --j
                  when x"42" => ascii <= x"6b"; --k
                  when x"4b" => ascii <= x"6c"; --l
                  when x"3a" => ascii <= x"6d"; --m
                  when x"31" => ascii <= x"6e"; --n
                  when x"44" => ascii <= x"6f"; --o
                  when x"4d" => ascii <= x"70"; --p
                  when x"15" => ascii <= x"71"; --q
                  when x"2d" => ascii <= x"72"; --r
                  when x"1b" => ascii <= x"73"; --s
                  when x"2c" => ascii <= x"74"; --t
                  when x"3c" => ascii <= x"75"; --u
                  when x"2a" => ascii <= x"76"; --v
                  when x"1d" => ascii <= x"77"; --w
                  when x"22" => ascii <= x"78"; --x
                  when x"35" => ascii <= x"79"; --y
                  when x"1a" => ascii <= x"7a"; --z

                  when x"45" => ascii <= x"30"; --0
                  when x"16" => ascii <= x"31"; --1
                  when x"1e" => ascii <= x"32"; --2
                  when x"26" => ascii <= x"33"; --3
                  when x"25" => ascii <= x"34"; --4
                  when x"2e" => ascii <= x"35"; --5
                  when x"36" => ascii <= x"36"; --6
                  when x"3d" => ascii <= x"37"; --7
                  when x"3e" => ascii <= x"38"; --8
                  when x"46" => ascii <= x"39"; --9
                  when x"52" => ascii <= x"27"; --'
                  when x"41" => ascii <= x"2c"; --,
                  when x"4e" => ascii <= x"2d"; ---
                  when x"49" => ascii <= x"2e"; --.
                  when x"4a" => ascii <= x"2f"; --/
                  when x"4c" => ascii <= x"3b"; --;
                  when x"55" => ascii <= x"3d"; --=
                  when x"54" => ascii <= x"5b"; --[
                  when x"5d" => ascii <= x"5c"; --\
                  when x"5b" => ascii <= x"5d"; --]
                  when x"0e" => ascii <= x"60"; --`
                  
                  when others => null;
                end case;
              else
                --letter is uppercase
                case ps2_code is            
                  when x"1c" => ascii <= x"41"; --a
                  when x"32" => ascii <= x"42"; --b
                  when x"21" => ascii <= x"43"; --c
                  when x"23" => ascii <= x"44"; --d
                  when x"24" => ascii <= x"45"; --e
                  when x"2b" => ascii <= x"46"; --f
                  when x"34" => ascii <= x"47"; --g
                  when x"33" => ascii <= x"48"; --h
                  when x"43" => ascii <= x"49"; --i
                  when x"3b" => ascii <= x"4a"; --j
                  when x"42" => ascii <= x"4b"; --k
                  when x"4b" => ascii <= x"4c"; --l
                  when x"3a" => ascii <= x"4d"; --m
                  when x"31" => ascii <= x"4e"; --n
                  when x"44" => ascii <= x"4f"; --o
                  when x"4d" => ascii <= x"50"; --p
                  when x"15" => ascii <= x"51"; --q
                  when x"2d" => ascii <= x"52"; --r
                  when x"1b" => ascii <= x"53"; --s
                  when x"2c" => ascii <= x"54"; --t
                  when x"3c" => ascii <= x"55"; --u
                  when x"2a" => ascii <= x"56"; --v
                  when x"1d" => ascii <= x"57"; --w
                  when x"22" => ascii <= x"58"; --x
                  when x"35" => ascii <= x"59"; --y
                  when x"1a" => ascii <= x"5a"; --z

                  when x"16" => ascii <= x"21"; --!
                  when x"52" => ascii <= x"22"; --"
                  when x"26" => ascii <= x"23"; --#
                  when x"25" => ascii <= x"24"; --$
                  when x"2e" => ascii <= x"25"; --%
                  when x"3d" => ascii <= x"26"; --&              
                  when x"46" => ascii <= x"28"; --(
                  when x"45" => ascii <= x"29"; --)
                  when x"3e" => ascii <= x"2a"; --*
                  when x"55" => ascii <= x"2b"; --+
                  when x"4c" => ascii <= x"3a"; --:
                  when x"41" => ascii <= x"3c"; --<
                  when x"49" => ascii <= x"3e"; -->
                  when x"4a" => ascii <= x"3f"; --?
                  when x"1e" => ascii <= x"40"; --@
                  when x"36" => ascii <= x"5e"; --^
                  when x"4e" => ascii <= x"5f"; --_
                  when x"54" => ascii <= x"7b"; --{
                  when x"5d" => ascii <= x"7c"; --|
                  when x"5b" => ascii <= x"7d"; --}
                  when x"0e" => ascii <= x"7e"; --~
                  
                  when others => null;
                end case;
              end if;
              
            end if;
          
          if (break = '0') then  --the code is a make
            state <= output;      --proceed to output state
          else                  --code is a break
            state <= ready;       --return to ready state to await next ps2 code
          end if;
        
        --output state: verify the code is valid and output the ascii value
        when output =>
          if ascii(7) = '0' then            --the ps2 code has an ascii output
            ascii_new <= '1';                  --set flag indicating new ascii output
            ascii_code <= ascii(6 downto 0);   --output the ascii value
          else
            ascii_new <= '0';
          end if;
          state <= ready;                    --return to ready state to await next ps2 code
      end case;
    end if;
  end process;

end behavior;
