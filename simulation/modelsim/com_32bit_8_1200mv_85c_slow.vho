-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/28/2023 10:07:49"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

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
	reset : IN std_logic;
	rx_line : IN std_logic;
	tx_line : OUT std_logic;
	rx2 : OUT std_logic;
	tx2 : OUT std_logic;
	segmentos : OUT std_logic_vector(6 DOWNTO 0);
	display : OUT std_logic_vector(3 DOWNTO 0)
	);
END com_32bit;

-- Design Ports Information
-- tx_line	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx2	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx2	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- boton	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx_line : std_logic;
SIGNAL ww_tx_line : std_logic;
SIGNAL ww_rx2 : std_logic;
SIGNAL ww_tx2 : std_logic;
SIGNAL ww_segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|q[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|reset_count[5]~28_combout\ : std_logic;
SIGNAL \u3|reset_count[12]~42_combout\ : std_logic;
SIGNAL \u3|reset_count[14]~46_combout\ : std_logic;
SIGNAL \u1|baud_count[0]~12_combout\ : std_logic;
SIGNAL \u1|baud_count[2]~16_combout\ : std_logic;
SIGNAL \u1|baud_count[8]~28_combout\ : std_logic;
SIGNAL \u5|Add0~0_combout\ : std_logic;
SIGNAL \u5|Add0~4_combout\ : std_logic;
SIGNAL \u5|Add0~6_combout\ : std_logic;
SIGNAL \u5|Add0~8_combout\ : std_logic;
SIGNAL \u5|Add0~10_combout\ : std_logic;
SIGNAL \u5|Add0~12_combout\ : std_logic;
SIGNAL \u5|Add0~14_combout\ : std_logic;
SIGNAL \u5|Add0~18_combout\ : std_logic;
SIGNAL \u5|Add0~20_combout\ : std_logic;
SIGNAL \u5|Add0~24_combout\ : std_logic;
SIGNAL \u5|Add0~26_combout\ : std_logic;
SIGNAL \u5|Add0~30_combout\ : std_logic;
SIGNAL \u5|Add0~32_combout\ : std_logic;
SIGNAL \u5|Add0~34_combout\ : std_logic;
SIGNAL \u5|Add0~36_combout\ : std_logic;
SIGNAL \u3|Mux7~0_combout\ : std_logic;
SIGNAL \u3|Mux7~1_combout\ : std_logic;
SIGNAL \u3|Mux7~2_combout\ : std_logic;
SIGNAL \u3|Mux7~4_combout\ : std_logic;
SIGNAL \u3|Mux7~5_combout\ : std_logic;
SIGNAL \u3|Mux4~1_combout\ : std_logic;
SIGNAL \u2|state.tx_stop_bits~q\ : std_logic;
SIGNAL \u2|Mux0~7_combout\ : std_logic;
SIGNAL \u2|Mux0~8_combout\ : std_logic;
SIGNAL \u2|data~4_combout\ : std_logic;
SIGNAL \u2|Mux36~0_combout\ : std_logic;
SIGNAL \u2|Mux37~0_combout\ : std_logic;
SIGNAL \u2|Mux38~0_combout\ : std_logic;
SIGNAL \u2|Mux34~0_combout\ : std_logic;
SIGNAL \u1|Add2~1_combout\ : std_logic;
SIGNAL \u1|Selector13~1_combout\ : std_logic;
SIGNAL \u5|counter[18]~2_combout\ : std_logic;
SIGNAL \u5|counter[17]~3_combout\ : std_logic;
SIGNAL \u5|counter[16]~4_combout\ : std_logic;
SIGNAL \u5|counter[15]~5_combout\ : std_logic;
SIGNAL \u5|counter[13]~7_combout\ : std_logic;
SIGNAL \u5|counter[12]~8_combout\ : std_logic;
SIGNAL \u5|counter[10]~10_combout\ : std_logic;
SIGNAL \u5|counter[6]~14_combout\ : std_logic;
SIGNAL \u5|counter[5]~15_combout\ : std_logic;
SIGNAL \u5|counter[4]~16_combout\ : std_logic;
SIGNAL \u5|counter[3]~17_combout\ : std_logic;
SIGNAL \u5|counter[2]~18_combout\ : std_logic;
SIGNAL \u5|counter[0]~20_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u2|data[9]~feeder_combout\ : std_logic;
SIGNAL \u2|data[1]~feeder_combout\ : std_logic;
SIGNAL \u2|data[14]~feeder_combout\ : std_logic;
SIGNAL \u2|data[6]~feeder_combout\ : std_logic;
SIGNAL \u2|data[23]~feeder_combout\ : std_logic;
SIGNAL \u2|dato4[5]~feeder_combout\ : std_logic;
SIGNAL \u2|dato4[4]~feeder_combout\ : std_logic;
SIGNAL \u2|dato4[3]~feeder_combout\ : std_logic;
SIGNAL \u2|dato4[7]~feeder_combout\ : std_logic;
SIGNAL \u1|rxbuff32[23]~feeder_combout\ : std_logic;
SIGNAL \tx_line~output_o\ : std_logic;
SIGNAL \rx2~output_o\ : std_logic;
SIGNAL \tx2~output_o\ : std_logic;
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
SIGNAL \rx_line~input_o\ : std_logic;
SIGNAL \u4|q[0]~0_combout\ : std_logic;
SIGNAL \u4|q[0]~feeder_combout\ : std_logic;
SIGNAL \u4|q[0]~clkctrl_outclk\ : std_logic;
SIGNAL \u2|Add1~0_combout\ : std_logic;
SIGNAL \u2|clk_count[0]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \u5|btn_prev~0_combout\ : std_logic;
SIGNAL \u5|btn_prev~q\ : std_logic;
SIGNAL \u5|out_bot~1_combout\ : std_logic;
SIGNAL \u5|counter[0]~1_combout\ : std_logic;
SIGNAL \u5|counter[9]~11_combout\ : std_logic;
SIGNAL \u5|counter[7]~13_combout\ : std_logic;
SIGNAL \u5|Add0~1\ : std_logic;
SIGNAL \u5|Add0~2_combout\ : std_logic;
SIGNAL \u5|counter[1]~19_combout\ : std_logic;
SIGNAL \u5|Add0~3\ : std_logic;
SIGNAL \u5|Add0~5\ : std_logic;
SIGNAL \u5|Add0~7\ : std_logic;
SIGNAL \u5|Add0~9\ : std_logic;
SIGNAL \u5|Add0~11\ : std_logic;
SIGNAL \u5|Add0~13\ : std_logic;
SIGNAL \u5|Add0~15\ : std_logic;
SIGNAL \u5|Add0~16_combout\ : std_logic;
SIGNAL \u5|counter[8]~12_combout\ : std_logic;
SIGNAL \u5|Add0~17\ : std_logic;
SIGNAL \u5|Add0~19\ : std_logic;
SIGNAL \u5|Add0~21\ : std_logic;
SIGNAL \u5|Add0~22_combout\ : std_logic;
SIGNAL \u5|counter[11]~9_combout\ : std_logic;
SIGNAL \u5|Add0~23\ : std_logic;
SIGNAL \u5|Add0~25\ : std_logic;
SIGNAL \u5|Add0~27\ : std_logic;
SIGNAL \u5|Add0~28_combout\ : std_logic;
SIGNAL \u5|counter[14]~6_combout\ : std_logic;
SIGNAL \u5|Add0~29\ : std_logic;
SIGNAL \u5|Add0~31\ : std_logic;
SIGNAL \u5|Add0~33\ : std_logic;
SIGNAL \u5|Add0~35\ : std_logic;
SIGNAL \u5|Add0~37\ : std_logic;
SIGNAL \u5|Add0~38_combout\ : std_logic;
SIGNAL \u5|counter~0_combout\ : std_logic;
SIGNAL \u5|out_bot~0_combout\ : std_logic;
SIGNAL \u5|out_bot~q\ : std_logic;
SIGNAL \u2|Selector42~0_combout\ : std_logic;
SIGNAL \u2|state.tx_idle~q\ : std_logic;
SIGNAL \u2|clk_count[0]~13\ : std_logic;
SIGNAL \u2|clk_count[1]~14_combout\ : std_logic;
SIGNAL \u2|clk_count[1]~15\ : std_logic;
SIGNAL \u2|clk_count[2]~16_combout\ : std_logic;
SIGNAL \u2|clk_count[2]~17\ : std_logic;
SIGNAL \u2|clk_count[3]~18_combout\ : std_logic;
SIGNAL \u2|clk_count[3]~19\ : std_logic;
SIGNAL \u2|clk_count[4]~20_combout\ : std_logic;
SIGNAL \u2|clk_count[4]~21\ : std_logic;
SIGNAL \u2|clk_count[5]~22_combout\ : std_logic;
SIGNAL \u2|clk_count[5]~23\ : std_logic;
SIGNAL \u2|clk_count[6]~25\ : std_logic;
SIGNAL \u2|clk_count[7]~26_combout\ : std_logic;
SIGNAL \u2|clk_count[7]~27\ : std_logic;
SIGNAL \u2|clk_count[8]~28_combout\ : std_logic;
SIGNAL \u2|clk_count[8]~29\ : std_logic;
SIGNAL \u2|clk_count[9]~30_combout\ : std_logic;
SIGNAL \u2|clk_count[9]~31\ : std_logic;
SIGNAL \u2|clk_count[10]~32_combout\ : std_logic;
SIGNAL \u2|clk_count[10]~33\ : std_logic;
SIGNAL \u2|clk_count[11]~34_combout\ : std_logic;
SIGNAL \u2|LessThan0~1_combout\ : std_logic;
SIGNAL \u2|clk_count[6]~24_combout\ : std_logic;
SIGNAL \u2|LessThan0~0_combout\ : std_logic;
SIGNAL \u2|LessThan0~2_combout\ : std_logic;
SIGNAL \u2|LessThan0~3_combout\ : std_logic;
SIGNAL \u2|Selector43~0_combout\ : std_logic;
SIGNAL \u2|state.tx_start~q\ : std_logic;
SIGNAL \u2|state.tx_databits~feeder_combout\ : std_logic;
SIGNAL \u2|state.tx_databits~q\ : std_logic;
SIGNAL \u2|Selector17~0_combout\ : std_logic;
SIGNAL \u2|Add1~1\ : std_logic;
SIGNAL \u2|Add1~2_combout\ : std_logic;
SIGNAL \u2|Selector16~0_combout\ : std_logic;
SIGNAL \u2|Add1~3\ : std_logic;
SIGNAL \u2|Add1~5\ : std_logic;
SIGNAL \u2|Add1~6_combout\ : std_logic;
SIGNAL \u2|Selector14~0_combout\ : std_logic;
SIGNAL \u2|Add1~4_combout\ : std_logic;
SIGNAL \u2|Selector15~0_combout\ : std_logic;
SIGNAL \u2|LessThan1~0_combout\ : std_logic;
SIGNAL \u2|LessThan1~1_combout\ : std_logic;
SIGNAL \u2|Selector0~0_combout\ : std_logic;
SIGNAL \u2|Add1~7\ : std_logic;
SIGNAL \u2|Add1~8_combout\ : std_logic;
SIGNAL \u2|Selector13~0_combout\ : std_logic;
SIGNAL \u2|dato4[6]~feeder_combout\ : std_logic;
SIGNAL \u2|LessThan0~4_combout\ : std_logic;
SIGNAL \u2|cambio[1]~0_combout\ : std_logic;
SIGNAL \u2|cambio[1]~2_combout\ : std_logic;
SIGNAL \u2|cambio[0]~1_combout\ : std_logic;
SIGNAL \u2|dato4[7]~0_combout\ : std_logic;
SIGNAL \u1|Selector22~0_combout\ : std_logic;
SIGNAL \u1|baud_count[0]~13\ : std_logic;
SIGNAL \u1|baud_count[1]~14_combout\ : std_logic;
SIGNAL \u1|Selector19~0_combout\ : std_logic;
SIGNAL \u1|state.stop~q\ : std_logic;
SIGNAL \u1|baud_count[10]~34_combout\ : std_logic;
SIGNAL \u1|baud_count[10]~35_combout\ : std_logic;
SIGNAL \u1|baud_count[1]~15\ : std_logic;
SIGNAL \u1|baud_count[2]~17\ : std_logic;
SIGNAL \u1|baud_count[3]~19\ : std_logic;
SIGNAL \u1|baud_count[4]~20_combout\ : std_logic;
SIGNAL \u1|baud_count[4]~21\ : std_logic;
SIGNAL \u1|baud_count[5]~22_combout\ : std_logic;
SIGNAL \u1|baud_count[5]~23\ : std_logic;
SIGNAL \u1|baud_count[6]~24_combout\ : std_logic;
SIGNAL \u1|baud_count[6]~25\ : std_logic;
SIGNAL \u1|baud_count[7]~27\ : std_logic;
SIGNAL \u1|baud_count[8]~29\ : std_logic;
SIGNAL \u1|baud_count[9]~30_combout\ : std_logic;
SIGNAL \u1|baud_count[9]~31\ : std_logic;
SIGNAL \u1|baud_count[10]~32_combout\ : std_logic;
SIGNAL \u1|baud_count[10]~33\ : std_logic;
SIGNAL \u1|baud_count[11]~36_combout\ : std_logic;
SIGNAL \u1|baud_count[7]~26_combout\ : std_logic;
SIGNAL \u1|baud_count[3]~18_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|Selector17~0_combout\ : std_logic;
SIGNAL \u1|Selector18~1_combout\ : std_logic;
SIGNAL \u1|LessThan1~0_combout\ : std_logic;
SIGNAL \u1|LessThan1~1_combout\ : std_logic;
SIGNAL \u1|Selector18~0_combout\ : std_logic;
SIGNAL \u1|Selector18~2_combout\ : std_logic;
SIGNAL \u1|state.almacen~q\ : std_logic;
SIGNAL \u1|Selector16~0_combout\ : std_logic;
SIGNAL \u1|Selector16~1_combout\ : std_logic;
SIGNAL \u1|Selector16~2_combout\ : std_logic;
SIGNAL \u1|state.rx_idle~q\ : std_logic;
SIGNAL \u1|Selector17~1_combout\ : std_logic;
SIGNAL \u1|state.start~q\ : std_logic;
SIGNAL \u1|bit32_count[1]~0_combout\ : std_logic;
SIGNAL \u1|bit32_count[1]~1_combout\ : std_logic;
SIGNAL \u1|Selector20~0_combout\ : std_logic;
SIGNAL \u1|Selector20~1_combout\ : std_logic;
SIGNAL \u1|Selector21~0_combout\ : std_logic;
SIGNAL \u1|Selector21~1_combout\ : std_logic;
SIGNAL \u1|LessThan4~0_combout\ : std_logic;
SIGNAL \u1|Selector13~0_combout\ : std_logic;
SIGNAL \u1|bit_count~0_combout\ : std_logic;
SIGNAL \u1|Selector15~0_combout\ : std_logic;
SIGNAL \u1|Selector14~0_combout\ : std_logic;
SIGNAL \u1|Add2~0_combout\ : std_logic;
SIGNAL \u1|Selector12~0_combout\ : std_logic;
SIGNAL \u1|state~9_combout\ : std_logic;
SIGNAL \u1|state.rx_databits~q\ : std_logic;
SIGNAL \u1|Selector23~2_combout\ : std_logic;
SIGNAL \u1|Selector23~0_combout\ : std_logic;
SIGNAL \u1|Selector23~1_combout\ : std_logic;
SIGNAL \u1|Selector24~0_combout\ : std_logic;
SIGNAL \u2|Mux35~0_combout\ : std_logic;
SIGNAL \u2|data[25]~7_combout\ : std_logic;
SIGNAL \u1|Selector32~0_combout\ : std_logic;
SIGNAL \u1|Selector39~0_combout\ : std_logic;
SIGNAL \u1|Selector31~0_combout\ : std_logic;
SIGNAL \u2|data[17]~5_combout\ : std_logic;
SIGNAL \u2|data[17]~11_combout\ : std_logic;
SIGNAL \u2|data[17]~6_combout\ : std_logic;
SIGNAL \u1|Selector33~0_combout\ : std_logic;
SIGNAL \u1|Selector34~0_combout\ : std_logic;
SIGNAL \u1|Selector35~0_combout\ : std_logic;
SIGNAL \u1|Selector36~0_combout\ : std_logic;
SIGNAL \u1|Selector25~0_combout\ : std_logic;
SIGNAL \u1|Selector26~0_combout\ : std_logic;
SIGNAL \u1|Selector27~0_combout\ : std_logic;
SIGNAL \u1|Selector28~0_combout\ : std_logic;
SIGNAL \u2|dato4[2]~feeder_combout\ : std_logic;
SIGNAL \u2|Mux39~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|Mux0~1_combout\ : std_logic;
SIGNAL \u2|dato4[1]~feeder_combout\ : std_logic;
SIGNAL \u1|Selector29~0_combout\ : std_logic;
SIGNAL \u2|Mux40~0_combout\ : std_logic;
SIGNAL \u1|Selector37~0_combout\ : std_logic;
SIGNAL \u2|data[21]~feeder_combout\ : std_logic;
SIGNAL \u2|Mux0~2_combout\ : std_logic;
SIGNAL \u2|Mux0~3_combout\ : std_logic;
SIGNAL \u1|Selector38~0_combout\ : std_logic;
SIGNAL \u1|rxbuff32[16]~feeder_combout\ : std_logic;
SIGNAL \u2|dato4[0]~feeder_combout\ : std_logic;
SIGNAL \u1|Selector30~0_combout\ : std_logic;
SIGNAL \u2|Mux41~0_combout\ : std_logic;
SIGNAL \u2|Mux0~4_combout\ : std_logic;
SIGNAL \u2|Mux0~5_combout\ : std_logic;
SIGNAL \u2|Mux0~6_combout\ : std_logic;
SIGNAL \u2|Mux0~9_combout\ : std_logic;
SIGNAL \u1|Selector39~2_combout\ : std_logic;
SIGNAL \u1|Selector39~1_combout\ : std_logic;
SIGNAL \u2|data[8]~8_combout\ : std_logic;
SIGNAL \u1|Selector40~0_combout\ : std_logic;
SIGNAL \u1|Selector41~0_combout\ : std_logic;
SIGNAL \u1|Selector42~0_combout\ : std_logic;
SIGNAL \u2|Mux0~17_combout\ : std_logic;
SIGNAL \u2|Mux0~18_combout\ : std_logic;
SIGNAL \u1|Selector43~0_combout\ : std_logic;
SIGNAL \u1|Selector44~0_combout\ : std_logic;
SIGNAL \u1|Selector45~0_combout\ : std_logic;
SIGNAL \u1|Selector46~0_combout\ : std_logic;
SIGNAL \u2|Mux0~10_combout\ : std_logic;
SIGNAL \u2|Mux0~11_combout\ : std_logic;
SIGNAL \u1|rxbuff32[7]~feeder_combout\ : std_logic;
SIGNAL \u1|Selector54~0_combout\ : std_logic;
SIGNAL \u1|Selector54~1_combout\ : std_logic;
SIGNAL \u1|Selector48~0_combout\ : std_logic;
SIGNAL \u1|Selector49~0_combout\ : std_logic;
SIGNAL \u1|Selector50~0_combout\ : std_logic;
SIGNAL \u1|Selector51~0_combout\ : std_logic;
SIGNAL \u1|Selector52~0_combout\ : std_logic;
SIGNAL \u2|data[2]~feeder_combout\ : std_logic;
SIGNAL \u2|tx_line~2_combout\ : std_logic;
SIGNAL \u2|data[0]~9_combout\ : std_logic;
SIGNAL \u2|data[0]~10_combout\ : std_logic;
SIGNAL \u1|Selector53~0_combout\ : std_logic;
SIGNAL \u1|Selector54~2_combout\ : std_logic;
SIGNAL \u2|Mux0~14_combout\ : std_logic;
SIGNAL \u2|Mux0~15_combout\ : std_logic;
SIGNAL \u2|Mux0~12_combout\ : std_logic;
SIGNAL \u2|Mux0~13_combout\ : std_logic;
SIGNAL \u2|Mux0~16_combout\ : std_logic;
SIGNAL \u2|Mux0~19_combout\ : std_logic;
SIGNAL \u2|Selector0~1_combout\ : std_logic;
SIGNAL \u2|Selector0~2_combout\ : std_logic;
SIGNAL \u2|tx_line~q\ : std_logic;
SIGNAL \u3|reset_count[0]~18_combout\ : std_logic;
SIGNAL \u3|reset_count[16]~51\ : std_logic;
SIGNAL \u3|reset_count[17]~52_combout\ : std_logic;
SIGNAL \u3|reset_count[8]~34_combout\ : std_logic;
SIGNAL \u3|LessThan0~1_combout\ : std_logic;
SIGNAL \u3|reset_count[3]~24_combout\ : std_logic;
SIGNAL \u3|reset_count[2]~22_combout\ : std_logic;
SIGNAL \u3|LessThan0~0_combout\ : std_logic;
SIGNAL \u3|LessThan0~2_combout\ : std_logic;
SIGNAL \u3|LessThan0~3_combout\ : std_logic;
SIGNAL \u3|LessThan0~4_combout\ : std_logic;
SIGNAL \u3|LessThan0~5_combout\ : std_logic;
SIGNAL \u3|reset_count[0]~19\ : std_logic;
SIGNAL \u3|reset_count[1]~20_combout\ : std_logic;
SIGNAL \u3|reset_count[1]~21\ : std_logic;
SIGNAL \u3|reset_count[2]~23\ : std_logic;
SIGNAL \u3|reset_count[3]~25\ : std_logic;
SIGNAL \u3|reset_count[4]~26_combout\ : std_logic;
SIGNAL \u3|reset_count[4]~27\ : std_logic;
SIGNAL \u3|reset_count[5]~29\ : std_logic;
SIGNAL \u3|reset_count[6]~30_combout\ : std_logic;
SIGNAL \u3|reset_count[6]~31\ : std_logic;
SIGNAL \u3|reset_count[7]~32_combout\ : std_logic;
SIGNAL \u3|reset_count[7]~33\ : std_logic;
SIGNAL \u3|reset_count[8]~35\ : std_logic;
SIGNAL \u3|reset_count[9]~36_combout\ : std_logic;
SIGNAL \u3|reset_count[9]~37\ : std_logic;
SIGNAL \u3|reset_count[10]~38_combout\ : std_logic;
SIGNAL \u3|reset_count[10]~39\ : std_logic;
SIGNAL \u3|reset_count[11]~40_combout\ : std_logic;
SIGNAL \u3|reset_count[11]~41\ : std_logic;
SIGNAL \u3|reset_count[12]~43\ : std_logic;
SIGNAL \u3|reset_count[13]~44_combout\ : std_logic;
SIGNAL \u3|reset_count[13]~45\ : std_logic;
SIGNAL \u3|reset_count[14]~47\ : std_logic;
SIGNAL \u3|reset_count[15]~48_combout\ : std_logic;
SIGNAL \u3|reset_count[15]~49\ : std_logic;
SIGNAL \u3|reset_count[16]~50_combout\ : std_logic;
SIGNAL \u3|refresh_state[0]~1_combout\ : std_logic;
SIGNAL \u3|refresh_state[1]~0_combout\ : std_logic;
SIGNAL \u3|Mux1~0_combout\ : std_logic;
SIGNAL \u3|Mux4~3_combout\ : std_logic;
SIGNAL \selector~input_o\ : std_logic;
SIGNAL \u3|Mux7~3_combout\ : std_logic;
SIGNAL \u3|Mux4~2_combout\ : std_logic;
SIGNAL \u3|Mux4~4_combout\ : std_logic;
SIGNAL \u3|Mux4~5_combout\ : std_logic;
SIGNAL \u3|Mux4~6_combout\ : std_logic;
SIGNAL \u3|Mux2~0_combout\ : std_logic;
SIGNAL \u3|Mux5~0_combout\ : std_logic;
SIGNAL \u3|Mux5~1_combout\ : std_logic;
SIGNAL \u3|Mux5~2_combout\ : std_logic;
SIGNAL \u3|Mux5~3_combout\ : std_logic;
SIGNAL \u3|Mux5~4_combout\ : std_logic;
SIGNAL \u3|Mux4~0_combout\ : std_logic;
SIGNAL \u3|Mux5~5_combout\ : std_logic;
SIGNAL \u3|Mux6~2_combout\ : std_logic;
SIGNAL \u3|Mux6~0_combout\ : std_logic;
SIGNAL \u3|Mux6~1_combout\ : std_logic;
SIGNAL \u3|Mux6~3_combout\ : std_logic;
SIGNAL \u3|Mux6~4_combout\ : std_logic;
SIGNAL \u3|Mux6~5_combout\ : std_logic;
SIGNAL \u3|Mux7~6_combout\ : std_logic;
SIGNAL \u3|Mux14~0_combout\ : std_logic;
SIGNAL \u3|Mux13~0_combout\ : std_logic;
SIGNAL \u3|Mux12~0_combout\ : std_logic;
SIGNAL \u3|Mux11~0_combout\ : std_logic;
SIGNAL \u3|Mux10~0_combout\ : std_logic;
SIGNAL \u3|Mux9~0_combout\ : std_logic;
SIGNAL \u3|Mux8~0_combout\ : std_logic;
SIGNAL \u3|Mux0~0_combout\ : std_logic;
SIGNAL \u2|cambio\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|baud_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u2|data_index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|rxbuff32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|bit_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|reset_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u3|refresh_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u5|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u2|clk_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u2|dato4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|bit32_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u2|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u4|ALT_INV_q[0]~clkctrl_outclk\ : std_logic;
SIGNAL \u1|ALT_INV_state.rx_databits~q\ : std_logic;
SIGNAL \u2|ALT_INV_state.tx_idle~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_boton <= boton;
ww_selector <= selector;
ww_reset <= reset;
ww_rx_line <= rx_line;
tx_line <= ww_tx_line;
rx2 <= ww_rx2;
tx2 <= ww_tx2;
segmentos <= ww_segmentos;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u4|q[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u4|q\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\u4|ALT_INV_q[0]~clkctrl_outclk\ <= NOT \u4|q[0]~clkctrl_outclk\;
\u1|ALT_INV_state.rx_databits~q\ <= NOT \u1|state.rx_databits~q\;
\u2|ALT_INV_state.tx_idle~q\ <= NOT \u2|state.tx_idle~q\;
\u2|ALT_INV_LessThan0~3_combout\ <= NOT \u2|LessThan0~3_combout\;
\u3|ALT_INV_Mux8~0_combout\ <= NOT \u3|Mux8~0_combout\;
\u3|ALT_INV_Mux4~0_combout\ <= NOT \u3|Mux4~0_combout\;
\u3|ALT_INV_Mux2~0_combout\ <= NOT \u3|Mux2~0_combout\;
\u3|ALT_INV_Mux1~0_combout\ <= NOT \u3|Mux1~0_combout\;

-- Location: FF_X19_Y23_N25
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

-- Location: FF_X19_Y22_N7
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

-- Location: FF_X19_Y22_N11
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

-- Location: FF_X21_Y21_N23
\u1|baud_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[8]~28_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(8));

-- Location: LCCOMB_X19_Y23_N24
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

-- Location: LCCOMB_X19_Y22_N6
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

-- Location: LCCOMB_X19_Y22_N10
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

-- Location: FF_X21_Y21_N11
\u1|baud_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[2]~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(2));

