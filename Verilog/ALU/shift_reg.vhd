
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity shift_reg is
    port(
    	clk      :in std_logic;
        shift_op :in std_logic_vector(1 downto 0); 
        b        :in std_logic_vector(7 downto 0); 
        res      :out std_logic_vector(7 downto 0) 
        );
end entity shift_reg;

architecture behavior_shift of shift_reg is
signal temp : bit_vector(7 downto 0);

begin
process(clk) begin

    temp <= to_bitvector(b);
	if rising_edge(clk) then
    	case shift_op is    --operation according to the opcode
        	when "00" => res <= b;
        	when "01" => 
                    res  <= to_stdlogicvector(temp sll 1);  -- shift by one
        	when "10" =>
                    res  <= to_stdlogicvector(temp sll 2);  -- shift by two
        	when "11" => 
                    res  <= to_stdlogicvector(temp sll 3);  -- shift by three
        	when others => NULL;       --default case
    	end case;
    end if;
    
end process;
end architecture; 



