library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity no_rebo is 
port(	clk : in std_logic;
		rst: in std_logic;
		in_bot: in std_logic;
		out_bot: out std_logic
);
end entity;

architecture rtl of no_rebo is 
constant  count_size: integer := 19; -- periodo deseado*clk 50ms*50MHz 
    signal btn_prev   : std_logic := '0';
    signal counter    : std_logic_vector(count_size downto 0) := (others => '0');

begin
	process(clk,rst)
   begin
	if(rst = '0') then 
		counter<= (others=>'0');
		out_bot <= '0';
	elsif(clk'event and clk = '1') then 
		if (btn_prev xor in_bot) = '1' then
			counter <= (others => '0');
			btn_prev <= in_bot;
		elsif (counter(count_size) = '0') then
			counter <= counter + 1;
        	else
			out_bot <= btn_prev;
		end if;
	end if;

   end process;
end rtl;
