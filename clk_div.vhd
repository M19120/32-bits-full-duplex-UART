library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

---Bloque para la division de la frecuencia de la FPGA DE 50 A 25MHz

entity clk_div is
	Port( clk  	: in  std_logic;
			clk_q	: out std_logic);
end clk_div;

architecture Behavioral of clk_div is 
	signal q: integer range 0 to 313; --Señal de un bit
	signal q_oi: std_logic:='0';
begin 
	process(clk)
	begin
	
		if(clk'event and clk ='1') then 
			if(q <313)then
				q<=q+1;
			else 
				q<=0;
				q_oi<= not q_oi;
			end if;
		end if;
	end process;
	
	clk_q<= q_oi;
	
end Behavioral;