-- Location: FF_X21_Y21_N7
\u1|baud_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[0]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(0));

-- Location: LCCOMB_X21_Y21_N6
\u1|baud_count[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[0]~12_combout\ = \u1|baud_count\(0) $ (VCC)
-- \u1|baud_count[0]~13\ = CARRY(\u1|baud_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(0),
	datad => VCC,
	combout => \u1|baud_count[0]~12_combout\,
	cout => \u1|baud_count[0]~13\);

-- Location: LCCOMB_X21_Y21_N10
\u1|baud_count[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[2]~16_combout\ = (\u1|baud_count\(2) & (\u1|baud_count[1]~15\ $ (GND))) # (!\u1|baud_count\(2) & (!\u1|baud_count[1]~15\ & VCC))
-- \u1|baud_count[2]~17\ = CARRY((\u1|baud_count\(2) & !\u1|baud_count[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(2),
	datad => VCC,
	cin => \u1|baud_count[1]~15\,
	combout => \u1|baud_count[2]~16_combout\,
	cout => \u1|baud_count[2]~17\);

-- Location: LCCOMB_X21_Y21_N22
\u1|baud_count[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[8]~28_combout\ = (\u1|baud_count\(8) & (\u1|baud_count[7]~27\ $ (GND))) # (!\u1|baud_count\(8) & (!\u1|baud_count[7]~27\ & VCC))
-- \u1|baud_count[8]~29\ = CARRY((\u1|baud_count\(8) & !\u1|baud_count[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(8),
	datad => VCC,
	cin => \u1|baud_count[7]~27\,
	combout => \u1|baud_count[8]~28_combout\,
	cout => \u1|baud_count[8]~29\);

-- Location: LCCOMB_X29_Y13_N12
\u5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~0_combout\ = \u5|counter\(0) $ (VCC)
-- \u5|Add0~1\ = CARRY(\u5|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(0),
	datad => VCC,
	combout => \u5|Add0~0_combout\,
	cout => \u5|Add0~1\);

-- Location: LCCOMB_X29_Y13_N16
\u5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~4_combout\ = (\u5|counter\(2) & (\u5|Add0~3\ $ (GND))) # (!\u5|counter\(2) & (!\u5|Add0~3\ & VCC))
-- \u5|Add0~5\ = CARRY((\u5|counter\(2) & !\u5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(2),
	datad => VCC,
	cin => \u5|Add0~3\,
	combout => \u5|Add0~4_combout\,
	cout => \u5|Add0~5\);

-- Location: LCCOMB_X29_Y13_N18
\u5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~6_combout\ = (\u5|counter\(3) & (!\u5|Add0~5\)) # (!\u5|counter\(3) & ((\u5|Add0~5\) # (GND)))
-- \u5|Add0~7\ = CARRY((!\u5|Add0~5\) # (!\u5|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(3),
	datad => VCC,
	cin => \u5|Add0~5\,
	combout => \u5|Add0~6_combout\,
	cout => \u5|Add0~7\);

-- Location: LCCOMB_X29_Y13_N20
\u5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~8_combout\ = (\u5|counter\(4) & (\u5|Add0~7\ $ (GND))) # (!\u5|counter\(4) & (!\u5|Add0~7\ & VCC))
-- \u5|Add0~9\ = CARRY((\u5|counter\(4) & !\u5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(4),
	datad => VCC,
	cin => \u5|Add0~7\,
	combout => \u5|Add0~8_combout\,
	cout => \u5|Add0~9\);

-- Location: LCCOMB_X29_Y13_N22
\u5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~10_combout\ = (\u5|counter\(5) & (!\u5|Add0~9\)) # (!\u5|counter\(5) & ((\u5|Add0~9\) # (GND)))
-- \u5|Add0~11\ = CARRY((!\u5|Add0~9\) # (!\u5|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(5),
	datad => VCC,
	cin => \u5|Add0~9\,
	combout => \u5|Add0~10_combout\,
	cout => \u5|Add0~11\);

-- Location: LCCOMB_X29_Y13_N24
\u5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~12_combout\ = (\u5|counter\(6) & (\u5|Add0~11\ $ (GND))) # (!\u5|counter\(6) & (!\u5|Add0~11\ & VCC))
-- \u5|Add0~13\ = CARRY((\u5|counter\(6) & !\u5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(6),
	datad => VCC,
	cin => \u5|Add0~11\,
	combout => \u5|Add0~12_combout\,
	cout => \u5|Add0~13\);

-- Location: LCCOMB_X29_Y13_N26
\u5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~14_combout\ = (\u5|counter\(7) & (!\u5|Add0~13\)) # (!\u5|counter\(7) & ((\u5|Add0~13\) # (GND)))
-- \u5|Add0~15\ = CARRY((!\u5|Add0~13\) # (!\u5|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|counter\(7),
	datad => VCC,
	cin => \u5|Add0~13\,
	combout => \u5|Add0~14_combout\,
	cout => \u5|Add0~15\);

-- Location: LCCOMB_X29_Y13_N30
\u5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~18_combout\ = (\u5|counter\(9) & (!\u5|Add0~17\)) # (!\u5|counter\(9) & ((\u5|Add0~17\) # (GND)))
-- \u5|Add0~19\ = CARRY((!\u5|Add0~17\) # (!\u5|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|counter\(9),
	datad => VCC,
	cin => \u5|Add0~17\,
	combout => \u5|Add0~18_combout\,
	cout => \u5|Add0~19\);

-- Location: LCCOMB_X29_Y12_N0
\u5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~20_combout\ = (\u5|counter\(10) & (\u5|Add0~19\ $ (GND))) # (!\u5|counter\(10) & (!\u5|Add0~19\ & VCC))
-- \u5|Add0~21\ = CARRY((\u5|counter\(10) & !\u5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(10),
	datad => VCC,
	cin => \u5|Add0~19\,
	combout => \u5|Add0~20_combout\,
	cout => \u5|Add0~21\);

-- Location: LCCOMB_X29_Y12_N4
\u5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~24_combout\ = (\u5|counter\(12) & (\u5|Add0~23\ $ (GND))) # (!\u5|counter\(12) & (!\u5|Add0~23\ & VCC))
-- \u5|Add0~25\ = CARRY((\u5|counter\(12) & !\u5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(12),
	datad => VCC,
	cin => \u5|Add0~23\,
	combout => \u5|Add0~24_combout\,
	cout => \u5|Add0~25\);

-- Location: LCCOMB_X29_Y12_N6
\u5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~26_combout\ = (\u5|counter\(13) & (!\u5|Add0~25\)) # (!\u5|counter\(13) & ((\u5|Add0~25\) # (GND)))
-- \u5|Add0~27\ = CARRY((!\u5|Add0~25\) # (!\u5|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(13),
	datad => VCC,
	cin => \u5|Add0~25\,
	combout => \u5|Add0~26_combout\,
	cout => \u5|Add0~27\);

-- Location: LCCOMB_X29_Y12_N10
\u5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~30_combout\ = (\u5|counter\(15) & (!\u5|Add0~29\)) # (!\u5|counter\(15) & ((\u5|Add0~29\) # (GND)))
-- \u5|Add0~31\ = CARRY((!\u5|Add0~29\) # (!\u5|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(15),
	datad => VCC,
	cin => \u5|Add0~29\,
	combout => \u5|Add0~30_combout\,
	cout => \u5|Add0~31\);

-- Location: LCCOMB_X29_Y12_N12
\u5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~32_combout\ = (\u5|counter\(16) & (\u5|Add0~31\ $ (GND))) # (!\u5|counter\(16) & (!\u5|Add0~31\ & VCC))
-- \u5|Add0~33\ = CARRY((\u5|counter\(16) & !\u5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(16),
	datad => VCC,
	cin => \u5|Add0~31\,
	combout => \u5|Add0~32_combout\,
	cout => \u5|Add0~33\);

-- Location: LCCOMB_X29_Y12_N14
\u5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~34_combout\ = (\u5|counter\(17) & (!\u5|Add0~33\)) # (!\u5|counter\(17) & ((\u5|Add0~33\) # (GND)))
-- \u5|Add0~35\ = CARRY((!\u5|Add0~33\) # (!\u5|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(17),
	datad => VCC,
	cin => \u5|Add0~33\,
	combout => \u5|Add0~34_combout\,
	cout => \u5|Add0~35\);

-- Location: LCCOMB_X29_Y12_N16
\u5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~36_combout\ = (\u5|counter\(18) & (\u5|Add0~35\ $ (GND))) # (!\u5|counter\(18) & (!\u5|Add0~35\ & VCC))
-- \u5|Add0~37\ = CARRY((\u5|counter\(18) & !\u5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(18),
	datad => VCC,
	cin => \u5|Add0~35\,
	combout => \u5|Add0~36_combout\,
	cout => \u5|Add0~37\);

-- Location: LCCOMB_X22_Y20_N30
\u3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~0_combout\ = (\selector~input_o\ & ((\u1|rxbuff32\(4)) # ((\u3|Mux2~0_combout\)))) # (!\selector~input_o\ & (((\u1|rxbuff32\(20) & !\u3|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector~input_o\,
	datab => \u1|rxbuff32\(4),
	datac => \u1|rxbuff32\(20),
	datad => \u3|Mux2~0_combout\,
	combout => \u3|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y22_N4
\u3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~1_combout\ = (\u3|Mux2~0_combout\ & ((\u3|Mux7~0_combout\ & (\u1|rxbuff32\(0))) # (!\u3|Mux7~0_combout\ & ((\u1|rxbuff32\(16)))))) # (!\u3|Mux2~0_combout\ & (((\u3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux2~0_combout\,
	datab => \u1|rxbuff32\(0),
	datac => \u1|rxbuff32\(16),
	datad => \u3|Mux7~0_combout\,
	combout => \u3|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y22_N20
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

-- Location: LCCOMB_X21_Y22_N12
\u3|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~4_combout\ = (\u3|Mux1~0_combout\ & (((!\u3|Mux7~3_combout\)))) # (!\u3|Mux1~0_combout\ & ((\u3|Mux7~3_combout\ & ((\u3|Mux7~1_combout\))) # (!\u3|Mux7~3_combout\ & (\u3|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux1~0_combout\,
	datab => \u3|Mux7~2_combout\,
	datac => \u3|Mux7~3_combout\,
	datad => \u3|Mux7~1_combout\,
	combout => \u3|Mux7~4_combout\);

-- Location: LCCOMB_X21_Y22_N30
\u3|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~5_combout\ = (\u3|Mux1~0_combout\ & ((\u3|Mux7~4_combout\ & (\u1|rxbuff32\(28))) # (!\u3|Mux7~4_combout\ & ((\u1|rxbuff32\(12)))))) # (!\u3|Mux1~0_combout\ & (((\u3|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux1~0_combout\,
	datab => \u1|rxbuff32\(28),
	datac => \u1|rxbuff32\(12),
	datad => \u3|Mux7~4_combout\,
	combout => \u3|Mux7~5_combout\);

-- Location: FF_X23_Y21_N31
\u1|rxbuff32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|rxbuff32[23]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(23));

-- Location: LCCOMB_X22_Y20_N20
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

-- Location: FF_X25_Y21_N23
\u2|state.tx_stop_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u2|state.tx_databits~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_stop_bits~q\);

-- Location: FF_X23_Y21_N21
\u2|data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux36~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(29));

-- Location: FF_X24_Y21_N19
\u2|data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux37~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(28));

-- Location: FF_X24_Y21_N29
\u2|data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux38~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(27));

-- Location: FF_X23_Y20_N31
\u2|data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|data[23]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(23));

-- Location: FF_X23_Y20_N9
\u2|data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(19),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(19));

-- Location: LCCOMB_X23_Y20_N8
\u2|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~7_combout\ = (\u2|data_index\(3) & (((\u2|data_index\(2))))) # (!\u2|data_index\(3) & ((\u2|data_index\(2) & (\u2|data\(23))) # (!\u2|data_index\(2) & ((\u2|data\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(23),
	datab => \u2|data_index\(3),
	datac => \u2|data\(19),
	datad => \u2|data_index\(2),
	combout => \u2|Mux0~7_combout\);

-- Location: FF_X24_Y21_N3
\u2|data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux34~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(31));

-- Location: LCCOMB_X23_Y20_N2
\u2|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~8_combout\ = (\u2|data_index\(3) & ((\u2|Mux0~7_combout\ & (\u2|data\(31))) # (!\u2|Mux0~7_combout\ & ((\u2|data\(27)))))) # (!\u2|data_index\(3) & (((\u2|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(3),
	datab => \u2|data\(31),
	datac => \u2|Mux0~7_combout\,
	datad => \u2|data\(27),
	combout => \u2|Mux0~8_combout\);

-- Location: FF_X24_Y20_N9
\u2|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(10),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(10));

-- Location: FF_X24_Y22_N31
\u2|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|data[9]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(9));

-- Location: FF_X21_Y20_N13
\u2|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(5));

-- Location: FF_X21_Y20_N27
\u2|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|data[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(6));

-- Location: FF_X21_Y20_N11
\u2|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|data[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(1));

-- Location: FF_X24_Y20_N7
\u2|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(13),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(13));

-- Location: FF_X24_Y22_N11
\u2|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|data[14]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(14));

-- Location: LCCOMB_X25_Y21_N20
\u2|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data~4_combout\ = (\u2|state.tx_start~q\) # (\u2|state.tx_stop_bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_start~q\,
	datac => \u2|state.tx_stop_bits~q\,
	combout => \u2|data~4_combout\);

-- Location: FF_X24_Y21_N25
\u2|dato4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[5]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(5));

-- Location: LCCOMB_X23_Y21_N20
\u2|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux36~0_combout\ = (\u2|cambio\(1) & ((\u2|cambio\(0) & (\u2|dato4\(5))) # (!\u2|cambio\(0) & ((\u1|rxbuff32\(29)))))) # (!\u2|cambio\(1) & (((\u1|rxbuff32\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(1),
	datab => \u2|dato4\(5),
	datac => \u1|rxbuff32\(29),
	datad => \u2|cambio\(0),
	combout => \u2|Mux36~0_combout\);

-- Location: FF_X24_Y21_N9
\u2|dato4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[4]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(4));

-- Location: LCCOMB_X24_Y21_N18
\u2|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux37~0_combout\ = (\u2|cambio\(0) & ((\u2|cambio\(1) & (\u2|dato4\(4))) # (!\u2|cambio\(1) & ((\u1|rxbuff32\(28)))))) # (!\u2|cambio\(0) & (((\u1|rxbuff32\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(0),
	datab => \u2|cambio\(1),
	datac => \u2|dato4\(4),
	datad => \u1|rxbuff32\(28),
	combout => \u2|Mux37~0_combout\);

-- Location: FF_X24_Y21_N15
\u2|dato4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[3]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(3));

-- Location: LCCOMB_X24_Y21_N28
\u2|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux38~0_combout\ = (\u2|cambio\(0) & ((\u2|cambio\(1) & ((\u2|dato4\(3)))) # (!\u2|cambio\(1) & (\u1|rxbuff32\(27))))) # (!\u2|cambio\(0) & (\u1|rxbuff32\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(0),
	datab => \u1|rxbuff32\(27),
	datac => \u2|dato4\(3),
	datad => \u2|cambio\(1),
	combout => \u2|Mux38~0_combout\);

-- Location: FF_X24_Y21_N21
\u2|dato4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[7]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(7));

-- Location: LCCOMB_X24_Y21_N2
\u2|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux34~0_combout\ = (\u2|cambio\(0) & ((\u2|cambio\(1) & (\u2|dato4\(7))) # (!\u2|cambio\(1) & ((\u1|rxbuff32\(31)))))) # (!\u2|cambio\(0) & (((\u1|rxbuff32\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(0),
	datab => \u2|dato4\(7),
	datac => \u1|rxbuff32\(31),
	datad => \u2|cambio\(1),
	combout => \u2|Mux34~0_combout\);

-- Location: FF_X19_Y20_N23
\u1|bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector13~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(2));

-- Location: FF_X29_Y12_N27
\u5|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[18]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(18));

-- Location: FF_X28_Y12_N11
\u5|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[17]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(17));

-- Location: FF_X30_Y12_N21
\u5|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[16]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(16));

