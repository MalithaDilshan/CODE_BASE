--implement the test bench for the vhdl design
--libraries to be used are specified here
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;               

entity top_tb is
end entity;

architecture new_arc of top_tb is

    signal clk        :  std_logic := '1';
    signal a          :  std_logic_vector(7 downto 0);
    signal b          :  std_logic_vector(7 downto 0);
    signal ctrl_bus   :  std_logic_vector(7 downto 0);
    signal q          :  std_logic_vector(7 downto 0);
    
    signal clk_enable :  std_logic := '1';
    
    component top is
    port(
        clk      :in std_logic; 
        a        :in std_logic_vector(7 downto 0); 
        b        :in std_logic_vector(7 downto 0); 
        ctrl_bus :in std_logic_vector(7 downto 0);  -- control informations
        q        :out std_logic_vector(7 downto 0) 
        );
    end component;

   
    
    begin
    inst :top port map (clk,a,b,ctrl_bus,q);
      
    process begin
        clk <= not clk;
        if clk_enable = '0' then
            wait;
        else
            wait for 5ns;
        end if;
        
    end process;
    
    process begin

        clk_enable <= '1';

        a   <= "10101101";
        b   <= "01001110";

        ctrl_bus <= "11010001";

        report to_string(q);
        wait for 50ns;

        a   <= "10111101";
        b   <= "01101110";

        ctrl_bus <= "11010101";

        report to_string(q);
        wait for 100ns;

                
        clk_enable <= '0';  --stop the clock
        wait; 
        
    end process; 
      
end architecture;




