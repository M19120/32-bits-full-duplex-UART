-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/11/2023 10:27:11"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	com_32bit IS
    PORT (
	clk : IN std_logic;
	boton : IN std_logic;
	selector : IN std_logic;
	cambio : IN std_logic_vector(1 DOWNTO 0);
	reset : IN std_logic;
	lee : IN std_logic;
	rx_line : IN std_logic;
	tx_line : OUT std_logic;
	rx2 : OUT std_logic;
	tx2 : OUT std_logic;
	tx3 : OUT std_logic;
	segmentos : OUT std_logic_vector(6 DOWNTO 0);
	display : OUT std_logic_vector(3 DOWNTO 0)
	);
END com_32bit;

-- Design Ports Information
-- tx_line	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx2	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx2	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx3	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_line	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lee	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF com_32bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_selector : std_logic;
SIGNAL ww_cambio : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_lee : std_logic;
SIGNAL ww_rx_line : std_logic;
SIGNAL ww_tx_line : std_logic;
SIGNAL ww_rx2 : std_logic;
SIGNAL ww_tx2 : std_logic;
SIGNAL ww_tx3 : std_logic;
SIGNAL ww_segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|q_oi~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_line~output_o\ : std_logic;
SIGNAL \rx2~output_o\ : std_logic;
SIGNAL \tx2~output_o\ : std_logic;
SIGNAL \tx3~output_o\ : std_logic;
SIGNAL \segmentos[0]~output_o\ : std_logic;
SIGNAL \segmentos[1]~output_o\ : std_logic;
SIGNAL \segmentos[2]~output_o\ : std_logic;
SIGNAL \segmentos[3]~output_o\ : std_logic;
SIGNAL \segmentos[4]~output_o\ : std_logic;
SIGNAL \segmentos[5]~output_o\ : std_logic;
SIGNAL \segmentos[6]~output_o\ : std_logic;
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|q[0]~9_combout\ : std_logic;
SIGNAL \u0|q[0]~10\ : std_logic;
SIGNAL \u0|q[1]~11_combout\ : std_logic;
SIGNAL \u0|q[1]~12\ : std_logic;
SIGNAL \u0|q[2]~13_combout\ : std_logic;
SIGNAL \u0|q[2]~14\ : std_logic;
SIGNAL \u0|q[3]~15_combout\ : std_logic;
SIGNAL \u0|q[3]~16\ : std_logic;
SIGNAL \u0|q[4]~17_combout\ : std_logic;
SIGNAL \u0|q[4]~18\ : std_logic;
SIGNAL \u0|q[5]~19_combout\ : std_logic;
SIGNAL \u0|q[5]~20\ : std_logic;
SIGNAL \u0|q[6]~21_combout\ : std_logic;
SIGNAL \u0|q[6]~22\ : std_logic;
SIGNAL \u0|q[7]~23_combout\ : std_logic;
SIGNAL \u0|q[7]~24\ : std_logic;
SIGNAL \u0|q[8]~25_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|q_oi~0_combout\ : std_logic;
SIGNAL \u0|q_oi~feeder_combout\ : std_logic;
SIGNAL \u0|q_oi~q\ : std_logic;
SIGNAL \u0|q_oi~clkctrl_outclk\ : std_logic;
SIGNAL \u2|data_index~6_combout\ : std_logic;
SIGNAL \u2|clk_count[0]~9_combout\ : std_logic;
SIGNAL \u2|LessThan1~1_combout\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \u2|Selector16~0_combout\ : std_logic;
SIGNAL \u2|state.tx_start~q\ : std_logic;
SIGNAL \u2|Selector17~0_combout\ : std_logic;
SIGNAL \u2|state.tx_databits~q\ : std_logic;
SIGNAL \u2|state.tx_stop_bits~0_combout\ : std_logic;
SIGNAL \u2|state.tx_stop_bits~q\ : std_logic;
SIGNAL \u2|LessThan1~0_combout\ : std_logic;
SIGNAL \u2|done~0_combout\ : std_logic;
SIGNAL \u2|state.clean~q\ : std_logic;
SIGNAL \u2|Selector15~0_combout\ : std_logic;
SIGNAL \u2|state.tx_idle~q\ : std_logic;
SIGNAL \u2|clk_count[6]~13_combout\ : std_logic;
SIGNAL \u2|clk_count[0]~10\ : std_logic;
SIGNAL \u2|clk_count[1]~11_combout\ : std_logic;
SIGNAL \u2|clk_count[1]~12\ : std_logic;
SIGNAL \u2|clk_count[2]~14_combout\ : std_logic;
SIGNAL \u2|clk_count[2]~15\ : std_logic;
SIGNAL \u2|clk_count[3]~16_combout\ : std_logic;
SIGNAL \u2|clk_count[3]~17\ : std_logic;
SIGNAL \u2|clk_count[4]~18_combout\ : std_logic;
SIGNAL \u2|clk_count[4]~19\ : std_logic;
SIGNAL \u2|clk_count[5]~20_combout\ : std_logic;
SIGNAL \u2|clk_count[5]~21\ : std_logic;
SIGNAL \u2|clk_count[6]~22_combout\ : std_logic;
SIGNAL \u2|clk_count[6]~23\ : std_logic;
SIGNAL \u2|clk_count[7]~24_combout\ : std_logic;
SIGNAL \u2|clk_count[7]~25\ : std_logic;
SIGNAL \u2|clk_count[8]~26_combout\ : std_logic;
SIGNAL \u2|LessThan1~2_combout\ : std_logic;
SIGNAL \u2|data_index[2]~2_combout\ : std_logic;
SIGNAL \u2|Selector12~0_combout\ : std_logic;
SIGNAL \u2|data_index~7_combout\ : std_logic;
SIGNAL \u2|data_index[3]~3_combout\ : std_logic;
SIGNAL \u2|Selector11~0_combout\ : std_logic;
SIGNAL \u2|data_index~5_combout\ : std_logic;
SIGNAL \u2|data_index[0]~1_combout\ : std_logic;
SIGNAL \u2|Selector14~0_combout\ : std_logic;
SIGNAL \u2|data_index~4_combout\ : std_logic;
SIGNAL \u2|data_index[1]~0_combout\ : std_logic;
SIGNAL \u2|Selector13~0_combout\ : std_logic;
SIGNAL \u1|Selector19~0_combout\ : std_logic;
SIGNAL \u1|Selector19~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \rx_line~input_o\ : std_logic;
SIGNAL \u1|Selector13~0_combout\ : std_logic;
SIGNAL \u1|baud_count[0]~9_combout\ : std_logic;
SIGNAL \u1|baud_count[8]~27_combout\ : std_logic;
SIGNAL \u1|baud_count[0]~10\ : std_logic;
SIGNAL \u1|baud_count[1]~11_combout\ : std_logic;
SIGNAL \u1|baud_count[1]~12\ : std_logic;
SIGNAL \u1|baud_count[2]~13_combout\ : std_logic;
SIGNAL \u1|baud_count[2]~14\ : std_logic;
SIGNAL \u1|baud_count[3]~15_combout\ : std_logic;
SIGNAL \u1|baud_count[3]~16\ : std_logic;
SIGNAL \u1|baud_count[4]~17_combout\ : std_logic;
SIGNAL \u1|baud_count[4]~18\ : std_logic;
SIGNAL \u1|baud_count[5]~19_combout\ : std_logic;
SIGNAL \u1|baud_count[5]~20\ : std_logic;
SIGNAL \u1|baud_count[6]~21_combout\ : std_logic;
SIGNAL \u1|baud_count[6]~22\ : std_logic;
SIGNAL \u1|baud_count[7]~23_combout\ : std_logic;
SIGNAL \u1|baud_count[7]~24\ : std_logic;
SIGNAL \u1|baud_count[8]~25_combout\ : std_logic;
SIGNAL \u1|LessThan1~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan1~1_combout\ : std_logic;
SIGNAL \u1|baud_count[8]~28_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|Selector14~0_combout\ : std_logic;
SIGNAL \u1|Selector14~1_combout\ : std_logic;
SIGNAL \u1|state.start~q\ : std_logic;
SIGNAL \u1|Selector15~0_combout\ : std_logic;
SIGNAL \u1|Selector15~2_combout\ : std_logic;
SIGNAL \u1|state.almacen~q\ : std_logic;
SIGNAL \u1|Selector13~1_combout\ : std_logic;
SIGNAL \u1|state.rx_idle~q\ : std_logic;
SIGNAL \u1|bit32_count[1]~0_combout\ : std_logic;
SIGNAL \u1|bit32_count[1]~1_combout\ : std_logic;
SIGNAL \u1|Selector15~1_combout\ : std_logic;
SIGNAL \u1|bit_count~0_combout\ : std_logic;
SIGNAL \u1|Selector12~0_combout\ : std_logic;
SIGNAL \u1|Selector9~0_combout\ : std_logic;
SIGNAL \u1|Selector11~0_combout\ : std_logic;
SIGNAL \u1|Add2~1_combout\ : std_logic;
SIGNAL \u1|Selector10~0_combout\ : std_logic;
SIGNAL \u1|Add2~0_combout\ : std_logic;
SIGNAL \u1|Selector9~1_combout\ : std_logic;
SIGNAL \u1|Selector17~0_combout\ : std_logic;
SIGNAL \u1|state.stop~q\ : std_logic;
SIGNAL \u1|Selector18~0_combout\ : std_logic;
SIGNAL \u1|Selector18~1_combout\ : std_logic;
SIGNAL \u1|Selector20~0_combout\ : std_logic;
SIGNAL \u1|LessThan4~0_combout\ : std_logic;
SIGNAL \u1|Selector16~0_combout\ : std_logic;
SIGNAL \u1|Selector16~1_combout\ : std_logic;
SIGNAL \u1|state.rx_databits~q\ : std_logic;
SIGNAL \u1|Selector21~2_combout\ : std_logic;
SIGNAL \u1|Selector52~0_combout\ : std_logic;
SIGNAL \u1|Selector52~1_combout\ : std_logic;
SIGNAL \u1|Selector46~0_combout\ : std_logic;
SIGNAL \save[3][6]~feeder_combout\ : std_logic;
SIGNAL \lee~input_o\ : std_logic;
SIGNAL \u2|Selector1~0_combout\ : std_logic;
SIGNAL \u2|tx_active~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \save[3][6]~q\ : std_logic;
SIGNAL \cambio[0]~input_o\ : std_logic;
SIGNAL \cambio[1]~input_o\ : std_logic;
SIGNAL \u1|Selector21~0_combout\ : std_logic;
SIGNAL \u1|Selector21~1_combout\ : std_logic;
SIGNAL \u1|Selector22~0_combout\ : std_logic;
SIGNAL \save[0][6]~q\ : std_logic;
SIGNAL \u1|Selector37~0_combout\ : std_logic;
SIGNAL \u1|Selector37~2_combout\ : std_logic;
SIGNAL \u1|Selector37~1_combout\ : std_logic;
SIGNAL \u1|Selector38~0_combout\ : std_logic;
SIGNAL \save[2][6]~feeder_combout\ : std_logic;
SIGNAL \save[2][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \u1|rxbuff32[23]~feeder_combout\ : std_logic;
SIGNAL \u1|Selector29~0_combout\ : std_logic;
SIGNAL \u1|Selector30~0_combout\ : std_logic;
SIGNAL \save[1][6]~feeder_combout\ : std_logic;
SIGNAL \save[1][6]~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \save[0][7]~feeder_combout\ : std_logic;
SIGNAL \save[0][7]~q\ : std_logic;
SIGNAL \save[1][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \save[2][7]~feeder_combout\ : std_logic;
SIGNAL \save[2][7]~q\ : std_logic;
SIGNAL \save[3][7]~feeder_combout\ : std_logic;
SIGNAL \save[3][7]~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \u1|Selector47~0_combout\ : std_logic;
SIGNAL \save[3][5]~feeder_combout\ : std_logic;
SIGNAL \save[3][5]~q\ : std_logic;
SIGNAL \u1|Selector31~0_combout\ : std_logic;
SIGNAL \save[1][5]~feeder_combout\ : std_logic;
SIGNAL \save[1][5]~q\ : std_logic;
SIGNAL \u1|Selector23~0_combout\ : std_logic;
SIGNAL \save[0][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \u1|Selector39~0_combout\ : std_logic;
SIGNAL \save[2][5]~feeder_combout\ : std_logic;
SIGNAL \save[2][5]~q\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \u1|Selector48~0_combout\ : std_logic;
SIGNAL \save[3][4]~feeder_combout\ : std_logic;
SIGNAL \save[3][4]~q\ : std_logic;
SIGNAL \u1|Selector32~0_combout\ : std_logic;
SIGNAL \save[1][4]~feeder_combout\ : std_logic;
SIGNAL \save[1][4]~q\ : std_logic;
SIGNAL \u1|Selector40~0_combout\ : std_logic;
SIGNAL \save[2][4]~q\ : std_logic;
SIGNAL \u1|Selector24~0_combout\ : std_logic;
SIGNAL \save[0][4]~feeder_combout\ : std_logic;
SIGNAL \save[0][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \u2|Mux0~2_combout\ : std_logic;
SIGNAL \u2|Mux0~3_combout\ : std_logic;
SIGNAL \u1|Selector49~0_combout\ : std_logic;
SIGNAL \u1|Selector50~0_combout\ : std_logic;
SIGNAL \u1|Selector51~0_combout\ : std_logic;
SIGNAL \u1|Selector52~2_combout\ : std_logic;
SIGNAL \save[3][0]~feeder_combout\ : std_logic;
SIGNAL \save[3][0]~q\ : std_logic;
SIGNAL \u1|Selector33~0_combout\ : std_logic;
SIGNAL \u1|Selector34~0_combout\ : std_logic;
SIGNAL \u1|Selector35~0_combout\ : std_logic;
SIGNAL \u1|Selector36~0_combout\ : std_logic;
SIGNAL \save[1][0]~feeder_combout\ : std_logic;
SIGNAL \save[1][0]~q\ : std_logic;
SIGNAL \u1|Selector41~0_combout\ : std_logic;
SIGNAL \u1|Selector42~0_combout\ : std_logic;
SIGNAL \u1|Selector43~0_combout\ : std_logic;
SIGNAL \u1|Selector44~0_combout\ : std_logic;
SIGNAL \save[2][0]~q\ : std_logic;
SIGNAL \u1|Selector25~0_combout\ : std_logic;
SIGNAL \u1|Selector26~0_combout\ : std_logic;
SIGNAL \u1|Selector27~0_combout\ : std_logic;
SIGNAL \u1|Selector28~0_combout\ : std_logic;
SIGNAL \save[0][0]~feeder_combout\ : std_logic;
SIGNAL \save[0][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \save[2][1]~feeder_combout\ : std_logic;
SIGNAL \save[2][1]~q\ : std_logic;
SIGNAL \save[3][1]~feeder_combout\ : std_logic;
SIGNAL \save[3][1]~q\ : std_logic;
SIGNAL \save[1][1]~feeder_combout\ : std_logic;
SIGNAL \save[1][1]~q\ : std_logic;
SIGNAL \save[0][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \save[0][2]~q\ : std_logic;
SIGNAL \save[2][2]~feeder_combout\ : std_logic;
SIGNAL \save[2][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \save[1][2]~q\ : std_logic;
SIGNAL \save[3][2]~feeder_combout\ : std_logic;
SIGNAL \save[3][2]~q\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \save[3][3]~feeder_combout\ : std_logic;
SIGNAL \save[3][3]~q\ : std_logic;
SIGNAL \save[2][3]~feeder_combout\ : std_logic;
SIGNAL \save[2][3]~q\ : std_logic;
SIGNAL \save[1][3]~feeder_combout\ : std_logic;
SIGNAL \save[1][3]~q\ : std_logic;
SIGNAL \save[0][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \u2|Mux0~1_combout\ : std_logic;
SIGNAL \u2|tx_line~0_combout\ : std_logic;
SIGNAL \u2|state.tx_start~_wirecell_combout\ : std_logic;
SIGNAL \u2|tx_line~q\ : std_logic;
SIGNAL \selector~input_o\ : std_logic;
SIGNAL \u3|reset_count[0]~18_combout\ : std_logic;
SIGNAL \u3|reset_count[0]~19\ : std_logic;
SIGNAL \u3|reset_count[1]~20_combout\ : std_logic;
SIGNAL \u3|reset_count[1]~21\ : std_logic;
SIGNAL \u3|reset_count[2]~22_combout\ : std_logic;
SIGNAL \u3|reset_count[2]~23\ : std_logic;
SIGNAL \u3|reset_count[3]~24_combout\ : std_logic;
SIGNAL \u3|reset_count[3]~25\ : std_logic;
SIGNAL \u3|reset_count[4]~26_combout\ : std_logic;
SIGNAL \u3|reset_count[4]~27\ : std_logic;
SIGNAL \u3|reset_count[5]~28_combout\ : std_logic;
SIGNAL \u3|reset_count[5]~29\ : std_logic;
SIGNAL \u3|reset_count[6]~30_combout\ : std_logic;
SIGNAL \u3|reset_count[6]~31\ : std_logic;
SIGNAL \u3|reset_count[7]~32_combout\ : std_logic;
SIGNAL \u3|reset_count[7]~33\ : std_logic;
SIGNAL \u3|reset_count[8]~34_combout\ : std_logic;
SIGNAL \u3|reset_count[8]~35\ : std_logic;
SIGNAL \u3|reset_count[9]~36_combout\ : std_logic;
SIGNAL \u3|reset_count[9]~37\ : std_logic;
SIGNAL \u3|reset_count[10]~38_combout\ : std_logic;
SIGNAL \u3|reset_count[10]~39\ : std_logic;
SIGNAL \u3|reset_count[11]~40_combout\ : std_logic;
SIGNAL \u3|reset_count[11]~41\ : std_logic;
SIGNAL \u3|reset_count[12]~42_combout\ : std_logic;
SIGNAL \u3|reset_count[12]~43\ : std_logic;
SIGNAL \u3|reset_count[13]~44_combout\ : std_logic;
SIGNAL \u3|reset_count[13]~45\ : std_logic;
SIGNAL \u3|reset_count[14]~46_combout\ : std_logic;
SIGNAL \u3|reset_count[14]~47\ : std_logic;
SIGNAL \u3|reset_count[15]~48_combout\ : std_logic;
SIGNAL \u3|LessThan0~4_combout\ : std_logic;
SIGNAL \u3|reset_count[15]~49\ : std_logic;
SIGNAL \u3|reset_count[16]~50_combout\ : std_logic;
SIGNAL \u3|reset_count[16]~51\ : std_logic;
SIGNAL \u3|reset_count[17]~52_combout\ : std_logic;
SIGNAL \u3|LessThan0~1_combout\ : std_logic;
SIGNAL \u3|LessThan0~0_combout\ : std_logic;
SIGNAL \u3|LessThan0~2_combout\ : std_logic;
SIGNAL \u3|LessThan0~3_combout\ : std_logic;
SIGNAL \u3|LessThan0~5_combout\ : std_logic;
SIGNAL \u3|refresh_state[0]~1_combout\ : std_logic;
SIGNAL \u3|refresh_state[1]~0_combout\ : std_logic;
SIGNAL \u3|Mux4~0_combout\ : std_logic;
SIGNAL \u3|Mux1~0_combout\ : std_logic;
SIGNAL \u3|Mux4~3_combout\ : std_logic;
SIGNAL \u3|Mux2~0_combout\ : std_logic;
SIGNAL \u3|Mux4~1_combout\ : std_logic;
SIGNAL \u3|Mux4~2_combout\ : std_logic;
SIGNAL \u3|Mux7~3_combout\ : std_logic;
SIGNAL \u3|Mux4~4_combout\ : std_logic;
SIGNAL \u3|Mux4~5_combout\ : std_logic;
SIGNAL \u3|Mux4~6_combout\ : std_logic;
SIGNAL \u3|Mux5~0_combout\ : std_logic;
SIGNAL \u3|Mux5~1_combout\ : std_logic;
SIGNAL \u3|Mux5~2_combout\ : std_logic;
SIGNAL \u3|Mux5~3_combout\ : std_logic;
SIGNAL \u3|Mux5~4_combout\ : std_logic;
SIGNAL \u3|Mux5~5_combout\ : std_logic;
SIGNAL \u3|Mux7~2_combout\ : std_logic;
SIGNAL \u3|Mux7~0_combout\ : std_logic;
SIGNAL \u3|Mux7~1_combout\ : std_logic;
SIGNAL \u3|Mux7~4_combout\ : std_logic;
SIGNAL \u3|Mux7~5_combout\ : std_logic;
SIGNAL \u3|Mux7~6_combout\ : std_logic;
SIGNAL \u3|Mux6~2_combout\ : std_logic;
SIGNAL \u3|Mux6~0_combout\ : std_logic;
SIGNAL \u3|Mux6~1_combout\ : std_logic;
SIGNAL \u3|Mux6~3_combout\ : std_logic;
SIGNAL \u3|Mux6~4_combout\ : std_logic;
SIGNAL \u3|Mux6~5_combout\ : std_logic;
SIGNAL \u3|Mux14~0_combout\ : std_logic;
SIGNAL \u3|Mux13~0_combout\ : std_logic;
SIGNAL \u3|Mux12~0_combout\ : std_logic;
SIGNAL \u3|Mux11~0_combout\ : std_logic;
SIGNAL \u3|Mux10~0_combout\ : std_logic;
SIGNAL \u3|Mux9~0_combout\ : std_logic;
SIGNAL \u3|Mux8~0_combout\ : std_logic;
SIGNAL \u3|Mux0~0_combout\ : std_logic;
SIGNAL \u2|data_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|reset_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|bit32_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u3|refresh_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u2|clk_count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|baud_count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|rxbuff32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL data_tx : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|bit_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|ALT_INV_state.clean~q\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_state.rx_databits~q\ : std_logic;
SIGNAL \u2|ALT_INV_state.tx_databits~q\ : std_logic;
SIGNAL \u3|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_boton <= boton;
ww_selector <= selector;
ww_cambio <= cambio;
ww_reset <= reset;
ww_lee <= lee;
ww_rx_line <= rx_line;
tx_line <= ww_tx_line;
rx2 <= ww_rx2;
tx2 <= ww_tx2;
tx3 <= ww_tx3;
segmentos <= ww_segmentos;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|q_oi~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u0|q_oi~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\u2|ALT_INV_state.clean~q\ <= NOT \u2|state.clean~q\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\u1|ALT_INV_state.rx_databits~q\ <= NOT \u1|state.rx_databits~q\;
\u2|ALT_INV_state.tx_databits~q\ <= NOT \u2|state.tx_databits~q\;
\u3|ALT_INV_Mux8~0_combout\ <= NOT \u3|Mux8~0_combout\;
\u3|ALT_INV_Mux4~0_combout\ <= NOT \u3|Mux4~0_combout\;
\u3|ALT_INV_Mux2~0_combout\ <= NOT \u3|Mux2~0_combout\;
\u3|ALT_INV_Mux1~0_combout\ <= NOT \u3|Mux1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N16
\tx_line~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|tx_line~q\,
	devoe => ww_devoe,
	o => \tx_line~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\rx2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_line~input_o\,
	devoe => ww_devoe,
	o => \rx2~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\tx2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|tx_line~q\,
	devoe => ww_devoe,
	o => \tx2~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\tx3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|tx_line~q\,
	devoe => ww_devoe,
	o => \tx3~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\segmentos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \segmentos[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\segmentos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \segmentos[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segmentos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \segmentos[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\segmentos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \segmentos[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\segmentos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \segmentos[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\segmentos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \segmentos[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\segmentos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \segmentos[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N2
\u0|q[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[0]~9_combout\ = \u0|q\(0) $ (VCC)
-- \u0|q[0]~10\ = CARRY(\u0|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|q\(0),
	datad => VCC,
	combout => \u0|q[0]~9_combout\,
	cout => \u0|q[0]~10\);

-- Location: FF_X33_Y12_N3
\u0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[0]~9_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(0));

-- Location: LCCOMB_X33_Y12_N4
\u0|q[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[1]~11_combout\ = (\u0|q\(1) & (!\u0|q[0]~10\)) # (!\u0|q\(1) & ((\u0|q[0]~10\) # (GND)))
-- \u0|q[1]~12\ = CARRY((!\u0|q[0]~10\) # (!\u0|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|q\(1),
	datad => VCC,
	cin => \u0|q[0]~10\,
	combout => \u0|q[1]~11_combout\,
	cout => \u0|q[1]~12\);

-- Location: FF_X33_Y12_N5
\u0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[1]~11_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(1));

-- Location: LCCOMB_X33_Y12_N6
\u0|q[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[2]~13_combout\ = (\u0|q\(2) & (\u0|q[1]~12\ $ (GND))) # (!\u0|q\(2) & (!\u0|q[1]~12\ & VCC))
-- \u0|q[2]~14\ = CARRY((\u0|q\(2) & !\u0|q[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|q\(2),
	datad => VCC,
	cin => \u0|q[1]~12\,
	combout => \u0|q[2]~13_combout\,
	cout => \u0|q[2]~14\);

-- Location: FF_X33_Y12_N7
\u0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[2]~13_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(2));

-- Location: LCCOMB_X33_Y12_N8
\u0|q[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[3]~15_combout\ = (\u0|q\(3) & (!\u0|q[2]~14\)) # (!\u0|q\(3) & ((\u0|q[2]~14\) # (GND)))
-- \u0|q[3]~16\ = CARRY((!\u0|q[2]~14\) # (!\u0|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|q\(3),
	datad => VCC,
	cin => \u0|q[2]~14\,
	combout => \u0|q[3]~15_combout\,
	cout => \u0|q[3]~16\);

-- Location: FF_X33_Y12_N9
\u0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[3]~15_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(3));

-- Location: LCCOMB_X33_Y12_N10
\u0|q[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[4]~17_combout\ = (\u0|q\(4) & (\u0|q[3]~16\ $ (GND))) # (!\u0|q\(4) & (!\u0|q[3]~16\ & VCC))
-- \u0|q[4]~18\ = CARRY((\u0|q\(4) & !\u0|q[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|q\(4),
	datad => VCC,
	cin => \u0|q[3]~16\,
	combout => \u0|q[4]~17_combout\,
	cout => \u0|q[4]~18\);

-- Location: FF_X33_Y12_N11
\u0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[4]~17_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(4));

-- Location: LCCOMB_X33_Y12_N12
\u0|q[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[5]~19_combout\ = (\u0|q\(5) & (!\u0|q[4]~18\)) # (!\u0|q\(5) & ((\u0|q[4]~18\) # (GND)))
-- \u0|q[5]~20\ = CARRY((!\u0|q[4]~18\) # (!\u0|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|q\(5),
	datad => VCC,
	cin => \u0|q[4]~18\,
	combout => \u0|q[5]~19_combout\,
	cout => \u0|q[5]~20\);

-- Location: FF_X33_Y12_N13
\u0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[5]~19_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(5));

-- Location: LCCOMB_X33_Y12_N14
\u0|q[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[6]~21_combout\ = (\u0|q\(6) & (\u0|q[5]~20\ $ (GND))) # (!\u0|q\(6) & (!\u0|q[5]~20\ & VCC))
-- \u0|q[6]~22\ = CARRY((\u0|q\(6) & !\u0|q[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|q\(6),
	datad => VCC,
	cin => \u0|q[5]~20\,
	combout => \u0|q[6]~21_combout\,
	cout => \u0|q[6]~22\);

-- Location: FF_X33_Y12_N15
\u0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[6]~21_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(6));

-- Location: LCCOMB_X33_Y12_N16
\u0|q[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[7]~23_combout\ = (\u0|q\(7) & (!\u0|q[6]~22\)) # (!\u0|q\(7) & ((\u0|q[6]~22\) # (GND)))
-- \u0|q[7]~24\ = CARRY((!\u0|q[6]~22\) # (!\u0|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|q\(7),
	datad => VCC,
	cin => \u0|q[6]~22\,
	combout => \u0|q[7]~23_combout\,
	cout => \u0|q[7]~24\);

-- Location: FF_X33_Y12_N17
\u0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[7]~23_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(7));

-- Location: LCCOMB_X33_Y12_N18
\u0|q[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q[8]~25_combout\ = \u0|q\(8) $ (!\u0|q[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|q\(8),
	cin => \u0|q[7]~24\,
	combout => \u0|q[8]~25_combout\);

-- Location: FF_X33_Y12_N19
\u0|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q[8]~25_combout\,
	sclr => \u0|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q\(8));

-- Location: LCCOMB_X33_Y12_N20
\u0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = ((!\u0|q\(0) & (!\u0|q\(1) & !\u0|q\(2)))) # (!\u0|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|q\(0),
	datab => \u0|q\(3),
	datac => \u0|q\(1),
	datad => \u0|q\(2),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\u0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = ((\u0|LessThan0~0_combout\) # (!\u0|q\(5))) # (!\u0|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|q\(4),
	datac => \u0|q\(5),
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y12_N0
\u0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|LessThan0~2_combout\ = (\u0|q\(8) & ((\u0|q\(6)) # ((\u0|q\(7)) # (!\u0|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|q\(6),
	datab => \u0|q\(7),
	datac => \u0|q\(8),
	datad => \u0|LessThan0~1_combout\,
	combout => \u0|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y12_N24
\u0|q_oi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q_oi~0_combout\ = \u0|q_oi~q\ $ (\u0|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|q_oi~q\,
	datad => \u0|LessThan0~2_combout\,
	combout => \u0|q_oi~0_combout\);

-- Location: LCCOMB_X33_Y12_N22
\u0|q_oi~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|q_oi~feeder_combout\ = \u0|q_oi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|q_oi~0_combout\,
	combout => \u0|q_oi~feeder_combout\);

-- Location: FF_X33_Y12_N23
\u0|q_oi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|q_oi~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|q_oi~q\);

-- Location: CLKCTRL_G6
\u0|q_oi~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u0|q_oi~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u0|q_oi~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y15_N20
\u2|data_index~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index~6_combout\ = (!\u2|data_index\(3) & (\u2|data_index\(2) $ (((\u2|data_index\(1) & \u2|data_index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(1),
	datab => \u2|data_index\(3),
	datac => \u2|data_index\(2),
	datad => \u2|data_index\(0),
	combout => \u2|data_index~6_combout\);

-- Location: LCCOMB_X32_Y15_N8
\u2|clk_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[0]~9_combout\ = \u2|clk_count\(0) $ (VCC)
-- \u2|clk_count[0]~10\ = CARRY(\u2|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(0),
	datad => VCC,
	combout => \u2|clk_count[0]~9_combout\,
	cout => \u2|clk_count[0]~10\);

-- Location: LCCOMB_X32_Y15_N6
\u2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan1~1_combout\ = (!\u2|clk_count\(6) & (!\u2|clk_count\(7) & !\u2|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(6),
	datac => \u2|clk_count\(7),
	datad => \u2|clk_count\(5),
	combout => \u2|LessThan1~1_combout\);

-- Location: IOIBUF_X34_Y12_N1
\boton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: LCCOMB_X31_Y15_N0
\u2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector16~0_combout\ = (\u2|state.tx_idle~q\ & (((\u2|state.tx_start~q\ & \u2|LessThan1~2_combout\)))) # (!\u2|state.tx_idle~q\ & (((\u2|state.tx_start~q\ & \u2|LessThan1~2_combout\)) # (!\boton~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datab => \boton~input_o\,
	datac => \u2|state.tx_start~q\,
	datad => \u2|LessThan1~2_combout\,
	combout => \u2|Selector16~0_combout\);

-- Location: FF_X31_Y15_N1
\u2|state.tx_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_start~q\);

-- Location: LCCOMB_X30_Y15_N6
\u2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector17~0_combout\ = (\u2|LessThan1~2_combout\ & (((\u2|state.tx_databits~q\)))) # (!\u2|LessThan1~2_combout\ & ((\u2|state.tx_start~q\) # ((!\u2|data_index\(3) & \u2|state.tx_databits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(3),
	datab => \u2|state.tx_start~q\,
	datac => \u2|state.tx_databits~q\,
	datad => \u2|LessThan1~2_combout\,
	combout => \u2|Selector17~0_combout\);

-- Location: FF_X30_Y15_N7
\u2|state.tx_databits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_databits~q\);

-- Location: LCCOMB_X31_Y15_N2
\u2|state.tx_stop_bits~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|state.tx_stop_bits~0_combout\ = (\u2|LessThan1~2_combout\ & (((\u2|state.tx_stop_bits~q\)))) # (!\u2|LessThan1~2_combout\ & (\u2|data_index\(3) & (\u2|state.tx_databits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(3),
	datab => \u2|state.tx_databits~q\,
	datac => \u2|state.tx_stop_bits~q\,
	datad => \u2|LessThan1~2_combout\,
	combout => \u2|state.tx_stop_bits~0_combout\);

-- Location: FF_X31_Y15_N3
\u2|state.tx_stop_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|state.tx_stop_bits~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_stop_bits~q\);

-- Location: LCCOMB_X32_Y15_N4
\u2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan1~0_combout\ = (!\u2|clk_count\(4) & (((!\u2|clk_count\(2) & !\u2|clk_count\(1))) # (!\u2|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(2),
	datab => \u2|clk_count\(4),
	datac => \u2|clk_count\(3),
	datad => \u2|clk_count\(1),
	combout => \u2|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y15_N26
\u2|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|done~0_combout\ = (\u2|state.tx_stop_bits~q\ & (\u2|clk_count\(8) & ((!\u2|LessThan1~1_combout\) # (!\u2|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_stop_bits~q\,
	datab => \u2|clk_count\(8),
	datac => \u2|LessThan1~0_combout\,
	datad => \u2|LessThan1~1_combout\,
	combout => \u2|done~0_combout\);

-- Location: FF_X32_Y15_N27
\u2|state.clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.clean~q\);

-- Location: LCCOMB_X31_Y15_N6
\u2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector15~0_combout\ = (!\u2|state.clean~q\ & ((\u2|state.tx_idle~q\) # (!\boton~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \boton~input_o\,
	datac => \u2|state.tx_idle~q\,
	datad => \u2|state.clean~q\,
	combout => \u2|Selector15~0_combout\);

-- Location: FF_X31_Y15_N7
\u2|state.tx_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_idle~q\);

-- Location: LCCOMB_X32_Y15_N30
\u2|clk_count[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[6]~13_combout\ = ((\u2|clk_count\(8) & ((!\u2|LessThan1~0_combout\) # (!\u2|LessThan1~1_combout\)))) # (!\u2|state.tx_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan1~1_combout\,
	datab => \u2|state.tx_idle~q\,
	datac => \u2|LessThan1~0_combout\,
	datad => \u2|clk_count\(8),
	combout => \u2|clk_count[6]~13_combout\);

-- Location: FF_X32_Y15_N9
\u2|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[0]~9_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(0));

-- Location: LCCOMB_X32_Y15_N10
\u2|clk_count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[1]~11_combout\ = (\u2|clk_count\(1) & (!\u2|clk_count[0]~10\)) # (!\u2|clk_count\(1) & ((\u2|clk_count[0]~10\) # (GND)))
-- \u2|clk_count[1]~12\ = CARRY((!\u2|clk_count[0]~10\) # (!\u2|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(1),
	datad => VCC,
	cin => \u2|clk_count[0]~10\,
	combout => \u2|clk_count[1]~11_combout\,
	cout => \u2|clk_count[1]~12\);

-- Location: FF_X32_Y15_N11
\u2|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[1]~11_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(1));

-- Location: LCCOMB_X32_Y15_N12
\u2|clk_count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[2]~14_combout\ = (\u2|clk_count\(2) & (\u2|clk_count[1]~12\ $ (GND))) # (!\u2|clk_count\(2) & (!\u2|clk_count[1]~12\ & VCC))
-- \u2|clk_count[2]~15\ = CARRY((\u2|clk_count\(2) & !\u2|clk_count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(2),
	datad => VCC,
	cin => \u2|clk_count[1]~12\,
	combout => \u2|clk_count[2]~14_combout\,
	cout => \u2|clk_count[2]~15\);

-- Location: FF_X32_Y15_N13
\u2|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[2]~14_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(2));

-- Location: LCCOMB_X32_Y15_N14
\u2|clk_count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[3]~16_combout\ = (\u2|clk_count\(3) & (!\u2|clk_count[2]~15\)) # (!\u2|clk_count\(3) & ((\u2|clk_count[2]~15\) # (GND)))
-- \u2|clk_count[3]~17\ = CARRY((!\u2|clk_count[2]~15\) # (!\u2|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(3),
	datad => VCC,
	cin => \u2|clk_count[2]~15\,
	combout => \u2|clk_count[3]~16_combout\,
	cout => \u2|clk_count[3]~17\);

-- Location: FF_X32_Y15_N15
\u2|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[3]~16_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(3));

-- Location: LCCOMB_X32_Y15_N16
\u2|clk_count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[4]~18_combout\ = (\u2|clk_count\(4) & (\u2|clk_count[3]~17\ $ (GND))) # (!\u2|clk_count\(4) & (!\u2|clk_count[3]~17\ & VCC))
-- \u2|clk_count[4]~19\ = CARRY((\u2|clk_count\(4) & !\u2|clk_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(4),
	datad => VCC,
	cin => \u2|clk_count[3]~17\,
	combout => \u2|clk_count[4]~18_combout\,
	cout => \u2|clk_count[4]~19\);

-- Location: FF_X32_Y15_N17
\u2|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[4]~18_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(4));

-- Location: LCCOMB_X32_Y15_N18
\u2|clk_count[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[5]~20_combout\ = (\u2|clk_count\(5) & (!\u2|clk_count[4]~19\)) # (!\u2|clk_count\(5) & ((\u2|clk_count[4]~19\) # (GND)))
-- \u2|clk_count[5]~21\ = CARRY((!\u2|clk_count[4]~19\) # (!\u2|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(5),
	datad => VCC,
	cin => \u2|clk_count[4]~19\,
	combout => \u2|clk_count[5]~20_combout\,
	cout => \u2|clk_count[5]~21\);

-- Location: FF_X32_Y15_N19
\u2|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[5]~20_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(5));

-- Location: LCCOMB_X32_Y15_N20
\u2|clk_count[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[6]~22_combout\ = (\u2|clk_count\(6) & (\u2|clk_count[5]~21\ $ (GND))) # (!\u2|clk_count\(6) & (!\u2|clk_count[5]~21\ & VCC))
-- \u2|clk_count[6]~23\ = CARRY((\u2|clk_count\(6) & !\u2|clk_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(6),
	datad => VCC,
	cin => \u2|clk_count[5]~21\,
	combout => \u2|clk_count[6]~22_combout\,
	cout => \u2|clk_count[6]~23\);

-- Location: FF_X32_Y15_N21
\u2|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[6]~22_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(6));

-- Location: LCCOMB_X32_Y15_N22
\u2|clk_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[7]~24_combout\ = (\u2|clk_count\(7) & (!\u2|clk_count[6]~23\)) # (!\u2|clk_count\(7) & ((\u2|clk_count[6]~23\) # (GND)))
-- \u2|clk_count[7]~25\ = CARRY((!\u2|clk_count[6]~23\) # (!\u2|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(7),
	datad => VCC,
	cin => \u2|clk_count[6]~23\,
	combout => \u2|clk_count[7]~24_combout\,
	cout => \u2|clk_count[7]~25\);

-- Location: FF_X32_Y15_N23
\u2|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[7]~24_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(7));

-- Location: LCCOMB_X32_Y15_N24
\u2|clk_count[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[8]~26_combout\ = \u2|clk_count[7]~25\ $ (!\u2|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u2|clk_count\(8),
	cin => \u2|clk_count[7]~25\,
	combout => \u2|clk_count[8]~26_combout\);

-- Location: FF_X32_Y15_N25
\u2|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|clk_count[8]~26_combout\,
	sclr => \u2|clk_count[6]~13_combout\,
	ena => \u2|ALT_INV_state.clean~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(8));

-- Location: LCCOMB_X32_Y15_N28
\u2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan1~2_combout\ = ((\u2|LessThan1~0_combout\ & \u2|LessThan1~1_combout\)) # (!\u2|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(8),
	datac => \u2|LessThan1~0_combout\,
	datad => \u2|LessThan1~1_combout\,
	combout => \u2|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y15_N14
\u2|data_index[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index[2]~2_combout\ = (\u2|LessThan1~2_combout\ & ((\u2|data_index\(2)))) # (!\u2|LessThan1~2_combout\ & (\u2|data_index~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index~6_combout\,
	datac => \u2|data_index\(2),
	datad => \u2|LessThan1~2_combout\,
	combout => \u2|data_index[2]~2_combout\);

-- Location: LCCOMB_X31_Y15_N8
\u2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector12~0_combout\ = (\u2|state.tx_idle~q\ & \u2|data_index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datad => \u2|data_index\(2),
	combout => \u2|Selector12~0_combout\);

-- Location: FF_X30_Y15_N15
\u2|data_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|data_index[2]~2_combout\,
	asdata => \u2|Selector12~0_combout\,
	sload => \u2|ALT_INV_state.tx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(2));

-- Location: LCCOMB_X31_Y15_N24
\u2|data_index~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index~7_combout\ = (\u2|data_index\(2) & (\u2|data_index\(0) & (\u2|data_index\(1) & !\u2|data_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(2),
	datab => \u2|data_index\(0),
	datac => \u2|data_index\(1),
	datad => \u2|data_index\(3),
	combout => \u2|data_index~7_combout\);

-- Location: LCCOMB_X30_Y15_N24
\u2|data_index[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index[3]~3_combout\ = (\u2|LessThan1~2_combout\ & ((\u2|data_index\(3)))) # (!\u2|LessThan1~2_combout\ & (\u2|data_index~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index~7_combout\,
	datac => \u2|data_index\(3),
	datad => \u2|LessThan1~2_combout\,
	combout => \u2|data_index[3]~3_combout\);

-- Location: LCCOMB_X31_Y15_N30
\u2|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector11~0_combout\ = (\u2|state.tx_idle~q\ & \u2|data_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datad => \u2|data_index\(3),
	combout => \u2|Selector11~0_combout\);

-- Location: FF_X30_Y15_N25
\u2|data_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|data_index[3]~3_combout\,
	asdata => \u2|Selector11~0_combout\,
	sload => \u2|ALT_INV_state.tx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(3));

-- Location: LCCOMB_X31_Y15_N12
\u2|data_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index~5_combout\ = (\u2|data_index\(3)) # (\u2|data_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index\(3),
	datad => \u2|data_index\(0),
	combout => \u2|data_index~5_combout\);

-- Location: LCCOMB_X31_Y15_N18
\u2|data_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index[0]~1_combout\ = (\u2|LessThan1~2_combout\ & ((\u2|data_index\(0)))) # (!\u2|LessThan1~2_combout\ & (!\u2|data_index~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index~5_combout\,
	datac => \u2|data_index\(0),
	datad => \u2|LessThan1~2_combout\,
	combout => \u2|data_index[0]~1_combout\);

-- Location: LCCOMB_X31_Y15_N26
\u2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector14~0_combout\ = (\u2|data_index\(0) & \u2|state.tx_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index\(0),
	datad => \u2|state.tx_idle~q\,
	combout => \u2|Selector14~0_combout\);

-- Location: FF_X31_Y15_N19
\u2|data_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|data_index[0]~1_combout\,
	asdata => \u2|Selector14~0_combout\,
	sload => \u2|ALT_INV_state.tx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(0));

-- Location: LCCOMB_X31_Y15_N28
\u2|data_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index~4_combout\ = (!\u2|data_index\(3) & (\u2|data_index\(0) $ (\u2|data_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index\(0),
	datac => \u2|data_index\(1),
	datad => \u2|data_index\(3),
	combout => \u2|data_index~4_combout\);

-- Location: LCCOMB_X31_Y15_N20
\u2|data_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_index[1]~0_combout\ = (\u2|LessThan1~2_combout\ & ((\u2|data_index\(1)))) # (!\u2|LessThan1~2_combout\ & (\u2|data_index~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index~4_combout\,
	datac => \u2|data_index\(1),
	datad => \u2|LessThan1~2_combout\,
	combout => \u2|data_index[1]~0_combout\);

-- Location: LCCOMB_X31_Y15_N4
\u2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector13~0_combout\ = (\u2|state.tx_idle~q\ & \u2|data_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datad => \u2|data_index\(1),
	combout => \u2|Selector13~0_combout\);

-- Location: FF_X31_Y15_N21
\u2|data_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|data_index[1]~0_combout\,
	asdata => \u2|Selector13~0_combout\,
	sload => \u2|ALT_INV_state.tx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(1));

-- Location: LCCOMB_X28_Y14_N8
\u1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector19~0_combout\ = (\u1|state.rx_databits~q\ & (!\u1|bit32_count\(2) & ((\u1|bit32_count\(1))))) # (!\u1|state.rx_databits~q\ & ((\u1|bit32_count\(0) $ (\u1|bit32_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(2),
	datab => \u1|state.rx_databits~q\,
	datac => \u1|bit32_count\(0),
	datad => \u1|bit32_count\(1),
	combout => \u1|Selector19~0_combout\);

-- Location: LCCOMB_X30_Y14_N12
\u1|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector19~1_combout\ = (!\u1|state.stop~q\ & \u1|Selector19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.stop~q\,
	datad => \u1|Selector19~0_combout\,
	combout => \u1|Selector19~1_combout\);

-- Location: IOIBUF_X34_Y12_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G8
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y24_N22
\rx_line~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_line,
	o => \rx_line~input_o\);

-- Location: LCCOMB_X30_Y14_N16
\u1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector13~0_combout\ = (\u1|state.stop~q\) # ((!\u1|state.rx_idle~q\ & \rx_line~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.stop~q\,
	datab => \u1|state.rx_idle~q\,
	datad => \rx_line~input_o\,
	combout => \u1|Selector13~0_combout\);

-- Location: LCCOMB_X31_Y14_N10
\u1|baud_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[0]~9_combout\ = \u1|baud_count\(0) $ (VCC)
-- \u1|baud_count[0]~10\ = CARRY(\u1|baud_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(0),
	datad => VCC,
	combout => \u1|baud_count[0]~9_combout\,
	cout => \u1|baud_count[0]~10\);

-- Location: LCCOMB_X31_Y14_N28
\u1|baud_count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[8]~27_combout\ = (\u1|state.stop~q\) # (!\u1|state.rx_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.stop~q\,
	datad => \u1|state.rx_idle~q\,
	combout => \u1|baud_count[8]~27_combout\);

-- Location: LCCOMB_X31_Y14_N12
\u1|baud_count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[1]~11_combout\ = (\u1|baud_count\(1) & (!\u1|baud_count[0]~10\)) # (!\u1|baud_count\(1) & ((\u1|baud_count[0]~10\) # (GND)))
-- \u1|baud_count[1]~12\ = CARRY((!\u1|baud_count[0]~10\) # (!\u1|baud_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(1),
	datad => VCC,
	cin => \u1|baud_count[0]~10\,
	combout => \u1|baud_count[1]~11_combout\,
	cout => \u1|baud_count[1]~12\);

-- Location: FF_X31_Y14_N13
\u1|baud_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[1]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(1));

-- Location: LCCOMB_X31_Y14_N14
\u1|baud_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[2]~13_combout\ = (\u1|baud_count\(2) & (\u1|baud_count[1]~12\ $ (GND))) # (!\u1|baud_count\(2) & (!\u1|baud_count[1]~12\ & VCC))
-- \u1|baud_count[2]~14\ = CARRY((\u1|baud_count\(2) & !\u1|baud_count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(2),
	datad => VCC,
	cin => \u1|baud_count[1]~12\,
	combout => \u1|baud_count[2]~13_combout\,
	cout => \u1|baud_count[2]~14\);

-- Location: FF_X31_Y14_N15
\u1|baud_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[2]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(2));

-- Location: LCCOMB_X31_Y14_N16
\u1|baud_count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[3]~15_combout\ = (\u1|baud_count\(3) & (!\u1|baud_count[2]~14\)) # (!\u1|baud_count\(3) & ((\u1|baud_count[2]~14\) # (GND)))
-- \u1|baud_count[3]~16\ = CARRY((!\u1|baud_count[2]~14\) # (!\u1|baud_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(3),
	datad => VCC,
	cin => \u1|baud_count[2]~14\,
	combout => \u1|baud_count[3]~15_combout\,
	cout => \u1|baud_count[3]~16\);

-- Location: FF_X31_Y14_N17
\u1|baud_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[3]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(3));

-- Location: LCCOMB_X31_Y14_N18
\u1|baud_count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[4]~17_combout\ = (\u1|baud_count\(4) & (\u1|baud_count[3]~16\ $ (GND))) # (!\u1|baud_count\(4) & (!\u1|baud_count[3]~16\ & VCC))
-- \u1|baud_count[4]~18\ = CARRY((\u1|baud_count\(4) & !\u1|baud_count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(4),
	datad => VCC,
	cin => \u1|baud_count[3]~16\,
	combout => \u1|baud_count[4]~17_combout\,
	cout => \u1|baud_count[4]~18\);

-- Location: FF_X31_Y14_N19
\u1|baud_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[4]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(4));

-- Location: LCCOMB_X31_Y14_N20
\u1|baud_count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[5]~19_combout\ = (\u1|baud_count\(5) & (!\u1|baud_count[4]~18\)) # (!\u1|baud_count\(5) & ((\u1|baud_count[4]~18\) # (GND)))
-- \u1|baud_count[5]~20\ = CARRY((!\u1|baud_count[4]~18\) # (!\u1|baud_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(5),
	datad => VCC,
	cin => \u1|baud_count[4]~18\,
	combout => \u1|baud_count[5]~19_combout\,
	cout => \u1|baud_count[5]~20\);

-- Location: FF_X31_Y14_N21
\u1|baud_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[5]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(5));

-- Location: LCCOMB_X31_Y14_N22
\u1|baud_count[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[6]~21_combout\ = (\u1|baud_count\(6) & (\u1|baud_count[5]~20\ $ (GND))) # (!\u1|baud_count\(6) & (!\u1|baud_count[5]~20\ & VCC))
-- \u1|baud_count[6]~22\ = CARRY((\u1|baud_count\(6) & !\u1|baud_count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(6),
	datad => VCC,
	cin => \u1|baud_count[5]~20\,
	combout => \u1|baud_count[6]~21_combout\,
	cout => \u1|baud_count[6]~22\);

-- Location: FF_X31_Y14_N23
\u1|baud_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[6]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(6));

-- Location: LCCOMB_X31_Y14_N24
\u1|baud_count[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[7]~23_combout\ = (\u1|baud_count\(7) & (!\u1|baud_count[6]~22\)) # (!\u1|baud_count\(7) & ((\u1|baud_count[6]~22\) # (GND)))
-- \u1|baud_count[7]~24\ = CARRY((!\u1|baud_count[6]~22\) # (!\u1|baud_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(7),
	datad => VCC,
	cin => \u1|baud_count[6]~22\,
	combout => \u1|baud_count[7]~23_combout\,
	cout => \u1|baud_count[7]~24\);

-- Location: FF_X31_Y14_N25
\u1|baud_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[7]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(7));

-- Location: LCCOMB_X31_Y14_N26
\u1|baud_count[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[8]~25_combout\ = \u1|baud_count\(8) $ (!\u1|baud_count[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(8),
	cin => \u1|baud_count[7]~24\,
	combout => \u1|baud_count[8]~25_combout\);

-- Location: FF_X31_Y14_N27
\u1|baud_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[8]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(8));

-- Location: LCCOMB_X31_Y14_N8
\u1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~0_combout\ = (\u1|baud_count\(3) & ((\u1|baud_count\(2)) # ((\u1|baud_count\(0) & \u1|baud_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(0),
	datab => \u1|baud_count\(3),
	datac => \u1|baud_count\(2),
	datad => \u1|baud_count\(1),
	combout => \u1|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y14_N2
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|baud_count\(4) & (!\u1|baud_count\(6) & !\u1|baud_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(4),
	datac => \u1|baud_count\(6),
	datad => \u1|baud_count\(5),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y14_N4
\u1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~1_combout\ = (\u1|baud_count\(8) & ((\u1|baud_count\(7)) # ((\u1|LessThan1~0_combout\) # (!\u1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(8),
	datab => \u1|baud_count\(7),
	datac => \u1|LessThan1~0_combout\,
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y14_N30
\u1|baud_count[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[8]~28_combout\ = (\u1|baud_count[8]~27_combout\) # ((\u1|state.almacen~q\ & (\u1|LessThan1~1_combout\)) # (!\u1|state.almacen~q\ & ((!\u1|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.almacen~q\,
	datab => \u1|baud_count[8]~27_combout\,
	datac => \u1|LessThan1~1_combout\,
	datad => \u1|Selector14~0_combout\,
	combout => \u1|baud_count[8]~28_combout\);

-- Location: FF_X31_Y14_N11
\u1|baud_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|baud_count[0]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[8]~28_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(0));

-- Location: LCCOMB_X31_Y14_N6
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (!\u1|baud_count\(3) & (((!\u1|baud_count\(0) & !\u1|baud_count\(1))) # (!\u1|baud_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(0),
	datab => \u1|baud_count\(3),
	datac => \u1|baud_count\(2),
	datad => \u1|baud_count\(1),
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y14_N0
\u1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector14~0_combout\ = (!\u1|baud_count\(8) & (((\u1|LessThan0~1_combout\ & \u1|LessThan0~0_combout\)) # (!\u1|baud_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~1_combout\,
	datab => \u1|baud_count\(7),
	datac => \u1|baud_count\(8),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|Selector14~0_combout\);

-- Location: LCCOMB_X30_Y14_N4
\u1|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector14~1_combout\ = (\rx_line~input_o\ & (\u1|Selector14~0_combout\ & (\u1|state.start~q\))) # (!\rx_line~input_o\ & (((\u1|Selector14~0_combout\ & \u1|state.start~q\)) # (!\u1|state.rx_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_line~input_o\,
	datab => \u1|Selector14~0_combout\,
	datac => \u1|state.start~q\,
	datad => \u1|state.rx_idle~q\,
	combout => \u1|Selector14~1_combout\);

-- Location: FF_X30_Y14_N5
\u1|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector14~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.start~q\);

-- Location: LCCOMB_X29_Y14_N20
\u1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector15~0_combout\ = (\u1|state.almacen~q\ & !\u1|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.almacen~q\,
	datad => \u1|LessThan1~1_combout\,
	combout => \u1|Selector15~0_combout\);

-- Location: LCCOMB_X29_Y14_N4
\u1|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector15~2_combout\ = (\u1|Selector15~1_combout\) # ((\u1|Selector15~0_combout\) # ((!\u1|Selector14~0_combout\ & \u1|state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector15~1_combout\,
	datab => \u1|Selector14~0_combout\,
	datac => \u1|state.start~q\,
	datad => \u1|Selector15~0_combout\,
	combout => \u1|Selector15~2_combout\);

-- Location: FF_X29_Y14_N5
\u1|state.almacen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector15~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.almacen~q\);

-- Location: LCCOMB_X30_Y14_N14
\u1|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector13~1_combout\ = (!\u1|Selector13~0_combout\ & (((!\u1|LessThan1~1_combout\) # (!\u1|state.almacen~q\)) # (!\u1|bit_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector13~0_combout\,
	datab => \u1|bit_count\(3),
	datac => \u1|state.almacen~q\,
	datad => \u1|LessThan1~1_combout\,
	combout => \u1|Selector13~1_combout\);

-- Location: FF_X30_Y14_N15
\u1|state.rx_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector13~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.rx_idle~q\);

-- Location: LCCOMB_X30_Y14_N0
\u1|bit32_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|bit32_count[1]~0_combout\ = (\u1|state.start~q\) # (!\u1|state.rx_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.rx_idle~q\,
	datad => \u1|state.start~q\,
	combout => \u1|bit32_count[1]~0_combout\);

-- Location: LCCOMB_X30_Y14_N30
\u1|bit32_count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|bit32_count[1]~1_combout\ = (!\u1|bit32_count[1]~0_combout\ & (((\u1|bit_count\(3) & \u1|LessThan1~1_combout\)) # (!\u1|state.almacen~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count\(3),
	datab => \u1|bit32_count[1]~0_combout\,
	datac => \u1|state.almacen~q\,
	datad => \u1|LessThan1~1_combout\,
	combout => \u1|bit32_count[1]~1_combout\);

-- Location: FF_X30_Y14_N13
\u1|bit32_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector19~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|bit32_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit32_count\(1));

-- Location: LCCOMB_X28_Y14_N14
\u1|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector15~1_combout\ = (\u1|state.rx_databits~q\ & (((!\u1|bit32_count\(1) & !\u1|bit32_count\(0))) # (!\u1|bit32_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(2),
	datab => \u1|bit32_count\(1),
	datac => \u1|bit32_count\(0),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector15~1_combout\);

-- Location: LCCOMB_X29_Y14_N10
\u1|bit_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|bit_count~0_combout\ = (\u1|state.start~q\) # (\u1|state.almacen~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.start~q\,
	datac => \u1|state.almacen~q\,
	combout => \u1|bit_count~0_combout\);

-- Location: LCCOMB_X29_Y14_N26
\u1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector12~0_combout\ = (\u1|bit_count\(0) & ((\u1|bit_count~0_combout\) # ((\u1|state.rx_databits~q\ & \u1|LessThan4~0_combout\)))) # (!\u1|bit_count\(0) & (((\u1|state.rx_databits~q\ & !\u1|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count~0_combout\,
	datab => \u1|state.rx_databits~q\,
	datac => \u1|bit_count\(0),
	datad => \u1|LessThan4~0_combout\,
	combout => \u1|Selector12~0_combout\);

-- Location: FF_X29_Y14_N27
\u1|bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector12~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(0));

-- Location: LCCOMB_X29_Y14_N28
\u1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector9~0_combout\ = (\u1|state.almacen~q\) # ((\u1|state.start~q\) # ((\u1|state.rx_databits~q\ & \u1|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|state.almacen~q\,
	datac => \u1|state.start~q\,
	datad => \u1|LessThan4~0_combout\,
	combout => \u1|Selector9~0_combout\);

-- Location: LCCOMB_X28_Y14_N6
\u1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector11~0_combout\ = (\u1|bit_count\(1) & ((\u1|Selector9~0_combout\) # ((\u1|Selector15~1_combout\ & !\u1|bit_count\(0))))) # (!\u1|bit_count\(1) & (\u1|Selector15~1_combout\ & (\u1|bit_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector15~1_combout\,
	datab => \u1|bit_count\(0),
	datac => \u1|bit_count\(1),
	datad => \u1|Selector9~0_combout\,
	combout => \u1|Selector11~0_combout\);

-- Location: FF_X28_Y14_N7
\u1|bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector11~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(1));

-- Location: LCCOMB_X28_Y14_N10
\u1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~1_combout\ = \u1|bit_count\(2) $ (((\u1|bit_count\(1) & \u1|bit_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count\(1),
	datab => \u1|bit_count\(2),
	datad => \u1|bit_count\(0),
	combout => \u1|Add2~1_combout\);

-- Location: LCCOMB_X28_Y14_N24
\u1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector10~0_combout\ = (\u1|Add2~1_combout\ & ((\u1|Selector15~1_combout\) # ((\u1|bit_count\(2) & \u1|Selector9~0_combout\)))) # (!\u1|Add2~1_combout\ & (((\u1|bit_count\(2) & \u1|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add2~1_combout\,
	datab => \u1|Selector15~1_combout\,
	datac => \u1|bit_count\(2),
	datad => \u1|Selector9~0_combout\,
	combout => \u1|Selector10~0_combout\);

-- Location: FF_X28_Y14_N25
\u1|bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector10~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(2));

-- Location: LCCOMB_X28_Y14_N20
\u1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~0_combout\ = \u1|bit_count\(3) $ (((\u1|bit_count\(1) & (\u1|bit_count\(2) & \u1|bit_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count\(1),
	datab => \u1|bit_count\(2),
	datac => \u1|bit_count\(3),
	datad => \u1|bit_count\(0),
	combout => \u1|Add2~0_combout\);

-- Location: LCCOMB_X29_Y14_N14
\u1|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector9~1_combout\ = (\u1|Selector15~1_combout\ & ((\u1|Add2~0_combout\) # ((\u1|bit_count\(3) & \u1|Selector9~0_combout\)))) # (!\u1|Selector15~1_combout\ & (((\u1|bit_count\(3) & \u1|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector15~1_combout\,
	datab => \u1|Add2~0_combout\,
	datac => \u1|bit_count\(3),
	datad => \u1|Selector9~0_combout\,
	combout => \u1|Selector9~1_combout\);

-- Location: FF_X29_Y14_N15
\u1|bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector9~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(3));

-- Location: LCCOMB_X30_Y14_N26
\u1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector17~0_combout\ = (!\u1|bit_count\(3) & (\u1|state.almacen~q\ & (\u1|LessThan4~0_combout\ & \u1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count\(3),
	datab => \u1|state.almacen~q\,
	datac => \u1|LessThan4~0_combout\,
	datad => \u1|LessThan1~1_combout\,
	combout => \u1|Selector17~0_combout\);

-- Location: FF_X30_Y14_N27
\u1|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector17~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.stop~q\);

-- Location: LCCOMB_X29_Y14_N12
\u1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector18~0_combout\ = (\u1|bit32_count\(0) & (!\u1|state.rx_databits~q\ & (\u1|bit32_count\(2) $ (\u1|bit32_count\(1))))) # (!\u1|bit32_count\(0) & (\u1|bit32_count\(2) & ((!\u1|state.rx_databits~q\) # (!\u1|bit32_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datab => \u1|bit32_count\(2),
	datac => \u1|bit32_count\(1),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector18~0_combout\);

-- Location: LCCOMB_X30_Y14_N28
\u1|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector18~1_combout\ = (!\u1|state.stop~q\ & \u1|Selector18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.stop~q\,
	datad => \u1|Selector18~0_combout\,
	combout => \u1|Selector18~1_combout\);

-- Location: FF_X30_Y14_N29
\u1|bit32_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector18~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|bit32_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit32_count\(2));

-- Location: LCCOMB_X29_Y14_N6
\u1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector20~0_combout\ = (!\u1|state.stop~q\ & ((\u1|bit32_count\(0) & (!\u1|bit32_count\(2) & \u1|state.rx_databits~q\)) # (!\u1|bit32_count\(0) & ((!\u1|state.rx_databits~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datab => \u1|bit32_count\(2),
	datac => \u1|state.stop~q\,
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector20~0_combout\);

-- Location: FF_X30_Y14_N17
\u1|bit32_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|Selector20~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u1|bit32_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit32_count\(0));

-- Location: LCCOMB_X30_Y14_N24
\u1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan4~0_combout\ = (\u1|bit32_count\(2) & ((\u1|bit32_count\(0)) # (\u1|bit32_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit32_count\(0),
	datac => \u1|bit32_count\(2),
	datad => \u1|bit32_count\(1),
	combout => \u1|LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y14_N2
\u1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector16~0_combout\ = (!\u1|bit_count\(3) & (\u1|state.almacen~q\ & (!\u1|LessThan4~0_combout\ & \u1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count\(3),
	datab => \u1|state.almacen~q\,
	datac => \u1|LessThan4~0_combout\,
	datad => \u1|LessThan1~1_combout\,
	combout => \u1|Selector16~0_combout\);

-- Location: LCCOMB_X30_Y14_N22
\u1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector16~1_combout\ = (\u1|Selector16~0_combout\) # ((\u1|LessThan4~0_combout\ & \u1|state.rx_databits~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan4~0_combout\,
	datac => \u1|state.rx_databits~q\,
	datad => \u1|Selector16~0_combout\,
	combout => \u1|Selector16~1_combout\);

-- Location: FF_X30_Y14_N23
\u1|state.rx_databits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector16~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.rx_databits~q\);

-- Location: LCCOMB_X29_Y13_N8
\u1|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector21~2_combout\ = (\rx_line~input_o\ & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_line~input_o\,
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector21~2_combout\);

-- Location: LCCOMB_X30_Y14_N18
\u1|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector52~0_combout\ = (!\u1|bit32_count\(1) & (\u1|bit32_count\(0) & (\u1|state.rx_databits~q\ & !\u1|bit32_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(1),
	datab => \u1|bit32_count\(0),
	datac => \u1|state.rx_databits~q\,
	datad => \u1|bit32_count\(2),
	combout => \u1|Selector52~0_combout\);

-- Location: LCCOMB_X29_Y14_N8
\u1|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector52~1_combout\ = (\u1|Selector52~0_combout\) # ((\u1|state.stop~q\ & !\u1|state.rx_databits~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.stop~q\,
	datab => \u1|state.rx_databits~q\,
	datad => \u1|Selector52~0_combout\,
	combout => \u1|Selector52~1_combout\);

-- Location: FF_X29_Y14_N9
\u1|rxbuff32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|Selector21~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(7));

-- Location: LCCOMB_X29_Y14_N16
\u1|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector46~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(7),
	combout => \u1|Selector46~0_combout\);

-- Location: FF_X29_Y14_N17
\u1|rxbuff32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector46~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(6));

-- Location: LCCOMB_X30_Y16_N0
\save[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][6]~feeder_combout\ = \u1|rxbuff32\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(6),
	combout => \save[3][6]~feeder_combout\);

-- Location: IOIBUF_X0_Y7_N1
\lee~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lee,
	o => \lee~input_o\);

-- Location: LCCOMB_X31_Y15_N16
\u2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector1~0_combout\ = (\u2|state.tx_start~q\) # ((\u2|tx_active~q\ & ((\u2|state.tx_databits~q\) # (\u2|state.tx_stop_bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_start~q\,
	datab => \u2|state.tx_databits~q\,
	datac => \u2|tx_active~q\,
	datad => \u2|state.tx_stop_bits~q\,
	combout => \u2|Selector1~0_combout\);

-- Location: FF_X31_Y15_N17
\u2|tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|tx_active~q\);

-- Location: LCCOMB_X31_Y15_N10
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\boton~input_o\) # ((\lee~input_o\) # (\u2|tx_active~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \boton~input_o\,
	datac => \lee~input_o\,
	datad => \u2|tx_active~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X30_Y16_N1
\save[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][6]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][6]~q\);

-- Location: IOIBUF_X34_Y7_N8
\cambio[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cambio(0),
	o => \cambio[0]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\cambio[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cambio(1),
	o => \cambio[1]~input_o\);

-- Location: LCCOMB_X30_Y14_N10
\u1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector21~0_combout\ = (!\u1|bit32_count\(1) & (\u1|bit32_count\(2) & (\u1|state.rx_databits~q\ & !\u1|bit32_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(1),
	datab => \u1|bit32_count\(2),
	datac => \u1|state.rx_databits~q\,
	datad => \u1|bit32_count\(0),
	combout => \u1|Selector21~0_combout\);

-- Location: LCCOMB_X30_Y14_N20
\u1|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector21~1_combout\ = (\u1|Selector21~0_combout\) # ((!\u1|state.rx_databits~q\ & \u1|state.stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datac => \u1|state.stop~q\,
	datad => \u1|Selector21~0_combout\,
	combout => \u1|Selector21~1_combout\);

-- Location: FF_X29_Y13_N9
\u1|rxbuff32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector21~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(31));

-- Location: LCCOMB_X29_Y16_N26
\u1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector22~0_combout\ = (\u1|rxbuff32\(31) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(31),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector22~0_combout\);

-- Location: FF_X29_Y16_N27
\u1|rxbuff32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector22~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(30));

-- Location: FF_X30_Y16_N31
\save[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(30),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][6]~q\);

-- Location: LCCOMB_X30_Y14_N6
\u1|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector37~0_combout\ = (\u1|bit32_count\(1) & (\u1|state.rx_databits~q\ & !\u1|bit32_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(1),
	datac => \u1|state.rx_databits~q\,
	datad => \u1|bit32_count\(2),
	combout => \u1|Selector37~0_combout\);

-- Location: LCCOMB_X28_Y14_N30
\u1|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector37~2_combout\ = (\rx_line~input_o\ & (!\u1|bit32_count\(0) & \u1|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_line~input_o\,
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector37~0_combout\,
	combout => \u1|Selector37~2_combout\);

-- Location: LCCOMB_X30_Y14_N8
\u1|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector37~1_combout\ = (\u1|state.rx_databits~q\ & (!\u1|bit32_count\(0) & ((\u1|Selector37~0_combout\)))) # (!\u1|state.rx_databits~q\ & ((\u1|state.stop~q\) # ((!\u1|bit32_count\(0) & \u1|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|bit32_count\(0),
	datac => \u1|state.stop~q\,
	datad => \u1|Selector37~0_combout\,
	combout => \u1|Selector37~1_combout\);

-- Location: FF_X28_Y14_N31
\u1|rxbuff32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector37~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(15));

-- Location: LCCOMB_X28_Y14_N4
\u1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector38~0_combout\ = (\u1|rxbuff32\(15) & (!\u1|bit32_count\(0) & \u1|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(15),
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector37~0_combout\,
	combout => \u1|Selector38~0_combout\);

-- Location: FF_X28_Y14_N5
\u1|rxbuff32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector38~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(14));

-- Location: LCCOMB_X30_Y16_N24
\save[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[2][6]~feeder_combout\ = \u1|rxbuff32\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(14),
	combout => \save[2][6]~feeder_combout\);

-- Location: FF_X30_Y16_N25
\save[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[2][6]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][6]~q\);

-- Location: LCCOMB_X30_Y16_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\cambio[0]~input_o\ & (\cambio[1]~input_o\)) # (!\cambio[0]~input_o\ & ((\cambio[1]~input_o\ & ((\save[2][6]~q\))) # (!\cambio[1]~input_o\ & (\save[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cambio[0]~input_o\,
	datab => \cambio[1]~input_o\,
	datac => \save[0][6]~q\,
	datad => \save[2][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X29_Y13_N24
\u1|rxbuff32[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|rxbuff32[23]~feeder_combout\ = \u1|Selector21~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Selector21~2_combout\,
	combout => \u1|rxbuff32[23]~feeder_combout\);

-- Location: LCCOMB_X29_Y13_N30
\u1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector29~0_combout\ = (\u1|state.stop~q\ & (((\u1|bit32_count\(0) & \u1|Selector37~0_combout\)) # (!\u1|state.rx_databits~q\))) # (!\u1|state.stop~q\ & (((\u1|bit32_count\(0) & \u1|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.stop~q\,
	datab => \u1|state.rx_databits~q\,
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector37~0_combout\,
	combout => \u1|Selector29~0_combout\);

-- Location: FF_X29_Y13_N25
\u1|rxbuff32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|rxbuff32[23]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(23));

-- Location: LCCOMB_X29_Y13_N26
\u1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector30~0_combout\ = (\u1|rxbuff32\(23) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(23),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector30~0_combout\);

-- Location: FF_X29_Y13_N27
\u1|rxbuff32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector30~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(22));

-- Location: LCCOMB_X31_Y16_N28
\save[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[1][6]~feeder_combout\ = \u1|rxbuff32\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(22),
	combout => \save[1][6]~feeder_combout\);

-- Location: FF_X31_Y16_N29
\save[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[1][6]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][6]~q\);

-- Location: LCCOMB_X30_Y15_N0
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\cambio[0]~input_o\ & ((\Mux1~0_combout\ & (\save[3][6]~q\)) # (!\Mux1~0_combout\ & ((\save[1][6]~q\))))) # (!\cambio[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[3][6]~q\,
	datab => \cambio[0]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \save[1][6]~q\,
	combout => \Mux1~1_combout\);

-- Location: FF_X30_Y15_N1
\data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux1~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(6));

-- Location: LCCOMB_X30_Y16_N26
\save[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[0][7]~feeder_combout\ = \u1|rxbuff32\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(31),
	combout => \save[0][7]~feeder_combout\);

-- Location: FF_X30_Y16_N27
\save[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[0][7]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][7]~q\);

-- Location: FF_X30_Y16_N13
\save[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(23),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][7]~q\);

-- Location: LCCOMB_X30_Y16_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\cambio[1]~input_o\ & (((\cambio[0]~input_o\)))) # (!\cambio[1]~input_o\ & ((\cambio[0]~input_o\ & ((\save[1][7]~q\))) # (!\cambio[0]~input_o\ & (\save[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[0][7]~q\,
	datab => \cambio[1]~input_o\,
	datac => \save[1][7]~q\,
	datad => \cambio[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X30_Y16_N14
\save[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[2][7]~feeder_combout\ = \u1|rxbuff32\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(15),
	combout => \save[2][7]~feeder_combout\);

-- Location: FF_X30_Y16_N15
\save[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[2][7]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][7]~q\);

-- Location: LCCOMB_X29_Y15_N16
\save[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][7]~feeder_combout\ = \u1|rxbuff32\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(7),
	combout => \save[3][7]~feeder_combout\);

-- Location: FF_X29_Y15_N17
\save[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][7]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][7]~q\);

-- Location: LCCOMB_X30_Y16_N18
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\save[3][7]~q\)) # (!\cambio[1]~input_o\))) # (!\Mux0~0_combout\ & (\cambio[1]~input_o\ & (\save[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \cambio[1]~input_o\,
	datac => \save[2][7]~q\,
	datad => \save[3][7]~q\,
	combout => \Mux0~1_combout\);

-- Location: FF_X30_Y16_N19
\data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux0~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(7));

-- Location: LCCOMB_X29_Y14_N0
\u1|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector47~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(6),
	combout => \u1|Selector47~0_combout\);

