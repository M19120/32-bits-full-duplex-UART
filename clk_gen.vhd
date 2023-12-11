library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

---Bloque para la division de la frecuencia de la FPGA DE 50 A 25MHz

entity clk_gen is
	Port( clk_i  	: in  std_logic;
			clk_o	: out std_logic);
end clk_gen;

architecture Behavioral of clk_gen is 
	signal q: integer range 0 to 312;
	signal clk_oi : std_logic:= '0'; 
	
begin 
	process(clk_i)
	begin
	
		if(clk_i'event and clk_i ='1') then 
			if(q < 312 ) then
				q<= q+1;
			else 
				q <= 0;
				clk_oi <= not clk_oi;
			end if;
		end if;
	end process;
	
	clk_o<= clk_oi; --25MHz
	
end Behavioral;