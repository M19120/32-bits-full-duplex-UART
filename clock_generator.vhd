library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



entity clock_generator is

	port(
		clock: in std_logic; -- reloj de 50Mhz
		baudios: out std_logic -- señal de 9600hz
		--sampling_16: out std_logic -- señal de 16*9600hz 
	);

end entity;
architecture behavior of clock_generator  is

--declaracion de señales
signal count_baudios: INTEGER range 0 to 2604; -- cuentas para 9600hz
signal clock_temp_baudios : std_logic:='0'; -- salida temporal de 9600hz
signal count_sampling: INTEGER range 0 to 163; -- cuentas para 16*9600hz
signal clock_temp_sampling : std_logic:='0';--salida temporal para 16*9600hz
begin
--proceso para generar 9600hz
baud_rate: process(clock)
begin	
if(rising_edge(clock)) then

				if( count_baudios<2604 ) then 
					count_baudios <= count_baudios+1;
				else
					clock_temp_baudios <= not clock_temp_baudios;
					count_baudios <= 0;
				end if;
end if;			
end process;



baudios <= clock_temp_baudios; --manda a la salida de 9600hz
--
--
--
--
---- proceso para generar 16*9600hz
--sample_rate: process(clock)
--
--begin
--
--if(rising_edge(clock)) then
--
--				if( count_sampling<163 ) then 
--					count_sampling <= count_sampling+1;
--				else
--					clock_temp_sampling  <= not clock_temp_sampling ;
--					count_sampling <= 0;
--				end if;
--end if;
--	
--		
--end process;
--
--sampling_16 <= clock_temp_sampling; -- manda a la salida de 16*9600hz
--		

end behavior;