-- Location: FF_X29_Y14_N1
\u1|rxbuff32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector47~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(5));

-- Location: LCCOMB_X29_Y15_N14
\save[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][5]~feeder_combout\ = \u1|rxbuff32\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(5),
	combout => \save[3][5]~feeder_combout\);

-- Location: FF_X29_Y15_N15
\save[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][5]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][5]~q\);

-- Location: LCCOMB_X29_Y13_N18
\u1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector31~0_combout\ = (\u1|rxbuff32\(22) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(22),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector31~0_combout\);

-- Location: FF_X29_Y13_N19
\u1|rxbuff32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector31~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(21));

-- Location: LCCOMB_X30_Y16_N6
\save[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[1][5]~feeder_combout\ = \u1|rxbuff32\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(21),
	combout => \save[1][5]~feeder_combout\);

-- Location: FF_X30_Y16_N7
\save[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[1][5]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][5]~q\);

-- Location: LCCOMB_X29_Y16_N16
\u1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector23~0_combout\ = (\u1|rxbuff32\(30) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(30),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector23~0_combout\);

-- Location: FF_X29_Y16_N17
\u1|rxbuff32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector23~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(29));

-- Location: FF_X30_Y16_N9
\save[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(29),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][5]~q\);

-- Location: LCCOMB_X30_Y16_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\cambio[0]~input_o\ & ((\save[1][5]~q\) # ((\cambio[1]~input_o\)))) # (!\cambio[0]~input_o\ & (((\save[0][5]~q\ & !\cambio[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[1][5]~q\,
	datab => \cambio[0]~input_o\,
	datac => \save[0][5]~q\,
	datad => \cambio[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X28_Y14_N26
\u1|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector39~0_combout\ = (\u1|rxbuff32\(14) & (!\u1|bit32_count\(0) & \u1|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(14),
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector37~0_combout\,
	combout => \u1|Selector39~0_combout\);

-- Location: FF_X28_Y14_N27
\u1|rxbuff32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector39~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(13));

-- Location: LCCOMB_X29_Y15_N28
\save[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[2][5]~feeder_combout\ = \u1|rxbuff32\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(13),
	combout => \save[2][5]~feeder_combout\);

-- Location: FF_X29_Y15_N29
\save[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[2][5]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][5]~q\);

-- Location: LCCOMB_X30_Y15_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\cambio[1]~input_o\ & ((\Mux2~0_combout\ & (\save[3][5]~q\)) # (!\Mux2~0_combout\ & ((\save[2][5]~q\))))) # (!\cambio[1]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[3][5]~q\,
	datab => \cambio[1]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \save[2][5]~q\,
	combout => \Mux2~1_combout\);

-- Location: FF_X30_Y15_N27
\data_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux2~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(5));

