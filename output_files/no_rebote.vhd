library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity no_rebote is 
port(	btn_in: in std_logic;
		clk: in std_logic;
		bot_o: out std_logic
);
end entity;

architecture rtl of no_rebote is 
constant count: integer := 19; 
signal btn_prev: std_logic :='0';
signal counter: integer range 0 to count;
begin 
	process(clk)
	begin
		if(clk'event and clk= '1')then
			if((btn_prev xor btn_in)='1')then 
				counter<= 0;
				btn_prev <= btn_in;
			elsif(counter = 0) then 
				counter<=counter +1;
			else 
				bot_o<=btn_prev;
			end if;
		end if;
	end process;
end rtl;