
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mux is
    port(
        mux_sel  :in std_logic; 
        b        :in std_logic_vector(7 downto 0); 
        q        :in std_logic_vector(7 downto 0); 
        res      :out std_logic_vector(7 downto 0) 
        );
end entity mux;

architecture behavior_mux of mux is
begin
process (mux_sel, b) begin
    case mux_sel is    --operation according to the opcode
        when '0' => res <= b;
        when '1' => res <= q;
        when others => NULL;       --default case
    end case;
    
end process;
end architecture; 