-- Location: LCCOMB_X29_Y14_N24
\u1|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector48~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(5),
	combout => \u1|Selector48~0_combout\);

-- Location: FF_X29_Y14_N25
\u1|rxbuff32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector48~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(4));

-- Location: LCCOMB_X29_Y15_N10
\save[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][4]~feeder_combout\ = \u1|rxbuff32\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(4),
	combout => \save[3][4]~feeder_combout\);

-- Location: FF_X29_Y15_N11
\save[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][4]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][4]~q\);

-- Location: LCCOMB_X29_Y13_N2
\u1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector32~0_combout\ = (\u1|rxbuff32\(21) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(21),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector32~0_combout\);

-- Location: FF_X29_Y13_N3
\u1|rxbuff32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector32~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(20));

-- Location: LCCOMB_X28_Y15_N18
\save[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[1][4]~feeder_combout\ = \u1|rxbuff32\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(20),
	combout => \save[1][4]~feeder_combout\);

-- Location: FF_X28_Y15_N19
\save[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[1][4]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][4]~q\);

-- Location: LCCOMB_X28_Y14_N0
\u1|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector40~0_combout\ = (\u1|rxbuff32\(13) & (!\u1|bit32_count\(0) & \u1|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(13),
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector37~0_combout\,
	combout => \u1|Selector40~0_combout\);

-- Location: FF_X28_Y14_N1
\u1|rxbuff32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector40~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(12));

