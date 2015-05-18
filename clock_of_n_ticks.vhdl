library ieee;
use ieee.std_logic_1164.all;

entity clock_of_n_ticks is
    port (clock: out std_logic);
end clock_of_n_ticks;

architecture behavior of clock_of_n_ticks is
    signal clk: std_logic := '0';
begin
    process
        variable ticks_left: integer := 100;
    begin
        clock <= clk;
        if ticks_left = 0 then
            wait;
        end if;
        clk <= not clk after 10 ns;
        ticks_left := ticks_left - 1;
    end process;
end;