-- Location: FF_X28_Y12_N17
\u5|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[15]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(15));

-- Location: FF_X28_Y12_N15
\u5|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[13]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(13));

-- Location: FF_X29_Y12_N31
\u5|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[12]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(12));

-- Location: FF_X29_Y12_N23
\u5|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[10]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(10));

-- Location: FF_X28_Y13_N9
\u5|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[6]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(6));

-- Location: FF_X29_Y13_N7
\u5|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[5]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(5));

-- Location: FF_X28_Y13_N15
\u5|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[4]~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(4));

-- Location: FF_X28_Y13_N17
\u5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[3]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(3));

-- Location: FF_X29_Y13_N23
\u5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u5|counter[2]~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(2));

-- Location: FF_X29_Y13_N11
\u5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[0]~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(0));

-- Location: LCCOMB_X19_Y20_N20
\u1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~1_combout\ = \u1|bit_count\(2) $ (((\u1|bit_count\(1) & \u1|bit_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count\(2),
	datac => \u1|bit_count\(1),
	datad => \u1|bit_count\(0),
	combout => \u1|Add2~1_combout\);

-- Location: LCCOMB_X19_Y20_N22
\u1|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector13~1_combout\ = (\u1|Selector18~1_combout\ & ((\u1|Add2~1_combout\) # ((\u1|bit_count\(2) & \u1|Selector13~0_combout\)))) # (!\u1|Selector18~1_combout\ & (((\u1|bit_count\(2) & \u1|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector18~1_combout\,
	datab => \u1|Add2~1_combout\,
	datac => \u1|bit_count\(2),
	datad => \u1|Selector13~0_combout\,
	combout => \u1|Selector13~1_combout\);

-- Location: LCCOMB_X29_Y12_N26
\u5|counter[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[18]~2_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~36_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(18))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(18),
	datad => \u5|Add0~36_combout\,
	combout => \u5|counter[18]~2_combout\);

-- Location: LCCOMB_X28_Y12_N10
\u5|counter[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[17]~3_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~34_combout\) # ((\u5|counter\(17) & \u5|out_bot~1_combout\)))) # (!\u5|counter[0]~1_combout\ & (((\u5|counter\(17) & \u5|out_bot~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|Add0~34_combout\,
	datac => \u5|counter\(17),
	datad => \u5|out_bot~1_combout\,
	combout => \u5|counter[17]~3_combout\);

-- Location: LCCOMB_X30_Y12_N20
\u5|counter[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[16]~4_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~32_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(16))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(16),
	datad => \u5|Add0~32_combout\,
	combout => \u5|counter[16]~4_combout\);

-- Location: LCCOMB_X28_Y12_N16
\u5|counter[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[15]~5_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~30_combout\) # ((\u5|counter\(15) & \u5|out_bot~1_combout\)))) # (!\u5|counter[0]~1_combout\ & (((\u5|counter\(15) & \u5|out_bot~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|Add0~30_combout\,
	datac => \u5|counter\(15),
	datad => \u5|out_bot~1_combout\,
	combout => \u5|counter[15]~5_combout\);

-- Location: LCCOMB_X28_Y12_N14
\u5|counter[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[13]~7_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~26_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(13))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(13),
	datad => \u5|Add0~26_combout\,
	combout => \u5|counter[13]~7_combout\);

-- Location: LCCOMB_X29_Y12_N30
\u5|counter[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[12]~8_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~24_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(12))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(12),
	datad => \u5|Add0~24_combout\,
	combout => \u5|counter[12]~8_combout\);

-- Location: LCCOMB_X29_Y12_N22
\u5|counter[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[10]~10_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~20_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(10))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(10),
	datad => \u5|Add0~20_combout\,
	combout => \u5|counter[10]~10_combout\);

-- Location: LCCOMB_X28_Y13_N8
\u5|counter[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[6]~14_combout\ = (\u5|out_bot~1_combout\ & ((\u5|counter\(6)) # ((\u5|counter[0]~1_combout\ & \u5|Add0~12_combout\)))) # (!\u5|out_bot~1_combout\ & (\u5|counter[0]~1_combout\ & ((\u5|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_bot~1_combout\,
	datab => \u5|counter[0]~1_combout\,
	datac => \u5|counter\(6),
	datad => \u5|Add0~12_combout\,
	combout => \u5|counter[6]~14_combout\);

-- Location: LCCOMB_X29_Y13_N6
\u5|counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[5]~15_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~10_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(5))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(5),
	datad => \u5|Add0~10_combout\,
	combout => \u5|counter[5]~15_combout\);