-- Location: FF_X29_Y15_N25
\save[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(12),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][4]~q\);

-- Location: LCCOMB_X29_Y16_N20
\u1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector24~0_combout\ = (\u1|rxbuff32\(29) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(29),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector24~0_combout\);

-- Location: FF_X29_Y16_N21
\u1|rxbuff32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector24~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(28));

-- Location: LCCOMB_X28_Y15_N28
\save[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[0][4]~feeder_combout\ = \u1|rxbuff32\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(28),
	combout => \save[0][4]~feeder_combout\);

-- Location: FF_X28_Y15_N29
\save[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[0][4]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][4]~q\);

-- Location: LCCOMB_X29_Y15_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\cambio[0]~input_o\ & (\cambio[1]~input_o\)) # (!\cambio[0]~input_o\ & ((\cambio[1]~input_o\ & (\save[2][4]~q\)) # (!\cambio[1]~input_o\ & ((\save[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cambio[0]~input_o\,
	datab => \cambio[1]~input_o\,
	datac => \save[2][4]~q\,
	datad => \save[0][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X30_Y15_N8
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\cambio[0]~input_o\ & ((\Mux3~0_combout\ & (\save[3][4]~q\)) # (!\Mux3~0_combout\ & ((\save[1][4]~q\))))) # (!\cambio[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[3][4]~q\,
	datab => \cambio[0]~input_o\,
	datac => \save[1][4]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X30_Y15_N9
\data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux3~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(4));

-- Location: LCCOMB_X30_Y15_N2
\u2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~2_combout\ = (\u2|data_index\(1) & (((\u2|data_index\(0))))) # (!\u2|data_index\(1) & ((\u2|data_index\(0) & (data_tx(5))) # (!\u2|data_index\(0) & ((data_tx(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_tx(5),
	datab => data_tx(4),
	datac => \u2|data_index\(1),
	datad => \u2|data_index\(0),
	combout => \u2|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y15_N12
\u2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~3_combout\ = (\u2|data_index\(1) & ((\u2|Mux0~2_combout\ & ((data_tx(7)))) # (!\u2|Mux0~2_combout\ & (data_tx(6))))) # (!\u2|data_index\(1) & (((\u2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(1),
	datab => data_tx(6),
	datac => data_tx(7),
	datad => \u2|Mux0~2_combout\,
	combout => \u2|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y14_N18
\u1|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector49~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(4),
	combout => \u1|Selector49~0_combout\);

-- Location: FF_X29_Y14_N19
\u1|rxbuff32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector49~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(3));

-- Location: LCCOMB_X29_Y14_N22
\u1|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector50~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(3),
	combout => \u1|Selector50~0_combout\);

