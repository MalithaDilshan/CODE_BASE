
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity alu is
    port(
        opcode1  :in std_logic_vector(2 downto 0); 
        a        :in std_logic_vector(7 downto 0); 
        m        :in std_logic_vector(7 downto 0); 
        res      :out std_logic_vector(7 downto 0) 
        );
end entity alu;

architecture behavior_alu of alu is
begin
process(opcode1,m) begin
    case opcode1 is    --operation according to the opcode
        when "000" => res <= a;
        when "001" => res <= a + m;
        when "010" => res <= a - m;
        when "011" => res <= m - a;
        when "100" => res <= 0-(a + m);
        when "101" => res <= a and m;
        when "110" => res <= a or  m;
        when "111" => res <= a xor m;
        when others => NULL;       --default case
    end case;
    
end process;
end architecture; 

