library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Font.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity test2 is
end test2;

architecture Behavioral of test2 is

begin

process
    variable output : boolean;
    variable y : integer;
    variable x : integer;
    file      outfile  : text is out "out.txt";  --declare output file
    variable  outline  : line;   --line number declaration  
begin
    for yl in 0 to 15 loop
        for xl in 0 to 7 loop
            x := xl;
            y := yl;
            output := draw_char(xl, yl, 33);
            if output then
                write(outline, string'("1"));
            else
                write(outline, string'("0"));
            end if;
            wait for 1ps;
        end loop;
        writeline(outfile, outline);
    end loop;
    writeline(outfile, outline);
end process;

end Behavioral;