-- Location: FF_X29_Y14_N23
\u1|rxbuff32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector50~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(2));

-- Location: LCCOMB_X29_Y14_N30
\u1|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector51~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datac => \u1|rxbuff32\(2),
	combout => \u1|Selector51~0_combout\);

-- Location: FF_X29_Y14_N31
\u1|rxbuff32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector51~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(1));

-- Location: LCCOMB_X29_Y14_N2
\u1|Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector52~2_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datac => \u1|rxbuff32\(1),
	combout => \u1|Selector52~2_combout\);

-- Location: FF_X29_Y14_N3
\u1|rxbuff32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector52~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(0));

-- Location: LCCOMB_X28_Y15_N4
\save[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][0]~feeder_combout\ = \u1|rxbuff32\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(0),
	combout => \save[3][0]~feeder_combout\);

-- Location: FF_X28_Y15_N5
\save[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][0]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][0]~q\);

-- Location: LCCOMB_X29_Y13_N22
\u1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector33~0_combout\ = (\u1|rxbuff32\(20) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(20),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector33~0_combout\);

-- Location: FF_X29_Y13_N23
\u1|rxbuff32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector33~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(19));

-- Location: LCCOMB_X29_Y13_N12
\u1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector34~0_combout\ = (\u1|rxbuff32\(19) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(19),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector34~0_combout\);

