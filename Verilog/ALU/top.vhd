
--initialize all components for the top module.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity top is
    port(
        clk      :in std_logic; 
        a        :in std_logic_vector(7 downto 0); 
        b        :in std_logic_vector(7 downto 0); 
        ctrl_bus :in std_logic_vector(7 downto 0);  -- control informations
        q        :out std_logic_vector(7 downto 0) 
        );
end entity top;

architecture behavior_top of top is

--initialize signals

signal mux_res : std_logic_vector(7 downto 0);
signal alu_res : std_logic_vector(7 downto 0);
signal shift_res : std_logic_vector(7 downto 0);
signal r_reg_res : std_logic_vector(7 downto 0);
signal opcode1 : std_logic_vector(2 downto 0) := "000";
signal shift_op: std_logic_vector(1 downto 0);
signal mux_sel : std_logic;
signal R_enable: std_logic;
signal Q_enable: std_logic;


--initialize the components 

 component alu is
	port(
        opcode1  :in std_logic_vector(2 downto 0); 
        a        :in std_logic_vector(7 downto 0); 
        m        :in std_logic_vector(7 downto 0); 
        res      :out std_logic_vector(7 downto 0) 
        );
 end component;

 component shift_reg is
    port(
    	clk      :in std_logic;
        shift_op :in std_logic_vector(1 downto 0); 
        b        :in std_logic_vector(7 downto 0); 
        res      :out std_logic_vector(7 downto 0) 
        );
 end component;

 component mux is
    port(
        mux_sel  :in std_logic; 
        b        :in std_logic_vector(7 downto 0); 
        q        :in std_logic_vector(7 downto 0); 
        res      :out std_logic_vector(7 downto 0) 
        );
 end component;

 component reg1 is
    port(
         clk          : in std_logic;
         R_enable     : in std_logic;    -- enable signal
         d            : in std_logic_vector(7 downto 0);  -- input vector
         q            : out std_logic_vector(7 downto 0)  -- output vector
         );
 end component;

 begin
     my_alu       :alu port map (opcode1,a,mux_res,alu_res);
     my_shift_reg :shift_reg port map (clk,shift_op,alu_res,shift_res);
     my_reg_1     :reg1 port map (clk,R_enable,shift_res,r_reg_res);
     my_mux :mux port map (mux_sel,b,r_reg_res,mux_res);
     my_reg_2     :reg1 port map (clk,Q_enable,shift_res,q);

 process (clk) begin
    
    if rising_edge(clk) then
        opcode1 <= ctrl_bus(2 downto 0);
        mux_sel <= ctrl_bus(3);
        shift_op <= ctrl_bus(5 downto 4);
        Q_enable <= ctrl_bus(6);
        R_enable <= ctrl_bus(7);  

    end if;

end process;
end architecture; 

