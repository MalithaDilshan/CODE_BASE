--implement the functionality of the register
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity reg1 is
    port(
         clk          : in std_logic;
         R_enable     : in std_logic;    -- enable signal
         d            : in std_logic_vector(7 downto 0);  -- input vector
         q            : out std_logic_vector(7 downto 0)  -- output vector
         );
end entity reg1;

architecture new_arc of reg1 is

begin

    process(clk)
    begin
      if rising_edge(clk) then
        if(R_enable = '1')then
          q <= d;
        else 
          q <= "00000000";
        end if;
      end if;
      
    end process;

end architecture; 
        
         