-- Location: FF_X29_Y13_N13
\u1|rxbuff32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector34~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(18));

-- Location: LCCOMB_X29_Y13_N4
\u1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector35~0_combout\ = (\u1|rxbuff32\(18) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(18),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector35~0_combout\);

-- Location: FF_X29_Y13_N5
\u1|rxbuff32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector35~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(17));

-- Location: LCCOMB_X29_Y13_N0
\u1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector36~0_combout\ = (\u1|rxbuff32\(17) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(17),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector36~0_combout\);

-- Location: FF_X29_Y13_N1
\u1|rxbuff32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector36~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(16));

-- Location: LCCOMB_X28_Y15_N16
\save[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[1][0]~feeder_combout\ = \u1|rxbuff32\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(16),
	combout => \save[1][0]~feeder_combout\);

-- Location: FF_X28_Y15_N17
\save[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[1][0]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][0]~q\);

-- Location: LCCOMB_X29_Y15_N22
\u1|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector41~0_combout\ = (\u1|rxbuff32\(12) & (\u1|Selector37~0_combout\ & !\u1|bit32_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(12),
	datac => \u1|Selector37~0_combout\,
	datad => \u1|bit32_count\(0),
	combout => \u1|Selector41~0_combout\);

-- Location: FF_X29_Y15_N23
\u1|rxbuff32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector41~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(11));

-- Location: LCCOMB_X28_Y14_N22
\u1|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector42~0_combout\ = (\u1|rxbuff32\(11) & (!\u1|bit32_count\(0) & \u1|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(11),
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector37~0_combout\,
	combout => \u1|Selector42~0_combout\);

-- Location: FF_X28_Y14_N23
\u1|rxbuff32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector42~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(10));

-- Location: LCCOMB_X29_Y15_N30
\u1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector43~0_combout\ = (!\u1|bit32_count\(0) & (\u1|Selector37~0_combout\ & \u1|rxbuff32\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datac => \u1|Selector37~0_combout\,
	datad => \u1|rxbuff32\(10),
	combout => \u1|Selector43~0_combout\);

-- Location: FF_X29_Y15_N31
\u1|rxbuff32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector43~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(9));

-- Location: LCCOMB_X29_Y15_N8
\u1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector44~0_combout\ = (\u1|rxbuff32\(9) & (\u1|Selector37~0_combout\ & !\u1|bit32_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(9),
	datac => \u1|Selector37~0_combout\,
	datad => \u1|bit32_count\(0),
	combout => \u1|Selector44~0_combout\);

-- Location: FF_X29_Y15_N9
\u1|rxbuff32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector44~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(8));

-- Location: FF_X29_Y15_N19
\save[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(8),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][0]~q\);

-- Location: LCCOMB_X29_Y16_N4
\u1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector25~0_combout\ = (\u1|rxbuff32\(28) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(28),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector25~0_combout\);

-- Location: FF_X29_Y16_N5
\u1|rxbuff32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector25~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(27));

-- Location: LCCOMB_X29_Y16_N8
\u1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector26~0_combout\ = (\u1|rxbuff32\(27) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(27),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector26~0_combout\);

-- Location: FF_X29_Y16_N9
\u1|rxbuff32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector26~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(26));

-- Location: LCCOMB_X29_Y16_N30
\u1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector27~0_combout\ = (\u1|rxbuff32\(26) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(26),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector27~0_combout\);

-- Location: FF_X29_Y16_N31
\u1|rxbuff32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector27~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(25));

-- Location: LCCOMB_X29_Y16_N6
\u1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector28~0_combout\ = (\u1|rxbuff32\(25) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(25),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector28~0_combout\);

-- Location: FF_X29_Y16_N7
\u1|rxbuff32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u1|Selector28~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(24));

-- Location: LCCOMB_X28_Y15_N14
\save[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[0][0]~feeder_combout\ = \u1|rxbuff32\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(24),
	combout => \save[0][0]~feeder_combout\);

-- Location: FF_X28_Y15_N15
\save[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[0][0]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][0]~q\);

-- Location: LCCOMB_X29_Y15_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\cambio[0]~input_o\ & (\cambio[1]~input_o\)) # (!\cambio[0]~input_o\ & ((\cambio[1]~input_o\ & (\save[2][0]~q\)) # (!\cambio[1]~input_o\ & ((\save[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cambio[0]~input_o\,
	datab => \cambio[1]~input_o\,
	datac => \save[2][0]~q\,
	datad => \save[0][0]~q\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X30_Y15_N10
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\cambio[0]~input_o\ & ((\Mux7~0_combout\ & (\save[3][0]~q\)) # (!\Mux7~0_combout\ & ((\save[1][0]~q\))))) # (!\cambio[0]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[3][0]~q\,
	datab => \cambio[0]~input_o\,
	datac => \save[1][0]~q\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: FF_X30_Y15_N11
\data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux7~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(0));

-- Location: LCCOMB_X29_Y15_N12
\save[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[2][1]~feeder_combout\ = \u1|rxbuff32\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(9),
	combout => \save[2][1]~feeder_combout\);

-- Location: FF_X29_Y15_N13
\save[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[2][1]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][1]~q\);

-- Location: LCCOMB_X31_Y15_N14
\save[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][1]~feeder_combout\ = \u1|rxbuff32\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(1),
	combout => \save[3][1]~feeder_combout\);

-- Location: FF_X31_Y15_N15
\save[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][1]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][1]~q\);

-- Location: LCCOMB_X29_Y15_N6
\save[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[1][1]~feeder_combout\ = \u1|rxbuff32\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(17),
	combout => \save[1][1]~feeder_combout\);

-- Location: FF_X29_Y15_N7
\save[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[1][1]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][1]~q\);

-- Location: FF_X29_Y15_N21
\save[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(25),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][1]~q\);

-- Location: LCCOMB_X29_Y15_N20
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\cambio[1]~input_o\ & (((\cambio[0]~input_o\)))) # (!\cambio[1]~input_o\ & ((\cambio[0]~input_o\ & (\save[1][1]~q\)) # (!\cambio[0]~input_o\ & ((\save[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[1][1]~q\,
	datab => \cambio[1]~input_o\,
	datac => \save[0][1]~q\,
	datad => \cambio[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\cambio[1]~input_o\ & ((\Mux6~0_combout\ & ((\save[3][1]~q\))) # (!\Mux6~0_combout\ & (\save[2][1]~q\)))) # (!\cambio[1]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[2][1]~q\,
	datab => \save[3][1]~q\,
	datac => \cambio[1]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: FF_X30_Y15_N5
\data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux6~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(1));

-- Location: LCCOMB_X30_Y15_N28
\u2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\u2|data_index\(1) & (((\u2|data_index\(0))))) # (!\u2|data_index\(1) & ((\u2|data_index\(0) & ((data_tx(1)))) # (!\u2|data_index\(0) & (data_tx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_tx(0),
	datab => data_tx(1),
	datac => \u2|data_index\(1),
	datad => \u2|data_index\(0),
	combout => \u2|Mux0~0_combout\);

-- Location: FF_X29_Y15_N3
\save[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(26),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][2]~q\);

-- Location: LCCOMB_X29_Y15_N0
\save[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[2][2]~feeder_combout\ = \u1|rxbuff32\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(10),
	combout => \save[2][2]~feeder_combout\);

-- Location: FF_X29_Y15_N1
\save[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[2][2]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][2]~q\);

-- Location: LCCOMB_X29_Y15_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\cambio[0]~input_o\ & (\cambio[1]~input_o\)) # (!\cambio[0]~input_o\ & ((\cambio[1]~input_o\ & ((\save[2][2]~q\))) # (!\cambio[1]~input_o\ & (\save[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cambio[0]~input_o\,
	datab => \cambio[1]~input_o\,
	datac => \save[0][2]~q\,
	datad => \save[2][2]~q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X28_Y15_N21
\save[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(18),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][2]~q\);

-- Location: LCCOMB_X31_Y15_N22
\save[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][2]~feeder_combout\ = \u1|rxbuff32\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(2),
	combout => \save[3][2]~feeder_combout\);

-- Location: FF_X31_Y15_N23
\save[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][2]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][2]~q\);

-- Location: LCCOMB_X30_Y15_N22
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\save[3][2]~q\)) # (!\cambio[0]~input_o\))) # (!\Mux5~0_combout\ & (\cambio[0]~input_o\ & (\save[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \cambio[0]~input_o\,
	datac => \save[1][2]~q\,
	datad => \save[3][2]~q\,
	combout => \Mux5~1_combout\);

-- Location: FF_X30_Y15_N23
\data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux5~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(2));

-- Location: LCCOMB_X30_Y16_N22
\save[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[3][3]~feeder_combout\ = \u1|rxbuff32\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(3),
	combout => \save[3][3]~feeder_combout\);

-- Location: FF_X30_Y16_N23
\save[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[3][3]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[3][3]~q\);

-- Location: LCCOMB_X30_Y16_N4
\save[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[2][3]~feeder_combout\ = \u1|rxbuff32\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(11),
	combout => \save[2][3]~feeder_combout\);

-- Location: FF_X30_Y16_N5
\save[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[2][3]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[2][3]~q\);

-- Location: LCCOMB_X30_Y16_N10
\save[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \save[1][3]~feeder_combout\ = \u1|rxbuff32\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(19),
	combout => \save[1][3]~feeder_combout\);

-- Location: FF_X30_Y16_N11
\save[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \save[1][3]~feeder_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[1][3]~q\);

-- Location: FF_X30_Y16_N29
\save[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(27),
	sload => VCC,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \save[0][3]~q\);

-- Location: LCCOMB_X30_Y16_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\cambio[1]~input_o\ & (((\cambio[0]~input_o\)))) # (!\cambio[1]~input_o\ & ((\cambio[0]~input_o\ & (\save[1][3]~q\)) # (!\cambio[0]~input_o\ & ((\save[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[1][3]~q\,
	datab => \cambio[1]~input_o\,
	datac => \save[0][3]~q\,
	datad => \cambio[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\cambio[1]~input_o\ & ((\Mux4~0_combout\ & (\save[3][3]~q\)) # (!\Mux4~0_combout\ & ((\save[2][3]~q\))))) # (!\cambio[1]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save[3][3]~q\,
	datab => \cambio[1]~input_o\,
	datac => \save[2][3]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X30_Y16_N17
\data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \Mux4~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tx(3));

-- Location: LCCOMB_X30_Y15_N18
\u2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~1_combout\ = (\u2|data_index\(1) & ((\u2|Mux0~0_combout\ & ((data_tx(3)))) # (!\u2|Mux0~0_combout\ & (data_tx(2))))) # (!\u2|data_index\(1) & (\u2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(1),
	datab => \u2|Mux0~0_combout\,
	datac => data_tx(2),
	datad => data_tx(3),
	combout => \u2|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y15_N16
\u2|tx_line~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tx_line~0_combout\ = (\u2|data_index\(2) & (\u2|Mux0~3_combout\)) # (!\u2|data_index\(2) & ((\u2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mux0~3_combout\,
	datab => \u2|data_index\(2),
	datad => \u2|Mux0~1_combout\,
	combout => \u2|tx_line~0_combout\);

-- Location: LCCOMB_X30_Y15_N30
\u2|state.tx_start~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|state.tx_start~_wirecell_combout\ = !\u2|state.tx_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|state.tx_start~q\,
	combout => \u2|state.tx_start~_wirecell_combout\);

-- Location: FF_X30_Y15_N17
\u2|tx_line\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|q_oi~clkctrl_outclk\,
	d => \u2|tx_line~0_combout\,
	asdata => \u2|state.tx_start~_wirecell_combout\,
	sload => \u2|ALT_INV_state.tx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|tx_line~q\);

-- Location: IOIBUF_X34_Y12_N15
\selector~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector,
	o => \selector~input_o\);

-- Location: LCCOMB_X29_Y18_N14
\u3|reset_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[0]~18_combout\ = \u3|reset_count\(0) $ (VCC)
-- \u3|reset_count[0]~19\ = CARRY(\u3|reset_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(0),
	datad => VCC,
	combout => \u3|reset_count[0]~18_combout\,
	cout => \u3|reset_count[0]~19\);

-- Location: FF_X29_Y18_N15
\u3|reset_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[0]~18_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(0));

