library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

	entity com_32bit is 
port( clk: in std_logic;
		boton: in std_logic :='1';
		selector: in std_logic;
		cambio: in std_logic_vector(1 downto 0);
		reset, lee: in std_logic;
		rx_line: in std_logic;
		tx_line,rx2,tx2,tx3: out std_logic;
		segmentos: out std_logic_vector(6 downto 0);
		display : out std_logic_vector (3 downto 0)
);
end entity;

architecture rtl of com_32bit is 
-----------------------------------------------------------------
	signal tx_ok 	: std_logic;
	signal Dato1_conx : std_logic_vector(31 downto 0):=(others =>'0');
	signal data_tx    : std_logic_vector(7 downto 0):=(others=>'0');
	signal Dato2_conx, ram_conx : std_logic_vector(31 downto 0):=(others=>'0');
	signal boton_conx : std_logic := '0';
	signal tx_con,clk_con , clock_con,delay, bot_del, tx_reset, tx_active: std_logic :='0';
	--signal cambio     : std_logic_vector(2 downto 0):="000";
	signal cuenta: integer range 0 to 500000:= 0;
	signal outp: std_logic;
	
	
------------------------------------------------------------------	
type ram is array (0 to 4) of std_logic_vector(7 downto 0);
signal save : ram ;
-----------------------------	
component clk_div is
	Port( clk  	: in  std_logic;
			clk_q	: out std_logic);
end component;
---------------------------------------------------------	
component rx_32bit is
--	generic(
--		ticks_bit : integer := 434; --valor para cada trnsmision de bit
--	   ticks_half_bit: integer := 217 --valor para verificar el bit 		
--	);
--component rx_32bit is
	Port(	clk	 	 :	in	 std_logic;								--Reloj de 25MHz
			--clr	 	 :	in	 std_logic;								--Entrada que resetea el bloque
			rx_in		 :	in	 std_logic;								--Bit de entrada uart
			reset : in std_logic;
			rx_outinv : out std_logic_vector(31 downto 0);
			rx_out	 : out std_logic_vector(31 downto 0));	--Salida del byte recibido						
end component;
--------------------------------------------------------------------
component tx_32bit is 
	--generic( tick_bit: integer := 484);-- baudrate -- 50MHz/115200
  Port ( 
      clk: in std_logic;
		reset: in std_logic;
		tx_active: out std_logic;
      tx_data : in std_logic_vector(7 downto 0);
      tx_datavalid : in std_logic;
      tx_line : out std_logic;
		tx_ok: out std_logic
  );
end component;
--------------------------------------------------------
component out_disp32 is
	port 
	(	clk: in std_logic;
		numeros: in std_logic_vector(31 downto 0);
		selec: in std_logic;
		display: out std_logic_vector(6 downto 0);
		digitos: out std_logic_vector(3 downto 0) 
	);
end component;
---------------------------------------------------------------
component no_rebo is 
port(	clk : in std_logic;
		rst: in std_logic;
		in_bot: in std_logic;
		out_bot: out std_logic
);
end component;
----------------------------------------------------------------
begin 
rx2<=rx_line;
tx2<=tx_con;
tx3<=tx_con;
tx_line<=tx_con;
boton_conx<=boton;
ram_conx<=Dato2_conx;
	u0: clk_div port map(clk=>clk, clk_q=>clk_con);
	u1: rx_32bit port map(
		clk=>clk_con,
		rx_in=>rx_line,
		reset=>reset,
		rx_out=>Dato1_conx,
		rx_outinv=>Dato2_conx
		
	);
	
	u2: tx_32bit port map(
		clk=>clk_con, --in 
		tx_datavalid=>boton_conx,--in
		reset=>tx_reset,
		tx_active=>tx_active, --in 
		tx_data=>data_tx, --salida
		tx_line=> tx_con, -- salida
		tx_ok=> tx_ok
	);
	
	u3: out_disp32 port map(
		clk=>clk, 
		numeros=>Dato2_conx,
		selec=>selector,
		display=>segmentos,
		digitos=>display
	); 
	
	--u4: RAM port map(clk=>clk,ew=>lee,add=>cambio,din=>data);
	--u4: clk_gen port map(clk_i=>clk , clk_o=>clk_con);
	
