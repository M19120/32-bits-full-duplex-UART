library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_com_32bit is 
end entity;

architecture rtl of tb_com_32bit is 
component com_32bit is 
port( clk: in std_logic;
		--dir: in std_logic_vector(2 downto 0);
		--leer,escribir: std_logic;
		--boton: in std_logic; 
		rx_line: in std_logic;
		tx_line: out std_logic;
		segmentos: out std_logic_vector(6 downto 0);
		display : out std_logic_vector (7 downto 0)
	
);
end component;
signal clk , rx_line,tx_line : std_logic;
signal segmentos: std_logic_vector(6 downto 0);
signal display: std_logic_vector(7 downto 0);
constant periodo: time:= 1us/50 ;
begin 

clk_porc:process
begin 
	clk<='0'; 
	wait for periodo/2;
	clk<='1'; 
	wait for periodo/2;
end process;

stim_porc:process
begin 
	tx_line<= '0';
	wait for 8681 ns;
	tx_line<= '1';
	wait for 8681 ns;
	rx_line<= '0';
	wait for 8681 ns;
	rx_line<= '1';
	wait for 8681 ns;
end process;
end rtl; 