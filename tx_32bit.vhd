library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_32bit is 
	generic( tick_bit: integer := 267);-- baudrate -- 
port( clk: in std_logic; 
		reset: in std_logic;
		tx_active: out std_logic; --transmision activa
		tx_datavalid: in std_logic; --validacion de dato
		tx_data : in std_logic_vector(7 downto 0); --transmision de los bits
		tx_line: out std_logic;--linea de transmision
		tx_ok: out std_logic --final de la transmision
		);
end entity;

architecture rtl of tx_32bit is
	type state_mach is (
		tx_idle,
		tx_start,
		tx_databits,
		tx_stop_bits,
		clean
	);
signal state: state_mach := tx_idle;
signal clk_count: integer range 0 to tick_bit-1;
signal data_index: integer range 0 to 8:=0; --se agrega uno mas para dar el bit de stop
signal data: std_logic_vector(7 downto 0):=(others=>'0');
signal done: std_logic := '0';

begin 
	tx_ok<= done;
	
	process(clk,reset)
	begin 
		if(reset ='1') then 
			tx_line<='1';
			state<= tx_idle;
			clk_count<=0;
			--tx_active<='0';
			data<= (others =>'0');
		elsif(rising_edge(clk)) then 	
				done<='0';
				case state is 
				--estado de inactividad
					when tx_idle=> 
						tx_line <= '1';--nivel en alto
						tx_active<= '0'; 
						done<= '0';
						clk_count<= 0; 
						data_index<= 0;
						if(tx_datavalid = '1') then 
							 --se guarda el dato
							state<= tx_idle;
						else 
							data<= tx_data;
							state<= tx_start;
						end if;
					--estado de comienzo de transmision 
					when tx_start=> 
						-- done<= '0';
						 tx_line<= '0';
						tx_active<='1'; 
						if(clk_count < tick_bit-1)then 
							clk_count<= clk_count +1;
							state<= tx_start;
							 
						else 
							clk_count<=0; 
							state<=tx_databits;
							
							--state<= tx_start;
						
						end if; 
					--transmision de datos
					when tx_databits=> 
						tx_line<=tx_data(data_index); --envia los bits
						if(clk_count < tick_bit - 1) then 
							clk_count<= clk_count + 1; 
							state<=tx_databits;
							 
						else 
							clk_count<= 0; 
								if(data_index<8)then -- se revisa si se mandaron los datos
									data_index<= data_index+ 1; 
									state<= tx_databits; 
								else 
									data_index<= 0; 
									data<=X"00";
									state<= tx_stop_bits; --al no cumplirse, se detiene la transmision
								end if;
						end if;
					--caso de detenimiento.
					when tx_stop_bits=> 
						tx_line<= '1'; --se regresa a alto 
						if(clk_count< tick_bit -1) then 
							clk_count<= clk_count + 1; 
							state<= tx_stop_bits;
						else 
							clk_count<= 0; 
							done<= '1';
							state<= clean;
						end if;
						--done<='1';
					when clean =>
						tx_active<='0';
						tx_line<='1';
						state<=tx_idle;
						data<=X"00";
					when others=> state<=tx_idle;
				end case;
		end if;
	end process;
	
end rtl;