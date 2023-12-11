library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity rx_32bit is
generic(
		bit_time : integer := 267;
			half_bit_time : integer := 133
);
	Port(	clk	 	 :	in	 std_logic;								--Reloj
			rx_in		 :	in	 std_logic;								--Bit de entrada uart
			reset : in std_logic;
			rx_outinv : out std_logic_vector(31 downto 0);
			rx_out	 : out std_logic_vector(31 downto 0));	--Salida del byte recibido						
end entity;

architecture rtl of rx_32bit is 

	type state_type is (rx_idle,start,almacen,rx_databits,stop);		--Definicion de los estados
	signal state: state_type;										
	
	signal baud_count		 : integer range 0 to bit_time-1;--Para contar hasta 434
	signal bit_count		 : integer range 0 to 8;--para contar hasta 8 bits
	signal bit32_count	 : std_logic_vector(2 downto 0);

	signal rxbuff32		 : std_logic_vector(31 downto 0);--Buffer en donde se almacenan los 32 bits
	signal dato_temp		 : std_logic_vector(31 downto 0);--Buffer en donde se almacenan los 32 bits

	
begin

	process(clk,rx_in,reset)
	begin
	if(reset = '0') then 
		state<=rx_idle;
		bit_count<= 0;
		baud_count<= 0;
		bit32_count<="000";
		rxbuff32<=(others=>'0');
	elsif (clk'event and clk = '1') then
		case state is
			
			when rx_idle => 												--Inicia estado rx_idle
				
				baud_count <= 0;								--La señal baud_count se le asigna un valor de 0
				bit_count <= 0;									--La señal bit_count se le asigna un valor de 0
				if (rx_in = '1') then
					state <= rx_idle;										--Pasa al estado rx_idle					
				else
					state <= start;									--Pasa al estado start
				end if;
						
			when start =>												--Inicia estado start
				
				if (baud_count >= half_bit_time) then			--baud_count cuente hasta 1300
					baud_count <= 0;							--La señal baud_count se le asigna 0
					state <= almacen;									--Pasa al estado almacen
				else											
					baud_count <= baud_count + 1;					--Suma 1 a baud_count
					state <= start;									--Pasar al estado start
				end if;				
						
			when almacen =>												--Inicia estado almacen
					
				if (baud_count >= bit_time) then					--baud_count cuenta hasta 434
					baud_count <= 0;							--Variable con valor 0
					
					if (bit_count < 8) then					--Condicion para que bit_count cuente hasta 8
						
						if (bit32_count >= "000" and bit32_count <= "100") then --indicamos el rango en la parte de datos
							state <= rx_databits;						
						else
							state <= stop;							
						end if;
							
					else
						state <= rx_idle;								--Pasa al estado rx_idle
						bit32_count <= bit32_count + 1;							
					end if;
				else
					state <= almacen;									--Pasa al estado almacen
					baud_count <= baud_count + 1;					--Se le suma 1 a baud_count		
				end if;
					
			when rx_databits =>												--Inicia estado rx_databits
				case bit32_count is --caso para realizar la trasnmisión
					when "000" => 
						bit_count <= bit_count + 1;							--Se suma 1 a bit_count
						state <= almacen;											--Pasa al estado almacen							
					when "001" =>
						rxbuff32(7) <= rx_in;									--Lectura y asignacion del valor de los datos asginados a el primer bit del buffer rxbuff
						rxbuff32(6 downto 0) <= rxbuff32(7 downto 1);	--Corrimiento del los datos
						bit_count <= bit_count + 1;							--Se suma 1 a bit_count
						state <= almacen;											--Pasa al estado almacen				
					when "010" => 
						rxbuff32(15) <= rx_in;									--Lectura y asignacion del valor de los datos asginados a el primer bit del buffer rxbuff
						rxbuff32(14 downto 8) <= rxbuff32(15 downto 9);	--Corrimiento de los datos
						bit_count <= bit_count + 1;							--Se suma 1 a bit_count
						state <= almacen;											--Pasa al estado almacen
							
					when "011" => 
						rxbuff32(23) <= rx_in;									--Lectura y asignacion del valor de los datos asginados a el primer bit del buffer rxbuff
						rxbuff32(22 downto 16) <= rxbuff32(23 downto 17);--Corrimiento del los datos				
						bit_count <= bit_count + 1;							--Se suma 1 a bit_count
						state <= almacen;											--Pasa al estado almacen
							
					when "100" =>		
						rxbuff32(31) <= rx_in;									--Lectura y asignacion del valor de los datos asginados a el primer bit del buffer rxbuff
						rxbuff32(30 downto 24) <= rxbuff32(31 downto 25);--Corrimiento del los datos		
						bit_count <= bit_count + 1;							--Se suma 1 a bit_count				
						state <= almacen;												--Pasa al estado almacen
							
					when others =>
						--state <= stop;
						bit32_count <="000";

				end case;		
			when stop =>														--Inicia estado stop

				rxbuff32 <= (others =>'0');									--Buffer rxbuff32 se le asigna un valor de 0

				baud_count <= 0;										--La señal baud_count se le asigna 0
				bit_count <=0;											--La señal bit_count se le asigna un valor de 0
				bit32_count <=(others=>'0');
				state <= rx_idle;													--Pasar al estado rx_idle

									
		end case;	
	end if;
	end process;
	
	
	dato_temp(31 downto 16) <= rxbuff32(7 downto 0) & rxbuff32(15 downto 8);
	dato_temp(15 downto 0)  <= rxbuff32(23 downto 16) & rxbuff32(31 downto 24);
	
	rx_outinv <= dato_temp;
	rx_out <= rxbuff32;


end rtl;