-- Location: LCCOMB_X28_Y13_N14
\u5|counter[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[4]~16_combout\ = (\u5|Add0~8_combout\ & ((\u5|counter[0]~1_combout\) # ((\u5|counter\(4) & \u5|out_bot~1_combout\)))) # (!\u5|Add0~8_combout\ & (((\u5|counter\(4) & \u5|out_bot~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add0~8_combout\,
	datab => \u5|counter[0]~1_combout\,
	datac => \u5|counter\(4),
	datad => \u5|out_bot~1_combout\,
	combout => \u5|counter[4]~16_combout\);

-- Location: LCCOMB_X28_Y13_N16
\u5|counter[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[3]~17_combout\ = (\u5|out_bot~1_combout\ & ((\u5|counter\(3)) # ((\u5|counter[0]~1_combout\ & \u5|Add0~6_combout\)))) # (!\u5|out_bot~1_combout\ & (\u5|counter[0]~1_combout\ & ((\u5|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_bot~1_combout\,
	datab => \u5|counter[0]~1_combout\,
	datac => \u5|counter\(3),
	datad => \u5|Add0~6_combout\,
	combout => \u5|counter[3]~17_combout\);

-- Location: LCCOMB_X28_Y13_N6
\u5|counter[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[2]~18_combout\ = (\u5|counter\(2) & ((\u5|out_bot~1_combout\) # ((\u5|counter[0]~1_combout\ & \u5|Add0~4_combout\)))) # (!\u5|counter\(2) & (((\u5|counter[0]~1_combout\ & \u5|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter\(2),
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter[0]~1_combout\,
	datad => \u5|Add0~4_combout\,
	combout => \u5|counter[2]~18_combout\);

-- Location: LCCOMB_X29_Y13_N10
\u5|counter[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[0]~20_combout\ = (\u5|Add0~0_combout\ & ((\u5|counter[0]~1_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(0))))) # (!\u5|Add0~0_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add0~0_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(0),
	datad => \u5|counter[0]~1_combout\,
	combout => \u5|counter[0]~20_combout\);

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

-- Location: LCCOMB_X24_Y22_N30
\u2|data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[9]~feeder_combout\ = \u1|rxbuff32\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(9),
	combout => \u2|data[9]~feeder_combout\);

-- Location: LCCOMB_X21_Y20_N10
\u2|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[1]~feeder_combout\ = \u1|rxbuff32\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(1),
	combout => \u2|data[1]~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N10
\u2|data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[14]~feeder_combout\ = \u1|rxbuff32\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(14),
	combout => \u2|data[14]~feeder_combout\);

-- Location: LCCOMB_X21_Y20_N26
\u2|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[6]~feeder_combout\ = \u1|rxbuff32\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(6),
	combout => \u2|data[6]~feeder_combout\);

-- Location: LCCOMB_X23_Y20_N30
\u2|data[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[23]~feeder_combout\ = \u1|rxbuff32\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(23),
	combout => \u2|data[23]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N24
\u2|dato4[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[5]~feeder_combout\ = \u2|data\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data\(29),
	combout => \u2|dato4[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N8
\u2|dato4[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[4]~feeder_combout\ = \u2|data\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data\(28),
	combout => \u2|dato4[4]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N14
\u2|dato4[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[3]~feeder_combout\ = \u2|data\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data\(27),
	combout => \u2|dato4[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N20
\u2|dato4[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[7]~feeder_combout\ = \u2|data\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data\(31),
	combout => \u2|dato4[7]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N30
\u1|rxbuff32[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|rxbuff32[23]~feeder_combout\ = \u1|Selector23~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Selector23~2_combout\,
	combout => \u1|rxbuff32[23]~feeder_combout\);

-- Location: IOOBUF_X28_Y24_N16
\tx_line~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: LCCOMB_X33_Y12_N6
\u4|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|q[0]~0_combout\ = !\u4|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|q\(0),
	combout => \u4|q[0]~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\u4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|q[0]~feeder_combout\ = \u4|q[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|q[0]~0_combout\,
	combout => \u4|q[0]~feeder_combout\);

-- Location: FF_X33_Y12_N11
\u4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|q\(0));

-- Location: CLKCTRL_G7
\u4|q[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u4|q[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u4|q[0]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y20_N4
\u2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~0_combout\ = (\u2|LessThan0~3_combout\ & (\u2|data_index\(0) & VCC)) # (!\u2|LessThan0~3_combout\ & (\u2|data_index\(0) $ (VCC)))
-- \u2|Add1~1\ = CARRY((!\u2|LessThan0~3_combout\ & \u2|data_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~3_combout\,
	datab => \u2|data_index\(0),
	datad => VCC,
	combout => \u2|Add1~0_combout\,
	cout => \u2|Add1~1\);

-- Location: LCCOMB_X25_Y20_N6
\u2|clk_count[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[0]~12_combout\ = \u2|clk_count\(0) $ (VCC)
-- \u2|clk_count[0]~13\ = CARRY(\u2|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(0),
	datad => VCC,
	combout => \u2|clk_count[0]~12_combout\,
	cout => \u2|clk_count[0]~13\);

-- Location: LCCOMB_X25_Y21_N6
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

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

-- Location: IOIBUF_X34_Y12_N8
\boton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: LCCOMB_X28_Y12_N24
\u5|btn_prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|btn_prev~0_combout\ = (\reset~input_o\ & (\boton~input_o\)) # (!\reset~input_o\ & ((\u5|btn_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \boton~input_o\,
	datac => \u5|btn_prev~q\,
	datad => \reset~input_o\,
	combout => \u5|btn_prev~0_combout\);

-- Location: FF_X28_Y12_N25
\u5|btn_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|btn_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|btn_prev~q\);

-- Location: LCCOMB_X28_Y12_N0
\u5|out_bot~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_bot~1_combout\ = (\u5|counter\(19) & (\u5|btn_prev~q\ $ (!\boton~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|btn_prev~q\,
	datac => \boton~input_o\,
	datad => \u5|counter\(19),
	combout => \u5|out_bot~1_combout\);

-- Location: LCCOMB_X28_Y12_N26
\u5|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[0]~1_combout\ = (!\u5|counter\(19) & (\u5|btn_prev~q\ $ (!\boton~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|btn_prev~q\,
	datac => \boton~input_o\,
	datad => \u5|counter\(19),
	combout => \u5|counter[0]~1_combout\);

-- Location: LCCOMB_X29_Y13_N0
\u5|counter[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[9]~11_combout\ = (\u5|Add0~18_combout\ & ((\u5|counter[0]~1_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(9))))) # (!\u5|Add0~18_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add0~18_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(9),
	datad => \u5|counter[0]~1_combout\,
	combout => \u5|counter[9]~11_combout\);

-- Location: FF_X29_Y13_N1
\u5|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[9]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(9));

-- Location: LCCOMB_X29_Y13_N4
\u5|counter[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[7]~13_combout\ = (\u5|Add0~14_combout\ & ((\u5|counter[0]~1_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(7))))) # (!\u5|Add0~14_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add0~14_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(7),
	datad => \u5|counter[0]~1_combout\,
	combout => \u5|counter[7]~13_combout\);

-- Location: FF_X29_Y13_N5
\u5|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[7]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(7));

-- Location: LCCOMB_X29_Y13_N14
\u5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~2_combout\ = (\u5|counter\(1) & (!\u5|Add0~1\)) # (!\u5|counter\(1) & ((\u5|Add0~1\) # (GND)))
-- \u5|Add0~3\ = CARRY((!\u5|Add0~1\) # (!\u5|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|counter\(1),
	datad => VCC,
	cin => \u5|Add0~1\,
	combout => \u5|Add0~2_combout\,
	cout => \u5|Add0~3\);

-- Location: LCCOMB_X29_Y13_N8
\u5|counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[1]~19_combout\ = (\u5|out_bot~1_combout\ & ((\u5|counter\(1)) # ((\u5|Add0~2_combout\ & \u5|counter[0]~1_combout\)))) # (!\u5|out_bot~1_combout\ & (\u5|Add0~2_combout\ & ((\u5|counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_bot~1_combout\,
	datab => \u5|Add0~2_combout\,
	datac => \u5|counter\(1),
	datad => \u5|counter[0]~1_combout\,
	combout => \u5|counter[1]~19_combout\);

-- Location: FF_X29_Y13_N9
\u5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[1]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(1));

-- Location: LCCOMB_X29_Y13_N28
\u5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~16_combout\ = (\u5|counter\(8) & (\u5|Add0~15\ $ (GND))) # (!\u5|counter\(8) & (!\u5|Add0~15\ & VCC))
-- \u5|Add0~17\ = CARRY((\u5|counter\(8) & !\u5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|counter\(8),
	datad => VCC,
	cin => \u5|Add0~15\,
	combout => \u5|Add0~16_combout\,
	cout => \u5|Add0~17\);

-- Location: LCCOMB_X29_Y13_N2
\u5|counter[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[8]~12_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~16_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(8))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(8),
	datad => \u5|Add0~16_combout\,
	combout => \u5|counter[8]~12_combout\);

-- Location: FF_X29_Y13_N3
\u5|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[8]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(8));

-- Location: LCCOMB_X29_Y12_N2
\u5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~22_combout\ = (\u5|counter\(11) & (!\u5|Add0~21\)) # (!\u5|counter\(11) & ((\u5|Add0~21\) # (GND)))
-- \u5|Add0~23\ = CARRY((!\u5|Add0~21\) # (!\u5|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|counter\(11),
	datad => VCC,
	cin => \u5|Add0~21\,
	combout => \u5|Add0~22_combout\,
	cout => \u5|Add0~23\);

-- Location: LCCOMB_X29_Y12_N24
\u5|counter[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[11]~9_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~22_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(11))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(11),
	datad => \u5|Add0~22_combout\,
	combout => \u5|counter[11]~9_combout\);

-- Location: FF_X29_Y12_N25
\u5|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[11]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(11));

-- Location: LCCOMB_X29_Y12_N8
\u5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~28_combout\ = (\u5|counter\(14) & (\u5|Add0~27\ $ (GND))) # (!\u5|counter\(14) & (!\u5|Add0~27\ & VCC))
-- \u5|Add0~29\ = CARRY((\u5|counter\(14) & !\u5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|counter\(14),
	datad => VCC,
	cin => \u5|Add0~27\,
	combout => \u5|Add0~28_combout\,
	cout => \u5|Add0~29\);

-- Location: LCCOMB_X29_Y12_N20
\u5|counter[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter[14]~6_combout\ = (\u5|counter[0]~1_combout\ & ((\u5|Add0~28_combout\) # ((\u5|out_bot~1_combout\ & \u5|counter\(14))))) # (!\u5|counter[0]~1_combout\ & (\u5|out_bot~1_combout\ & (\u5|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|counter[0]~1_combout\,
	datab => \u5|out_bot~1_combout\,
	datac => \u5|counter\(14),
	datad => \u5|Add0~28_combout\,
	combout => \u5|counter[14]~6_combout\);

-- Location: FF_X29_Y12_N21
\u5|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter[14]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(14));

-- Location: LCCOMB_X29_Y12_N18
\u5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Add0~38_combout\ = \u5|Add0~37\ $ (\u5|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|counter\(19),
	cin => \u5|Add0~37\,
	combout => \u5|Add0~38_combout\);

-- Location: LCCOMB_X29_Y12_N28
\u5|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|counter~0_combout\ = (\u5|counter\(19) & (\boton~input_o\ $ ((!\u5|btn_prev~q\)))) # (!\u5|counter\(19) & (\u5|Add0~38_combout\ & (\boton~input_o\ $ (!\u5|btn_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~input_o\,
	datab => \u5|btn_prev~q\,
	datac => \u5|counter\(19),
	datad => \u5|Add0~38_combout\,
	combout => \u5|counter~0_combout\);

-- Location: FF_X29_Y12_N29
\u5|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|counter~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|counter\(19));

-- Location: LCCOMB_X23_Y20_N14
\u5|out_bot~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|out_bot~0_combout\ = (\boton~input_o\ & ((\u5|out_bot~q\) # ((\u5|counter\(19) & \u5|btn_prev~q\)))) # (!\boton~input_o\ & (\u5|out_bot~q\ & ((\u5|btn_prev~q\) # (!\u5|counter\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~input_o\,
	datab => \u5|counter\(19),
	datac => \u5|out_bot~q\,
	datad => \u5|btn_prev~q\,
	combout => \u5|out_bot~0_combout\);

-- Location: FF_X23_Y20_N15
\u5|out_bot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u5|out_bot~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|out_bot~q\);

-- Location: LCCOMB_X25_Y21_N24
\u2|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector42~0_combout\ = (\u2|state.tx_stop_bits~q\ & (\u2|LessThan0~3_combout\ & ((\u2|state.tx_idle~q\) # (!\u5|out_bot~q\)))) # (!\u2|state.tx_stop_bits~q\ & (((\u2|state.tx_idle~q\) # (!\u5|out_bot~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_stop_bits~q\,
	datab => \u2|LessThan0~3_combout\,
	datac => \u2|state.tx_idle~q\,
	datad => \u5|out_bot~q\,
	combout => \u2|Selector42~0_combout\);

-- Location: FF_X25_Y21_N25
\u2|state.tx_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector42~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_idle~q\);

-- Location: FF_X25_Y20_N7
\u2|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[0]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(0));

-- Location: LCCOMB_X25_Y20_N8
\u2|clk_count[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[1]~14_combout\ = (\u2|clk_count\(1) & (!\u2|clk_count[0]~13\)) # (!\u2|clk_count\(1) & ((\u2|clk_count[0]~13\) # (GND)))
-- \u2|clk_count[1]~15\ = CARRY((!\u2|clk_count[0]~13\) # (!\u2|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(1),
	datad => VCC,
	cin => \u2|clk_count[0]~13\,
	combout => \u2|clk_count[1]~14_combout\,
	cout => \u2|clk_count[1]~15\);

-- Location: FF_X25_Y20_N9
\u2|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[1]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(1));

-- Location: LCCOMB_X25_Y20_N10
\u2|clk_count[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[2]~16_combout\ = (\u2|clk_count\(2) & (\u2|clk_count[1]~15\ $ (GND))) # (!\u2|clk_count\(2) & (!\u2|clk_count[1]~15\ & VCC))
-- \u2|clk_count[2]~17\ = CARRY((\u2|clk_count\(2) & !\u2|clk_count[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(2),
	datad => VCC,
	cin => \u2|clk_count[1]~15\,
	combout => \u2|clk_count[2]~16_combout\,
	cout => \u2|clk_count[2]~17\);

-- Location: FF_X25_Y20_N11
\u2|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[2]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(2));

-- Location: LCCOMB_X25_Y20_N12
\u2|clk_count[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[3]~18_combout\ = (\u2|clk_count\(3) & (!\u2|clk_count[2]~17\)) # (!\u2|clk_count\(3) & ((\u2|clk_count[2]~17\) # (GND)))
-- \u2|clk_count[3]~19\ = CARRY((!\u2|clk_count[2]~17\) # (!\u2|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(3),
	datad => VCC,
	cin => \u2|clk_count[2]~17\,
	combout => \u2|clk_count[3]~18_combout\,
	cout => \u2|clk_count[3]~19\);

-- Location: FF_X25_Y20_N13
\u2|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[3]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(3));

-- Location: LCCOMB_X25_Y20_N14
\u2|clk_count[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[4]~20_combout\ = (\u2|clk_count\(4) & (\u2|clk_count[3]~19\ $ (GND))) # (!\u2|clk_count\(4) & (!\u2|clk_count[3]~19\ & VCC))
-- \u2|clk_count[4]~21\ = CARRY((\u2|clk_count\(4) & !\u2|clk_count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(4),
	datad => VCC,
	cin => \u2|clk_count[3]~19\,
	combout => \u2|clk_count[4]~20_combout\,
	cout => \u2|clk_count[4]~21\);

-- Location: FF_X25_Y20_N15
\u2|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[4]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(4));

-- Location: LCCOMB_X25_Y20_N16
\u2|clk_count[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[5]~22_combout\ = (\u2|clk_count\(5) & (!\u2|clk_count[4]~21\)) # (!\u2|clk_count\(5) & ((\u2|clk_count[4]~21\) # (GND)))
-- \u2|clk_count[5]~23\ = CARRY((!\u2|clk_count[4]~21\) # (!\u2|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(5),
	datad => VCC,
	cin => \u2|clk_count[4]~21\,
	combout => \u2|clk_count[5]~22_combout\,
	cout => \u2|clk_count[5]~23\);

-- Location: FF_X25_Y20_N17
\u2|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[5]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(5));

-- Location: LCCOMB_X25_Y20_N18
\u2|clk_count[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[6]~24_combout\ = (\u2|clk_count\(6) & (\u2|clk_count[5]~23\ $ (GND))) # (!\u2|clk_count\(6) & (!\u2|clk_count[5]~23\ & VCC))
-- \u2|clk_count[6]~25\ = CARRY((\u2|clk_count\(6) & !\u2|clk_count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(6),
	datad => VCC,
	cin => \u2|clk_count[5]~23\,
	combout => \u2|clk_count[6]~24_combout\,
	cout => \u2|clk_count[6]~25\);

-- Location: LCCOMB_X25_Y20_N20
\u2|clk_count[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[7]~26_combout\ = (\u2|clk_count\(7) & (!\u2|clk_count[6]~25\)) # (!\u2|clk_count\(7) & ((\u2|clk_count[6]~25\) # (GND)))
-- \u2|clk_count[7]~27\ = CARRY((!\u2|clk_count[6]~25\) # (!\u2|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(7),
	datad => VCC,
	cin => \u2|clk_count[6]~25\,
	combout => \u2|clk_count[7]~26_combout\,
	cout => \u2|clk_count[7]~27\);

-- Location: FF_X25_Y20_N21
\u2|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[7]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(7));

-- Location: LCCOMB_X25_Y20_N22
\u2|clk_count[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[8]~28_combout\ = (\u2|clk_count\(8) & (\u2|clk_count[7]~27\ $ (GND))) # (!\u2|clk_count\(8) & (!\u2|clk_count[7]~27\ & VCC))
-- \u2|clk_count[8]~29\ = CARRY((\u2|clk_count\(8) & !\u2|clk_count[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(8),
	datad => VCC,
	cin => \u2|clk_count[7]~27\,
	combout => \u2|clk_count[8]~28_combout\,
	cout => \u2|clk_count[8]~29\);

-- Location: FF_X25_Y20_N23
\u2|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[8]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(8));

-- Location: LCCOMB_X25_Y20_N24
\u2|clk_count[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[9]~30_combout\ = (\u2|clk_count\(9) & (!\u2|clk_count[8]~29\)) # (!\u2|clk_count\(9) & ((\u2|clk_count[8]~29\) # (GND)))
-- \u2|clk_count[9]~31\ = CARRY((!\u2|clk_count[8]~29\) # (!\u2|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(9),
	datad => VCC,
	cin => \u2|clk_count[8]~29\,
	combout => \u2|clk_count[9]~30_combout\,
	cout => \u2|clk_count[9]~31\);

-- Location: FF_X25_Y20_N25
\u2|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[9]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(9));

-- Location: LCCOMB_X25_Y20_N26
\u2|clk_count[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[10]~32_combout\ = (\u2|clk_count\(10) & (\u2|clk_count[9]~31\ $ (GND))) # (!\u2|clk_count\(10) & (!\u2|clk_count[9]~31\ & VCC))
-- \u2|clk_count[10]~33\ = CARRY((\u2|clk_count\(10) & !\u2|clk_count[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(10),
	datad => VCC,
	cin => \u2|clk_count[9]~31\,
	combout => \u2|clk_count[10]~32_combout\,
	cout => \u2|clk_count[10]~33\);

-- Location: FF_X25_Y20_N27
\u2|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[10]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(10));

-- Location: LCCOMB_X25_Y20_N28
\u2|clk_count[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clk_count[11]~34_combout\ = \u2|clk_count\(11) $ (\u2|clk_count[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(11),
	cin => \u2|clk_count[10]~33\,
	combout => \u2|clk_count[11]~34_combout\);

-- Location: FF_X25_Y20_N29
\u2|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[11]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(11));

-- Location: LCCOMB_X25_Y20_N30
\u2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~1_combout\ = (!\u2|clk_count\(3) & (((!\u2|clk_count\(0)) # (!\u2|clk_count\(1))) # (!\u2|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(2),
	datab => \u2|clk_count\(1),
	datac => \u2|clk_count\(0),
	datad => \u2|clk_count\(3),
	combout => \u2|LessThan0~1_combout\);

-- Location: FF_X25_Y20_N19
\u2|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|clk_count[6]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u2|ALT_INV_state.tx_idle~q\,
	sload => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clk_count\(6));

-- Location: LCCOMB_X25_Y20_N0
\u2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~0_combout\ = (!\u2|clk_count\(8) & (!\u2|clk_count\(6) & (!\u2|clk_count\(10) & !\u2|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(8),
	datab => \u2|clk_count\(6),
	datac => \u2|clk_count\(10),
	datad => \u2|clk_count\(7),
	combout => \u2|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\u2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~2_combout\ = (\u2|LessThan0~0_combout\ & (((!\u2|clk_count\(4) & \u2|LessThan0~1_combout\)) # (!\u2|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(4),
	datab => \u2|clk_count\(5),
	datac => \u2|LessThan0~1_combout\,
	datad => \u2|LessThan0~0_combout\,
	combout => \u2|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y20_N26
\u2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~3_combout\ = ((\u2|LessThan0~2_combout\) # ((!\u2|clk_count\(10) & !\u2|clk_count\(9)))) # (!\u2|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clk_count\(10),
	datab => \u2|clk_count\(11),
	datac => \u2|LessThan0~2_combout\,
	datad => \u2|clk_count\(9),
	combout => \u2|LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y21_N26
\u2|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector43~0_combout\ = (\u5|out_bot~q\ & (\u2|LessThan0~3_combout\ & (\u2|state.tx_start~q\))) # (!\u5|out_bot~q\ & (((\u2|LessThan0~3_combout\ & \u2|state.tx_start~q\)) # (!\u2|state.tx_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|out_bot~q\,
	datab => \u2|LessThan0~3_combout\,
	datac => \u2|state.tx_start~q\,
	datad => \u2|state.tx_idle~q\,
	combout => \u2|Selector43~0_combout\);

-- Location: FF_X25_Y21_N27
\u2|state.tx_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector43~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_start~q\);

-- Location: LCCOMB_X25_Y21_N16
\u2|state.tx_databits~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|state.tx_databits~feeder_combout\ = \u2|state.tx_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|state.tx_start~q\,
	combout => \u2|state.tx_databits~feeder_combout\);

-- Location: FF_X25_Y21_N17
\u2|state.tx_databits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|state.tx_databits~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state.tx_databits~q\);

-- Location: LCCOMB_X24_Y20_N28
\u2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector17~0_combout\ = (\u2|data~4_combout\ & ((\u2|data_index\(0)) # ((\u2|Add1~0_combout\ & \u2|state.tx_databits~q\)))) # (!\u2|data~4_combout\ & (\u2|Add1~0_combout\ & ((\u2|state.tx_databits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data~4_combout\,
	datab => \u2|Add1~0_combout\,
	datac => \u2|data_index\(0),
	datad => \u2|state.tx_databits~q\,
	combout => \u2|Selector17~0_combout\);

-- Location: FF_X24_Y20_N29
\u2|data_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector17~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(0));

-- Location: LCCOMB_X24_Y20_N6
\u2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~2_combout\ = (\u2|data_index\(1) & (!\u2|Add1~1\)) # (!\u2|data_index\(1) & ((\u2|Add1~1\) # (GND)))
-- \u2|Add1~3\ = CARRY((!\u2|Add1~1\) # (!\u2|data_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index\(1),
	datad => VCC,
	cin => \u2|Add1~1\,
	combout => \u2|Add1~2_combout\,
	cout => \u2|Add1~3\);

-- Location: LCCOMB_X24_Y20_N0
\u2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector16~0_combout\ = (\u2|data~4_combout\ & ((\u2|data_index\(1)) # ((\u2|state.tx_databits~q\ & \u2|Add1~2_combout\)))) # (!\u2|data~4_combout\ & (\u2|state.tx_databits~q\ & ((\u2|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data~4_combout\,
	datab => \u2|state.tx_databits~q\,
	datac => \u2|data_index\(1),
	datad => \u2|Add1~2_combout\,
	combout => \u2|Selector16~0_combout\);

-- Location: FF_X24_Y20_N1
\u2|data_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector16~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(1));

-- Location: LCCOMB_X24_Y20_N8
\u2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~4_combout\ = (\u2|data_index\(2) & (\u2|Add1~3\ $ (GND))) # (!\u2|data_index\(2) & (!\u2|Add1~3\ & VCC))
-- \u2|Add1~5\ = CARRY((\u2|data_index\(2) & !\u2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(2),
	datad => VCC,
	cin => \u2|Add1~3\,
	combout => \u2|Add1~4_combout\,
	cout => \u2|Add1~5\);

-- Location: LCCOMB_X24_Y20_N10
\u2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~6_combout\ = (\u2|data_index\(3) & (!\u2|Add1~5\)) # (!\u2|data_index\(3) & ((\u2|Add1~5\) # (GND)))
-- \u2|Add1~7\ = CARRY((!\u2|Add1~5\) # (!\u2|data_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index\(3),
	datad => VCC,
	cin => \u2|Add1~5\,
	combout => \u2|Add1~6_combout\,
	cout => \u2|Add1~7\);

-- Location: LCCOMB_X24_Y20_N16
\u2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector14~0_combout\ = (\u2|data~4_combout\ & ((\u2|data_index\(3)) # ((\u2|state.tx_databits~q\ & \u2|Add1~6_combout\)))) # (!\u2|data~4_combout\ & (\u2|state.tx_databits~q\ & ((\u2|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data~4_combout\,
	datab => \u2|state.tx_databits~q\,
	datac => \u2|data_index\(3),
	datad => \u2|Add1~6_combout\,
	combout => \u2|Selector14~0_combout\);

-- Location: FF_X24_Y20_N17
\u2|data_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector14~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(3));

-- Location: LCCOMB_X24_Y20_N30
\u2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector15~0_combout\ = (\u2|data~4_combout\ & ((\u2|data_index\(2)) # ((\u2|state.tx_databits~q\ & \u2|Add1~4_combout\)))) # (!\u2|data~4_combout\ & (\u2|state.tx_databits~q\ & ((\u2|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data~4_combout\,
	datab => \u2|state.tx_databits~q\,
	datac => \u2|data_index\(2),
	datad => \u2|Add1~4_combout\,
	combout => \u2|Selector15~0_combout\);

-- Location: FF_X24_Y20_N31
\u2|data_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector15~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(2));

-- Location: LCCOMB_X24_Y20_N2
\u2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan1~0_combout\ = (((!\u2|data_index\(1)) # (!\u2|data_index\(2))) # (!\u2|data_index\(3))) # (!\u2|data_index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(4),
	datab => \u2|data_index\(3),
	datac => \u2|data_index\(2),
	datad => \u2|data_index\(1),
	combout => \u2|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\u2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan1~1_combout\ = (\u2|LessThan1~0_combout\) # (!\u2|data_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|data_index\(0),
	datad => \u2|LessThan1~0_combout\,
	combout => \u2|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y20_N20
\u2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector0~0_combout\ = (\u2|state.tx_databits~q\ & (\u2|tx_line~q\ & ((\u2|LessThan0~3_combout\) # (!\u2|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_databits~q\,
	datab => \u2|LessThan1~1_combout\,
	datac => \u2|LessThan0~3_combout\,
	datad => \u2|tx_line~q\,
	combout => \u2|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y20_N12
\u2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add1~8_combout\ = \u2|data_index\(4) $ (!\u2|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(4),
	cin => \u2|Add1~7\,
	combout => \u2|Add1~8_combout\);

-- Location: LCCOMB_X24_Y20_N22
\u2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector13~0_combout\ = (\u2|data~4_combout\ & ((\u2|data_index\(4)) # ((\u2|state.tx_databits~q\ & \u2|Add1~8_combout\)))) # (!\u2|data~4_combout\ & (\u2|state.tx_databits~q\ & ((\u2|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data~4_combout\,
	datab => \u2|state.tx_databits~q\,
	datac => \u2|data_index\(4),
	datad => \u2|Add1~8_combout\,
	combout => \u2|Selector13~0_combout\);

-- Location: FF_X24_Y20_N23
\u2|data_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector13~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_index\(4));

-- Location: LCCOMB_X24_Y21_N0
\u2|dato4[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[6]~feeder_combout\ = \u2|data\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|data\(30),
	combout => \u2|dato4[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y20_N2
\u2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~4_combout\ = ((!\u2|clk_count\(10) & !\u2|clk_count\(9))) # (!\u2|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|clk_count\(11),
	datac => \u2|clk_count\(10),
	datad => \u2|clk_count\(9),
	combout => \u2|LessThan0~4_combout\);

-- Location: LCCOMB_X25_Y21_N22
\u2|cambio[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cambio[1]~0_combout\ = (\u2|LessThan1~1_combout\ & (!\u2|LessThan0~4_combout\ & (\u2|state.tx_databits~q\ & !\u2|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan1~1_combout\,
	datab => \u2|LessThan0~4_combout\,
	datac => \u2|state.tx_databits~q\,
	datad => \u2|LessThan0~2_combout\,
	combout => \u2|cambio[1]~0_combout\);

-- Location: LCCOMB_X25_Y21_N28
\u2|cambio[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cambio[1]~2_combout\ = \u2|cambio\(1) $ (((\u2|cambio\(0) & \u2|cambio[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(0),
	datac => \u2|cambio\(1),
	datad => \u2|cambio[1]~0_combout\,
	combout => \u2|cambio[1]~2_combout\);

-- Location: FF_X25_Y21_N29
\u2|cambio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|cambio[1]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cambio\(1));

-- Location: LCCOMB_X25_Y21_N30
\u2|cambio[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cambio[0]~1_combout\ = \u2|cambio\(0) $ (\u2|cambio[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|cambio\(0),
	datad => \u2|cambio[1]~0_combout\,
	combout => \u2|cambio[0]~1_combout\);

-- Location: FF_X25_Y21_N31
\u2|cambio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|cambio[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cambio\(0));

-- Location: LCCOMB_X24_Y21_N10
\u2|dato4[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[7]~0_combout\ = (\reset~input_o\ & (!\u2|cambio\(1) & (!\u2|cambio\(0) & \u2|cambio[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \u2|cambio\(1),
	datac => \u2|cambio\(0),
	datad => \u2|cambio[1]~0_combout\,
	combout => \u2|dato4[7]~0_combout\);

-- Location: FF_X24_Y21_N1
\u2|dato4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[6]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(6));

-- Location: LCCOMB_X22_Y21_N22
\u1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector22~0_combout\ = (!\u1|state.stop~q\ & ((\u1|bit32_count\(0) & (!\u1|bit32_count\(2) & \u1|state.rx_databits~q\)) # (!\u1|bit32_count\(0) & ((!\u1|state.rx_databits~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.stop~q\,
	datab => \u1|bit32_count\(2),
	datac => \u1|bit32_count\(0),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector22~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\u1|baud_count[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[1]~14_combout\ = (\u1|baud_count\(1) & (!\u1|baud_count[0]~13\)) # (!\u1|baud_count\(1) & ((\u1|baud_count[0]~13\) # (GND)))
-- \u1|baud_count[1]~15\ = CARRY((!\u1|baud_count[0]~13\) # (!\u1|baud_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(1),
	datad => VCC,
	cin => \u1|baud_count[0]~13\,
	combout => \u1|baud_count[1]~14_combout\,
	cout => \u1|baud_count[1]~15\);

-- Location: LCCOMB_X19_Y21_N6
\u1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector19~0_combout\ = (\u1|LessThan4~0_combout\ & ((\u1|state.rx_databits~q\) # ((!\u1|bit_count\(3) & \u1|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|bit_count\(3),
	datac => \u1|LessThan4~0_combout\,
	datad => \u1|Selector16~0_combout\,
	combout => \u1|Selector19~0_combout\);

-- Location: FF_X19_Y21_N7
\u1|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector19~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.stop~q\);

-- Location: LCCOMB_X19_Y21_N0
\u1|baud_count[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[10]~34_combout\ = (\u1|state.stop~q\) # (!\u1|state.rx_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.rx_idle~q\,
	datad => \u1|state.stop~q\,
	combout => \u1|baud_count[10]~34_combout\);

-- Location: LCCOMB_X19_Y21_N22
\u1|baud_count[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[10]~35_combout\ = (\u1|baud_count[10]~34_combout\) # ((\u1|Selector16~0_combout\) # ((!\u1|state.almacen~q\ & !\u1|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.almacen~q\,
	datab => \u1|baud_count[10]~34_combout\,
	datac => \u1|Selector17~0_combout\,
	datad => \u1|Selector16~0_combout\,
	combout => \u1|baud_count[10]~35_combout\);

-- Location: FF_X21_Y21_N9
\u1|baud_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[1]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(1));

-- Location: LCCOMB_X21_Y21_N12
\u1|baud_count[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[3]~18_combout\ = (\u1|baud_count\(3) & (!\u1|baud_count[2]~17\)) # (!\u1|baud_count\(3) & ((\u1|baud_count[2]~17\) # (GND)))
-- \u1|baud_count[3]~19\ = CARRY((!\u1|baud_count[2]~17\) # (!\u1|baud_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(3),
	datad => VCC,
	cin => \u1|baud_count[2]~17\,
	combout => \u1|baud_count[3]~18_combout\,
	cout => \u1|baud_count[3]~19\);

-- Location: LCCOMB_X21_Y21_N14
\u1|baud_count[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[4]~20_combout\ = (\u1|baud_count\(4) & (\u1|baud_count[3]~19\ $ (GND))) # (!\u1|baud_count\(4) & (!\u1|baud_count[3]~19\ & VCC))
-- \u1|baud_count[4]~21\ = CARRY((\u1|baud_count\(4) & !\u1|baud_count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(4),
	datad => VCC,
	cin => \u1|baud_count[3]~19\,
	combout => \u1|baud_count[4]~20_combout\,
	cout => \u1|baud_count[4]~21\);

-- Location: FF_X21_Y21_N15
\u1|baud_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[4]~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(4));

-- Location: LCCOMB_X21_Y21_N16
\u1|baud_count[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[5]~22_combout\ = (\u1|baud_count\(5) & (!\u1|baud_count[4]~21\)) # (!\u1|baud_count\(5) & ((\u1|baud_count[4]~21\) # (GND)))
-- \u1|baud_count[5]~23\ = CARRY((!\u1|baud_count[4]~21\) # (!\u1|baud_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(5),
	datad => VCC,
	cin => \u1|baud_count[4]~21\,
	combout => \u1|baud_count[5]~22_combout\,
	cout => \u1|baud_count[5]~23\);

-- Location: FF_X21_Y21_N17
\u1|baud_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[5]~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(5));

-- Location: LCCOMB_X21_Y21_N18
\u1|baud_count[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[6]~24_combout\ = (\u1|baud_count\(6) & (\u1|baud_count[5]~23\ $ (GND))) # (!\u1|baud_count\(6) & (!\u1|baud_count[5]~23\ & VCC))
-- \u1|baud_count[6]~25\ = CARRY((\u1|baud_count\(6) & !\u1|baud_count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(6),
	datad => VCC,
	cin => \u1|baud_count[5]~23\,
	combout => \u1|baud_count[6]~24_combout\,
	cout => \u1|baud_count[6]~25\);

-- Location: FF_X21_Y21_N19
\u1|baud_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[6]~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(6));

-- Location: LCCOMB_X21_Y21_N20
\u1|baud_count[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[7]~26_combout\ = (\u1|baud_count\(7) & (!\u1|baud_count[6]~25\)) # (!\u1|baud_count\(7) & ((\u1|baud_count[6]~25\) # (GND)))
-- \u1|baud_count[7]~27\ = CARRY((!\u1|baud_count[6]~25\) # (!\u1|baud_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(7),
	datad => VCC,
	cin => \u1|baud_count[6]~25\,
	combout => \u1|baud_count[7]~26_combout\,
	cout => \u1|baud_count[7]~27\);

-- Location: LCCOMB_X21_Y21_N24
\u1|baud_count[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[9]~30_combout\ = (\u1|baud_count\(9) & (!\u1|baud_count[8]~29\)) # (!\u1|baud_count\(9) & ((\u1|baud_count[8]~29\) # (GND)))
-- \u1|baud_count[9]~31\ = CARRY((!\u1|baud_count[8]~29\) # (!\u1|baud_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(9),
	datad => VCC,
	cin => \u1|baud_count[8]~29\,
	combout => \u1|baud_count[9]~30_combout\,
	cout => \u1|baud_count[9]~31\);

-- Location: FF_X21_Y21_N25
\u1|baud_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[9]~30_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(9));

-- Location: LCCOMB_X21_Y21_N26
\u1|baud_count[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[10]~32_combout\ = (\u1|baud_count\(10) & (\u1|baud_count[9]~31\ $ (GND))) # (!\u1|baud_count\(10) & (!\u1|baud_count[9]~31\ & VCC))
-- \u1|baud_count[10]~33\ = CARRY((\u1|baud_count\(10) & !\u1|baud_count[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(10),
	datad => VCC,
	cin => \u1|baud_count[9]~31\,
	combout => \u1|baud_count[10]~32_combout\,
	cout => \u1|baud_count[10]~33\);

-- Location: FF_X19_Y21_N13
\u1|baud_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	asdata => \u1|baud_count[10]~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	sload => VCC,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(10));

-- Location: LCCOMB_X21_Y21_N28
\u1|baud_count[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|baud_count[11]~36_combout\ = \u1|baud_count\(11) $ (\u1|baud_count[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|baud_count\(11),
	cin => \u1|baud_count[10]~33\,
	combout => \u1|baud_count[11]~36_combout\);

-- Location: FF_X19_Y21_N3
\u1|baud_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	asdata => \u1|baud_count[11]~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	sload => VCC,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(11));

-- Location: FF_X21_Y21_N21
\u1|baud_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[7]~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(7));

-- Location: FF_X21_Y21_N13
\u1|baud_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|baud_count[3]~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \u1|baud_count[10]~35_combout\,
	ena => \u1|ALT_INV_state.rx_databits~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|baud_count\(3));

-- Location: LCCOMB_X21_Y21_N0
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|baud_count\(5) & (((!\u1|baud_count\(2) & !\u1|baud_count\(3))) # (!\u1|baud_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(2),
	datab => \u1|baud_count\(5),
	datac => \u1|baud_count\(4),
	datad => \u1|baud_count\(3),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y21_N30
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = ((!\u1|baud_count\(6) & (!\u1|baud_count\(7) & \u1|LessThan0~0_combout\))) # (!\u1|baud_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(8),
	datab => \u1|baud_count\(6),
	datac => \u1|baud_count\(7),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y21_N26
\u1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector17~0_combout\ = (!\u1|baud_count\(11) & (((!\u1|baud_count\(9) & \u1|LessThan0~1_combout\)) # (!\u1|baud_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(10),
	datab => \u1|baud_count\(11),
	datac => \u1|baud_count\(9),
	datad => \u1|LessThan0~1_combout\,
	combout => \u1|Selector17~0_combout\);

-- Location: LCCOMB_X19_Y21_N30
\u1|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector18~1_combout\ = (\u1|state.rx_databits~q\ & (((!\u1|bit32_count\(1) & !\u1|bit32_count\(0))) # (!\u1|bit32_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|bit32_count\(1),
	datac => \u1|bit32_count\(0),
	datad => \u1|bit32_count\(2),
	combout => \u1|Selector18~1_combout\);

-- Location: LCCOMB_X21_Y21_N4
\u1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~0_combout\ = (\u1|baud_count\(8)) # ((\u1|baud_count\(5) & ((\u1|baud_count\(4)) # (\u1|baud_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(8),
	datab => \u1|baud_count\(5),
	datac => \u1|baud_count\(4),
	datad => \u1|baud_count\(3),
	combout => \u1|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y21_N2
\u1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~1_combout\ = (\u1|baud_count\(9) & ((\u1|baud_count\(7)) # ((\u1|baud_count\(6)) # (\u1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(7),
	datab => \u1|baud_count\(6),
	datac => \u1|LessThan1~0_combout\,
	datad => \u1|baud_count\(9),
	combout => \u1|LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y21_N24
\u1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector18~0_combout\ = (\u1|state.almacen~q\ & (((!\u1|baud_count\(10) & !\u1|LessThan1~1_combout\)) # (!\u1|baud_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(10),
	datab => \u1|state.almacen~q\,
	datac => \u1|LessThan1~1_combout\,
	datad => \u1|baud_count\(11),
	combout => \u1|Selector18~0_combout\);

-- Location: LCCOMB_X19_Y21_N18
\u1|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector18~2_combout\ = (\u1|Selector18~1_combout\) # ((\u1|Selector18~0_combout\) # ((\u1|state.start~q\ & !\u1|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.start~q\,
	datab => \u1|Selector17~0_combout\,
	datac => \u1|Selector18~1_combout\,
	datad => \u1|Selector18~0_combout\,
	combout => \u1|Selector18~2_combout\);

-- Location: FF_X19_Y21_N19
\u1|state.almacen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector18~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.almacen~q\);

-- Location: LCCOMB_X19_Y21_N20
\u1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector16~0_combout\ = (\u1|state.almacen~q\ & (\u1|baud_count\(11) & ((\u1|baud_count\(10)) # (\u1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|baud_count\(10),
	datab => \u1|state.almacen~q\,
	datac => \u1|LessThan1~1_combout\,
	datad => \u1|baud_count\(11),
	combout => \u1|Selector16~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\u1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector16~1_combout\ = (\u1|state.stop~q\) # ((\rx_line~input_o\ & !\u1|state.rx_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_line~input_o\,
	datab => \u1|state.rx_idle~q\,
	datad => \u1|state.stop~q\,
	combout => \u1|Selector16~1_combout\);

-- Location: LCCOMB_X19_Y21_N4
\u1|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector16~2_combout\ = (!\u1|Selector16~1_combout\ & ((!\u1|bit_count\(3)) # (!\u1|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Selector16~0_combout\,
	datac => \u1|Selector16~1_combout\,
	datad => \u1|bit_count\(3),
	combout => \u1|Selector16~2_combout\);

-- Location: FF_X19_Y21_N5
\u1|state.rx_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector16~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.rx_idle~q\);

-- Location: LCCOMB_X19_Y21_N8
\u1|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector17~1_combout\ = (\rx_line~input_o\ & (((\u1|state.start~q\ & \u1|Selector17~0_combout\)))) # (!\rx_line~input_o\ & (((\u1|state.start~q\ & \u1|Selector17~0_combout\)) # (!\u1|state.rx_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_line~input_o\,
	datab => \u1|state.rx_idle~q\,
	datac => \u1|state.start~q\,
	datad => \u1|Selector17~0_combout\,
	combout => \u1|Selector17~1_combout\);

-- Location: FF_X19_Y21_N9
\u1|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector17~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.start~q\);

-- Location: LCCOMB_X22_Y21_N14
\u1|bit32_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|bit32_count[1]~0_combout\ = (((!\u1|LessThan1~1_combout\ & !\u1|baud_count\(10))) # (!\u1|bit_count\(3))) # (!\u1|baud_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~1_combout\,
	datab => \u1|baud_count\(10),
	datac => \u1|baud_count\(11),
	datad => \u1|bit_count\(3),
	combout => \u1|bit32_count[1]~0_combout\);

-- Location: LCCOMB_X22_Y21_N20
\u1|bit32_count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|bit32_count[1]~1_combout\ = (!\u1|state.start~q\ & (\u1|state.rx_idle~q\ & ((!\u1|bit32_count[1]~0_combout\) # (!\u1|state.almacen~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.almacen~q\,
	datab => \u1|state.start~q\,
	datac => \u1|bit32_count[1]~0_combout\,
	datad => \u1|state.rx_idle~q\,
	combout => \u1|bit32_count[1]~1_combout\);

-- Location: FF_X22_Y21_N23
\u1|bit32_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector22~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|bit32_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit32_count\(0));

-- Location: LCCOMB_X22_Y21_N2
\u1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector20~0_combout\ = (\u1|bit32_count\(1) & (!\u1|state.rx_databits~q\ & (\u1|bit32_count\(2) $ (\u1|bit32_count\(0))))) # (!\u1|bit32_count\(1) & (\u1|bit32_count\(2) & ((!\u1|state.rx_databits~q\) # (!\u1|bit32_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(1),
	datab => \u1|bit32_count\(2),
	datac => \u1|bit32_count\(0),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector20~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\u1|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector20~1_combout\ = (!\u1|state.stop~q\ & \u1|Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.stop~q\,
	datad => \u1|Selector20~0_combout\,
	combout => \u1|Selector20~1_combout\);

-- Location: FF_X22_Y21_N25
\u1|bit32_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector20~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|bit32_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit32_count\(2));

-- Location: LCCOMB_X22_Y21_N16
\u1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector21~0_combout\ = (\u1|state.rx_databits~q\ & (\u1|bit32_count\(1) & (!\u1|bit32_count\(2)))) # (!\u1|state.rx_databits~q\ & (\u1|bit32_count\(1) $ (((\u1|bit32_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(1),
	datab => \u1|bit32_count\(2),
	datac => \u1|bit32_count\(0),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector21~0_combout\);

-- Location: LCCOMB_X22_Y21_N26
\u1|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector21~1_combout\ = (!\u1|state.stop~q\ & \u1|Selector21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.stop~q\,
	datad => \u1|Selector21~0_combout\,
	combout => \u1|Selector21~1_combout\);

-- Location: FF_X22_Y21_N27
\u1|bit32_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector21~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|bit32_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit32_count\(1));

-- Location: LCCOMB_X19_Y21_N14
\u1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan4~0_combout\ = (\u1|bit32_count\(2) & ((\u1|bit32_count\(1)) # (\u1|bit32_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit32_count\(1),
	datac => \u1|bit32_count\(0),
	datad => \u1|bit32_count\(2),
	combout => \u1|LessThan4~0_combout\);

-- Location: LCCOMB_X19_Y21_N10
\u1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector13~0_combout\ = (\u1|state.start~q\) # ((\u1|state.almacen~q\) # ((\u1|LessThan4~0_combout\ & \u1|state.rx_databits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.start~q\,
	datab => \u1|LessThan4~0_combout\,
	datac => \u1|state.rx_databits~q\,
	datad => \u1|state.almacen~q\,
	combout => \u1|Selector13~0_combout\);

-- Location: LCCOMB_X19_Y21_N12
\u1|bit_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|bit_count~0_combout\ = (\u1|state.start~q\) # (\u1|state.almacen~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.start~q\,
	datad => \u1|state.almacen~q\,
	combout => \u1|bit_count~0_combout\);

-- Location: LCCOMB_X19_Y21_N16
\u1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector15~0_combout\ = (\u1|bit_count\(0) & ((\u1|bit_count~0_combout\) # ((\u1|state.rx_databits~q\ & \u1|LessThan4~0_combout\)))) # (!\u1|bit_count\(0) & (\u1|state.rx_databits~q\ & (!\u1|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|LessThan4~0_combout\,
	datac => \u1|bit_count\(0),
	datad => \u1|bit_count~0_combout\,
	combout => \u1|Selector15~0_combout\);

-- Location: FF_X19_Y21_N17
\u1|bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector15~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(0));

-- Location: LCCOMB_X19_Y20_N4
\u1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector14~0_combout\ = (\u1|bit_count\(1) & ((\u1|Selector13~0_combout\) # ((\u1|Selector18~1_combout\ & !\u1|bit_count\(0))))) # (!\u1|bit_count\(1) & (\u1|Selector18~1_combout\ & ((\u1|bit_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector18~1_combout\,
	datab => \u1|Selector13~0_combout\,
	datac => \u1|bit_count\(1),
	datad => \u1|bit_count\(0),
	combout => \u1|Selector14~0_combout\);

-- Location: FF_X19_Y20_N5
\u1|bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector14~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(1));

-- Location: LCCOMB_X19_Y20_N18
\u1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add2~0_combout\ = \u1|bit_count\(3) $ (((\u1|bit_count\(2) & (\u1|bit_count\(1) & \u1|bit_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_count\(2),
	datab => \u1|bit_count\(3),
	datac => \u1|bit_count\(1),
	datad => \u1|bit_count\(0),
	combout => \u1|Add2~0_combout\);

-- Location: LCCOMB_X19_Y20_N0
\u1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector12~0_combout\ = (\u1|Selector18~1_combout\ & ((\u1|Add2~0_combout\) # ((\u1|bit_count\(3) & \u1|Selector13~0_combout\)))) # (!\u1|Selector18~1_combout\ & (((\u1|bit_count\(3) & \u1|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector18~1_combout\,
	datab => \u1|Add2~0_combout\,
	datac => \u1|bit_count\(3),
	datad => \u1|Selector13~0_combout\,
	combout => \u1|Selector12~0_combout\);

-- Location: FF_X19_Y20_N1
\u1|bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector12~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_count\(3));

-- Location: LCCOMB_X19_Y21_N28
\u1|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|state~9_combout\ = (!\u1|bit_count\(3) & (!\u1|LessThan4~0_combout\ & \u1|Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit_count\(3),
	datac => \u1|LessThan4~0_combout\,
	datad => \u1|Selector16~0_combout\,
	combout => \u1|state~9_combout\);

-- Location: FF_X19_Y21_N29
\u1|state.rx_databits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|state~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|state.rx_databits~q\);

-- Location: LCCOMB_X23_Y21_N18
\u1|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector23~2_combout\ = (\rx_line~input_o\ & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_line~input_o\,
	datac => \u1|state.rx_databits~q\,
	combout => \u1|Selector23~2_combout\);

-- Location: LCCOMB_X22_Y21_N28
\u1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector23~0_combout\ = (!\u1|bit32_count\(0) & (\u1|bit32_count\(2) & (!\u1|bit32_count\(1) & \u1|state.rx_databits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datab => \u1|bit32_count\(2),
	datac => \u1|bit32_count\(1),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector23~0_combout\);

-- Location: LCCOMB_X22_Y21_N6
\u1|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector23~1_combout\ = (\u1|Selector23~0_combout\) # ((\u1|state.stop~q\ & !\u1|state.rx_databits~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.stop~q\,
	datab => \u1|state.rx_databits~q\,
	datad => \u1|Selector23~0_combout\,
	combout => \u1|Selector23~1_combout\);

-- Location: FF_X22_Y21_N7
\u1|rxbuff32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	asdata => \u1|Selector23~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(31));

-- Location: LCCOMB_X23_Y22_N22
\u1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector24~0_combout\ = (\u1|rxbuff32\(31) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|rxbuff32\(31),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector24~0_combout\);

-- Location: FF_X23_Y22_N23
\u1|rxbuff32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector24~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(30));

-- Location: LCCOMB_X23_Y22_N30
\u2|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux35~0_combout\ = (\u2|cambio\(1) & ((\u2|cambio\(0) & (\u2|dato4\(6))) # (!\u2|cambio\(0) & ((\u1|rxbuff32\(30)))))) # (!\u2|cambio\(1) & (((\u1|rxbuff32\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(1),
	datab => \u2|dato4\(6),
	datac => \u1|rxbuff32\(30),
	datad => \u2|cambio\(0),
	combout => \u2|Mux35~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\u2|data[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[25]~7_combout\ = (\u2|state.tx_idle~q\ & (\u2|cambio\(1) & (\u2|cambio\(0)))) # (!\u2|state.tx_idle~q\ & (((\u2|cambio\(1) & \u2|cambio\(0))) # (!\u5|out_bot~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datab => \u2|cambio\(1),
	datac => \u2|cambio\(0),
	datad => \u5|out_bot~q\,
	combout => \u2|data[25]~7_combout\);

-- Location: FF_X23_Y22_N31
\u2|data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux35~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(30));

-- Location: LCCOMB_X23_Y21_N24
\u1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector32~0_combout\ = (\u1|rxbuff32\(23) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(23),
	datac => \u1|state.rx_databits~q\,
	combout => \u1|Selector32~0_combout\);

-- Location: LCCOMB_X23_Y21_N26
\u1|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector39~0_combout\ = (\u1|bit32_count\(1) & (\u1|state.rx_databits~q\ & !\u1|bit32_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(1),
	datac => \u1|state.rx_databits~q\,
	datad => \u1|bit32_count\(2),
	combout => \u1|Selector39~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\u1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector31~0_combout\ = (\u1|state.rx_databits~q\ & (\u1|bit32_count\(0) & ((\u1|Selector39~0_combout\)))) # (!\u1|state.rx_databits~q\ & ((\u1|state.stop~q\) # ((\u1|bit32_count\(0) & \u1|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|bit32_count\(0),
	datac => \u1|state.stop~q\,
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector31~0_combout\);

-- Location: FF_X23_Y21_N25
\u1|rxbuff32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector32~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(22));

-- Location: LCCOMB_X23_Y20_N16
\u2|data[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[17]~5_combout\ = (\u2|state.tx_idle~q\ & ((\u2|LessThan0~4_combout\) # ((\u2|LessThan0~2_combout\) # (!\u2|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datab => \u2|LessThan0~4_combout\,
	datac => \u2|LessThan1~1_combout\,
	datad => \u2|LessThan0~2_combout\,
	combout => \u2|data[17]~5_combout\);

-- Location: LCCOMB_X23_Y20_N10
\u2|data[17]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[17]~11_combout\ = (\u2|data[17]~5_combout\) # ((!\u2|state.tx_databits~q\ & ((\u2|state.tx_idle~q\) # (\u5|out_bot~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datab => \u2|state.tx_databits~q\,
	datac => \u5|out_bot~q\,
	datad => \u2|data[17]~5_combout\,
	combout => \u2|data[17]~11_combout\);

-- Location: LCCOMB_X23_Y20_N22
\u2|data[17]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[17]~6_combout\ = (\u2|data[17]~11_combout\ & (\u2|cambio\(1) & ((!\u2|cambio\(0))))) # (!\u2|data[17]~11_combout\ & ((\u2|cambio\(1) $ (\u2|cambio\(0))) # (!\u2|state.tx_databits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(1),
	datab => \u2|state.tx_databits~q\,
	datac => \u2|cambio\(0),
	datad => \u2|data[17]~11_combout\,
	combout => \u2|data[17]~6_combout\);

-- Location: FF_X23_Y20_N1
\u2|data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(22),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(22));

-- Location: LCCOMB_X23_Y21_N22
\u1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector33~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(22),
	combout => \u1|Selector33~0_combout\);

-- Location: FF_X23_Y21_N23
\u1|rxbuff32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector33~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(21));

-- Location: LCCOMB_X22_Y20_N8
\u1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector34~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(21),
	combout => \u1|Selector34~0_combout\);

-- Location: FF_X22_Y20_N9
\u1|rxbuff32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector34~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(20));

-- Location: LCCOMB_X22_Y20_N6
\u1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector35~0_combout\ = (\u1|rxbuff32\(20) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(20),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector35~0_combout\);

-- Location: FF_X22_Y20_N7
\u1|rxbuff32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector35~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(19));

-- Location: LCCOMB_X22_Y20_N16
\u1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector36~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(19),
	combout => \u1|Selector36~0_combout\);

-- Location: FF_X22_Y20_N17
\u1|rxbuff32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector36~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(18));

-- Location: FF_X23_Y20_N7
\u2|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(18),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(18));

-- Location: LCCOMB_X22_Y21_N0
\u1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector25~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(30),
	combout => \u1|Selector25~0_combout\);

-- Location: FF_X22_Y21_N1
\u1|rxbuff32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector25~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(29));

-- Location: LCCOMB_X22_Y21_N12
\u1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector26~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(29),
	combout => \u1|Selector26~0_combout\);

-- Location: FF_X22_Y21_N13
\u1|rxbuff32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector26~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(28));

-- Location: LCCOMB_X22_Y21_N4
\u1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector27~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(28),
	combout => \u1|Selector27~0_combout\);

-- Location: FF_X22_Y21_N5
\u1|rxbuff32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector27~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(27));

-- Location: LCCOMB_X22_Y21_N8
\u1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector28~0_combout\ = (\u1|rxbuff32\(27) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(27),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector28~0_combout\);

-- Location: FF_X22_Y21_N9
\u1|rxbuff32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector28~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(26));

-- Location: LCCOMB_X24_Y21_N4
\u2|dato4[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[2]~feeder_combout\ = \u2|data\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data\(26),
	combout => \u2|dato4[2]~feeder_combout\);

-- Location: FF_X24_Y21_N5
\u2|dato4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[2]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(2));

-- Location: LCCOMB_X24_Y21_N12
\u2|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux39~0_combout\ = (\u2|cambio\(0) & ((\u2|cambio\(1) & ((\u2|dato4\(2)))) # (!\u2|cambio\(1) & (\u1|rxbuff32\(26))))) # (!\u2|cambio\(0) & (\u1|rxbuff32\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(0),
	datab => \u1|rxbuff32\(26),
	datac => \u2|dato4\(2),
	datad => \u2|cambio\(1),
	combout => \u2|Mux39~0_combout\);

-- Location: FF_X24_Y21_N13
\u2|data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux39~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(26));

-- Location: LCCOMB_X23_Y20_N6
\u2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\u2|data_index\(2) & (\u2|data_index\(3))) # (!\u2|data_index\(2) & ((\u2|data_index\(3) & ((\u2|data\(26)))) # (!\u2|data_index\(3) & (\u2|data\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(2),
	datab => \u2|data_index\(3),
	datac => \u2|data\(18),
	datad => \u2|data\(26),
	combout => \u2|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\u2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~1_combout\ = (\u2|data_index\(2) & ((\u2|Mux0~0_combout\ & (\u2|data\(30))) # (!\u2|Mux0~0_combout\ & ((\u2|data\(22)))))) # (!\u2|data_index\(2) & (((\u2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(2),
	datab => \u2|data\(30),
	datac => \u2|data\(22),
	datad => \u2|Mux0~0_combout\,
	combout => \u2|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y21_N22
\u2|dato4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[1]~feeder_combout\ = \u2|data\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|data\(25),
	combout => \u2|dato4[1]~feeder_combout\);

-- Location: FF_X24_Y21_N23
\u2|dato4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[1]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(1));

-- Location: LCCOMB_X22_Y21_N10
\u1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector29~0_combout\ = (\u1|rxbuff32\(26) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(26),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector29~0_combout\);

-- Location: FF_X22_Y21_N11
\u1|rxbuff32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector29~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(25));

-- Location: LCCOMB_X24_Y21_N30
\u2|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux40~0_combout\ = (\u2|cambio\(0) & ((\u2|cambio\(1) & (\u2|dato4\(1))) # (!\u2|cambio\(1) & ((\u1|rxbuff32\(25)))))) # (!\u2|cambio\(0) & (((\u1|rxbuff32\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(0),
	datab => \u2|cambio\(1),
	datac => \u2|dato4\(1),
	datad => \u1|rxbuff32\(25),
	combout => \u2|Mux40~0_combout\);

-- Location: FF_X24_Y21_N31
\u2|data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux40~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(25));

-- Location: LCCOMB_X22_Y20_N4
\u1|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector37~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(18),
	combout => \u1|Selector37~0_combout\);

-- Location: FF_X22_Y20_N5
\u1|rxbuff32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector37~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(17));

-- Location: FF_X23_Y20_N27
\u2|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(17),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(17));

-- Location: LCCOMB_X23_Y20_N12
\u2|data[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[21]~feeder_combout\ = \u1|rxbuff32\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(21),
	combout => \u2|data[21]~feeder_combout\);

-- Location: FF_X23_Y20_N13
\u2|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|data[21]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(21));

-- Location: LCCOMB_X23_Y20_N26
\u2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~2_combout\ = (\u2|data_index\(2) & ((\u2|data_index\(3)) # ((\u2|data\(21))))) # (!\u2|data_index\(2) & (!\u2|data_index\(3) & (\u2|data\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(2),
	datab => \u2|data_index\(3),
	datac => \u2|data\(17),
	datad => \u2|data\(21),
	combout => \u2|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y20_N14
\u2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~3_combout\ = (\u2|data_index\(3) & ((\u2|Mux0~2_combout\ & (\u2|data\(29))) # (!\u2|Mux0~2_combout\ & ((\u2|data\(25)))))) # (!\u2|data_index\(3) & (((\u2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(29),
	datab => \u2|data\(25),
	datac => \u2|data_index\(3),
	datad => \u2|Mux0~2_combout\,
	combout => \u2|Mux0~3_combout\);

-- Location: FF_X22_Y20_N29
\u2|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(20),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(20));

-- Location: LCCOMB_X22_Y20_N12
\u1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector38~0_combout\ = (\u1|rxbuff32\(17) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(17),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector38~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\u1|rxbuff32[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|rxbuff32[16]~feeder_combout\ = \u1|Selector38~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|Selector38~0_combout\,
	combout => \u1|rxbuff32[16]~feeder_combout\);

-- Location: FF_X23_Y21_N29
\u1|rxbuff32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|rxbuff32[16]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(16));

-- Location: FF_X23_Y20_N29
\u2|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(16),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(16));

-- Location: LCCOMB_X24_Y21_N26
\u2|dato4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|dato4[0]~feeder_combout\ = \u2|data\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data\(24),
	combout => \u2|dato4[0]~feeder_combout\);

-- Location: FF_X24_Y21_N27
\u2|dato4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|dato4[0]~feeder_combout\,
	ena => \u2|dato4[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|dato4\(0));

-- Location: LCCOMB_X22_Y21_N30
\u1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector30~0_combout\ = (\u1|rxbuff32\(25) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(25),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector30~0_combout\);

-- Location: FF_X22_Y21_N31
\u1|rxbuff32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector30~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(24));

-- Location: LCCOMB_X24_Y21_N16
\u2|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux41~0_combout\ = (\u2|cambio\(0) & ((\u2|cambio\(1) & (\u2|dato4\(0))) # (!\u2|cambio\(1) & ((\u1|rxbuff32\(24)))))) # (!\u2|cambio\(0) & (((\u1|rxbuff32\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(0),
	datab => \u2|cambio\(1),
	datac => \u2|dato4\(0),
	datad => \u1|rxbuff32\(24),
	combout => \u2|Mux41~0_combout\);

-- Location: FF_X24_Y21_N17
\u2|data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Mux41~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(24));

-- Location: LCCOMB_X23_Y20_N28
\u2|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~4_combout\ = (\u2|data_index\(2) & (\u2|data_index\(3))) # (!\u2|data_index\(2) & ((\u2|data_index\(3) & ((\u2|data\(24)))) # (!\u2|data_index\(3) & (\u2|data\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(2),
	datab => \u2|data_index\(3),
	datac => \u2|data\(16),
	datad => \u2|data\(24),
	combout => \u2|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y20_N28
\u2|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~5_combout\ = (\u2|data_index\(2) & ((\u2|Mux0~4_combout\ & (\u2|data\(28))) # (!\u2|Mux0~4_combout\ & ((\u2|data\(20)))))) # (!\u2|data_index\(2) & (((\u2|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(28),
	datab => \u2|data_index\(2),
	datac => \u2|data\(20),
	datad => \u2|Mux0~4_combout\,
	combout => \u2|Mux0~5_combout\);

-- Location: LCCOMB_X22_Y20_N10
\u2|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~6_combout\ = (\u2|data_index\(0) & ((\u2|data_index\(1)) # ((\u2|Mux0~3_combout\)))) # (!\u2|data_index\(0) & (!\u2|data_index\(1) & ((\u2|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(0),
	datab => \u2|data_index\(1),
	datac => \u2|Mux0~3_combout\,
	datad => \u2|Mux0~5_combout\,
	combout => \u2|Mux0~6_combout\);

-- Location: LCCOMB_X22_Y20_N24
\u2|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~9_combout\ = (\u2|data_index\(1) & ((\u2|Mux0~6_combout\ & (\u2|Mux0~8_combout\)) # (!\u2|Mux0~6_combout\ & ((\u2|Mux0~1_combout\))))) # (!\u2|data_index\(1) & (((\u2|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mux0~8_combout\,
	datab => \u2|data_index\(1),
	datac => \u2|Mux0~1_combout\,
	datad => \u2|Mux0~6_combout\,
	combout => \u2|Mux0~9_combout\);

-- Location: LCCOMB_X24_Y22_N20
\u1|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector39~2_combout\ = (!\u1|bit32_count\(0) & (\rx_line~input_o\ & \u1|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datac => \rx_line~input_o\,
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector39~2_combout\);

-- Location: LCCOMB_X24_Y22_N4
\u1|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector39~1_combout\ = (\u1|state.rx_databits~q\ & (((!\u1|bit32_count\(0) & \u1|Selector39~0_combout\)))) # (!\u1|state.rx_databits~q\ & ((\u1|state.stop~q\) # ((!\u1|bit32_count\(0) & \u1|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|state.stop~q\,
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector39~1_combout\);

-- Location: FF_X24_Y22_N21
\u1|rxbuff32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector39~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(15));

-- Location: LCCOMB_X23_Y20_N4
\u2|data[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[8]~8_combout\ = (\u2|data[17]~11_combout\ & (!\u2|cambio\(1) & ((\u2|cambio\(0))))) # (!\u2|data[17]~11_combout\ & ((\u2|cambio\(1) $ (\u2|cambio\(0))) # (!\u2|state.tx_databits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio\(1),
	datab => \u2|state.tx_databits~q\,
	datac => \u2|cambio\(0),
	datad => \u2|data[17]~11_combout\,
	combout => \u2|data[8]~8_combout\);

-- Location: FF_X24_Y20_N15
\u2|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(15),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(15));

-- Location: LCCOMB_X24_Y22_N2
\u1|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector40~0_combout\ = (!\u1|bit32_count\(0) & (\u1|rxbuff32\(15) & \u1|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datab => \u1|rxbuff32\(15),
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector40~0_combout\);

-- Location: FF_X24_Y22_N3
\u1|rxbuff32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector40~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(14));

-- Location: LCCOMB_X24_Y22_N28
\u1|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector41~0_combout\ = (\u1|rxbuff32\(14) & (!\u1|bit32_count\(0) & \u1|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(14),
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector41~0_combout\);

-- Location: FF_X24_Y22_N29
\u1|rxbuff32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector41~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(13));

-- Location: LCCOMB_X24_Y22_N8
\u1|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector42~0_combout\ = (\u1|rxbuff32\(13) & (!\u1|bit32_count\(0) & \u1|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(13),
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector42~0_combout\);

-- Location: FF_X24_Y22_N9
\u1|rxbuff32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector42~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(12));

-- Location: FF_X24_Y22_N17
\u2|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(12),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(12));

-- Location: LCCOMB_X24_Y22_N16
\u2|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~17_combout\ = (\u2|data_index\(0) & (((\u2|data_index\(1))))) # (!\u2|data_index\(0) & ((\u2|data_index\(1) & (\u2|data\(14))) # (!\u2|data_index\(1) & ((\u2|data\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(14),
	datab => \u2|data_index\(0),
	datac => \u2|data\(12),
	datad => \u2|data_index\(1),
	combout => \u2|Mux0~17_combout\);

-- Location: LCCOMB_X24_Y22_N24
\u2|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~18_combout\ = (\u2|data_index\(0) & ((\u2|Mux0~17_combout\ & ((\u2|data\(15)))) # (!\u2|Mux0~17_combout\ & (\u2|data\(13))))) # (!\u2|data_index\(0) & (((\u2|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(13),
	datab => \u2|data_index\(0),
	datac => \u2|data\(15),
	datad => \u2|Mux0~17_combout\,
	combout => \u2|Mux0~18_combout\);

-- Location: LCCOMB_X24_Y22_N22
\u1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector43~0_combout\ = (!\u1|bit32_count\(0) & (\u1|rxbuff32\(12) & \u1|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datac => \u1|rxbuff32\(12),
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector43~0_combout\);

-- Location: FF_X24_Y22_N23
\u1|rxbuff32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector43~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(11));

-- Location: FF_X24_Y22_N1
\u2|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(11),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(11));

-- Location: LCCOMB_X24_Y22_N18
\u1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector44~0_combout\ = (!\u1|bit32_count\(0) & (\u1|rxbuff32\(11) & \u1|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datac => \u1|rxbuff32\(11),
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector44~0_combout\);

-- Location: FF_X24_Y22_N19
\u1|rxbuff32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector44~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(10));

-- Location: LCCOMB_X24_Y22_N6
\u1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector45~0_combout\ = (\u1|rxbuff32\(10) & (!\u1|bit32_count\(0) & \u1|Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(10),
	datac => \u1|bit32_count\(0),
	datad => \u1|Selector39~0_combout\,
	combout => \u1|Selector45~0_combout\);

-- Location: FF_X24_Y22_N7
\u1|rxbuff32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector45~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(9));

-- Location: LCCOMB_X24_Y22_N14
\u1|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector46~0_combout\ = (\u1|Selector39~0_combout\ & (!\u1|bit32_count\(0) & \u1|rxbuff32\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Selector39~0_combout\,
	datac => \u1|bit32_count\(0),
	datad => \u1|rxbuff32\(9),
	combout => \u1|Selector46~0_combout\);

-- Location: FF_X24_Y22_N15
\u1|rxbuff32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector46~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(8));

-- Location: FF_X24_Y22_N13
\u2|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(8),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(8));

-- Location: LCCOMB_X24_Y22_N12
\u2|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~10_combout\ = (\u2|data_index\(0) & ((\u2|data\(9)) # ((\u2|data_index\(1))))) # (!\u2|data_index\(0) & (((\u2|data\(8) & !\u2|data_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(9),
	datab => \u2|data_index\(0),
	datac => \u2|data\(8),
	datad => \u2|data_index\(1),
	combout => \u2|Mux0~10_combout\);

-- Location: LCCOMB_X24_Y22_N0
\u2|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~11_combout\ = (\u2|data_index\(1) & ((\u2|Mux0~10_combout\ & ((\u2|data\(11)))) # (!\u2|Mux0~10_combout\ & (\u2|data\(10))))) # (!\u2|data_index\(1) & (((\u2|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(10),
	datab => \u2|data_index\(1),
	datac => \u2|data\(11),
	datad => \u2|Mux0~10_combout\,
	combout => \u2|Mux0~11_combout\);

-- Location: LCCOMB_X19_Y20_N24
\u1|rxbuff32[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|rxbuff32[7]~feeder_combout\ = \u1|Selector23~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|Selector23~2_combout\,
	combout => \u1|rxbuff32[7]~feeder_combout\);

-- Location: LCCOMB_X22_Y21_N18
\u1|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector54~0_combout\ = (\u1|bit32_count\(0) & (!\u1|bit32_count\(2) & (!\u1|bit32_count\(1) & \u1|state.rx_databits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit32_count\(0),
	datab => \u1|bit32_count\(2),
	datac => \u1|bit32_count\(1),
	datad => \u1|state.rx_databits~q\,
	combout => \u1|Selector54~0_combout\);

-- Location: LCCOMB_X21_Y20_N12
\u1|Selector54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector54~1_combout\ = (\u1|Selector54~0_combout\) # ((!\u1|state.rx_databits~q\ & \u1|state.stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datab => \u1|state.stop~q\,
	datad => \u1|Selector54~0_combout\,
	combout => \u1|Selector54~1_combout\);

-- Location: FF_X19_Y20_N25
\u1|rxbuff32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|rxbuff32[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(7));

-- Location: LCCOMB_X21_Y20_N20
\u1|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector48~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datac => \u1|rxbuff32\(7),
	combout => \u1|Selector48~0_combout\);

-- Location: FF_X21_Y20_N21
\u1|rxbuff32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector48~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(6));

-- Location: LCCOMB_X21_Y20_N8
\u1|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector49~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(6),
	combout => \u1|Selector49~0_combout\);

-- Location: FF_X21_Y20_N9
\u1|rxbuff32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector49~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(5));

-- Location: LCCOMB_X21_Y20_N4
\u1|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector50~0_combout\ = (\u1|rxbuff32\(5) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(5),
	datac => \u1|state.rx_databits~q\,
	combout => \u1|Selector50~0_combout\);

-- Location: FF_X21_Y20_N5
\u1|rxbuff32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector50~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(4));

-- Location: LCCOMB_X21_Y20_N18
\u1|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector51~0_combout\ = (\u1|rxbuff32\(4) & \u1|state.rx_databits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|rxbuff32\(4),
	datac => \u1|state.rx_databits~q\,
	combout => \u1|Selector51~0_combout\);

-- Location: FF_X21_Y20_N19
\u1|rxbuff32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector51~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(3));

-- Location: LCCOMB_X21_Y20_N2
\u1|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector52~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(3),
	combout => \u1|Selector52~0_combout\);

-- Location: FF_X21_Y20_N3
\u1|rxbuff32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector52~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(2));

-- Location: LCCOMB_X21_Y20_N16
\u2|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[2]~feeder_combout\ = \u1|rxbuff32\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rxbuff32\(2),
	combout => \u2|data[2]~feeder_combout\);

-- Location: LCCOMB_X23_Y20_N18
\u2|tx_line~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tx_line~2_combout\ = (!\u2|LessThan0~4_combout\ & (!\u2|LessThan0~2_combout\ & ((\u2|LessThan1~0_combout\) # (!\u2|data_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(0),
	datab => \u2|LessThan1~0_combout\,
	datac => \u2|LessThan0~4_combout\,
	datad => \u2|LessThan0~2_combout\,
	combout => \u2|tx_line~2_combout\);

-- Location: LCCOMB_X23_Y20_N20
\u2|data[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[0]~9_combout\ = (\u2|state.tx_idle~q\ & (((!\u2|tx_line~2_combout\)) # (!\u2|state.tx_databits~q\))) # (!\u2|state.tx_idle~q\ & (!\u2|state.tx_databits~q\ & (\u5|out_bot~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_idle~q\,
	datab => \u2|state.tx_databits~q\,
	datac => \u5|out_bot~q\,
	datad => \u2|tx_line~2_combout\,
	combout => \u2|data[0]~9_combout\);

-- Location: LCCOMB_X21_Y20_N28
\u2|data[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data[0]~10_combout\ = (\u2|data[0]~9_combout\ & (((!\u2|cambio\(1) & !\u2|cambio\(0))))) # (!\u2|data[0]~9_combout\ & ((\u2|cambio\(1) $ (!\u2|cambio\(0))) # (!\u2|state.tx_databits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_databits~q\,
	datab => \u2|cambio\(1),
	datac => \u2|cambio\(0),
	datad => \u2|data[0]~9_combout\,
	combout => \u2|data[0]~10_combout\);

-- Location: FF_X21_Y20_N17
\u2|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|data[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(2));

-- Location: FF_X21_Y20_N7
\u2|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(3));

-- Location: LCCOMB_X21_Y20_N30
\u1|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector53~0_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|state.rx_databits~q\,
	datad => \u1|rxbuff32\(2),
	combout => \u1|Selector53~0_combout\);

-- Location: FF_X21_Y20_N31
\u1|rxbuff32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector53~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(1));

-- Location: LCCOMB_X21_Y20_N22
\u1|Selector54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector54~2_combout\ = (\u1|state.rx_databits~q\ & \u1|rxbuff32\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|state.rx_databits~q\,
	datac => \u1|rxbuff32\(1),
	combout => \u1|Selector54~2_combout\);

-- Location: FF_X21_Y20_N23
\u1|rxbuff32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|q[0]~clkctrl_outclk\,
	d => \u1|Selector54~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \u1|Selector54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rxbuff32\(0));

-- Location: FF_X21_Y20_N25
\u2|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(0));

-- Location: LCCOMB_X21_Y20_N24
\u2|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~14_combout\ = (\u2|data_index\(1) & (((\u2|data_index\(0))))) # (!\u2|data_index\(1) & ((\u2|data_index\(0) & (\u2|data\(1))) # (!\u2|data_index\(0) & ((\u2|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(1),
	datab => \u2|data_index\(1),
	datac => \u2|data\(0),
	datad => \u2|data_index\(0),
	combout => \u2|Mux0~14_combout\);

-- Location: LCCOMB_X21_Y20_N6
\u2|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~15_combout\ = (\u2|data_index\(1) & ((\u2|Mux0~14_combout\ & ((\u2|data\(3)))) # (!\u2|Mux0~14_combout\ & (\u2|data\(2))))) # (!\u2|data_index\(1) & (((\u2|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(1),
	datab => \u2|data\(2),
	datac => \u2|data\(3),
	datad => \u2|Mux0~14_combout\,
	combout => \u2|Mux0~15_combout\);

-- Location: FF_X21_Y20_N15
\u2|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(7),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(7));

-- Location: FF_X21_Y20_N1
\u2|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	asdata => \u1|rxbuff32\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u2|data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data\(4));

-- Location: LCCOMB_X21_Y20_N0
\u2|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~12_combout\ = (\u2|data_index\(1) & ((\u2|data\(6)) # ((\u2|data_index\(0))))) # (!\u2|data_index\(1) & (((\u2|data\(4) & !\u2|data_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(6),
	datab => \u2|data_index\(1),
	datac => \u2|data\(4),
	datad => \u2|data_index\(0),
	combout => \u2|Mux0~12_combout\);

-- Location: LCCOMB_X21_Y20_N14
\u2|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~13_combout\ = (\u2|data_index\(0) & ((\u2|Mux0~12_combout\ & ((\u2|data\(7)))) # (!\u2|Mux0~12_combout\ & (\u2|data\(5))))) # (!\u2|data_index\(0) & (((\u2|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data\(5),
	datab => \u2|data_index\(0),
	datac => \u2|data\(7),
	datad => \u2|Mux0~12_combout\,
	combout => \u2|Mux0~13_combout\);

-- Location: LCCOMB_X22_Y20_N22
\u2|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~16_combout\ = (\u2|data_index\(3) & (\u2|data_index\(2))) # (!\u2|data_index\(3) & ((\u2|data_index\(2) & ((\u2|Mux0~13_combout\))) # (!\u2|data_index\(2) & (\u2|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(3),
	datab => \u2|data_index\(2),
	datac => \u2|Mux0~15_combout\,
	datad => \u2|Mux0~13_combout\,
	combout => \u2|Mux0~16_combout\);

-- Location: LCCOMB_X23_Y20_N24
\u2|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~19_combout\ = (\u2|data_index\(3) & ((\u2|Mux0~16_combout\ & (\u2|Mux0~18_combout\)) # (!\u2|Mux0~16_combout\ & ((\u2|Mux0~11_combout\))))) # (!\u2|data_index\(3) & (((\u2|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_index\(3),
	datab => \u2|Mux0~18_combout\,
	datac => \u2|Mux0~11_combout\,
	datad => \u2|Mux0~16_combout\,
	combout => \u2|Mux0~19_combout\);

-- Location: LCCOMB_X24_Y20_N18
\u2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector0~1_combout\ = (\u2|cambio[1]~0_combout\ & ((\u2|data_index\(4) & (\u2|Mux0~9_combout\)) # (!\u2|data_index\(4) & ((\u2|Mux0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|cambio[1]~0_combout\,
	datab => \u2|data_index\(4),
	datac => \u2|Mux0~9_combout\,
	datad => \u2|Mux0~19_combout\,
	combout => \u2|Selector0~1_combout\);

-- Location: LCCOMB_X24_Y20_N24
\u2|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Selector0~2_combout\ = (\u2|state.tx_stop_bits~q\) # ((\u2|Selector0~0_combout\) # ((\u2|Selector0~1_combout\) # (!\u2|state.tx_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|state.tx_stop_bits~q\,
	datab => \u2|Selector0~0_combout\,
	datac => \u2|state.tx_idle~q\,
	datad => \u2|Selector0~1_combout\,
	combout => \u2|Selector0~2_combout\);

-- Location: FF_X24_Y20_N25
\u2|tx_line\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u4|ALT_INV_q[0]~clkctrl_outclk\,
	d => \u2|Selector0~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|tx_line~q\);

-- Location: LCCOMB_X19_Y23_N14
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

-- Location: LCCOMB_X19_Y22_N14
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

-- Location: LCCOMB_X19_Y22_N16
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

-- Location: FF_X19_Y22_N17
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

-- Location: LCCOMB_X19_Y23_N30
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

-- Location: FF_X19_Y23_N31
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

-- Location: LCCOMB_X19_Y23_N2
\u3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~1_combout\ = ((!\u3|reset_count\(7)) # (!\u3|reset_count\(8))) # (!\u3|reset_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(6),
	datac => \u3|reset_count\(8),
	datad => \u3|reset_count\(7),
	combout => \u3|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y23_N20
\u3|reset_count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[3]~24_combout\ = (\u3|reset_count\(3) & (!\u3|reset_count[2]~23\)) # (!\u3|reset_count\(3) & ((\u3|reset_count[2]~23\) # (GND)))
-- \u3|reset_count[3]~25\ = CARRY((!\u3|reset_count[2]~23\) # (!\u3|reset_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(3),
	datad => VCC,
	cin => \u3|reset_count[2]~23\,
	combout => \u3|reset_count[3]~24_combout\,
	cout => \u3|reset_count[3]~25\);

-- Location: FF_X19_Y23_N21
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

-- Location: LCCOMB_X19_Y23_N18
\u3|reset_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[2]~22_combout\ = (\u3|reset_count\(2) & (\u3|reset_count[1]~21\ $ (GND))) # (!\u3|reset_count\(2) & (!\u3|reset_count[1]~21\ & VCC))
-- \u3|reset_count[2]~23\ = CARRY((\u3|reset_count\(2) & !\u3|reset_count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(2),
	datad => VCC,
	cin => \u3|reset_count[1]~21\,
	combout => \u3|reset_count[2]~22_combout\,
	cout => \u3|reset_count[2]~23\);

-- Location: FF_X19_Y23_N19
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

-- Location: LCCOMB_X19_Y23_N4
\u3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~0_combout\ = (!\u3|reset_count\(5) & (!\u3|reset_count\(4) & ((!\u3|reset_count\(2)) # (!\u3|reset_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(5),
	datab => \u3|reset_count\(3),
	datac => \u3|reset_count\(4),
	datad => \u3|reset_count\(2),
	combout => \u3|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y22_N28
\u3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~2_combout\ = (!\u3|reset_count\(9) & ((\u3|LessThan0~1_combout\) # (\u3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(9),
	datac => \u3|LessThan0~1_combout\,
	datad => \u3|LessThan0~0_combout\,
	combout => \u3|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y22_N18
\u3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~3_combout\ = (!\u3|reset_count\(12) & (((\u3|LessThan0~2_combout\) # (!\u3|reset_count\(11))) # (!\u3|reset_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(12),
	datab => \u3|reset_count\(10),
	datac => \u3|reset_count\(11),
	datad => \u3|LessThan0~2_combout\,
	combout => \u3|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y22_N20
\u3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~4_combout\ = (!\u3|reset_count\(14) & (!\u3|reset_count\(15) & ((\u3|LessThan0~3_combout\) # (!\u3|reset_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|reset_count\(14),
	datab => \u3|reset_count\(15),
	datac => \u3|reset_count\(13),
	datad => \u3|LessThan0~3_combout\,
	combout => \u3|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y22_N26
\u3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~5_combout\ = (\u3|reset_count\(17) & (\u3|reset_count\(16) & !\u3|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(17),
	datac => \u3|reset_count\(16),
	datad => \u3|LessThan0~4_combout\,
	combout => \u3|LessThan0~5_combout\);

-- Location: FF_X19_Y23_N15
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

-- Location: LCCOMB_X19_Y23_N16
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

-- Location: FF_X19_Y23_N17
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

-- Location: LCCOMB_X19_Y23_N22
\u3|reset_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[4]~26_combout\ = (\u3|reset_count\(4) & (\u3|reset_count[3]~25\ $ (GND))) # (!\u3|reset_count\(4) & (!\u3|reset_count[3]~25\ & VCC))
-- \u3|reset_count[4]~27\ = CARRY((\u3|reset_count\(4) & !\u3|reset_count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(4),
	datad => VCC,
	cin => \u3|reset_count[3]~25\,
	combout => \u3|reset_count[4]~26_combout\,
	cout => \u3|reset_count[4]~27\);

-- Location: FF_X19_Y23_N23
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

-- Location: LCCOMB_X19_Y23_N26
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

-- Location: FF_X19_Y23_N27
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

-- Location: LCCOMB_X19_Y23_N28
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

-- Location: FF_X19_Y23_N29
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

-- Location: LCCOMB_X19_Y22_N0
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

-- Location: FF_X19_Y22_N1
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

-- Location: LCCOMB_X19_Y22_N2
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

-- Location: FF_X19_Y22_N3
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

-- Location: LCCOMB_X19_Y22_N4
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

-- Location: FF_X19_Y22_N5
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

-- Location: LCCOMB_X19_Y22_N8
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

-- Location: FF_X19_Y22_N9
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

-- Location: LCCOMB_X19_Y22_N12
\u3|reset_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|reset_count[15]~48_combout\ = (\u3|reset_count\(15) & (!\u3|reset_count[14]~47\)) # (!\u3|reset_count\(15) & ((\u3|reset_count[14]~47\) # (GND)))
-- \u3|reset_count[15]~49\ = CARRY((!\u3|reset_count[14]~47\) # (!\u3|reset_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|reset_count\(15),
	datad => VCC,
	cin => \u3|reset_count[14]~47\,
	combout => \u3|reset_count[15]~48_combout\,
	cout => \u3|reset_count[15]~49\);

-- Location: FF_X19_Y22_N13
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

-- Location: FF_X19_Y22_N15
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

-- Location: LCCOMB_X19_Y22_N24
\u3|refresh_state[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|refresh_state[0]~1_combout\ = \u3|refresh_state\(0) $ (((!\u3|LessThan0~4_combout\ & (\u3|reset_count\(16) & \u3|reset_count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~4_combout\,
	datab => \u3|reset_count\(16),
	datac => \u3|refresh_state\(0),
	datad => \u3|reset_count\(17),
	combout => \u3|refresh_state[0]~1_combout\);

-- Location: FF_X19_Y22_N25
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

-- Location: LCCOMB_X19_Y22_N30
\u3|refresh_state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|refresh_state[1]~0_combout\ = \u3|refresh_state\(1) $ (((\u3|LessThan0~5_combout\ & \u3|refresh_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~5_combout\,
	datab => \u3|refresh_state\(0),
	datac => \u3|refresh_state\(1),
	combout => \u3|refresh_state[1]~0_combout\);

-- Location: FF_X19_Y22_N31
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

-- Location: LCCOMB_X21_Y22_N28
\u3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux1~0_combout\ = (\u3|refresh_state\(1) & !\u3|refresh_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|refresh_state\(1),
	datad => \u3|refresh_state\(0),
	combout => \u3|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y22_N18
\u3|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~3_combout\ = (\u3|refresh_state\(0) & (\u3|refresh_state\(1) & \u1|rxbuff32\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|refresh_state\(0),
	datac => \u3|refresh_state\(1),
	datad => \u1|rxbuff32\(27),
	combout => \u3|Mux4~3_combout\);

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

-- Location: LCCOMB_X21_Y22_N22
\u3|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~3_combout\ = ((!\u3|refresh_state\(0) & \selector~input_o\)) # (!\u3|refresh_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|refresh_state\(0),
	datac => \u3|refresh_state\(1),
	datad => \selector~input_o\,
	combout => \u3|Mux7~3_combout\);

-- Location: LCCOMB_X19_Y20_N6
\u3|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~2_combout\ = (\u3|Mux4~1_combout\ & (((\u1|rxbuff32\(3)) # (!\selector~input_o\)))) # (!\u3|Mux4~1_combout\ & (\u1|rxbuff32\(7) & ((\selector~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~1_combout\,
	datab => \u1|rxbuff32\(7),
	datac => \u1|rxbuff32\(3),
	datad => \selector~input_o\,
	combout => \u3|Mux4~2_combout\);

-- Location: LCCOMB_X21_Y22_N0
\u3|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~4_combout\ = (\u3|Mux1~0_combout\ & (((!\u3|Mux7~3_combout\)))) # (!\u3|Mux1~0_combout\ & ((\u3|Mux7~3_combout\ & ((\u3|Mux4~2_combout\))) # (!\u3|Mux7~3_combout\ & (\u3|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux1~0_combout\,
	datab => \u3|Mux4~3_combout\,
	datac => \u3|Mux7~3_combout\,
	datad => \u3|Mux4~2_combout\,
	combout => \u3|Mux4~4_combout\);

-- Location: LCCOMB_X23_Y22_N24
\u3|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~5_combout\ = (\u3|Mux1~0_combout\ & ((\u3|Mux4~4_combout\ & ((\u1|rxbuff32\(31)))) # (!\u3|Mux4~4_combout\ & (\u1|rxbuff32\(15))))) # (!\u3|Mux1~0_combout\ & (((\u3|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(15),
	datab => \u3|Mux1~0_combout\,
	datac => \u3|Mux4~4_combout\,
	datad => \u1|rxbuff32\(31),
	combout => \u3|Mux4~5_combout\);

-- Location: LCCOMB_X23_Y22_N26
\u3|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~6_combout\ = (\u3|Mux4~0_combout\ & ((\selector~input_o\ & ((\u1|rxbuff32\(11)))) # (!\selector~input_o\ & (\u3|Mux4~5_combout\)))) # (!\u3|Mux4~0_combout\ & (\u3|Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~0_combout\,
	datab => \u3|Mux4~5_combout\,
	datac => \selector~input_o\,
	datad => \u1|rxbuff32\(11),
	combout => \u3|Mux4~6_combout\);

-- Location: LCCOMB_X21_Y22_N26
\u3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux2~0_combout\ = (!\u3|refresh_state\(1) & \u3|refresh_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|refresh_state\(1),
	datad => \u3|refresh_state\(0),
	combout => \u3|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y22_N2
\u3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~0_combout\ = (\u3|Mux2~0_combout\ & (((\selector~input_o\)))) # (!\u3|Mux2~0_combout\ & ((\selector~input_o\ & ((\u1|rxbuff32\(6)))) # (!\selector~input_o\ & (\u1|rxbuff32\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux2~0_combout\,
	datab => \u1|rxbuff32\(22),
	datac => \selector~input_o\,
	datad => \u1|rxbuff32\(6),
	combout => \u3|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y22_N28
\u3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~1_combout\ = (\u3|Mux2~0_combout\ & ((\u3|Mux5~0_combout\ & ((\u1|rxbuff32\(2)))) # (!\u3|Mux5~0_combout\ & (\u1|rxbuff32\(18))))) # (!\u3|Mux2~0_combout\ & (((\u3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(18),
	datab => \u1|rxbuff32\(2),
	datac => \u3|Mux2~0_combout\,
	datad => \u3|Mux5~0_combout\,
	combout => \u3|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y22_N10
\u3|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~2_combout\ = (\u3|refresh_state\(1) & (\u3|refresh_state\(0) & \u1|rxbuff32\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|refresh_state\(1),
	datab => \u3|refresh_state\(0),
	datac => \u1|rxbuff32\(26),
	combout => \u3|Mux5~2_combout\);

-- Location: LCCOMB_X21_Y22_N4
\u3|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~3_combout\ = (\u3|Mux7~3_combout\ & (\u3|Mux5~1_combout\ & (!\u3|Mux1~0_combout\))) # (!\u3|Mux7~3_combout\ & (((\u3|Mux1~0_combout\) # (\u3|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux7~3_combout\,
	datab => \u3|Mux5~1_combout\,
	datac => \u3|Mux1~0_combout\,
	datad => \u3|Mux5~2_combout\,
	combout => \u3|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y22_N28
\u3|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~4_combout\ = (\u3|Mux1~0_combout\ & ((\u3|Mux5~3_combout\ & (\u1|rxbuff32\(30))) # (!\u3|Mux5~3_combout\ & ((\u1|rxbuff32\(14)))))) # (!\u3|Mux1~0_combout\ & (((\u3|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(30),
	datab => \u3|Mux1~0_combout\,
	datac => \u1|rxbuff32\(14),
	datad => \u3|Mux5~3_combout\,
	combout => \u3|Mux5~4_combout\);

-- Location: LCCOMB_X19_Y22_N22
\u3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux4~0_combout\ = (\u3|refresh_state\(1) & \u3|refresh_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|refresh_state\(1),
	datad => \u3|refresh_state\(0),
	combout => \u3|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y22_N18
\u3|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux5~5_combout\ = (\selector~input_o\ & ((\u3|Mux4~0_combout\ & (\u1|rxbuff32\(10))) # (!\u3|Mux4~0_combout\ & ((\u3|Mux5~4_combout\))))) # (!\selector~input_o\ & (((\u3|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(10),
	datab => \u3|Mux5~4_combout\,
	datac => \selector~input_o\,
	datad => \u3|Mux4~0_combout\,
	combout => \u3|Mux5~5_combout\);

-- Location: LCCOMB_X21_Y22_N2
\u3|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~2_combout\ = (\u3|refresh_state\(0) & (\u3|refresh_state\(1) & \u1|rxbuff32\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|refresh_state\(0),
	datac => \u3|refresh_state\(1),
	datad => \u1|rxbuff32\(25),
	combout => \u3|Mux6~2_combout\);

-- Location: LCCOMB_X22_Y20_N18
\u3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~0_combout\ = (\u3|Mux2~0_combout\ & (((\u1|rxbuff32\(17)) # (\selector~input_o\)))) # (!\u3|Mux2~0_combout\ & (\u1|rxbuff32\(21) & ((!\selector~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(21),
	datab => \u3|Mux2~0_combout\,
	datac => \u1|rxbuff32\(17),
	datad => \selector~input_o\,
	combout => \u3|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\u3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~1_combout\ = (\u3|Mux6~0_combout\ & (((\u1|rxbuff32\(1)) # (!\selector~input_o\)))) # (!\u3|Mux6~0_combout\ & (\u1|rxbuff32\(5) & ((\selector~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(5),
	datab => \u3|Mux6~0_combout\,
	datac => \u1|rxbuff32\(1),
	datad => \selector~input_o\,
	combout => \u3|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y22_N8
\u3|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~3_combout\ = (\u3|Mux1~0_combout\ & (((!\u3|Mux7~3_combout\)))) # (!\u3|Mux1~0_combout\ & ((\u3|Mux7~3_combout\ & ((\u3|Mux6~1_combout\))) # (!\u3|Mux7~3_combout\ & (\u3|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux1~0_combout\,
	datab => \u3|Mux6~2_combout\,
	datac => \u3|Mux7~3_combout\,
	datad => \u3|Mux6~1_combout\,
	combout => \u3|Mux6~3_combout\);

-- Location: LCCOMB_X23_Y22_N2
\u3|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~4_combout\ = (\u3|Mux6~3_combout\ & ((\u1|rxbuff32\(29)) # ((!\u3|Mux1~0_combout\)))) # (!\u3|Mux6~3_combout\ & (((\u1|rxbuff32\(13) & \u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(29),
	datab => \u1|rxbuff32\(13),
	datac => \u3|Mux6~3_combout\,
	datad => \u3|Mux1~0_combout\,
	combout => \u3|Mux6~4_combout\);

-- Location: LCCOMB_X23_Y22_N8
\u3|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux6~5_combout\ = (\selector~input_o\ & ((\u3|Mux4~0_combout\ & (\u1|rxbuff32\(9))) # (!\u3|Mux4~0_combout\ & ((\u3|Mux6~4_combout\))))) # (!\selector~input_o\ & (((\u3|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|rxbuff32\(9),
	datab => \u3|Mux6~4_combout\,
	datac => \selector~input_o\,
	datad => \u3|Mux4~0_combout\,
	combout => \u3|Mux6~5_combout\);

-- Location: LCCOMB_X23_Y22_N16
\u3|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux7~6_combout\ = (\selector~input_o\ & ((\u3|Mux4~0_combout\ & ((\u1|rxbuff32\(8)))) # (!\u3|Mux4~0_combout\ & (\u3|Mux7~5_combout\)))) # (!\selector~input_o\ & (\u3|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux7~5_combout\,
	datab => \selector~input_o\,
	datac => \u1|rxbuff32\(8),
	datad => \u3|Mux4~0_combout\,
	combout => \u3|Mux7~6_combout\);

-- Location: LCCOMB_X23_Y22_N0
\u3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux14~0_combout\ = (\u3|Mux4~6_combout\ & (\u3|Mux7~6_combout\ & (\u3|Mux5~5_combout\ $ (\u3|Mux6~5_combout\)))) # (!\u3|Mux4~6_combout\ & (!\u3|Mux6~5_combout\ & (\u3|Mux5~5_combout\ $ (\u3|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux6~5_combout\,
	datad => \u3|Mux7~6_combout\,
	combout => \u3|Mux14~0_combout\);

-- Location: LCCOMB_X23_Y22_N14
\u3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux13~0_combout\ = (\u3|Mux4~6_combout\ & ((\u3|Mux7~6_combout\ & ((\u3|Mux6~5_combout\))) # (!\u3|Mux7~6_combout\ & (\u3|Mux5~5_combout\)))) # (!\u3|Mux4~6_combout\ & (\u3|Mux5~5_combout\ & (\u3|Mux6~5_combout\ $ (\u3|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux6~5_combout\,
	datad => \u3|Mux7~6_combout\,
	combout => \u3|Mux13~0_combout\);

-- Location: LCCOMB_X23_Y22_N12
\u3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux12~0_combout\ = (\u3|Mux4~6_combout\ & (\u3|Mux5~5_combout\ & ((\u3|Mux6~5_combout\) # (!\u3|Mux7~6_combout\)))) # (!\u3|Mux4~6_combout\ & (!\u3|Mux5~5_combout\ & (\u3|Mux6~5_combout\ & !\u3|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux6~5_combout\,
	datad => \u3|Mux7~6_combout\,
	combout => \u3|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y22_N6
\u3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux11~0_combout\ = (\u3|Mux7~6_combout\ & ((\u3|Mux5~5_combout\ $ (!\u3|Mux6~5_combout\)))) # (!\u3|Mux7~6_combout\ & ((\u3|Mux4~6_combout\ & (!\u3|Mux5~5_combout\ & \u3|Mux6~5_combout\)) # (!\u3|Mux4~6_combout\ & (\u3|Mux5~5_combout\ & 
-- !\u3|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux6~5_combout\,
	datad => \u3|Mux7~6_combout\,
	combout => \u3|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y22_N4
\u3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux10~0_combout\ = (\u3|Mux6~5_combout\ & (!\u3|Mux4~6_combout\ & ((\u3|Mux7~6_combout\)))) # (!\u3|Mux6~5_combout\ & ((\u3|Mux5~5_combout\ & (!\u3|Mux4~6_combout\)) # (!\u3|Mux5~5_combout\ & ((\u3|Mux7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux6~5_combout\,
	datad => \u3|Mux7~6_combout\,
	combout => \u3|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y22_N10
\u3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux9~0_combout\ = (\u3|Mux5~5_combout\ & (\u3|Mux7~6_combout\ & (\u3|Mux4~6_combout\ $ (\u3|Mux6~5_combout\)))) # (!\u3|Mux5~5_combout\ & (!\u3|Mux4~6_combout\ & ((\u3|Mux6~5_combout\) # (\u3|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux6~5_combout\,
	datad => \u3|Mux7~6_combout\,
	combout => \u3|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y22_N20
\u3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Mux8~0_combout\ = (\u3|Mux7~6_combout\ & ((\u3|Mux4~6_combout\) # (\u3|Mux5~5_combout\ $ (\u3|Mux6~5_combout\)))) # (!\u3|Mux7~6_combout\ & ((\u3|Mux6~5_combout\) # (\u3|Mux4~6_combout\ $ (\u3|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Mux4~6_combout\,
	datab => \u3|Mux5~5_combout\,
	datac => \u3|Mux6~5_combout\,
	datad => \u3|Mux7~6_combout\,
	combout => \u3|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y22_N20
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