--	process(clk_con)
--	begin 
--		if(reset = '0')then 
--			lolo<= limpio;
--		elsif(clk_con'event and clk_con='1')then 
--			case lolo is 
--				when limpio=>
--					if(boton = '0')then 
--						lolo<=num1;
--					else 
--						lolo<=limpio;
--						tx_reset<='1';
--					end if;
--				when num1=> 
--					data_tx<=Dato2_conx(7 downto 0);
--					lolo<=num2;
--					--tx_reset<='1';
--				when num2=> 
--					data_tx<=Dato2_conx(15 downto 8);
--					lolo<=num3;
--					--tx_reset<='1';
--				when num3=> 
--					data_tx<=Dato2_conx(23 downto 16);
--					lolo<=num4;
--					--tx_reset<='1';
--				when num4=> 
--					data_tx<=Dato2_conx(31 downto 24);
--						if(boton = '1') then 
--							lolo<= limpio;
--						else
--							lolo<= num4;
--						end if;
--						--tx_reset<='1';
--			end case; 
--		end if;
--	end process;
--	u5: no_rebo port map(
--		clk=> clk_con,
--		rst=> reset,
--		in_bot=>boton,
--		out_bot=> boton_conx
--	);
--	-------------------------------------------------------
--	process(clk_con,cuenta)
--	begin 
--		if rising_edge(clk_con) then 
--				if(boton = '0') then 	
--					case cambio is 
--						when "000"=> 
--							--if tx_active <= '0'  then --revisamos que tx este vacio --YA JALA ESTE
--							if tx_ok = '0' and tx_active = '0' then
--								tx_reset <= '0';
--								data_tx<= dato2_conx(31 downto 24);	
--							--else 
--								cambio<="001";
--								--tx_reset<='1';
--								--cambio<="000";
--							end if;
--								--tx_reset<='1';
--
--						when "001" =>
--							--if  tx_ok = '0' and tx_active = '0' then								
--								--tx_reset <= '0';
--								data_tx<=Dato2_conx(23 downto 16);
--								
--							--else
--								cambio<= "010";
--								--tx_reset<= '1';
--						  -- end if;
--						when "010" =>
--							--if tx_ok = '0' and tx_active ='0' then
--								--tx_reset <='0';
--								
--								data_tx<=Dato2_conx(15 downto 8);
--								--cuenta <= 0;
--								--tx_reset<='0';
--							--else
--								cambio<= "000";
--								--cuenta <= cuenta + 1;
--							--	tx_reset<='1';
--							--end if;
----						when "011" =>
----							if  tx_active<= '0' then
----								cambio<= "100";
----								--cuenta <= 0;
----								--tx_reset<='0';
----							else
----								data_tx<=Dato2_conx(7 downto 0);
----								--cuenta <= cuenta + 1;
----								--tx_reset<='1';
----							end if;
--						when others=> 
--						--	if  tx_active = '0' then
--								--cambio<= "000";
--								--tx_reset <= '0';
--								--cuenta <= 0;
--						--	else
--								tx_reset <= '1';
--							--	--cuenta <= cuenta + 1;
--						--	end if;
--					end case;
--				end if;
--		end if;
----	end process;
--	process(clk_con)
--	begin 
--		if(clk_con'event and clk_con='1')then 
--			if(cuenta <499999) then 
--				cuenta <= cuenta +1;
--			else 
--				cuenta <=0;
--				outp<= not outp;
--			end if;
--		end if; 
--	end process;
--		outp<= tx_active;
	  process(clk_con)
	  begin 
		if(clk_con'event and clk_con ='1')then 
				if(boton_conx = '0' and tx_active= '0' and lee= '0') then 
						save(to_integer("11"))<=ram_conx(31 downto 24);--12
						save(to_integer("10"))<=ram_conx(23 downto 16);--34
						save(to_integer("01"))<=ram_conx(15 downto 8);--56			
						save(to_integer("00"))<=ram_conx(7 downto 0);--78
				else 
						data_tx<=save(to_integer(unsigned(cambio)));
				end if;
				
		end if;
		
	  end process;
end rtl;