-- Location: LCCOMB_X29_Y18_N16
\u3|reset_count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[1]~20_combout\ = (\u3|reset_count\(1) & (!\u3|reset_count[0]~19\)) # (!\u3|reset_count\(1) & ((\u3|reset_count[0]~19\) # (GND)))
-- \u3|reset_count[1]~21\ = CARRY((!\u3|reset_count[0]~19\) # (!\u3|reset_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(1),
	datad => VCC,
	cin => \u3|reset_count[0]~19\,
	combout => \u3|reset_count[1]~20_combout\,
	cout => \u3|reset_count[1]~21\);

-- Location: FF_X29_Y18_N17
\u3|reset_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[1]~20_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(1));

-- Location: LCCOMB_X29_Y18_N18
\u3|reset_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[2]~22_combout\ = (\u3|reset_count\(2) & (\u3|reset_count[1]~21\ $ (GND))) # (!\u3|reset_count\(2) & (!\u3|reset_count[1]~21\ & VCC))
-- \u3|reset_count[2]~23\ = CARRY((\u3|reset_count\(2) & !\u3|reset_count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(2),
	datad => VCC,
	cin => \u3|reset_count[1]~21\,
	combout => \u3|reset_count[2]~22_combout\,
	cout => \u3|reset_count[2]~23\);

-- Location: FF_X29_Y18_N19
\u3|reset_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[2]~22_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(2));

-- Location: LCCOMB_X29_Y18_N20
\u3|reset_count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[3]~24_combout\ = (\u3|reset_count\(3) & (!\u3|reset_count[2]~23\)) # (!\u3|reset_count\(3) & ((\u3|reset_count[2]~23\) # (GND)))
-- \u3|reset_count[3]~25\ = CARRY((!\u3|reset_count[2]~23\) # (!\u3|reset_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(3),
	datad => VCC,
	cin => \u3|reset_count[2]~23\,
	combout => \u3|reset_count[3]~24_combout\,
	cout => \u3|reset_count[3]~25\);

-- Location: FF_X29_Y18_N21
\u3|reset_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[3]~24_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(3));

-- Location: LCCOMB_X29_Y18_N22
\u3|reset_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[4]~26_combout\ = (\u3|reset_count\(4) & (\u3|reset_count[3]~25\ $ (GND))) # (!\u3|reset_count\(4) & (!\u3|reset_count[3]~25\ & VCC))
-- \u3|reset_count[4]~27\ = CARRY((\u3|reset_count\(4) & !\u3|reset_count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(4),
	datad => VCC,
	cin => \u3|reset_count[3]~25\,
	combout => \u3|reset_count[4]~26_combout\,
	cout => \u3|reset_count[4]~27\);

-- Location: FF_X29_Y18_N23
\u3|reset_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[4]~26_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(4));

-- Location: LCCOMB_X29_Y18_N24
\u3|reset_count[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[5]~28_combout\ = (\u3|reset_count\(5) & (!\u3|reset_count[4]~27\)) # (!\u3|reset_count\(5) & ((\u3|reset_count[4]~27\) # (GND)))
-- \u3|reset_count[5]~29\ = CARRY((!\u3|reset_count[4]~27\) # (!\u3|reset_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(5),
	datad => VCC,
	cin => \u3|reset_count[4]~27\,
	combout => \u3|reset_count[5]~28_combout\,
	cout => \u3|reset_count[5]~29\);

-- Location: FF_X29_Y18_N25
\u3|reset_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[5]~28_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(5));

-- Location: LCCOMB_X29_Y18_N26
\u3|reset_count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[6]~30_combout\ = (\u3|reset_count\(6) & (\u3|reset_count[5]~29\ $ (GND))) # (!\u3|reset_count\(6) & (!\u3|reset_count[5]~29\ & VCC))
-- \u3|reset_count[6]~31\ = CARRY((\u3|reset_count\(6) & !\u3|reset_count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(6),
	datad => VCC,
	cin => \u3|reset_count[5]~29\,
	combout => \u3|reset_count[6]~30_combout\,
	cout => \u3|reset_count[6]~31\);

-- Location: FF_X29_Y18_N27
\u3|reset_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[6]~30_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(6));

-- Location: LCCOMB_X29_Y18_N28
\u3|reset_count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[7]~32_combout\ = (\u3|reset_count\(7) & (!\u3|reset_count[6]~31\)) # (!\u3|reset_count\(7) & ((\u3|reset_count[6]~31\) # (GND)))
-- \u3|reset_count[7]~33\ = CARRY((!\u3|reset_count[6]~31\) # (!\u3|reset_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(7),
	datad => VCC,
	cin => \u3|reset_count[6]~31\,
	combout => \u3|reset_count[7]~32_combout\,
	cout => \u3|reset_count[7]~33\);

-- Location: FF_X29_Y18_N29
\u3|reset_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[7]~32_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(7));

-- Location: LCCOMB_X29_Y18_N30
\u3|reset_count[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[8]~34_combout\ = (\u3|reset_count\(8) & (\u3|reset_count[7]~33\ $ (GND))) # (!\u3|reset_count\(8) & (!\u3|reset_count[7]~33\ & VCC))
-- \u3|reset_count[8]~35\ = CARRY((\u3|reset_count\(8) & !\u3|reset_count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(8),
	datad => VCC,
	cin => \u3|reset_count[7]~33\,
	combout => \u3|reset_count[8]~34_combout\,
	cout => \u3|reset_count[8]~35\);

-- Location: FF_X29_Y18_N31
\u3|reset_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[8]~34_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(8));

-- Location: LCCOMB_X29_Y17_N0
\u3|reset_count[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[9]~36_combout\ = (\u3|reset_count\(9) & (!\u3|reset_count[8]~35\)) # (!\u3|reset_count\(9) & ((\u3|reset_count[8]~35\) # (GND)))
-- \u3|reset_count[9]~37\ = CARRY((!\u3|reset_count[8]~35\) # (!\u3|reset_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(9),
	datad => VCC,
	cin => \u3|reset_count[8]~35\,
	combout => \u3|reset_count[9]~36_combout\,
	cout => \u3|reset_count[9]~37\);

-- Location: FF_X29_Y17_N1
\u3|reset_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[9]~36_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(9));

-- Location: LCCOMB_X29_Y17_N2
\u3|reset_count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[10]~38_combout\ = (\u3|reset_count\(10) & (\u3|reset_count[9]~37\ $ (GND))) # (!\u3|reset_count\(10) & (!\u3|reset_count[9]~37\ & VCC))
-- \u3|reset_count[10]~39\ = CARRY((\u3|reset_count\(10) & !\u3|reset_count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(10),
	datad => VCC,
	cin => \u3|reset_count[9]~37\,
	combout => \u3|reset_count[10]~38_combout\,
	cout => \u3|reset_count[10]~39\);

-- Location: FF_X29_Y17_N3
\u3|reset_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[10]~38_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(10));

-- Location: LCCOMB_X29_Y17_N4
\u3|reset_count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[11]~40_combout\ = (\u3|reset_count\(11) & (!\u3|reset_count[10]~39\)) # (!\u3|reset_count\(11) & ((\u3|reset_count[10]~39\) # (GND)))
-- \u3|reset_count[11]~41\ = CARRY((!\u3|reset_count[10]~39\) # (!\u3|reset_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(11),
	datad => VCC,
	cin => \u3|reset_count[10]~39\,
	combout => \u3|reset_count[11]~40_combout\,
	cout => \u3|reset_count[11]~41\);

-- Location: FF_X29_Y17_N5
\u3|reset_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[11]~40_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(11));

-- Location: LCCOMB_X29_Y17_N6
\u3|reset_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[12]~42_combout\ = (\u3|reset_count\(12) & (\u3|reset_count[11]~41\ $ (GND))) # (!\u3|reset_count\(12) & (!\u3|reset_count[11]~41\ & VCC))
-- \u3|reset_count[12]~43\ = CARRY((\u3|reset_count\(12) & !\u3|reset_count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(12),
	datad => VCC,
	cin => \u3|reset_count[11]~41\,
	combout => \u3|reset_count[12]~42_combout\,
	cout => \u3|reset_count[12]~43\);

-- Location: FF_X29_Y17_N7
\u3|reset_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[12]~42_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(12));

-- Location: LCCOMB_X29_Y17_N8
\u3|reset_count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[13]~44_combout\ = (\u3|reset_count\(13) & (!\u3|reset_count[12]~43\)) # (!\u3|reset_count\(13) & ((\u3|reset_count[12]~43\) # (GND)))
-- \u3|reset_count[13]~45\ = CARRY((!\u3|reset_count[12]~43\) # (!\u3|reset_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(13),
	datad => VCC,
	cin => \u3|reset_count[12]~43\,
	combout => \u3|reset_count[13]~44_combout\,
	cout => \u3|reset_count[13]~45\);

-- Location: FF_X29_Y17_N9
\u3|reset_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[13]~44_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(13));

-- Location: LCCOMB_X29_Y17_N10
\u3|reset_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[14]~46_combout\ = (\u3|reset_count\(14) & (\u3|reset_count[13]~45\ $ (GND))) # (!\u3|reset_count\(14) & (!\u3|reset_count[13]~45\ & VCC))
-- \u3|reset_count[14]~47\ = CARRY((\u3|reset_count\(14) & !\u3|reset_count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(14),
	datad => VCC,
	cin => \u3|reset_count[13]~45\,
	combout => \u3|reset_count[14]~46_combout\,
	cout => \u3|reset_count[14]~47\);

-- Location: FF_X29_Y17_N11
\u3|reset_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[14]~46_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(14));

-- Location: LCCOMB_X29_Y17_N12
\u3|reset_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[15]~48_combout\ = (\u3|reset_count\(15) & (!\u3|reset_count[14]~47\)) # (!\u3|reset_count\(15) & ((\u3|reset_count[14]~47\) # (GND)))
-- \u3|reset_count[15]~49\ = CARRY((!\u3|reset_count[14]~47\) # (!\u3|reset_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(15),
	datad => VCC,
	cin => \u3|reset_count[14]~47\,
	combout => \u3|reset_count[15]~48_combout\,
	cout => \u3|reset_count[15]~49\);

-- Location: FF_X29_Y17_N13
\u3|reset_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[15]~48_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(15));

