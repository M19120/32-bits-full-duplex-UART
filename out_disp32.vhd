library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity out_disp32 is

	port 
	(
		clk: in std_logic;
		selec: in std_logic;
		reset: in std_logic;
		numeros: in std_logic_vector(31 downto 0);
		display: out std_logic_vector(6 downto 0);
		digitos: out std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of out_disp32 is

	constant cuenta: integer := 104166*2; --Frecuencia
	signal reset_count: integer range 0 to cuenta;
	signal refresh_state: std_logic_vector(1 downto 0):=(others =>'0');
	signal seleccion: std_logic_vector(3 downto 0):=(others =>'0');
	signal lecturas: std_logic_vector(3 downto 0);
	signal in_dato: std_logic_vector(15 downto 0);
	
begin
	
	digitos <= seleccion;
	
	Conteo_clk: process(clk)
	begin                                   --Proceso para el divisor de frecuencia (cuántos cuadros van a mostrar los displays)
		if clk'event and clk='1' then
			if reset_count < cuenta then 
				reset_count <= reset_count + 1;
			else 
				refresh_state <= refresh_state + 1;
				reset_count <= 0;
			end if;
		end if;
	end process;
	
	mostrar_displays: process(refresh_state, seleccion, lecturas, numeros,selec)

	begin
			
		case selec is
			when '1' => in_dato <= numeros(31 downto 16);
			when '0' => in_dato <= numeros(15 downto 0);
		end case;		
	
		case refresh_state is                            --Selección de cada display (4 totales)
			when "00" => seleccion <="1110"; --display 4
			when "01" => seleccion <="1101"; --display 3
			when "10" => seleccion <="1011"; --display 2
			when "11" => seleccion <="0111"; --display 1
			when others => seleccion <= "0000";
		end case;
		
		case seleccion is    --Después de seleccionar 1 de los 4 displays, toma lectura de los DIP switches para mostrar los números (del 0 al 9)
			when "1110" => lecturas <= in_dato(15 downto 12); 	--0
			when "1101" => lecturas <= in_dato(11 downto 8);	--1
			when "1011" => lecturas <= in_dato(7 downto 4);		--2
			when "0111" => lecturas <= in_dato(3 downto 0); 	--3
			when others => lecturas <= (others=>'0');						--apagado
		end case;
		
		case lecturas is 				--gfedcba           --Ánodo común
			when "0000"=> display <= "1000000"; --0
			when "0001"=> display <= "1111001"; --1
			when "0010"=> display <= "0100100"; --2
			when "0011"=> display <= "0110000"; --3
			when "0100"=> display <= "0011001"; --4
			when "0101"=> display <= "0010010"; --5
			when "0110"=> display <= "0000010"; --6
			when "0111"=> display <= "1111000"; --7
			when "1000"=> display <= "0000000"; --8
			when "1001"=> display <= "0011000"; --9
			when "1010"=> display <= "0001000"; --A
			when "1011"=> display <= "0000011"; --B
			when "1100"=> display <= "1000110"; --C
			when "1101"=> display <= "0100001"; --D
			when "1110"=> display <= "0000110"; --E
			when "1111"=> display <= "0001110"; --F
			when others => display <= "0111111";--error
		end case;
	end process;
end rtl;