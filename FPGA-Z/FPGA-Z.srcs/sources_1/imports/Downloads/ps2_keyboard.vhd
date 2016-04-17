--------------------------------------------------------------------------------
--
--   filename:         ps2_keyboard.vhd
--   dependencies:     debounce.vhd
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
--   version 1.0 11/25/2013 scott larson
--     initial public release
--    
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ps2_keyboard is
  generic
  (
    clk_freq              : integer := 100_000_000 --system clock frequency in hz
  );
  port(
    clk          : in  std_logic;                     --system clock
    ps2_clk      : in  std_logic;                     --clock signal from ps/2 keyboard
    ps2_data     : in  std_logic;                     --data signal from ps/2 keyboard
    ps2_code_new : out std_logic;                     --flag that new ps/2 code is available on ps2_code bus
    ps2_code     : out std_logic_vector(7 downto 0)); --code received from ps/2
end ps2_keyboard;

architecture logic of ps2_keyboard is
  signal ps2_clk_int  : std_logic;                          --debounced clock signal from ps/2 keyboard
  signal ps2_data_int : std_logic;                          --debounced data signal from ps/2 keyboard
  signal ps2_word     : std_logic_vector(10 downto 0);      --stores the ps2 data word
  signal error        : std_logic;                          --validate parity, start, and stop bits
  signal count_idle   : integer range 0 to clk_freq/18_000; --counter to determine ps/2 is idle
begin

  --synchronizer flip-flops
  process(clk)
  begin
    if(clk'event and clk = '1') then  --rising edge of system clock
      ps2_clk_int <= ps2_clk;           --synchronize ps/2 clock signal
      ps2_data_int <= ps2_data;          --synchronize ps/2 data signal
    end if;
  end process;
  
  --input ps2 data
  process(ps2_clk_int)
  begin
    if(ps2_clk_int'event and ps2_clk_int = '0') then    --falling edge of ps2 clock
      ps2_word <= ps2_data_int & ps2_word(10 downto 1);   --shift in ps2 data bit
    end if;
  end process;
    
  --verify that parity, start, and stop bits are all correct
  error <= not (not ps2_word(0) and ps2_word(10) and (ps2_word(9) xor ps2_word(8) xor
        ps2_word(7) xor ps2_word(6) xor ps2_word(5) xor ps2_word(4) xor ps2_word(3) xor 
        ps2_word(2) xor ps2_word(1)));

  --determine if ps2 port is idle (i.e. last transaction is finished) and output result
  process(clk)
  begin
    if(clk'event and clk = '1') then           --rising edge of system clock
    
      if(ps2_clk_int = '0') then                 --low ps2 clock, ps/2 is active
        count_idle <= 0;                           --reset idle counter
      elsif(count_idle /= clk_freq/18_000) then  --ps2 clock has been high less than a half clock period (<55us)
          count_idle <= count_idle + 1;            --continue counting
      end if;
      
      if(count_idle = clk_freq/18_000 and error = '0') then  --idle threshold reached and no errors detected
        ps2_code_new <= '1';                                   --set flag that new ps/2 code is available
        ps2_code <= ps2_word(8 downto 1);                      --output new ps/2 code
      else                                                   --ps/2 port active or error detected
        ps2_code_new <= '0';                                   --set flag that ps/2 transaction is in progress
      end if;
      
    end if;
  end process;
  
end logic;