-- Location: LCCOMB_X29_Y17_N26
\u3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~4_combout\ = (!\u3|reset_count\(15) & !\u3|reset_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(15),
	datad => \u3|reset_count\(14),
	combout => \u3|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y17_N14
\u3|reset_count[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[16]~50_combout\ = (\u3|reset_count\(16) & (\u3|reset_count[15]~49\ $ (GND))) # (!\u3|reset_count\(16) & (!\u3|reset_count[15]~49\ & VCC))
-- \u3|reset_count[16]~51\ = CARRY((\u3|reset_count\(16) & !\u3|reset_count[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(16),
	datad => VCC,
	cin => \u3|reset_count[15]~49\,
	combout => \u3|reset_count[16]~50_combout\,
	cout => \u3|reset_count[16]~51\);

-- Location: FF_X29_Y17_N15
\u3|reset_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[16]~50_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(16));

-- Location: LCCOMB_X29_Y17_N16
\u3|reset_count[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[17]~52_combout\ = \u3|reset_count[16]~51\ $ (\u3|reset_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|reset_count\(17),
	cin => \u3|reset_count[16]~51\,
	combout => \u3|reset_count[17]~52_combout\);

-- Location: FF_X29_Y17_N17
\u3|reset_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|reset_count[17]~52_combout\,
	sclr => \u3|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|reset_count\(17));

-- Location: LCCOMB_X29_Y18_N10
\u3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~1_combout\ = (\u3|reset_count\(8) & (\u3|reset_count\(6) & \u3|reset_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(8),
	datac => \u3|reset_count\(6),
	datad => \u3|reset_count\(7),
	combout => \u3|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y18_N12
\u3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~0_combout\ = (!\u3|reset_count\(4) & (!\u3|reset_count\(5) & ((!\u3|reset_count\(3)) # (!\u3|reset_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(4),
	datab => \u3|reset_count\(2),
	datac => \u3|reset_count\(3),
	datad => \u3|reset_count\(5),
	combout => \u3|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y17_N18
\u3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~2_combout\ = (\u3|reset_count\(11) & ((\u3|reset_count\(9)) # ((\u3|LessThan0~1_combout\ & !\u3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(11),
	datab => \u3|reset_count\(9),
	datac => \u3|LessThan0~1_combout\,
	datad => \u3|LessThan0~0_combout\,
	combout => \u3|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y17_N28
\u3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~3_combout\ = ((!\u3|reset_count\(12) & ((!\u3|LessThan0~2_combout\) # (!\u3|reset_count\(10))))) # (!\u3|reset_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(12),
	datab => \u3|reset_count\(10),
	datac => \u3|reset_count\(13),
	datad => \u3|LessThan0~2_combout\,
	combout => \u3|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y17_N20
\u3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~5_combout\ = (\u3|reset_count\(17) & (\u3|reset_count\(16) & ((!\u3|LessThan0~3_combout\) # (!\u3|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~4_combout\,
	datab => \u3|reset_count\(17),
	datac => \u3|reset_count\(16),
	datad => \u3|LessThan0~3_combout\,
	combout => \u3|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y17_N24
\u3|refresh_state[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|refresh_state[0]~1_combout\ = \u3|refresh_state\(0) $ (\u3|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|refresh_state\(0),
	datad => \u3|LessThan0~5_combout\,
	combout => \u3|refresh_state[0]~1_combout\);

-- Location: FF_X29_Y17_N25
\u3|refresh_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|refresh_state[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|refresh_state\(0));

-- Location: LCCOMB_X29_Y17_N30
\u3|refresh_state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|refresh_state[1]~0_combout\ = \u3|refresh_state\(1) $ (((\u3|refresh_state\(0) & \u3|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|refresh_state\(0),
	datac => \u3|refresh_state\(1),
	datad => \u3|LessThan0~5_combout\,
	combout => \u3|refresh_state[1]~0_combout\);

-- Location: FF_X29_Y17_N31
\u3|refresh_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|refresh_state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|refresh_state\(1));

-- Location: LCCOMB_X28_Y16_N0
\u3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~0_combout\ = (\u3|refresh_state\(1) & \u3|refresh_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|refresh_state\(1),
	datac => \u3|refresh_state\(0),
	combout => \u3|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y15_N20
\u3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux1~0_combout\ = (\u3|refresh_state\(1) & !\u3|refresh_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|refresh_state\(1),
	datab => \u3|refresh_state\(0),
	combout => \u3|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y16_N22
\u3|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~3_combout\ = (\u3|refresh_state\(0) & (\u1|rxbuff32\(27) & \u3|refresh_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|refresh_state\(0),
	datab => \u1|rxbuff32\(27),
	datac => \u3|refresh_state\(1),
	combout => \u3|Mux4~3_combout\);

-- Location: LCCOMB_X28_Y15_N10
\u3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux2~0_combout\ = (\u3|refresh_state\(0) & !\u3|refresh_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|refresh_state\(0),
	datac => \u3|refresh_state\(1),
	combout => \u3|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y14_N28
\u3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~1_combout\ = (\u3|Mux2~0_combout\ & ((\u1|rxbuff32\(19)) # ((\selector~input_o\)))) # (!\u3|Mux2~0_combout\ & (((!\selector~input_o\ & \u1|rxbuff32\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(19),
	datab => \u3|Mux2~0_combout\,
	datac => \selector~input_o\,
	datad => \u1|rxbuff32\(23),
	combout => \u3|Mux4~1_combout\);

-- Location: LCCOMB_X28_Y14_N18
\u3|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~2_combout\ = (\selector~input_o\ & ((\u3|Mux4~1_combout\ & (\u1|rxbuff32\(3))) # (!\u3|Mux4~1_combout\ & ((\u1|rxbuff32\(7)))))) # (!\selector~input_o\ & (((\u3|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(3),
	datab => \u1|rxbuff32\(7),
	datac => \selector~input_o\,
	datad => \u3|Mux4~1_combout\,
	combout => \u3|Mux4~2_combout\);

-- Location: LCCOMB_X28_Y15_N26
\u3|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~3_combout\ = ((\selector~input_o\ & !\u3|refresh_state\(0))) # (!\u3|refresh_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector~input_o\,
	datab => \u3|refresh_state\(0),
	datac => \u3|refresh_state\(1),
	combout => \u3|Mux7~3_combout\);

-- Location: LCCOMB_X29_Y16_N12
\u3|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~4_combout\ = (\u3|Mux1~0_combout\ & (((!\u3|Mux7~3_combout\)))) # (!\u3|Mux1~0_combout\ & ((\u3|Mux7~3_combout\ & ((\u3|Mux4~2_combout\))) # (!\u3|Mux7~3_combout\ & (\u3|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~3_combout\,
	datab => \u3|Mux4~2_combout\,
	datac => \u3|Mux1~0_combout\,
	datad => \u3|Mux7~3_combout\,
	combout => \u3|Mux4~4_combout\);

-- Location: LCCOMB_X29_Y16_N18
\u3|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~5_combout\ = (\u3|Mux1~0_combout\ & ((\u3|Mux4~4_combout\ & ((\u1|rxbuff32\(31)))) # (!\u3|Mux4~4_combout\ & (\u1|rxbuff32\(15))))) # (!\u3|Mux1~0_combout\ & (((\u3|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux1~0_combout\,
	datab => \u1|rxbuff32\(15),
	datac => \u1|rxbuff32\(31),
	datad => \u3|Mux4~4_combout\,
	combout => \u3|Mux4~5_combout\);

-- Location: LCCOMB_X24_Y20_N10
\u3|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~6_combout\ = (\selector~input_o\ & ((\u3|Mux4~0_combout\ & (\u1|rxbuff32\(11))) # (!\u3|Mux4~0_combout\ & ((\u3|Mux4~5_combout\))))) # (!\selector~input_o\ & (((\u3|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector~input_o\,
	datab => \u1|rxbuff32\(11),
	datac => \u3|Mux4~0_combout\,
	datad => \u3|Mux4~5_combout\,
	combout => \u3|Mux4~6_combout\);

-- Location: LCCOMB_X28_Y14_N2
\u3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~0_combout\ = (\u3|Mux2~0_combout\ & (((\selector~input_o\)))) # (!\u3|Mux2~0_combout\ & ((\selector~input_o\ & (\u1|rxbuff32\(6))) # (!\selector~input_o\ & ((\u1|rxbuff32\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(6),
	datab => \u3|Mux2~0_combout\,
	datac => \selector~input_o\,
	datad => \u1|rxbuff32\(22),
	combout => \u3|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y14_N16
\u3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~1_combout\ = (\u3|Mux5~0_combout\ & (((\u1|rxbuff32\(2))) # (!\u3|Mux2~0_combout\))) # (!\u3|Mux5~0_combout\ & (\u3|Mux2~0_combout\ & (\u1|rxbuff32\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux5~0_combout\,
	datab => \u3|Mux2~0_combout\,
	datac => \u1|rxbuff32\(18),
	datad => \u1|rxbuff32\(2),
	combout => \u3|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y16_N2
\u3|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~2_combout\ = (\u3|refresh_state\(0) & (\u1|rxbuff32\(26) & \u3|refresh_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|refresh_state\(0),
	datab => \u1|rxbuff32\(26),
	datac => \u3|refresh_state\(1),
	combout => \u3|Mux5~2_combout\);

-- Location: LCCOMB_X29_Y16_N0
\u3|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~3_combout\ = (\u3|Mux7~3_combout\ & (\u3|Mux5~1_combout\ & (!\u3|Mux1~0_combout\))) # (!\u3|Mux7~3_combout\ & (((\u3|Mux1~0_combout\) # (\u3|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux5~1_combout\,
	datab => \u3|Mux7~3_combout\,
	datac => \u3|Mux1~0_combout\,
	datad => \u3|Mux5~2_combout\,
	combout => \u3|Mux5~3_combout\);

-- Location: LCCOMB_X29_Y16_N14
\u3|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~4_combout\ = (\u3|Mux1~0_combout\ & ((\u3|Mux5~3_combout\ & (\u1|rxbuff32\(30))) # (!\u3|Mux5~3_combout\ & ((\u1|rxbuff32\(14)))))) # (!\u3|Mux1~0_combout\ & (((\u3|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(30),
	datab => \u1|rxbuff32\(14),
	datac => \u3|Mux1~0_combout\,
	datad => \u3|Mux5~3_combout\,
	combout => \u3|Mux5~4_combout\);

-- Location: LCCOMB_X28_Y16_N12
\u3|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~5_combout\ = (\selector~input_o\ & ((\u3|Mux4~0_combout\ & (\u1|rxbuff32\(10))) # (!\u3|Mux4~0_combout\ & ((\u3|Mux5~4_combout\))))) # (!\selector~input_o\ & (((\u3|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector~input_o\,
	datab => \u1|rxbuff32\(10),
	datac => \u3|Mux5~4_combout\,
	datad => \u3|Mux4~0_combout\,
	combout => \u3|Mux5~5_combout\);

-- Location: LCCOMB_X28_Y15_N12
\u3|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~2_combout\ = (\u3|refresh_state\(1) & (\u3|refresh_state\(0) & \u1|rxbuff32\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|refresh_state\(1),
	datab => \u3|refresh_state\(0),
	datad => \u1|rxbuff32\(24),
	combout => \u3|Mux7~2_combout\);

-- Location: LCCOMB_X28_Y15_N8
\u3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~0_combout\ = (\u3|Mux2~0_combout\ & (((\selector~input_o\)))) # (!\u3|Mux2~0_combout\ & ((\selector~input_o\ & ((\u1|rxbuff32\(4)))) # (!\selector~input_o\ & (\u1|rxbuff32\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux2~0_combout\,
	datab => \u1|rxbuff32\(20),
	datac => \selector~input_o\,
	datad => \u1|rxbuff32\(4),
	combout => \u3|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y15_N6
\u3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~1_combout\ = (\u3|Mux2~0_combout\ & ((\u3|Mux7~0_combout\ & ((\u1|rxbuff32\(0)))) # (!\u3|Mux7~0_combout\ & (\u1|rxbuff32\(16))))) # (!\u3|Mux2~0_combout\ & (((\u3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux2~0_combout\,
	datab => \u1|rxbuff32\(16),
	datac => \u3|Mux7~0_combout\,
	datad => \u1|rxbuff32\(0),
	combout => \u3|Mux7~1_combout\);

-- Location: LCCOMB_X28_Y15_N24
\u3|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~4_combout\ = (\u3|Mux1~0_combout\ & (((!\u3|Mux7~3_combout\)))) # (!\u3|Mux1~0_combout\ & ((\u3|Mux7~3_combout\ & ((\u3|Mux7~1_combout\))) # (!\u3|Mux7~3_combout\ & (\u3|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux7~2_combout\,
	datab => \u3|Mux1~0_combout\,
	datac => \u3|Mux7~3_combout\,
	datad => \u3|Mux7~1_combout\,
	combout => \u3|Mux7~4_combout\);

-- Location: LCCOMB_X28_Y15_N22
\u3|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~5_combout\ = (\u3|Mux1~0_combout\ & ((\u3|Mux7~4_combout\ & ((\u1|rxbuff32\(28)))) # (!\u3|Mux7~4_combout\ & (\u1|rxbuff32\(12))))) # (!\u3|Mux1~0_combout\ & (((\u3|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(12),
	datab => \u3|Mux1~0_combout\,
	datac => \u3|Mux7~4_combout\,
	datad => \u1|rxbuff32\(28),
	combout => \u3|Mux7~5_combout\);

-- Location: LCCOMB_X24_Y20_N4
\u3|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~6_combout\ = (\u3|Mux4~0_combout\ & ((\selector~input_o\ & (\u1|rxbuff32\(8))) # (!\selector~input_o\ & ((\u3|Mux7~5_combout\))))) # (!\u3|Mux4~0_combout\ & (((\u3|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~0_combout\,
	datab => \u1|rxbuff32\(8),
	datac => \selector~input_o\,
	datad => \u3|Mux7~5_combout\,
	combout => \u3|Mux7~6_combout\);

-- Location: LCCOMB_X29_Y16_N28
\u3|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~2_combout\ = (\u3|refresh_state\(1) & (\u3|refresh_state\(0) & \u1|rxbuff32\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|refresh_state\(1),
	datac => \u3|refresh_state\(0),
	datad => \u1|rxbuff32\(25),
	combout => \u3|Mux6~2_combout\);

-- Location: LCCOMB_X28_Y14_N12
\u3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~0_combout\ = (\selector~input_o\ & (((\u3|Mux2~0_combout\)))) # (!\selector~input_o\ & ((\u3|Mux2~0_combout\ & (\u1|rxbuff32\(17))) # (!\u3|Mux2~0_combout\ & ((\u1|rxbuff32\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(17),
	datab => \selector~input_o\,
	datac => \u3|Mux2~0_combout\,
	datad => \u1|rxbuff32\(21),
	combout => \u3|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y15_N4
\u3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~1_combout\ = (\u3|Mux6~0_combout\ & ((\u1|rxbuff32\(1)) # ((!\selector~input_o\)))) # (!\u3|Mux6~0_combout\ & (((\selector~input_o\ & \u1|rxbuff32\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(1),
	datab => \u3|Mux6~0_combout\,
	datac => \selector~input_o\,
	datad => \u1|rxbuff32\(5),
	combout => \u3|Mux6~1_combout\);

-- Location: LCCOMB_X29_Y16_N10
\u3|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~3_combout\ = (\u3|Mux1~0_combout\ & (((!\u3|Mux7~3_combout\)))) # (!\u3|Mux1~0_combout\ & ((\u3|Mux7~3_combout\ & ((\u3|Mux6~1_combout\))) # (!\u3|Mux7~3_combout\ & (\u3|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux6~2_combout\,
	datab => \u3|Mux6~1_combout\,
	datac => \u3|Mux1~0_combout\,
	datad => \u3|Mux7~3_combout\,
	combout => \u3|Mux6~3_combout\);

-- Location: LCCOMB_X29_Y16_N24
\u3|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~4_combout\ = (\u3|Mux6~3_combout\ & (((\u1|rxbuff32\(29)) # (!\u3|Mux1~0_combout\)))) # (!\u3|Mux6~3_combout\ & (\u1|rxbuff32\(13) & (\u3|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux6~3_combout\,
	datab => \u1|rxbuff32\(13),
	datac => \u3|Mux1~0_combout\,
	datad => \u1|rxbuff32\(29),
	combout => \u3|Mux6~4_combout\);

-- Location: LCCOMB_X28_Y16_N10
\u3|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~5_combout\ = (\selector~input_o\ & ((\u3|Mux4~0_combout\ & ((\u1|rxbuff32\(9)))) # (!\u3|Mux4~0_combout\ & (\u3|Mux6~4_combout\)))) # (!\selector~input_o\ & (\u3|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux6~4_combout\,
	datab => \u1|rxbuff32\(9),
	datac => \selector~input_o\,
	datad => \u3|Mux4~0_combout\,
	combout => \u3|Mux6~5_combout\);

-- Location: LCCOMB_X24_Y20_N28
\u3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux14~0_combout\ = (\u3|Mux4~6_combout\ & (\u3|Mux7~6_combout\ & (\u3|Mux5~5_combout\ $ (\u3|Mux6~5_combout\)))) # (!\u3|Mux4~6_combout\ & (!\u3|Mux6~5_combout\ & (\u3|Mux5~5_combout\ $ (\u3|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux7~6_combout\,
	datad => \u3|Mux6~5_combout\,
	combout => \u3|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\u3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux13~0_combout\ = (\u3|Mux4~6_combout\ & ((\u3|Mux7~6_combout\ & ((\u3|Mux6~5_combout\))) # (!\u3|Mux7~6_combout\ & (\u3|Mux5~5_combout\)))) # (!\u3|Mux4~6_combout\ & (\u3|Mux5~5_combout\ & (\u3|Mux7~6_combout\ $ (\u3|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux7~6_combout\,
	datad => \u3|Mux6~5_combout\,
	combout => \u3|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\u3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux12~0_combout\ = (\u3|Mux4~6_combout\ & (\u3|Mux5~5_combout\ & ((\u3|Mux6~5_combout\) # (!\u3|Mux7~6_combout\)))) # (!\u3|Mux4~6_combout\ & (!\u3|Mux5~5_combout\ & (!\u3|Mux7~6_combout\ & \u3|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux7~6_combout\,
	datad => \u3|Mux6~5_combout\,
	combout => \u3|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y20_N18
\u3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux11~0_combout\ = (\u3|Mux7~6_combout\ & ((\u3|Mux5~5_combout\ $ (!\u3|Mux6~5_combout\)))) # (!\u3|Mux7~6_combout\ & ((\u3|Mux4~6_combout\ & (!\u3|Mux5~5_combout\ & \u3|Mux6~5_combout\)) # (!\u3|Mux4~6_combout\ & (\u3|Mux5~5_combout\ & 
-- !\u3|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux7~6_combout\,
	datad => \u3|Mux6~5_combout\,
	combout => \u3|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\u3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux10~0_combout\ = (\u3|Mux6~5_combout\ & (!\u3|Mux4~6_combout\ & ((\u3|Mux7~6_combout\)))) # (!\u3|Mux6~5_combout\ & ((\u3|Mux5~5_combout\ & (!\u3|Mux4~6_combout\)) # (!\u3|Mux5~5_combout\ & ((\u3|Mux7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux7~6_combout\,
	datad => \u3|Mux6~5_combout\,
	combout => \u3|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y20_N26
\u3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux9~0_combout\ = (\u3|Mux5~5_combout\ & (\u3|Mux7~6_combout\ & (\u3|Mux4~6_combout\ $ (\u3|Mux6~5_combout\)))) # (!\u3|Mux5~5_combout\ & (!\u3|Mux4~6_combout\ & ((\u3|Mux7~6_combout\) # (\u3|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux7~6_combout\,
	datad => \u3|Mux6~5_combout\,
	combout => \u3|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y20_N12
\u3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux8~0_combout\ = (\u3|Mux7~6_combout\ & ((\u3|Mux4~6_combout\) # (\u3|Mux5~5_combout\ $ (\u3|Mux6~5_combout\)))) # (!\u3|Mux7~6_combout\ & ((\u3|Mux6~5_combout\) # (\u3|Mux4~6_combout\ $ (\u3|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux7~6_combout\,
	datad => \u3|Mux6~5_combout\,
	combout => \u3|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y17_N12
\u3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux0~0_combout\ = (\u3|refresh_state\(1)) # (\u3|refresh_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|refresh_state\(1),
	datad => \u3|refresh_state\(0),
	combout => \u3|Mux0~0_combout\);

ww_tx_line <= \tx_line~output_o\;

ww_rx2 <= \rx2~output_o\;

ww_tx2 <= \tx2~output_o\;

ww_tx3 <= \tx3~output_o\;

ww_segmentos(0) <= \segmentos[0]~output_o\;

ww_segmentos(1) <= \segmentos[1]~output_o\;

ww_segmentos(2) <= \segmentos[2]~output_o\;

ww_segmentos(3) <= \segmentos[3]~output_o\;

ww_segmentos(4) <= \segmentos[4]~output_o\;

ww_segmentos(5) <= \segmentos[5]~output_o\;

ww_segmentos(6) <= \segmentos[6]~output_o\;

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;
END structure;


