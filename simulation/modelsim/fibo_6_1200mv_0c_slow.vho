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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "02/16/2017 12:21:41"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fibo IS
    PORT (
	clk1 : IN std_logic;
	hbut1 : IN std_logic;
	mbut2 : IN std_logic;
	hred : OUT std_logic_vector(4 DOWNTO 0);
	mgreen : OUT std_logic_vector(4 DOWNTO 0);
	dblue : OUT std_logic_vector(4 DOWNTO 0)
	);
END fibo;

-- Design Ports Information
-- hred[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hred[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hred[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hred[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hred[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mgreen[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mgreen[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mgreen[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mgreen[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mgreen[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dblue[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dblue[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dblue[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dblue[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dblue[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbut1	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mbut2	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fibo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_hbut1 : std_logic;
SIGNAL ww_mbut2 : std_logic;
SIGNAL ww_hred : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_mgreen : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_dblue : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdiv|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \clkdiv|Add0~6_combout\ : std_logic;
SIGNAL \clkdiv|Add0~10_combout\ : std_logic;
SIGNAL \clkdiv|Add0~12_combout\ : std_logic;
SIGNAL \clkdiv|Add0~26_combout\ : std_logic;
SIGNAL \clkdiv|Add0~36_combout\ : std_logic;
SIGNAL \clkdiv|Add0~38_combout\ : std_logic;
SIGNAL \clkdiv|Add0~44_combout\ : std_logic;
SIGNAL \clkdiv|Add0~61\ : std_logic;
SIGNAL \clkdiv|Add0~62_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \sec[5]~42_combout\ : std_logic;
SIGNAL \sec[6]~44_combout\ : std_logic;
SIGNAL \sec[11]~54_combout\ : std_logic;
SIGNAL \sec[19]~70_combout\ : std_logic;
SIGNAL \sec[21]~74_combout\ : std_logic;
SIGNAL \main~0_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \WideNor1~5_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~1_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~5_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~6_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \buffmgreen~2_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \buffmgreen~3_combout\ : std_logic;
SIGNAL \buffmgreen~4_combout\ : std_logic;
SIGNAL \buffmgreen~6_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \hour[4]~5_combout\ : std_logic;
SIGNAL \hour[9]~10_combout\ : std_logic;
SIGNAL \hour[10]~11_combout\ : std_logic;
SIGNAL \hour[19]~20_combout\ : std_logic;
SIGNAL \hour[21]~22_combout\ : std_logic;
SIGNAL \hour[22]~23_combout\ : std_logic;
SIGNAL \clkdiv|count~0_combout\ : std_logic;
SIGNAL \clkdiv|count~3_combout\ : std_logic;
SIGNAL \clkdiv|count~6_combout\ : std_logic;
SIGNAL \clkdiv|count~7_combout\ : std_logic;
SIGNAL \clkdiv|count~10_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \min[4]~5_combout\ : std_logic;
SIGNAL \min[8]~9_combout\ : std_logic;
SIGNAL \min[10]~11_combout\ : std_logic;
SIGNAL \min[11]~12_combout\ : std_logic;
SIGNAL \min[14]~15_combout\ : std_logic;
SIGNAL \min[20]~21_combout\ : std_logic;
SIGNAL \min[24]~25_combout\ : std_logic;
SIGNAL \min[30]~31_combout\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \hred[0]~output_o\ : std_logic;
SIGNAL \hred[1]~output_o\ : std_logic;
SIGNAL \hred[2]~output_o\ : std_logic;
SIGNAL \hred[3]~output_o\ : std_logic;
SIGNAL \hred[4]~output_o\ : std_logic;
SIGNAL \mgreen[0]~output_o\ : std_logic;
SIGNAL \mgreen[1]~output_o\ : std_logic;
SIGNAL \mgreen[2]~output_o\ : std_logic;
SIGNAL \mgreen[3]~output_o\ : std_logic;
SIGNAL \mgreen[4]~output_o\ : std_logic;
SIGNAL \dblue[0]~output_o\ : std_logic;
SIGNAL \dblue[1]~output_o\ : std_logic;
SIGNAL \dblue[2]~output_o\ : std_logic;
SIGNAL \dblue[3]~output_o\ : std_logic;
SIGNAL \dblue[4]~output_o\ : std_logic;
SIGNAL \clkdiv|clock~0_combout\ : std_logic;
SIGNAL \clkdiv|Add0~0_combout\ : std_logic;
SIGNAL \clkdiv|count[0]~12_combout\ : std_logic;
SIGNAL \clkdiv|Add0~1\ : std_logic;
SIGNAL \clkdiv|Add0~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~3\ : std_logic;
SIGNAL \clkdiv|Add0~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~5\ : std_logic;
SIGNAL \clkdiv|Add0~7\ : std_logic;
SIGNAL \clkdiv|Add0~8_combout\ : std_logic;
SIGNAL \clkdiv|Add0~9\ : std_logic;
SIGNAL \clkdiv|Add0~11\ : std_logic;
SIGNAL \clkdiv|Add0~13\ : std_logic;
SIGNAL \clkdiv|Add0~14_combout\ : std_logic;
SIGNAL \clkdiv|Add0~15\ : std_logic;
SIGNAL \clkdiv|Add0~16_combout\ : std_logic;
SIGNAL \clkdiv|Add0~17\ : std_logic;
SIGNAL \clkdiv|Add0~18_combout\ : std_logic;
SIGNAL \clkdiv|Add0~19\ : std_logic;
SIGNAL \clkdiv|Add0~20_combout\ : std_logic;
SIGNAL \clkdiv|Add0~21\ : std_logic;
SIGNAL \clkdiv|Add0~22_combout\ : std_logic;
SIGNAL \clkdiv|count~1_combout\ : std_logic;
SIGNAL \clkdiv|Add0~23\ : std_logic;
SIGNAL \clkdiv|Add0~25\ : std_logic;
SIGNAL \clkdiv|Add0~27\ : std_logic;
SIGNAL \clkdiv|Add0~29\ : std_logic;
SIGNAL \clkdiv|Add0~31\ : std_logic;
SIGNAL \clkdiv|Add0~32_combout\ : std_logic;
SIGNAL \clkdiv|count~5_combout\ : std_logic;
SIGNAL \clkdiv|Add0~33\ : std_logic;
SIGNAL \clkdiv|Add0~34_combout\ : std_logic;
SIGNAL \clkdiv|Add0~35\ : std_logic;
SIGNAL \clkdiv|Add0~37\ : std_logic;
SIGNAL \clkdiv|Add0~39\ : std_logic;
SIGNAL \clkdiv|Add0~40_combout\ : std_logic;
SIGNAL \clkdiv|count~8_combout\ : std_logic;
SIGNAL \clkdiv|Add0~41\ : std_logic;
SIGNAL \clkdiv|Add0~42_combout\ : std_logic;
SIGNAL \clkdiv|count~9_combout\ : std_logic;
SIGNAL \clkdiv|Add0~43\ : std_logic;
SIGNAL \clkdiv|Add0~45\ : std_logic;
SIGNAL \clkdiv|Add0~46_combout\ : std_logic;
SIGNAL \clkdiv|Add0~47\ : std_logic;
SIGNAL \clkdiv|Add0~49\ : std_logic;
SIGNAL \clkdiv|Add0~50_combout\ : std_logic;
SIGNAL \clkdiv|Add0~51\ : std_logic;
SIGNAL \clkdiv|Add0~52_combout\ : std_logic;
SIGNAL \clkdiv|Add0~53\ : std_logic;
SIGNAL \clkdiv|Add0~54_combout\ : std_logic;
SIGNAL \clkdiv|Add0~48_combout\ : std_logic;
SIGNAL \clkdiv|count~11_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~8_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~0_combout\ : std_logic;
SIGNAL \clkdiv|Add0~24_combout\ : std_logic;
SIGNAL \clkdiv|count~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~30_combout\ : std_logic;
SIGNAL \clkdiv|Add0~28_combout\ : std_logic;
SIGNAL \clkdiv|count~4_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~3_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~2_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~55\ : std_logic;
SIGNAL \clkdiv|Add0~56_combout\ : std_logic;
SIGNAL \clkdiv|Add0~57\ : std_logic;
SIGNAL \clkdiv|Add0~58_combout\ : std_logic;
SIGNAL \clkdiv|Add0~59\ : std_logic;
SIGNAL \clkdiv|Add0~60_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~9_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~10_combout\ : std_logic;
SIGNAL \clkdiv|clock~q\ : std_logic;
SIGNAL \clkdiv|clk~feeder_combout\ : std_logic;
SIGNAL \clkdiv|clk~q\ : std_logic;
SIGNAL \clkdiv|clk~clkctrl_outclk\ : std_logic;
SIGNAL \hbut1~input_o\ : std_logic;
SIGNAL \hour[31]~33_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \mbut2~input_o\ : std_logic;
SIGNAL \sec[0]~32_combout\ : std_logic;
SIGNAL \sec[0]~33\ : std_logic;
SIGNAL \sec[1]~34_combout\ : std_logic;
SIGNAL \sec[1]~35\ : std_logic;
SIGNAL \sec[2]~36_combout\ : std_logic;
SIGNAL \sec[2]~37\ : std_logic;
SIGNAL \sec[3]~39\ : std_logic;
SIGNAL \sec[4]~40_combout\ : std_logic;
SIGNAL \sec[4]~41\ : std_logic;
SIGNAL \sec[5]~43\ : std_logic;
SIGNAL \sec[6]~45\ : std_logic;
SIGNAL \sec[7]~46_combout\ : std_logic;
SIGNAL \sec[7]~47\ : std_logic;
SIGNAL \sec[8]~48_combout\ : std_logic;
SIGNAL \sec[8]~49\ : std_logic;
SIGNAL \sec[9]~50_combout\ : std_logic;
SIGNAL \sec[9]~51\ : std_logic;
SIGNAL \sec[10]~52_combout\ : std_logic;
SIGNAL \sec[10]~53\ : std_logic;
SIGNAL \sec[11]~55\ : std_logic;
SIGNAL \sec[12]~56_combout\ : std_logic;
SIGNAL \sec[12]~57\ : std_logic;
SIGNAL \sec[13]~59\ : std_logic;
SIGNAL \sec[14]~60_combout\ : std_logic;
SIGNAL \sec[14]~61\ : std_logic;
SIGNAL \sec[15]~63\ : std_logic;
SIGNAL \sec[16]~64_combout\ : std_logic;
SIGNAL \sec[16]~65\ : std_logic;
SIGNAL \sec[17]~66_combout\ : std_logic;
SIGNAL \sec[17]~67\ : std_logic;
SIGNAL \sec[18]~68_combout\ : std_logic;
SIGNAL \sec[18]~69\ : std_logic;
SIGNAL \sec[19]~71\ : std_logic;
SIGNAL \sec[20]~72_combout\ : std_logic;
SIGNAL \sec[20]~73\ : std_logic;
SIGNAL \sec[21]~75\ : std_logic;
SIGNAL \sec[22]~77\ : std_logic;
SIGNAL \sec[23]~78_combout\ : std_logic;
SIGNAL \sec[23]~79\ : std_logic;
SIGNAL \sec[24]~80_combout\ : std_logic;
SIGNAL \sec[24]~81\ : std_logic;
SIGNAL \sec[25]~82_combout\ : std_logic;
SIGNAL \sec[25]~83\ : std_logic;
SIGNAL \sec[26]~84_combout\ : std_logic;
SIGNAL \sec[26]~85\ : std_logic;
SIGNAL \sec[27]~87\ : std_logic;
SIGNAL \sec[28]~88_combout\ : std_logic;
SIGNAL \sec[28]~89\ : std_logic;
SIGNAL \sec[29]~91\ : std_logic;
SIGNAL \sec[30]~92_combout\ : std_logic;
SIGNAL \sec[30]~93\ : std_logic;
SIGNAL \sec[31]~94_combout\ : std_logic;
SIGNAL \sec[3]~38_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \sec[29]~90_combout\ : std_logic;
SIGNAL \sec[22]~76_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \sec[27]~86_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \sec[15]~62_combout\ : std_logic;
SIGNAL \sec[13]~58_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \min[31]~1_combout\ : std_logic;
SIGNAL \min[28]~2_combout\ : std_logic;
SIGNAL \min[28]~29_combout\ : std_logic;
SIGNAL \min[23]~24_combout\ : std_logic;
SIGNAL \min[22]~23_combout\ : std_logic;
SIGNAL \min[21]~22_combout\ : std_logic;
SIGNAL \min[19]~20_combout\ : std_logic;
SIGNAL \min[17]~18_combout\ : std_logic;
SIGNAL \min[3]~3_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \min[5]~6_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \min[6]~7_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \min[9]~10_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \min[25]~26_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \min[29]~30_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \min[26]~27_combout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \min[27]~28_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \min[16]~17_combout\ : std_logic;
SIGNAL \min[18]~19_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \min[7]~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \min[13]~14_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \min[12]~13_combout\ : std_logic;
SIGNAL \min[15]~16_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \min~0_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \min[2]~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \hour[28]~2_combout\ : std_logic;
SIGNAL \hour[18]~19_combout\ : std_logic;
SIGNAL \hour[16]~17_combout\ : std_logic;
SIGNAL \hour[11]~12_combout\ : std_logic;
SIGNAL \hour[8]~9_combout\ : std_logic;
SIGNAL \hour[7]~8_combout\ : std_logic;
SIGNAL \hour[5]~6_combout\ : std_logic;
SIGNAL \hour[3]~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \hour[12]~13_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \hour[17]~18_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \hour[20]~21_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \hour[23]~24_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \hour[24]~25_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \hour[27]~28_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \hour[28]~29_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \hour[29]~30_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \hour[30]~31_combout\ : std_logic;
SIGNAL \Equal13~7_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \hour[25]~26_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \hour[26]~27_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \hour[6]~7_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \hour[13]~14_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \hour[14]~15_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \hour[15]~16_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Equal13~8_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \hour[0]~1_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \hour[2]~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \hour~32_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \hour~0_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \buffhred~3_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \buffhred~2_combout\ : std_logic;
SIGNAL \buffhred~4_combout\ : std_logic;
SIGNAL \WideNor1~3_combout\ : std_logic;
SIGNAL \Equal13~9_combout\ : std_logic;
SIGNAL \WideNor1~2_combout\ : std_logic;
SIGNAL \WideNor1~4_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \WideNor1~7_combout\ : std_logic;
SIGNAL \WideNor1~combout\ : std_logic;
SIGNAL \buffhred~10_combout\ : std_logic;
SIGNAL \hred[0]~0_combout\ : std_logic;
SIGNAL \hred[0]~reg0_q\ : std_logic;
SIGNAL \buffhred~5_combout\ : std_logic;
SIGNAL \hred[1]~1_combout\ : std_logic;
SIGNAL \hred[1]~reg0_q\ : std_logic;
SIGNAL \main~1_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \min~33_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \min[31]~32_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \buffmgreen~7_combout\ : std_logic;
SIGNAL \buffmgreen~8_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \WideNor0~5_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \buffmgreen~9_combout\ : std_logic;
SIGNAL \buffhred~6_combout\ : std_logic;
SIGNAL \buffhred~7_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \Equal18~1_combout\ : std_logic;
SIGNAL \buffhred~8_combout\ : std_logic;
SIGNAL \buffhred~9_combout\ : std_logic;
SIGNAL \hred[2]~2_combout\ : std_logic;
SIGNAL \hred[2]~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \hred[3]~3_combout\ : std_logic;
SIGNAL \hred[3]~reg0_q\ : std_logic;
SIGNAL \WideNor1~6_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \hred[4]~4_combout\ : std_logic;
SIGNAL \hred[4]~reg0_q\ : std_logic;
SIGNAL \buffmgreen~13_combout\ : std_logic;
SIGNAL \mgreen[0]~0_combout\ : std_logic;
SIGNAL \mgreen[0]~reg0_q\ : std_logic;
SIGNAL \buffmgreen~5_combout\ : std_logic;
SIGNAL \mgreen[1]~1_combout\ : std_logic;
SIGNAL \mgreen[1]~reg0_q\ : std_logic;
SIGNAL \mgreen[2]~2_combout\ : std_logic;
SIGNAL \mgreen[2]~reg0_q\ : std_logic;
SIGNAL \buffmgreen~10_combout\ : std_logic;
SIGNAL \buffmgreen~11_combout\ : std_logic;
SIGNAL \mgreen[3]~3_combout\ : std_logic;
SIGNAL \mgreen[3]~reg0_q\ : std_logic;
SIGNAL \buffmgreen~12_combout\ : std_logic;
SIGNAL \mgreen[4]~4_combout\ : std_logic;
SIGNAL \mgreen[4]~reg0_q\ : std_logic;
SIGNAL sec : std_logic_vector(31 DOWNTO 0);
SIGNAL min : std_logic_vector(31 DOWNTO 0);
SIGNAL hour : std_logic_vector(31 DOWNTO 0);
SIGNAL buffmgreen : std_logic_vector(4 DOWNTO 0);
SIGNAL buffhred : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkdiv|count\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk1 <= clk1;
ww_hbut1 <= hbut1;
ww_mbut2 <= mbut2;
hred <= ww_hred;
mgreen <= ww_mgreen;
dblue <= ww_dblue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);

\clkdiv|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdiv|clk~q\);

-- Location: LCCOMB_X23_Y24_N6
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (hour(3) & (!\Add1~5\)) # (!hour(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!hour(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y24_N8
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (hour(4) & (\Add1~7\ $ (GND))) # (!hour(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((hour(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y24_N10
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (hour(5) & (!\Add1~9\)) # (!hour(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!hour(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X23_Y24_N12
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (hour(6) & (\Add1~11\ $ (GND))) # (!hour(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((hour(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X23_Y24_N14
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (hour(7) & (!\Add1~13\)) # (!hour(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!hour(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X23_Y24_N16
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (hour(8) & (\Add1~15\ $ (GND))) # (!hour(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((hour(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X23_Y24_N18
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (hour(9) & (!\Add1~17\)) # (!hour(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!hour(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X23_Y24_N20
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (hour(10) & (\Add1~19\ $ (GND))) # (!hour(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((hour(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X23_Y24_N22
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (hour(11) & (!\Add1~21\)) # (!hour(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!hour(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X23_Y24_N26
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (hour(13) & (!\Add1~25\)) # (!hour(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!hour(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X23_Y23_N0
\Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (hour(16) & (\Add1~31\ $ (GND))) # (!hour(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((hour(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X23_Y23_N4
\Add1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (hour(18) & (\Add1~35\ $ (GND))) # (!hour(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((hour(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X23_Y23_N6
\Add1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (hour(19) & (!\Add1~37\)) # (!hour(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!hour(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X23_Y23_N10
\Add1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (hour(21) & (!\Add1~41\)) # (!hour(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!hour(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X23_Y23_N12
\Add1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (hour(22) & (\Add1~43\ $ (GND))) # (!hour(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((hour(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X23_Y23_N28
\Add1~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (hour(30) & (\Add1~59\ $ (GND))) # (!hour(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((hour(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X23_Y23_N30
\Add1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (hour(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => hour(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X10_Y12_N6
\clkdiv|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~6_combout\ = (\clkdiv|count\(3) & (!\clkdiv|Add0~5\)) # (!\clkdiv|count\(3) & ((\clkdiv|Add0~5\) # (GND)))
-- \clkdiv|Add0~7\ = CARRY((!\clkdiv|Add0~5\) # (!\clkdiv|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(3),
	datad => VCC,
	cin => \clkdiv|Add0~5\,
	combout => \clkdiv|Add0~6_combout\,
	cout => \clkdiv|Add0~7\);

-- Location: LCCOMB_X10_Y12_N10
\clkdiv|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~10_combout\ = (\clkdiv|count\(5) & (!\clkdiv|Add0~9\)) # (!\clkdiv|count\(5) & ((\clkdiv|Add0~9\) # (GND)))
-- \clkdiv|Add0~11\ = CARRY((!\clkdiv|Add0~9\) # (!\clkdiv|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(5),
	datad => VCC,
	cin => \clkdiv|Add0~9\,
	combout => \clkdiv|Add0~10_combout\,
	cout => \clkdiv|Add0~11\);

-- Location: LCCOMB_X10_Y12_N12
\clkdiv|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~12_combout\ = (\clkdiv|count\(6) & (\clkdiv|Add0~11\ $ (GND))) # (!\clkdiv|count\(6) & (!\clkdiv|Add0~11\ & VCC))
-- \clkdiv|Add0~13\ = CARRY((\clkdiv|count\(6) & !\clkdiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(6),
	datad => VCC,
	cin => \clkdiv|Add0~11\,
	combout => \clkdiv|Add0~12_combout\,
	cout => \clkdiv|Add0~13\);

-- Location: LCCOMB_X10_Y12_N26
\clkdiv|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~26_combout\ = (\clkdiv|count\(13) & (!\clkdiv|Add0~25\)) # (!\clkdiv|count\(13) & ((\clkdiv|Add0~25\) # (GND)))
-- \clkdiv|Add0~27\ = CARRY((!\clkdiv|Add0~25\) # (!\clkdiv|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(13),
	datad => VCC,
	cin => \clkdiv|Add0~25\,
	combout => \clkdiv|Add0~26_combout\,
	cout => \clkdiv|Add0~27\);

-- Location: LCCOMB_X10_Y11_N4
\clkdiv|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~36_combout\ = (\clkdiv|count\(18) & (\clkdiv|Add0~35\ $ (GND))) # (!\clkdiv|count\(18) & (!\clkdiv|Add0~35\ & VCC))
-- \clkdiv|Add0~37\ = CARRY((\clkdiv|count\(18) & !\clkdiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(18),
	datad => VCC,
	cin => \clkdiv|Add0~35\,
	combout => \clkdiv|Add0~36_combout\,
	cout => \clkdiv|Add0~37\);

-- Location: LCCOMB_X10_Y11_N6
\clkdiv|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~38_combout\ = (\clkdiv|count\(19) & (!\clkdiv|Add0~37\)) # (!\clkdiv|count\(19) & ((\clkdiv|Add0~37\) # (GND)))
-- \clkdiv|Add0~39\ = CARRY((!\clkdiv|Add0~37\) # (!\clkdiv|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(19),
	datad => VCC,
	cin => \clkdiv|Add0~37\,
	combout => \clkdiv|Add0~38_combout\,
	cout => \clkdiv|Add0~39\);

-- Location: LCCOMB_X10_Y11_N12
\clkdiv|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~44_combout\ = (\clkdiv|count\(22) & (\clkdiv|Add0~43\ $ (GND))) # (!\clkdiv|count\(22) & (!\clkdiv|Add0~43\ & VCC))
-- \clkdiv|Add0~45\ = CARRY((\clkdiv|count\(22) & !\clkdiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(22),
	datad => VCC,
	cin => \clkdiv|Add0~43\,
	combout => \clkdiv|Add0~44_combout\,
	cout => \clkdiv|Add0~45\);

-- Location: LCCOMB_X10_Y11_N28
\clkdiv|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~60_combout\ = (\clkdiv|count\(30) & (\clkdiv|Add0~59\ $ (GND))) # (!\clkdiv|count\(30) & (!\clkdiv|Add0~59\ & VCC))
-- \clkdiv|Add0~61\ = CARRY((\clkdiv|count\(30) & !\clkdiv|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(30),
	datad => VCC,
	cin => \clkdiv|Add0~59\,
	combout => \clkdiv|Add0~60_combout\,
	cout => \clkdiv|Add0~61\);

-- Location: LCCOMB_X10_Y11_N30
\clkdiv|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~62_combout\ = \clkdiv|count\(31) $ (\clkdiv|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(31),
	cin => \clkdiv|Add0~61\,
	combout => \clkdiv|Add0~62_combout\);

-- Location: FF_X20_Y26_N11
\sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[5]~42_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(5));

-- Location: FF_X20_Y26_N13
\sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[6]~44_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(6));

-- Location: FF_X20_Y26_N23
\sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[11]~54_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(11));

-- Location: FF_X20_Y25_N7
\sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[19]~70_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(19));

-- Location: FF_X20_Y25_N11
\sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[21]~74_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(21));

-- Location: LCCOMB_X21_Y28_N6
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (min(3) & (!\Add2~5\)) # (!min(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!min(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X21_Y28_N8
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (min(4) & (\Add2~7\ $ (GND))) # (!min(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((min(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X21_Y28_N16
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (min(8) & (\Add2~15\ $ (GND))) # (!min(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((min(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X21_Y28_N20
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (min(10) & (\Add2~19\ $ (GND))) # (!min(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((min(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X21_Y28_N22
\Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (min(11) & (!\Add2~21\)) # (!min(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!min(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X21_Y28_N26
\Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (min(13) & (!\Add2~25\)) # (!min(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!min(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X21_Y28_N28
\Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (min(14) & (\Add2~27\ $ (GND))) # (!min(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((min(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X21_Y28_N30
\Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (min(15) & (!\Add2~29\)) # (!min(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!min(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X21_Y27_N2
\Add2~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (min(17) & (!\Add2~33\)) # (!min(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!min(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X21_Y27_N4
\Add2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (min(18) & (\Add2~35\ $ (GND))) # (!min(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((min(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X21_Y27_N6
\Add2~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (min(19) & (!\Add2~37\)) # (!min(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!min(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X21_Y27_N8
\Add2~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (min(20) & (\Add2~39\ $ (GND))) # (!min(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((min(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X21_Y27_N10
\Add2~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (min(21) & (!\Add2~41\)) # (!min(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!min(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X21_Y27_N12
\Add2~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (min(22) & (\Add2~43\ $ (GND))) # (!min(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((min(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X21_Y27_N14
\Add2~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (min(23) & (!\Add2~45\)) # (!min(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!min(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X21_Y27_N16
\Add2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (min(24) & (\Add2~47\ $ (GND))) # (!min(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((min(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X21_Y27_N24
\Add2~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (min(28) & (\Add2~55\ $ (GND))) # (!min(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((min(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X21_Y27_N28
\Add2~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (min(30) & (\Add2~59\ $ (GND))) # (!min(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((min(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X20_Y26_N10
\sec[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[5]~42_combout\ = (sec(5) & (!\sec[4]~41\)) # (!sec(5) & ((\sec[4]~41\) # (GND)))
-- \sec[5]~43\ = CARRY((!\sec[4]~41\) # (!sec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datad => VCC,
	cin => \sec[4]~41\,
	combout => \sec[5]~42_combout\,
	cout => \sec[5]~43\);

-- Location: LCCOMB_X20_Y26_N12
\sec[6]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[6]~44_combout\ = (sec(6) & (\sec[5]~43\ $ (GND))) # (!sec(6) & (!\sec[5]~43\ & VCC))
-- \sec[6]~45\ = CARRY((sec(6) & !\sec[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(6),
	datad => VCC,
	cin => \sec[5]~43\,
	combout => \sec[6]~44_combout\,
	cout => \sec[6]~45\);

-- Location: LCCOMB_X20_Y26_N22
\sec[11]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[11]~54_combout\ = (sec(11) & (!\sec[10]~53\)) # (!sec(11) & ((\sec[10]~53\) # (GND)))
-- \sec[11]~55\ = CARRY((!\sec[10]~53\) # (!sec(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(11),
	datad => VCC,
	cin => \sec[10]~53\,
	combout => \sec[11]~54_combout\,
	cout => \sec[11]~55\);

-- Location: LCCOMB_X20_Y25_N6
\sec[19]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[19]~70_combout\ = (sec(19) & (!\sec[18]~69\)) # (!sec(19) & ((\sec[18]~69\) # (GND)))
-- \sec[19]~71\ = CARRY((!\sec[18]~69\) # (!sec(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(19),
	datad => VCC,
	cin => \sec[18]~69\,
	combout => \sec[19]~70_combout\,
	cout => \sec[19]~71\);

-- Location: LCCOMB_X20_Y25_N10
\sec[21]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[21]~74_combout\ = (sec(21) & (!\sec[20]~73\)) # (!sec(21) & ((\sec[20]~73\) # (GND)))
-- \sec[21]~75\ = CARRY((!\sec[20]~73\) # (!sec(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(21),
	datad => VCC,
	cin => \sec[20]~73\,
	combout => \sec[21]~74_combout\,
	cout => \sec[21]~75\);

-- Location: LCCOMB_X22_Y26_N16
\main~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main~0_combout\ = (buffmgreen(0) & buffhred(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffmgreen(0),
	datad => buffhred(0),
	combout => \main~0_combout\);

-- Location: FF_X22_Y24_N11
\hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(4));

-- Location: FF_X23_Y25_N31
\hour[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(9));

-- Location: FF_X23_Y25_N25
\hour[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(10));

-- Location: LCCOMB_X23_Y25_N20
\Equal13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (!hour(9) & (!hour(10) & (!hour(8) & !hour(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(9),
	datab => hour(10),
	datac => hour(8),
	datad => hour(11),
	combout => \Equal13~1_combout\);

-- Location: FF_X23_Y25_N7
\hour[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(19));

-- Location: FF_X22_Y23_N17
\hour[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[21]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(21));

-- Location: FF_X22_Y23_N7
\hour[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[22]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(22));

-- Location: LCCOMB_X22_Y25_N12
\Equal13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (!hour(22) & (!hour(23) & (!hour(21) & !hour(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(22),
	datab => hour(23),
	datac => hour(21),
	datad => hour(20),
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X25_Y25_N26
\WideNor1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor1~5_combout\ = (hour(3)) # ((!\Equal18~0_combout\) # (!hour(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datac => hour(0),
	datad => \Equal18~0_combout\,
	combout => \WideNor1~5_combout\);

-- Location: FF_X10_Y12_N7
\clkdiv|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(3));

-- Location: FF_X9_Y12_N13
\clkdiv|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(6));

-- Location: FF_X10_Y12_N11
\clkdiv|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(5));

-- Location: LCCOMB_X9_Y12_N10
\clkdiv|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~1_combout\ = (\clkdiv|count\(0) & (!\clkdiv|count\(5) & (!\clkdiv|count\(7) & \clkdiv|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(0),
	datab => \clkdiv|count\(5),
	datac => \clkdiv|count\(7),
	datad => \clkdiv|count\(6),
	combout => \clkdiv|Equal0~1_combout\);

-- Location: FF_X9_Y12_N27
\clkdiv|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(13));

-- Location: FF_X9_Y11_N17
\clkdiv|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(18));

-- Location: FF_X9_Y11_N15
\clkdiv|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(19));

-- Location: LCCOMB_X9_Y11_N12
\clkdiv|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~5_combout\ = (\clkdiv|count\(16) & (\clkdiv|count\(18) & (\clkdiv|count\(19) & !\clkdiv|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(16),
	datab => \clkdiv|count\(18),
	datac => \clkdiv|count\(19),
	datad => \clkdiv|count\(17),
	combout => \clkdiv|Equal0~5_combout\);

-- Location: FF_X9_Y11_N27
\clkdiv|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(22));

-- Location: LCCOMB_X9_Y11_N4
\clkdiv|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~6_combout\ = (\clkdiv|count\(20) & (!\clkdiv|count\(23) & (\clkdiv|count\(22) & \clkdiv|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(20),
	datab => \clkdiv|count\(23),
	datac => \clkdiv|count\(22),
	datad => \clkdiv|count\(21),
	combout => \clkdiv|Equal0~6_combout\);

-- Location: LCCOMB_X9_Y11_N10
\clkdiv|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~7_combout\ = (\clkdiv|Equal0~6_combout\ & \clkdiv|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~6_combout\,
	datad => \clkdiv|Equal0~5_combout\,
	combout => \clkdiv|Equal0~7_combout\);

-- Location: FF_X10_Y11_N31
\clkdiv|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(31));

-- Location: FF_X20_Y28_N13
\min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(4));

-- Location: FF_X20_Y28_N11
\min[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(8));

-- Location: FF_X20_Y28_N27
\min[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(10));

-- Location: FF_X20_Y28_N1
\min[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(11));

-- Location: LCCOMB_X20_Y28_N30
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!min(8) & (!min(11) & (!min(10) & !min(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(8),
	datab => min(11),
	datac => min(10),
	datad => min(9),
	combout => \Equal0~1_combout\);

-- Location: FF_X20_Y27_N27
\min[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(14));

-- Location: FF_X22_Y27_N3
\min[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[20]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(20));

-- Location: LCCOMB_X22_Y27_N22
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!min(21) & (!min(23) & (!min(22) & !min(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(21),
	datab => min(23),
	datac => min(22),
	datad => min(20),
	combout => \Equal0~5_combout\);

-- Location: FF_X20_Y28_N23
\min[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[24]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(24));

-- Location: FF_X20_Y27_N13
\min[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(30));

-- Location: LCCOMB_X22_Y27_N8
\buffmgreen~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~2_combout\ = (!min(3) & ((\Equal4~0_combout\) # (\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datac => \Equal4~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \buffmgreen~2_combout\);

-- Location: LCCOMB_X22_Y27_N18
\Equal8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!min(2) & (min(3) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datab => min(3),
	datad => \Equal0~8_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X22_Y27_N24
\buffmgreen~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~3_combout\ = (\Equal12~1_combout\) # ((\Equal6~0_combout\) # ((min(0) & \Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Equal12~1_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \buffmgreen~3_combout\);

-- Location: LCCOMB_X22_Y27_N6
\buffmgreen~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~4_combout\ = (!\main~0_combout\ & ((\buffmgreen~3_combout\) # ((!min(1) & \buffmgreen~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main~0_combout\,
	datab => min(1),
	datac => \buffmgreen~2_combout\,
	datad => \buffmgreen~3_combout\,
	combout => \buffmgreen~4_combout\);

-- Location: LCCOMB_X24_Y27_N4
\buffmgreen~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~6_combout\ = (buffmgreen(2) & !buffhred(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffmgreen(2),
	datad => buffhred(2),
	combout => \buffmgreen~6_combout\);

-- Location: LCCOMB_X22_Y27_N10
\Equal10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!min(2) & (min(3) & (min(1) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datab => min(3),
	datac => min(1),
	datad => \Equal0~8_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X22_Y24_N10
\hour[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[4]~5_combout\ = (\Add1~8_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(4))))) # (!\Add1~8_combout\ & (!\hour[0]~1_combout\ & (hour(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(4),
	datad => \hour[28]~2_combout\,
	combout => \hour[4]~5_combout\);

-- Location: LCCOMB_X23_Y25_N30
\hour[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[9]~10_combout\ = (\Add1~18_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(9))))) # (!\Add1~18_combout\ & (!\hour[0]~1_combout\ & (hour(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(9),
	datad => \hour[28]~2_combout\,
	combout => \hour[9]~10_combout\);

-- Location: LCCOMB_X23_Y25_N24
\hour[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[10]~11_combout\ = (\Add1~20_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(10))))) # (!\Add1~20_combout\ & (!\hour[0]~1_combout\ & (hour(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(10),
	datad => \hour[28]~2_combout\,
	combout => \hour[10]~11_combout\);

-- Location: LCCOMB_X23_Y25_N6
\hour[19]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[19]~20_combout\ = (\Add1~38_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(19))))) # (!\Add1~38_combout\ & (!\hour[0]~1_combout\ & (hour(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(19),
	datad => \hour[28]~2_combout\,
	combout => \hour[19]~20_combout\);

-- Location: LCCOMB_X22_Y23_N16
\hour[21]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[21]~22_combout\ = (\hour[28]~2_combout\ & ((\Add1~42_combout\) # ((hour(21) & !\hour[0]~1_combout\)))) # (!\hour[28]~2_combout\ & (((hour(21) & !\hour[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \Add1~42_combout\,
	datac => hour(21),
	datad => \hour[0]~1_combout\,
	combout => \hour[21]~22_combout\);

-- Location: LCCOMB_X22_Y23_N6
\hour[22]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[22]~23_combout\ = (\hour[28]~2_combout\ & ((\Add1~44_combout\) # ((hour(22) & !\hour[0]~1_combout\)))) # (!\hour[28]~2_combout\ & (((hour(22) & !\hour[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \Add1~44_combout\,
	datac => hour(22),
	datad => \hour[0]~1_combout\,
	combout => \hour[22]~23_combout\);

-- Location: LCCOMB_X9_Y12_N12
\clkdiv|count~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~0_combout\ = (\clkdiv|Add0~12_combout\ & !\clkdiv|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Add0~12_combout\,
	datac => \clkdiv|Equal0~10_combout\,
	combout => \clkdiv|count~0_combout\);

-- Location: LCCOMB_X9_Y12_N26
\clkdiv|count~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~3_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~26_combout\,
	combout => \clkdiv|count~3_combout\);

-- Location: LCCOMB_X9_Y11_N16
\clkdiv|count~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~6_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~36_combout\,
	combout => \clkdiv|count~6_combout\);

-- Location: LCCOMB_X9_Y11_N14
\clkdiv|count~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~7_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~38_combout\,
	combout => \clkdiv|count~7_combout\);

-- Location: LCCOMB_X9_Y11_N26
\clkdiv|count~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~10_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~44_combout\,
	combout => \clkdiv|count~10_combout\);

-- Location: LCCOMB_X21_Y26_N16
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!sec(12) & (!sec(10) & (!sec(11) & !sec(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(12),
	datab => sec(10),
	datac => sec(11),
	datad => sec(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y25_N26
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!sec(20) & (!sec(19) & (!sec(18) & !sec(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(20),
	datab => sec(19),
	datac => sec(18),
	datad => sec(17),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X20_Y28_N12
\min[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[4]~5_combout\ = (\min[31]~1_combout\ & (\Add2~8_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(4)) # ((\Add2~8_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~8_combout\,
	datac => min(4),
	datad => \min[28]~2_combout\,
	combout => \min[4]~5_combout\);

-- Location: LCCOMB_X20_Y28_N10
\min[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[8]~9_combout\ = (\min[31]~1_combout\ & (\Add2~16_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(8)) # ((\Add2~16_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~16_combout\,
	datac => min(8),
	datad => \min[28]~2_combout\,
	combout => \min[8]~9_combout\);

-- Location: LCCOMB_X20_Y28_N26
\min[10]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[10]~11_combout\ = (\min[31]~1_combout\ & (\Add2~20_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(10)) # ((\Add2~20_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~20_combout\,
	datac => min(10),
	datad => \min[28]~2_combout\,
	combout => \min[10]~11_combout\);

-- Location: LCCOMB_X20_Y28_N0
\min[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[11]~12_combout\ = (\min[31]~1_combout\ & (\Add2~22_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(11)) # ((\Add2~22_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~22_combout\,
	datac => min(11),
	datad => \min[28]~2_combout\,
	combout => \min[11]~12_combout\);

-- Location: LCCOMB_X20_Y27_N26
\min[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[14]~15_combout\ = (\Add2~28_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(14))))) # (!\Add2~28_combout\ & (!\min[31]~1_combout\ & (min(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \min[31]~1_combout\,
	datac => min(14),
	datad => \min[28]~2_combout\,
	combout => \min[14]~15_combout\);

-- Location: LCCOMB_X22_Y27_N2
\min[20]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[20]~21_combout\ = (\Add2~40_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(20))))) # (!\Add2~40_combout\ & (!\min[31]~1_combout\ & (min(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \min[31]~1_combout\,
	datac => min(20),
	datad => \min[28]~2_combout\,
	combout => \min[20]~21_combout\);

-- Location: LCCOMB_X20_Y28_N22
\min[24]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[24]~25_combout\ = (\min[31]~1_combout\ & (\Add2~48_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(24)) # ((\Add2~48_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~48_combout\,
	datac => min(24),
	datad => \min[28]~2_combout\,
	combout => \min[24]~25_combout\);

-- Location: LCCOMB_X20_Y27_N12
\min[30]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[30]~31_combout\ = (\min[31]~1_combout\ & (!\LessThan1~1_combout\ & ((\Add2~60_combout\)))) # (!\min[31]~1_combout\ & (((min(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \min[31]~1_combout\,
	datac => min(30),
	datad => \Add2~60_combout\,
	combout => \min[30]~31_combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G17
\clk1~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: IOOBUF_X26_Y31_N2
\hred[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hred[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hred[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\hred[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hred[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hred[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\hred[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hred[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hred[2]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\hred[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hred[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hred[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\hred[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hred[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hred[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\mgreen[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mgreen[0]~reg0_q\,
	devoe => ww_devoe,
	o => \mgreen[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\mgreen[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mgreen[1]~reg0_q\,
	devoe => ww_devoe,
	o => \mgreen[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\mgreen[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mgreen[2]~reg0_q\,
	devoe => ww_devoe,
	o => \mgreen[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\mgreen[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mgreen[3]~reg0_q\,
	devoe => ww_devoe,
	o => \mgreen[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\mgreen[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mgreen[4]~reg0_q\,
	devoe => ww_devoe,
	o => \mgreen[4]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\dblue[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dblue[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\dblue[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dblue[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\dblue[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dblue[2]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\dblue[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dblue[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\dblue[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dblue[4]~output_o\);

-- Location: LCCOMB_X9_Y11_N28
\clkdiv|clock~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|clock~0_combout\ = !\clkdiv|clock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|clock~q\,
	combout => \clkdiv|clock~0_combout\);

-- Location: LCCOMB_X10_Y12_N0
\clkdiv|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~0_combout\ = \clkdiv|count\(0) $ (GND)
-- \clkdiv|Add0~1\ = CARRY(!\clkdiv|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(0),
	datad => VCC,
	combout => \clkdiv|Add0~0_combout\,
	cout => \clkdiv|Add0~1\);

-- Location: LCCOMB_X9_Y12_N6
\clkdiv|count[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count[0]~12_combout\ = !\clkdiv|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Add0~0_combout\,
	combout => \clkdiv|count[0]~12_combout\);

-- Location: FF_X9_Y12_N7
\clkdiv|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(0));

-- Location: LCCOMB_X10_Y12_N2
\clkdiv|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~2_combout\ = (\clkdiv|count\(1) & (!\clkdiv|Add0~1\)) # (!\clkdiv|count\(1) & ((\clkdiv|Add0~1\) # (GND)))
-- \clkdiv|Add0~3\ = CARRY((!\clkdiv|Add0~1\) # (!\clkdiv|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(1),
	datad => VCC,
	cin => \clkdiv|Add0~1\,
	combout => \clkdiv|Add0~2_combout\,
	cout => \clkdiv|Add0~3\);

-- Location: FF_X10_Y12_N3
\clkdiv|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(1));

-- Location: LCCOMB_X10_Y12_N4
\clkdiv|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~4_combout\ = (\clkdiv|count\(2) & (\clkdiv|Add0~3\ $ (GND))) # (!\clkdiv|count\(2) & (!\clkdiv|Add0~3\ & VCC))
-- \clkdiv|Add0~5\ = CARRY((\clkdiv|count\(2) & !\clkdiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(2),
	datad => VCC,
	cin => \clkdiv|Add0~3\,
	combout => \clkdiv|Add0~4_combout\,
	cout => \clkdiv|Add0~5\);

-- Location: FF_X10_Y12_N5
\clkdiv|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(2));

-- Location: LCCOMB_X10_Y12_N8
\clkdiv|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~8_combout\ = (\clkdiv|count\(4) & (\clkdiv|Add0~7\ $ (GND))) # (!\clkdiv|count\(4) & (!\clkdiv|Add0~7\ & VCC))
-- \clkdiv|Add0~9\ = CARRY((\clkdiv|count\(4) & !\clkdiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(4),
	datad => VCC,
	cin => \clkdiv|Add0~7\,
	combout => \clkdiv|Add0~8_combout\,
	cout => \clkdiv|Add0~9\);

-- Location: FF_X10_Y12_N9
\clkdiv|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(4));

-- Location: LCCOMB_X10_Y12_N14
\clkdiv|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~14_combout\ = (\clkdiv|count\(7) & (!\clkdiv|Add0~13\)) # (!\clkdiv|count\(7) & ((\clkdiv|Add0~13\) # (GND)))
-- \clkdiv|Add0~15\ = CARRY((!\clkdiv|Add0~13\) # (!\clkdiv|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(7),
	datad => VCC,
	cin => \clkdiv|Add0~13\,
	combout => \clkdiv|Add0~14_combout\,
	cout => \clkdiv|Add0~15\);

-- Location: FF_X10_Y12_N15
\clkdiv|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(7));

-- Location: LCCOMB_X10_Y12_N16
\clkdiv|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~16_combout\ = (\clkdiv|count\(8) & (\clkdiv|Add0~15\ $ (GND))) # (!\clkdiv|count\(8) & (!\clkdiv|Add0~15\ & VCC))
-- \clkdiv|Add0~17\ = CARRY((\clkdiv|count\(8) & !\clkdiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(8),
	datad => VCC,
	cin => \clkdiv|Add0~15\,
	combout => \clkdiv|Add0~16_combout\,
	cout => \clkdiv|Add0~17\);

-- Location: FF_X10_Y12_N17
\clkdiv|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(8));

-- Location: LCCOMB_X10_Y12_N18
\clkdiv|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~18_combout\ = (\clkdiv|count\(9) & (!\clkdiv|Add0~17\)) # (!\clkdiv|count\(9) & ((\clkdiv|Add0~17\) # (GND)))
-- \clkdiv|Add0~19\ = CARRY((!\clkdiv|Add0~17\) # (!\clkdiv|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(9),
	datad => VCC,
	cin => \clkdiv|Add0~17\,
	combout => \clkdiv|Add0~18_combout\,
	cout => \clkdiv|Add0~19\);

-- Location: FF_X10_Y12_N19
\clkdiv|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(9));

-- Location: LCCOMB_X10_Y12_N20
\clkdiv|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~20_combout\ = (\clkdiv|count\(10) & (\clkdiv|Add0~19\ $ (GND))) # (!\clkdiv|count\(10) & (!\clkdiv|Add0~19\ & VCC))
-- \clkdiv|Add0~21\ = CARRY((\clkdiv|count\(10) & !\clkdiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(10),
	datad => VCC,
	cin => \clkdiv|Add0~19\,
	combout => \clkdiv|Add0~20_combout\,
	cout => \clkdiv|Add0~21\);

-- Location: FF_X10_Y12_N21
\clkdiv|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(10));

-- Location: LCCOMB_X10_Y12_N22
\clkdiv|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~22_combout\ = (\clkdiv|count\(11) & (!\clkdiv|Add0~21\)) # (!\clkdiv|count\(11) & ((\clkdiv|Add0~21\) # (GND)))
-- \clkdiv|Add0~23\ = CARRY((!\clkdiv|Add0~21\) # (!\clkdiv|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(11),
	datad => VCC,
	cin => \clkdiv|Add0~21\,
	combout => \clkdiv|Add0~22_combout\,
	cout => \clkdiv|Add0~23\);

-- Location: LCCOMB_X9_Y12_N24
\clkdiv|count~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~1_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~22_combout\,
	combout => \clkdiv|count~1_combout\);

-- Location: FF_X9_Y12_N25
\clkdiv|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(11));

-- Location: LCCOMB_X10_Y12_N24
\clkdiv|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~24_combout\ = (\clkdiv|count\(12) & (\clkdiv|Add0~23\ $ (GND))) # (!\clkdiv|count\(12) & (!\clkdiv|Add0~23\ & VCC))
-- \clkdiv|Add0~25\ = CARRY((\clkdiv|count\(12) & !\clkdiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(12),
	datad => VCC,
	cin => \clkdiv|Add0~23\,
	combout => \clkdiv|Add0~24_combout\,
	cout => \clkdiv|Add0~25\);

-- Location: LCCOMB_X10_Y12_N28
\clkdiv|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~28_combout\ = (\clkdiv|count\(14) & (\clkdiv|Add0~27\ $ (GND))) # (!\clkdiv|count\(14) & (!\clkdiv|Add0~27\ & VCC))
-- \clkdiv|Add0~29\ = CARRY((\clkdiv|count\(14) & !\clkdiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(14),
	datad => VCC,
	cin => \clkdiv|Add0~27\,
	combout => \clkdiv|Add0~28_combout\,
	cout => \clkdiv|Add0~29\);

-- Location: LCCOMB_X10_Y12_N30
\clkdiv|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~30_combout\ = (\clkdiv|count\(15) & (!\clkdiv|Add0~29\)) # (!\clkdiv|count\(15) & ((\clkdiv|Add0~29\) # (GND)))
-- \clkdiv|Add0~31\ = CARRY((!\clkdiv|Add0~29\) # (!\clkdiv|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(15),
	datad => VCC,
	cin => \clkdiv|Add0~29\,
	combout => \clkdiv|Add0~30_combout\,
	cout => \clkdiv|Add0~31\);

-- Location: LCCOMB_X10_Y11_N0
\clkdiv|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~32_combout\ = (\clkdiv|count\(16) & (\clkdiv|Add0~31\ $ (GND))) # (!\clkdiv|count\(16) & (!\clkdiv|Add0~31\ & VCC))
-- \clkdiv|Add0~33\ = CARRY((\clkdiv|count\(16) & !\clkdiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(16),
	datad => VCC,
	cin => \clkdiv|Add0~31\,
	combout => \clkdiv|Add0~32_combout\,
	cout => \clkdiv|Add0~33\);

-- Location: LCCOMB_X9_Y11_N6
\clkdiv|count~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~5_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~32_combout\,
	combout => \clkdiv|count~5_combout\);

-- Location: FF_X9_Y11_N7
\clkdiv|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(16));

-- Location: LCCOMB_X10_Y11_N2
\clkdiv|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~34_combout\ = (\clkdiv|count\(17) & (!\clkdiv|Add0~33\)) # (!\clkdiv|count\(17) & ((\clkdiv|Add0~33\) # (GND)))
-- \clkdiv|Add0~35\ = CARRY((!\clkdiv|Add0~33\) # (!\clkdiv|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(17),
	datad => VCC,
	cin => \clkdiv|Add0~33\,
	combout => \clkdiv|Add0~34_combout\,
	cout => \clkdiv|Add0~35\);

-- Location: FF_X10_Y11_N3
\clkdiv|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(17));

-- Location: LCCOMB_X10_Y11_N8
\clkdiv|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~40_combout\ = (\clkdiv|count\(20) & (\clkdiv|Add0~39\ $ (GND))) # (!\clkdiv|count\(20) & (!\clkdiv|Add0~39\ & VCC))
-- \clkdiv|Add0~41\ = CARRY((\clkdiv|count\(20) & !\clkdiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(20),
	datad => VCC,
	cin => \clkdiv|Add0~39\,
	combout => \clkdiv|Add0~40_combout\,
	cout => \clkdiv|Add0~41\);

-- Location: LCCOMB_X9_Y11_N22
\clkdiv|count~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~8_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~40_combout\,
	combout => \clkdiv|count~8_combout\);

-- Location: FF_X9_Y11_N23
\clkdiv|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(20));

-- Location: LCCOMB_X10_Y11_N10
\clkdiv|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~42_combout\ = (\clkdiv|count\(21) & (!\clkdiv|Add0~41\)) # (!\clkdiv|count\(21) & ((\clkdiv|Add0~41\) # (GND)))
-- \clkdiv|Add0~43\ = CARRY((!\clkdiv|Add0~41\) # (!\clkdiv|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(21),
	datad => VCC,
	cin => \clkdiv|Add0~41\,
	combout => \clkdiv|Add0~42_combout\,
	cout => \clkdiv|Add0~43\);

-- Location: LCCOMB_X9_Y11_N24
\clkdiv|count~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~9_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~42_combout\,
	combout => \clkdiv|count~9_combout\);

-- Location: FF_X9_Y11_N25
\clkdiv|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(21));

-- Location: LCCOMB_X10_Y11_N14
\clkdiv|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~46_combout\ = (\clkdiv|count\(23) & (!\clkdiv|Add0~45\)) # (!\clkdiv|count\(23) & ((\clkdiv|Add0~45\) # (GND)))
-- \clkdiv|Add0~47\ = CARRY((!\clkdiv|Add0~45\) # (!\clkdiv|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(23),
	datad => VCC,
	cin => \clkdiv|Add0~45\,
	combout => \clkdiv|Add0~46_combout\,
	cout => \clkdiv|Add0~47\);

-- Location: FF_X10_Y11_N15
\clkdiv|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(23));

-- Location: LCCOMB_X10_Y11_N16
\clkdiv|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~48_combout\ = (\clkdiv|count\(24) & (\clkdiv|Add0~47\ $ (GND))) # (!\clkdiv|count\(24) & (!\clkdiv|Add0~47\ & VCC))
-- \clkdiv|Add0~49\ = CARRY((\clkdiv|count\(24) & !\clkdiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(24),
	datad => VCC,
	cin => \clkdiv|Add0~47\,
	combout => \clkdiv|Add0~48_combout\,
	cout => \clkdiv|Add0~49\);

-- Location: LCCOMB_X10_Y11_N18
\clkdiv|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~50_combout\ = (\clkdiv|count\(25) & (!\clkdiv|Add0~49\)) # (!\clkdiv|count\(25) & ((\clkdiv|Add0~49\) # (GND)))
-- \clkdiv|Add0~51\ = CARRY((!\clkdiv|Add0~49\) # (!\clkdiv|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(25),
	datad => VCC,
	cin => \clkdiv|Add0~49\,
	combout => \clkdiv|Add0~50_combout\,
	cout => \clkdiv|Add0~51\);

-- Location: FF_X10_Y11_N19
\clkdiv|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(25));

-- Location: LCCOMB_X10_Y11_N20
\clkdiv|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~52_combout\ = (\clkdiv|count\(26) & (\clkdiv|Add0~51\ $ (GND))) # (!\clkdiv|count\(26) & (!\clkdiv|Add0~51\ & VCC))
-- \clkdiv|Add0~53\ = CARRY((\clkdiv|count\(26) & !\clkdiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(26),
	datad => VCC,
	cin => \clkdiv|Add0~51\,
	combout => \clkdiv|Add0~52_combout\,
	cout => \clkdiv|Add0~53\);

-- Location: FF_X10_Y11_N21
\clkdiv|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(26));

-- Location: LCCOMB_X10_Y11_N22
\clkdiv|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~54_combout\ = (\clkdiv|count\(27) & (!\clkdiv|Add0~53\)) # (!\clkdiv|count\(27) & ((\clkdiv|Add0~53\) # (GND)))
-- \clkdiv|Add0~55\ = CARRY((!\clkdiv|Add0~53\) # (!\clkdiv|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(27),
	datad => VCC,
	cin => \clkdiv|Add0~53\,
	combout => \clkdiv|Add0~54_combout\,
	cout => \clkdiv|Add0~55\);

-- Location: FF_X10_Y11_N23
\clkdiv|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(27));

-- Location: LCCOMB_X9_Y11_N8
\clkdiv|count~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~11_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~48_combout\,
	combout => \clkdiv|count~11_combout\);

-- Location: FF_X9_Y11_N9
\clkdiv|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(24));

-- Location: LCCOMB_X9_Y11_N18
\clkdiv|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~8_combout\ = (!\clkdiv|count\(26) & (!\clkdiv|count\(27) & (\clkdiv|count\(24) & !\clkdiv|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(26),
	datab => \clkdiv|count\(27),
	datac => \clkdiv|count\(24),
	datad => \clkdiv|count\(25),
	combout => \clkdiv|Equal0~8_combout\);

-- Location: LCCOMB_X9_Y12_N20
\clkdiv|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~0_combout\ = (!\clkdiv|count\(3) & (!\clkdiv|count\(4) & (!\clkdiv|count\(2) & !\clkdiv|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(3),
	datab => \clkdiv|count\(4),
	datac => \clkdiv|count\(2),
	datad => \clkdiv|count\(1),
	combout => \clkdiv|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y12_N8
\clkdiv|count~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~2_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~24_combout\,
	combout => \clkdiv|count~2_combout\);

-- Location: FF_X9_Y12_N9
\clkdiv|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(12));

-- Location: FF_X10_Y12_N31
\clkdiv|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(15));

-- Location: LCCOMB_X9_Y12_N0
\clkdiv|count~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|count~4_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~28_combout\,
	combout => \clkdiv|count~4_combout\);

-- Location: FF_X9_Y12_N1
\clkdiv|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(14));

-- Location: LCCOMB_X9_Y12_N30
\clkdiv|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~3_combout\ = (\clkdiv|count\(13) & (\clkdiv|count\(12) & (!\clkdiv|count\(15) & \clkdiv|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(13),
	datab => \clkdiv|count\(12),
	datac => \clkdiv|count\(15),
	datad => \clkdiv|count\(14),
	combout => \clkdiv|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y12_N18
\clkdiv|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~2_combout\ = (\clkdiv|count\(11) & (!\clkdiv|count\(9) & (!\clkdiv|count\(10) & !\clkdiv|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(11),
	datab => \clkdiv|count\(9),
	datac => \clkdiv|count\(10),
	datad => \clkdiv|count\(8),
	combout => \clkdiv|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y12_N16
\clkdiv|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~4_combout\ = (\clkdiv|Equal0~1_combout\ & (\clkdiv|Equal0~0_combout\ & (\clkdiv|Equal0~3_combout\ & \clkdiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~1_combout\,
	datab => \clkdiv|Equal0~0_combout\,
	datac => \clkdiv|Equal0~3_combout\,
	datad => \clkdiv|Equal0~2_combout\,
	combout => \clkdiv|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y11_N24
\clkdiv|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~56_combout\ = (\clkdiv|count\(28) & (\clkdiv|Add0~55\ $ (GND))) # (!\clkdiv|count\(28) & (!\clkdiv|Add0~55\ & VCC))
-- \clkdiv|Add0~57\ = CARRY((\clkdiv|count\(28) & !\clkdiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(28),
	datad => VCC,
	cin => \clkdiv|Add0~55\,
	combout => \clkdiv|Add0~56_combout\,
	cout => \clkdiv|Add0~57\);

-- Location: FF_X10_Y11_N25
\clkdiv|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(28));

-- Location: LCCOMB_X10_Y11_N26
\clkdiv|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~58_combout\ = (\clkdiv|count\(29) & (!\clkdiv|Add0~57\)) # (!\clkdiv|count\(29) & ((\clkdiv|Add0~57\) # (GND)))
-- \clkdiv|Add0~59\ = CARRY((!\clkdiv|Add0~57\) # (!\clkdiv|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(29),
	datad => VCC,
	cin => \clkdiv|Add0~57\,
	combout => \clkdiv|Add0~58_combout\,
	cout => \clkdiv|Add0~59\);

-- Location: FF_X10_Y11_N27
\clkdiv|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(29));

-- Location: FF_X10_Y11_N29
\clkdiv|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(30));

-- Location: LCCOMB_X9_Y11_N20
\clkdiv|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~9_combout\ = (!\clkdiv|count\(31) & (!\clkdiv|count\(28) & (!\clkdiv|count\(29) & !\clkdiv|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(31),
	datab => \clkdiv|count\(28),
	datac => \clkdiv|count\(29),
	datad => \clkdiv|count\(30),
	combout => \clkdiv|Equal0~9_combout\);

-- Location: LCCOMB_X9_Y11_N30
\clkdiv|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~10_combout\ = (\clkdiv|Equal0~7_combout\ & (\clkdiv|Equal0~8_combout\ & (\clkdiv|Equal0~4_combout\ & \clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~7_combout\,
	datab => \clkdiv|Equal0~8_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Equal0~9_combout\,
	combout => \clkdiv|Equal0~10_combout\);

-- Location: FF_X9_Y11_N29
\clkdiv|clock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|clock~0_combout\,
	ena => \clkdiv|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|clock~q\);

-- Location: LCCOMB_X8_Y11_N0
\clkdiv|clk~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clkdiv|clk~feeder_combout\ = \clkdiv|clock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv|clock~q\,
	combout => \clkdiv|clk~feeder_combout\);

-- Location: FF_X8_Y11_N1
\clkdiv|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \clkdiv|clk~feeder_combout\,
	ena => \clkdiv|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|clk~q\);

-- Location: CLKCTRL_G4
\clkdiv|clk~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdiv|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdiv|clk~clkctrl_outclk\);

-- Location: IOIBUF_X20_Y31_N8
\hbut1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hbut1,
	o => \hbut1~input_o\);

-- Location: LCCOMB_X22_Y23_N14
\hour[31]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[31]~33_combout\ = (\hour[0]~1_combout\ & (\Add1~62_combout\ & (!\LessThan2~1_combout\))) # (!\hour[0]~1_combout\ & (((hour(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \LessThan2~1_combout\,
	datac => hour(31),
	datad => \hour[0]~1_combout\,
	combout => \hour[31]~33_combout\);

-- Location: FF_X22_Y23_N15
\hour[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[31]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(31));

-- Location: LCCOMB_X21_Y28_N0
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = min(0) $ (VCC)
-- \Add2~1\ = CARRY(min(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y28_N2
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (min(1) & (!\Add2~1\)) # (!min(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!min(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: IOIBUF_X22_Y31_N1
\mbut2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mbut2,
	o => \mbut2~input_o\);

-- Location: LCCOMB_X20_Y26_N0
\sec[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[0]~32_combout\ = sec(0) $ (VCC)
-- \sec[0]~33\ = CARRY(sec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datad => VCC,
	combout => \sec[0]~32_combout\,
	cout => \sec[0]~33\);

-- Location: FF_X20_Y26_N1
\sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[0]~32_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(0));

-- Location: LCCOMB_X20_Y26_N2
\sec[1]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[1]~34_combout\ = (sec(1) & (!\sec[0]~33\)) # (!sec(1) & ((\sec[0]~33\) # (GND)))
-- \sec[1]~35\ = CARRY((!\sec[0]~33\) # (!sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(1),
	datad => VCC,
	cin => \sec[0]~33\,
	combout => \sec[1]~34_combout\,
	cout => \sec[1]~35\);

-- Location: FF_X20_Y26_N3
\sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[1]~34_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(1));

-- Location: LCCOMB_X20_Y26_N4
\sec[2]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[2]~36_combout\ = (sec(2) & (\sec[1]~35\ $ (GND))) # (!sec(2) & (!\sec[1]~35\ & VCC))
-- \sec[2]~37\ = CARRY((sec(2) & !\sec[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datad => VCC,
	cin => \sec[1]~35\,
	combout => \sec[2]~36_combout\,
	cout => \sec[2]~37\);

-- Location: FF_X20_Y26_N5
\sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[2]~36_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(2));

-- Location: LCCOMB_X20_Y26_N6
\sec[3]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[3]~38_combout\ = (sec(3) & (!\sec[2]~37\)) # (!sec(3) & ((\sec[2]~37\) # (GND)))
-- \sec[3]~39\ = CARRY((!\sec[2]~37\) # (!sec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datad => VCC,
	cin => \sec[2]~37\,
	combout => \sec[3]~38_combout\,
	cout => \sec[3]~39\);

-- Location: LCCOMB_X20_Y26_N8
\sec[4]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[4]~40_combout\ = (sec(4) & (\sec[3]~39\ $ (GND))) # (!sec(4) & (!\sec[3]~39\ & VCC))
-- \sec[4]~41\ = CARRY((sec(4) & !\sec[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(4),
	datad => VCC,
	cin => \sec[3]~39\,
	combout => \sec[4]~40_combout\,
	cout => \sec[4]~41\);

-- Location: FF_X20_Y26_N9
\sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[4]~40_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(4));

-- Location: LCCOMB_X20_Y26_N14
\sec[7]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[7]~46_combout\ = (sec(7) & (!\sec[6]~45\)) # (!sec(7) & ((\sec[6]~45\) # (GND)))
-- \sec[7]~47\ = CARRY((!\sec[6]~45\) # (!sec(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(7),
	datad => VCC,
	cin => \sec[6]~45\,
	combout => \sec[7]~46_combout\,
	cout => \sec[7]~47\);

-- Location: FF_X20_Y26_N15
\sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[7]~46_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(7));

-- Location: LCCOMB_X20_Y26_N16
\sec[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[8]~48_combout\ = (sec(8) & (\sec[7]~47\ $ (GND))) # (!sec(8) & (!\sec[7]~47\ & VCC))
-- \sec[8]~49\ = CARRY((sec(8) & !\sec[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(8),
	datad => VCC,
	cin => \sec[7]~47\,
	combout => \sec[8]~48_combout\,
	cout => \sec[8]~49\);

-- Location: FF_X20_Y26_N17
\sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[8]~48_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(8));

-- Location: LCCOMB_X20_Y26_N18
\sec[9]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[9]~50_combout\ = (sec(9) & (!\sec[8]~49\)) # (!sec(9) & ((\sec[8]~49\) # (GND)))
-- \sec[9]~51\ = CARRY((!\sec[8]~49\) # (!sec(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(9),
	datad => VCC,
	cin => \sec[8]~49\,
	combout => \sec[9]~50_combout\,
	cout => \sec[9]~51\);

-- Location: FF_X20_Y26_N19
\sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[9]~50_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(9));

-- Location: LCCOMB_X20_Y26_N20
\sec[10]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[10]~52_combout\ = (sec(10) & (\sec[9]~51\ $ (GND))) # (!sec(10) & (!\sec[9]~51\ & VCC))
-- \sec[10]~53\ = CARRY((sec(10) & !\sec[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(10),
	datad => VCC,
	cin => \sec[9]~51\,
	combout => \sec[10]~52_combout\,
	cout => \sec[10]~53\);

-- Location: FF_X20_Y26_N21
\sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[10]~52_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(10));

-- Location: LCCOMB_X20_Y26_N24
\sec[12]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[12]~56_combout\ = (sec(12) & (\sec[11]~55\ $ (GND))) # (!sec(12) & (!\sec[11]~55\ & VCC))
-- \sec[12]~57\ = CARRY((sec(12) & !\sec[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(12),
	datad => VCC,
	cin => \sec[11]~55\,
	combout => \sec[12]~56_combout\,
	cout => \sec[12]~57\);

-- Location: FF_X20_Y26_N25
\sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[12]~56_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(12));

-- Location: LCCOMB_X20_Y26_N26
\sec[13]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[13]~58_combout\ = (sec(13) & (!\sec[12]~57\)) # (!sec(13) & ((\sec[12]~57\) # (GND)))
-- \sec[13]~59\ = CARRY((!\sec[12]~57\) # (!sec(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(13),
	datad => VCC,
	cin => \sec[12]~57\,
	combout => \sec[13]~58_combout\,
	cout => \sec[13]~59\);

-- Location: LCCOMB_X20_Y26_N28
\sec[14]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[14]~60_combout\ = (sec(14) & (\sec[13]~59\ $ (GND))) # (!sec(14) & (!\sec[13]~59\ & VCC))
-- \sec[14]~61\ = CARRY((sec(14) & !\sec[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(14),
	datad => VCC,
	cin => \sec[13]~59\,
	combout => \sec[14]~60_combout\,
	cout => \sec[14]~61\);

-- Location: FF_X20_Y26_N29
\sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[14]~60_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(14));

-- Location: LCCOMB_X20_Y26_N30
\sec[15]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[15]~62_combout\ = (sec(15) & (!\sec[14]~61\)) # (!sec(15) & ((\sec[14]~61\) # (GND)))
-- \sec[15]~63\ = CARRY((!\sec[14]~61\) # (!sec(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(15),
	datad => VCC,
	cin => \sec[14]~61\,
	combout => \sec[15]~62_combout\,
	cout => \sec[15]~63\);

-- Location: LCCOMB_X20_Y25_N0
\sec[16]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[16]~64_combout\ = (sec(16) & (\sec[15]~63\ $ (GND))) # (!sec(16) & (!\sec[15]~63\ & VCC))
-- \sec[16]~65\ = CARRY((sec(16) & !\sec[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(16),
	datad => VCC,
	cin => \sec[15]~63\,
	combout => \sec[16]~64_combout\,
	cout => \sec[16]~65\);

-- Location: FF_X20_Y25_N1
\sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[16]~64_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(16));

-- Location: LCCOMB_X20_Y25_N2
\sec[17]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[17]~66_combout\ = (sec(17) & (!\sec[16]~65\)) # (!sec(17) & ((\sec[16]~65\) # (GND)))
-- \sec[17]~67\ = CARRY((!\sec[16]~65\) # (!sec(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(17),
	datad => VCC,
	cin => \sec[16]~65\,
	combout => \sec[17]~66_combout\,
	cout => \sec[17]~67\);

-- Location: FF_X20_Y25_N3
\sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[17]~66_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(17));

-- Location: LCCOMB_X20_Y25_N4
\sec[18]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[18]~68_combout\ = (sec(18) & (\sec[17]~67\ $ (GND))) # (!sec(18) & (!\sec[17]~67\ & VCC))
-- \sec[18]~69\ = CARRY((sec(18) & !\sec[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(18),
	datad => VCC,
	cin => \sec[17]~67\,
	combout => \sec[18]~68_combout\,
	cout => \sec[18]~69\);

-- Location: FF_X20_Y25_N5
\sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[18]~68_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(18));

-- Location: LCCOMB_X20_Y25_N8
\sec[20]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[20]~72_combout\ = (sec(20) & (\sec[19]~71\ $ (GND))) # (!sec(20) & (!\sec[19]~71\ & VCC))
-- \sec[20]~73\ = CARRY((sec(20) & !\sec[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(20),
	datad => VCC,
	cin => \sec[19]~71\,
	combout => \sec[20]~72_combout\,
	cout => \sec[20]~73\);

-- Location: FF_X20_Y25_N9
\sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[20]~72_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(20));

-- Location: LCCOMB_X20_Y25_N12
\sec[22]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[22]~76_combout\ = (sec(22) & (\sec[21]~75\ $ (GND))) # (!sec(22) & (!\sec[21]~75\ & VCC))
-- \sec[22]~77\ = CARRY((sec(22) & !\sec[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(22),
	datad => VCC,
	cin => \sec[21]~75\,
	combout => \sec[22]~76_combout\,
	cout => \sec[22]~77\);

-- Location: LCCOMB_X20_Y25_N14
\sec[23]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[23]~78_combout\ = (sec(23) & (!\sec[22]~77\)) # (!sec(23) & ((\sec[22]~77\) # (GND)))
-- \sec[23]~79\ = CARRY((!\sec[22]~77\) # (!sec(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(23),
	datad => VCC,
	cin => \sec[22]~77\,
	combout => \sec[23]~78_combout\,
	cout => \sec[23]~79\);

-- Location: FF_X20_Y25_N15
\sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[23]~78_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(23));

-- Location: LCCOMB_X20_Y25_N16
\sec[24]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[24]~80_combout\ = (sec(24) & (\sec[23]~79\ $ (GND))) # (!sec(24) & (!\sec[23]~79\ & VCC))
-- \sec[24]~81\ = CARRY((sec(24) & !\sec[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(24),
	datad => VCC,
	cin => \sec[23]~79\,
	combout => \sec[24]~80_combout\,
	cout => \sec[24]~81\);

-- Location: FF_X20_Y25_N17
\sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[24]~80_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(24));

-- Location: LCCOMB_X20_Y25_N18
\sec[25]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[25]~82_combout\ = (sec(25) & (!\sec[24]~81\)) # (!sec(25) & ((\sec[24]~81\) # (GND)))
-- \sec[25]~83\ = CARRY((!\sec[24]~81\) # (!sec(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(25),
	datad => VCC,
	cin => \sec[24]~81\,
	combout => \sec[25]~82_combout\,
	cout => \sec[25]~83\);

-- Location: FF_X20_Y25_N19
\sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[25]~82_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(25));

-- Location: LCCOMB_X20_Y25_N20
\sec[26]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[26]~84_combout\ = (sec(26) & (\sec[25]~83\ $ (GND))) # (!sec(26) & (!\sec[25]~83\ & VCC))
-- \sec[26]~85\ = CARRY((sec(26) & !\sec[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(26),
	datad => VCC,
	cin => \sec[25]~83\,
	combout => \sec[26]~84_combout\,
	cout => \sec[26]~85\);

-- Location: FF_X20_Y25_N21
\sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[26]~84_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(26));

-- Location: LCCOMB_X20_Y25_N22
\sec[27]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[27]~86_combout\ = (sec(27) & (!\sec[26]~85\)) # (!sec(27) & ((\sec[26]~85\) # (GND)))
-- \sec[27]~87\ = CARRY((!\sec[26]~85\) # (!sec(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(27),
	datad => VCC,
	cin => \sec[26]~85\,
	combout => \sec[27]~86_combout\,
	cout => \sec[27]~87\);

-- Location: LCCOMB_X20_Y25_N24
\sec[28]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[28]~88_combout\ = (sec(28) & (\sec[27]~87\ $ (GND))) # (!sec(28) & (!\sec[27]~87\ & VCC))
-- \sec[28]~89\ = CARRY((sec(28) & !\sec[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(28),
	datad => VCC,
	cin => \sec[27]~87\,
	combout => \sec[28]~88_combout\,
	cout => \sec[28]~89\);

-- Location: FF_X20_Y25_N25
\sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[28]~88_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(28));

-- Location: LCCOMB_X20_Y25_N26
\sec[29]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[29]~90_combout\ = (sec(29) & (!\sec[28]~89\)) # (!sec(29) & ((\sec[28]~89\) # (GND)))
-- \sec[29]~91\ = CARRY((!\sec[28]~89\) # (!sec(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(29),
	datad => VCC,
	cin => \sec[28]~89\,
	combout => \sec[29]~90_combout\,
	cout => \sec[29]~91\);

-- Location: LCCOMB_X20_Y25_N28
\sec[30]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[30]~92_combout\ = (sec(30) & (\sec[29]~91\ $ (GND))) # (!sec(30) & (!\sec[29]~91\ & VCC))
-- \sec[30]~93\ = CARRY((sec(30) & !\sec[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(30),
	datad => VCC,
	cin => \sec[29]~91\,
	combout => \sec[30]~92_combout\,
	cout => \sec[30]~93\);

-- Location: FF_X20_Y25_N29
\sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[30]~92_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(30));

-- Location: LCCOMB_X20_Y25_N30
\sec[31]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[31]~94_combout\ = sec(31) $ (\sec[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(31),
	cin => \sec[30]~93\,
	combout => \sec[31]~94_combout\);

-- Location: FF_X20_Y25_N31
\sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[31]~94_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(31));

-- Location: FF_X20_Y26_N7
\sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[3]~38_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(3));

-- Location: LCCOMB_X21_Y26_N0
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!sec(4) & ((!sec(2)) # (!sec(3))))) # (!sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(3),
	datac => sec(2),
	datad => sec(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y26_N6
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!sec(6) & (\LessThan0~0_combout\ & !sec(7)))) # (!sec(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(6),
	datab => \LessThan0~0_combout\,
	datac => sec(8),
	datad => sec(7),
	combout => \LessThan0~1_combout\);

-- Location: FF_X20_Y25_N27
\sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[29]~90_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(29));

-- Location: FF_X20_Y25_N13
\sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[22]~76_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(22));

-- Location: LCCOMB_X21_Y25_N16
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!sec(21) & (!sec(23) & (!sec(24) & !sec(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(21),
	datab => sec(23),
	datac => sec(24),
	datad => sec(22),
	combout => \LessThan0~5_combout\);

-- Location: FF_X20_Y25_N23
\sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[27]~86_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(27));

-- Location: LCCOMB_X19_Y25_N24
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!sec(26) & (!sec(28) & (!sec(25) & !sec(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(26),
	datab => sec(28),
	datac => sec(25),
	datad => sec(27),
	combout => \LessThan0~6_combout\);

-- Location: FF_X20_Y26_N31
\sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[15]~62_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(15));

-- Location: FF_X20_Y26_N27
\sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \sec[13]~58_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(13));

-- Location: LCCOMB_X21_Y25_N12
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!sec(16) & (!sec(15) & (!sec(14) & !sec(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(16),
	datab => sec(15),
	datac => sec(14),
	datad => sec(13),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y25_N6
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~4_combout\ & (\LessThan0~5_combout\ & (\LessThan0~6_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X21_Y25_N24
\LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!sec(30) & (!sec(29) & \LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(30),
	datac => sec(29),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X21_Y25_N10
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!sec(31) & (((!\LessThan0~8_combout\) # (!\LessThan0~1_combout\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => sec(31),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X21_Y25_N8
\min[31]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[31]~1_combout\ = (\LessThan1~1_combout\) # ((\mbut2~input_o\) # (\LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datac => \mbut2~input_o\,
	datad => \LessThan0~9_combout\,
	combout => \min[31]~1_combout\);

-- Location: LCCOMB_X21_Y25_N2
\min[28]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[28]~2_combout\ = (!\LessThan1~1_combout\ & ((\mbut2~input_o\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datac => \mbut2~input_o\,
	datad => \LessThan0~9_combout\,
	combout => \min[28]~2_combout\);

-- Location: LCCOMB_X20_Y27_N20
\min[28]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[28]~29_combout\ = (\Add2~56_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(28))))) # (!\Add2~56_combout\ & (!\min[31]~1_combout\ & (min(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \min[31]~1_combout\,
	datac => min(28),
	datad => \min[28]~2_combout\,
	combout => \min[28]~29_combout\);

-- Location: FF_X20_Y27_N21
\min[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(28));

-- Location: LCCOMB_X22_Y27_N28
\min[23]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[23]~24_combout\ = (\Add2~46_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(23))))) # (!\Add2~46_combout\ & (!\min[31]~1_combout\ & (min(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \min[31]~1_combout\,
	datac => min(23),
	datad => \min[28]~2_combout\,
	combout => \min[23]~24_combout\);

-- Location: FF_X22_Y27_N29
\min[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(23));

-- Location: LCCOMB_X22_Y27_N26
\min[22]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[22]~23_combout\ = (\Add2~44_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(22))))) # (!\Add2~44_combout\ & (!\min[31]~1_combout\ & (min(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \min[31]~1_combout\,
	datac => min(22),
	datad => \min[28]~2_combout\,
	combout => \min[22]~23_combout\);

-- Location: FF_X22_Y27_N27
\min[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[22]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(22));

-- Location: LCCOMB_X22_Y27_N12
\min[21]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[21]~22_combout\ = (\Add2~42_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(21))))) # (!\Add2~42_combout\ & (!\min[31]~1_combout\ & (min(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \min[31]~1_combout\,
	datac => min(21),
	datad => \min[28]~2_combout\,
	combout => \min[21]~22_combout\);

-- Location: FF_X22_Y27_N13
\min[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[21]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(21));

-- Location: LCCOMB_X20_Y27_N22
\min[19]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[19]~20_combout\ = (\Add2~38_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(19))))) # (!\Add2~38_combout\ & (!\min[31]~1_combout\ & (min(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \min[31]~1_combout\,
	datac => min(19),
	datad => \min[28]~2_combout\,
	combout => \min[19]~20_combout\);

-- Location: FF_X20_Y27_N23
\min[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(19));

-- Location: LCCOMB_X20_Y27_N18
\min[17]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[17]~18_combout\ = (\Add2~34_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(17))))) # (!\Add2~34_combout\ & (!\min[31]~1_combout\ & (min(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \min[31]~1_combout\,
	datac => min(17),
	datad => \min[28]~2_combout\,
	combout => \min[17]~18_combout\);

-- Location: FF_X20_Y27_N19
\min[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(17));

-- Location: LCCOMB_X22_Y27_N0
\min[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[3]~3_combout\ = (\Add2~6_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(3))))) # (!\Add2~6_combout\ & (!\min[31]~1_combout\ & (min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \min[31]~1_combout\,
	datac => min(3),
	datad => \min[28]~2_combout\,
	combout => \min[3]~3_combout\);

-- Location: FF_X22_Y27_N1
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: LCCOMB_X21_Y28_N4
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (min(2) & (\Add2~3\ $ (GND))) # (!min(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((min(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X21_Y28_N10
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (min(5) & (!\Add2~9\)) # (!min(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!min(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X20_Y28_N18
\min[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[5]~6_combout\ = (\min[31]~1_combout\ & (\Add2~10_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(5)) # ((\Add2~10_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~10_combout\,
	datac => min(5),
	datad => \min[28]~2_combout\,
	combout => \min[5]~6_combout\);

-- Location: FF_X20_Y28_N19
\min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(5));

-- Location: LCCOMB_X21_Y28_N12
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (min(6) & (\Add2~11\ $ (GND))) # (!min(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((min(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X20_Y28_N4
\min[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[6]~7_combout\ = (\min[31]~1_combout\ & (\Add2~12_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(6)) # ((\Add2~12_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~12_combout\,
	datac => min(6),
	datad => \min[28]~2_combout\,
	combout => \min[6]~7_combout\);

-- Location: FF_X20_Y28_N5
\min[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(6));

-- Location: LCCOMB_X21_Y28_N14
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (min(7) & (!\Add2~13\)) # (!min(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!min(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X21_Y28_N18
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (min(9) & (!\Add2~17\)) # (!min(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!min(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X20_Y28_N28
\min[9]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[9]~10_combout\ = (\min[31]~1_combout\ & (\Add2~18_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(9)) # ((\Add2~18_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~18_combout\,
	datac => min(9),
	datad => \min[28]~2_combout\,
	combout => \min[9]~10_combout\);

-- Location: FF_X20_Y28_N29
\min[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(9));

-- Location: LCCOMB_X21_Y28_N24
\Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (min(12) & (\Add2~23\ $ (GND))) # (!min(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((min(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X21_Y27_N0
\Add2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (min(16) & (\Add2~31\ $ (GND))) # (!min(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((min(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X21_Y27_N18
\Add2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (min(25) & (!\Add2~49\)) # (!min(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!min(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X20_Y28_N20
\min[25]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[25]~26_combout\ = (\min[31]~1_combout\ & (\Add2~50_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(25)) # ((\Add2~50_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~50_combout\,
	datac => min(25),
	datad => \min[28]~2_combout\,
	combout => \min[25]~26_combout\);

-- Location: FF_X20_Y28_N21
\min[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[25]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(25));

-- Location: LCCOMB_X21_Y27_N20
\Add2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (min(26) & (\Add2~51\ $ (GND))) # (!min(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((min(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X21_Y27_N22
\Add2~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (min(27) & (!\Add2~53\)) # (!min(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!min(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X21_Y27_N26
\Add2~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (min(29) & (!\Add2~57\)) # (!min(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!min(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X20_Y27_N14
\min[29]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[29]~30_combout\ = (\min[31]~1_combout\ & (!\LessThan1~1_combout\ & ((\Add2~58_combout\)))) # (!\min[31]~1_combout\ & (((min(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \min[31]~1_combout\,
	datac => min(29),
	datad => \Add2~58_combout\,
	combout => \min[29]~30_combout\);

-- Location: FF_X20_Y27_N15
\min[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[29]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(29));

-- Location: LCCOMB_X20_Y28_N14
\min[26]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[26]~27_combout\ = (\min[28]~2_combout\ & ((\Add2~52_combout\) # ((!\min[31]~1_combout\ & min(26))))) # (!\min[28]~2_combout\ & (!\min[31]~1_combout\ & (min(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[28]~2_combout\,
	datab => \min[31]~1_combout\,
	datac => min(26),
	datad => \Add2~52_combout\,
	combout => \min[26]~27_combout\);

-- Location: FF_X20_Y28_N15
\min[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[26]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(26));

-- Location: LCCOMB_X20_Y28_N24
\min[27]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[27]~28_combout\ = (\min[28]~2_combout\ & ((\Add2~54_combout\) # ((!\min[31]~1_combout\ & min(27))))) # (!\min[28]~2_combout\ & (!\min[31]~1_combout\ & (min(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[28]~2_combout\,
	datab => \min[31]~1_combout\,
	datac => min(27),
	datad => \Add2~54_combout\,
	combout => \min[27]~28_combout\);

-- Location: FF_X20_Y28_N25
\min[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[27]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(27));

-- Location: LCCOMB_X20_Y28_N6
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!min(24) & (!min(25) & (!min(26) & !min(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(24),
	datab => min(25),
	datac => min(26),
	datad => min(27),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X20_Y27_N30
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!min(30) & (!min(28) & (!min(29) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(30),
	datab => min(28),
	datac => min(29),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X20_Y27_N16
\min[16]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[16]~17_combout\ = (\min[31]~1_combout\ & (\Add2~32_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(16)) # ((\Add2~32_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~32_combout\,
	datac => min(16),
	datad => \min[28]~2_combout\,
	combout => \min[16]~17_combout\);

-- Location: FF_X20_Y27_N17
\min[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[16]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(16));

-- Location: LCCOMB_X20_Y27_N8
\min[18]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[18]~19_combout\ = (\Add2~36_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(18))))) # (!\Add2~36_combout\ & (!\min[31]~1_combout\ & (min(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~36_combout\,
	datab => \min[31]~1_combout\,
	datac => min(18),
	datad => \min[28]~2_combout\,
	combout => \min[18]~19_combout\);

-- Location: FF_X20_Y27_N9
\min[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(18));

-- Location: LCCOMB_X20_Y27_N4
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!min(19) & (!min(16) & (!min(18) & !min(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(19),
	datab => min(16),
	datac => min(18),
	datad => min(17),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X20_Y28_N2
\min[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[7]~8_combout\ = (\min[31]~1_combout\ & (\Add2~14_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(7)) # ((\Add2~14_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~14_combout\,
	datac => min(7),
	datad => \min[28]~2_combout\,
	combout => \min[7]~8_combout\);

-- Location: FF_X20_Y28_N3
\min[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(7));

-- Location: LCCOMB_X20_Y28_N8
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!min(4) & (!min(7) & (!min(6) & !min(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(7),
	datac => min(6),
	datad => min(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X20_Y27_N24
\min[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[13]~14_combout\ = (\Add2~26_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(13))))) # (!\Add2~26_combout\ & (!\min[31]~1_combout\ & (min(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \min[31]~1_combout\,
	datac => min(13),
	datad => \min[28]~2_combout\,
	combout => \min[13]~14_combout\);

-- Location: FF_X20_Y27_N25
\min[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[13]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(13));

-- Location: LCCOMB_X20_Y28_N16
\min[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[12]~13_combout\ = (\min[31]~1_combout\ & (\Add2~24_combout\ & ((\min[28]~2_combout\)))) # (!\min[31]~1_combout\ & ((min(12)) # ((\Add2~24_combout\ & \min[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \Add2~24_combout\,
	datac => min(12),
	datad => \min[28]~2_combout\,
	combout => \min[12]~13_combout\);

-- Location: FF_X20_Y28_N17
\min[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(12));

-- Location: LCCOMB_X20_Y27_N0
\min[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[15]~16_combout\ = (\Add2~30_combout\ & ((\min[28]~2_combout\) # ((!\min[31]~1_combout\ & min(15))))) # (!\Add2~30_combout\ & (!\min[31]~1_combout\ & (min(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \min[31]~1_combout\,
	datac => min(15),
	datad => \min[28]~2_combout\,
	combout => \min[15]~16_combout\);

-- Location: FF_X20_Y27_N1
\min[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(15));

-- Location: LCCOMB_X20_Y27_N10
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!min(14) & (!min(13) & (!min(12) & !min(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(14),
	datab => min(13),
	datac => min(12),
	datad => min(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y27_N2
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X20_Y27_N6
\Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X21_Y25_N0
\min~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~0_combout\ = (\Add2~2_combout\ & ((min(31)) # ((!\LessThan1~0_combout\ & \Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(31),
	datab => \LessThan1~0_combout\,
	datac => \Add2~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \min~0_combout\);

-- Location: FF_X21_Y25_N1
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min~0_combout\,
	ena => \min[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LCCOMB_X22_Y28_N20
\min[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[2]~4_combout\ = (\min[28]~2_combout\ & ((\Add2~4_combout\) # ((min(2) & !\min[31]~1_combout\)))) # (!\min[28]~2_combout\ & (((min(2) & !\min[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[28]~2_combout\,
	datab => \Add2~4_combout\,
	datac => min(2),
	datad => \min[31]~1_combout\,
	combout => \min[2]~4_combout\);

-- Location: FF_X22_Y28_N21
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X21_Y25_N4
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (min(3) & (min(2) & ((min(0)) # (min(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => min(1),
	datac => min(3),
	datad => min(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y25_N18
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!min(31) & ((\LessThan1~0_combout\) # (!\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(31),
	datac => \LessThan1~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y25_N14
\hour[28]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[28]~2_combout\ = (!\LessThan2~1_combout\ & ((\hbut1~input_o\) # (\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hbut1~input_o\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan1~1_combout\,
	combout => \hour[28]~2_combout\);

-- Location: LCCOMB_X23_Y25_N0
\hour[18]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[18]~19_combout\ = (\Add1~36_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(18))))) # (!\Add1~36_combout\ & (!\hour[0]~1_combout\ & (hour(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(18),
	datad => \hour[28]~2_combout\,
	combout => \hour[18]~19_combout\);

-- Location: FF_X23_Y25_N1
\hour[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(18));

-- Location: LCCOMB_X23_Y25_N16
\hour[16]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[16]~17_combout\ = (\Add1~32_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(16))))) # (!\Add1~32_combout\ & (!\hour[0]~1_combout\ & (hour(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(16),
	datad => \hour[28]~2_combout\,
	combout => \hour[16]~17_combout\);

-- Location: FF_X23_Y25_N17
\hour[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[16]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(16));

-- Location: LCCOMB_X23_Y25_N10
\hour[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[11]~12_combout\ = (\Add1~22_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(11))))) # (!\Add1~22_combout\ & (!\hour[0]~1_combout\ & (hour(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(11),
	datad => \hour[28]~2_combout\,
	combout => \hour[11]~12_combout\);

-- Location: FF_X23_Y25_N11
\hour[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(11));

-- Location: LCCOMB_X23_Y25_N4
\hour[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[8]~9_combout\ = (\Add1~16_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(8))))) # (!\Add1~16_combout\ & (!\hour[0]~1_combout\ & (hour(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(8),
	datad => \hour[28]~2_combout\,
	combout => \hour[8]~9_combout\);

-- Location: FF_X23_Y25_N5
\hour[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(8));

-- Location: LCCOMB_X22_Y24_N28
\hour[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[7]~8_combout\ = (\Add1~14_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(7))))) # (!\Add1~14_combout\ & (!\hour[0]~1_combout\ & (hour(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(7),
	datad => \hour[28]~2_combout\,
	combout => \hour[7]~8_combout\);

-- Location: FF_X22_Y24_N29
\hour[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(7));

-- Location: LCCOMB_X22_Y24_N4
\hour[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[5]~6_combout\ = (\Add1~10_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(5))))) # (!\Add1~10_combout\ & (!\hour[0]~1_combout\ & (hour(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(5),
	datad => \hour[28]~2_combout\,
	combout => \hour[5]~6_combout\);

-- Location: FF_X22_Y24_N5
\hour[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(5));

-- Location: LCCOMB_X22_Y24_N6
\hour[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[3]~3_combout\ = (\Add1~6_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(3))))) # (!\Add1~6_combout\ & (!\hour[0]~1_combout\ & (hour(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(3),
	datad => \hour[28]~2_combout\,
	combout => \hour[3]~3_combout\);

-- Location: FF_X22_Y24_N7
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LCCOMB_X23_Y24_N0
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = hour(0) $ (VCC)
-- \Add1~1\ = CARRY(hour(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X23_Y24_N2
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (hour(1) & (!\Add1~1\)) # (!hour(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!hour(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X23_Y24_N4
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (hour(2) & (\Add1~3\ $ (GND))) # (!hour(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((hour(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X23_Y24_N24
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (hour(12) & (\Add1~23\ $ (GND))) # (!hour(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((hour(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X23_Y25_N22
\hour[12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[12]~13_combout\ = (\hour[0]~1_combout\ & (\Add1~24_combout\ & ((\hour[28]~2_combout\)))) # (!\hour[0]~1_combout\ & ((hour(12)) # ((\Add1~24_combout\ & \hour[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[0]~1_combout\,
	datab => \Add1~24_combout\,
	datac => hour(12),
	datad => \hour[28]~2_combout\,
	combout => \hour[12]~13_combout\);

-- Location: FF_X23_Y25_N23
\hour[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(12));

-- Location: LCCOMB_X23_Y24_N28
\Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (hour(14) & (\Add1~27\ $ (GND))) # (!hour(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((hour(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X23_Y24_N30
\Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (hour(15) & (!\Add1~29\)) # (!hour(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!hour(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X23_Y23_N2
\Add1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (hour(17) & (!\Add1~33\)) # (!hour(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!hour(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X23_Y25_N14
\hour[17]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[17]~18_combout\ = (\hour[28]~2_combout\ & ((\Add1~34_combout\) # ((!\hour[0]~1_combout\ & hour(17))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(17),
	datad => \Add1~34_combout\,
	combout => \hour[17]~18_combout\);

-- Location: FF_X23_Y25_N15
\hour[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(17));

-- Location: LCCOMB_X23_Y23_N8
\Add1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (hour(20) & (\Add1~39\ $ (GND))) # (!hour(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((hour(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X22_Y25_N20
\hour[20]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[20]~21_combout\ = (\hour[28]~2_combout\ & ((\Add1~40_combout\) # ((!\hour[0]~1_combout\ & hour(20))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(20),
	datad => \Add1~40_combout\,
	combout => \hour[20]~21_combout\);

-- Location: FF_X22_Y25_N21
\hour[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[20]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(20));

-- Location: LCCOMB_X23_Y23_N14
\Add1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (hour(23) & (!\Add1~45\)) # (!hour(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!hour(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X22_Y25_N2
\hour[23]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[23]~24_combout\ = (\hour[28]~2_combout\ & ((\Add1~46_combout\) # ((!\hour[0]~1_combout\ & hour(23))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(23),
	datad => \Add1~46_combout\,
	combout => \hour[23]~24_combout\);

-- Location: FF_X22_Y25_N3
\hour[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(23));

-- Location: LCCOMB_X23_Y23_N16
\Add1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (hour(24) & (\Add1~47\ $ (GND))) # (!hour(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((hour(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X22_Y23_N4
\hour[24]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[24]~25_combout\ = (\hour[28]~2_combout\ & ((\Add1~48_combout\) # ((!\hour[0]~1_combout\ & hour(24))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(24),
	datad => \Add1~48_combout\,
	combout => \hour[24]~25_combout\);

-- Location: FF_X22_Y23_N5
\hour[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[24]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(24));

-- Location: LCCOMB_X23_Y23_N18
\Add1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (hour(25) & (!\Add1~49\)) # (!hour(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!hour(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X23_Y23_N20
\Add1~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (hour(26) & (\Add1~51\ $ (GND))) # (!hour(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((hour(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X23_Y23_N22
\Add1~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (hour(27) & (!\Add1~53\)) # (!hour(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!hour(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X22_Y23_N22
\hour[27]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[27]~28_combout\ = (\hour[28]~2_combout\ & ((\Add1~54_combout\) # ((!\hour[0]~1_combout\ & hour(27))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(27),
	datad => \Add1~54_combout\,
	combout => \hour[27]~28_combout\);

-- Location: FF_X22_Y23_N23
\hour[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[27]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(27));

-- Location: LCCOMB_X23_Y23_N24
\Add1~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (hour(28) & (\Add1~55\ $ (GND))) # (!hour(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((hour(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X22_Y24_N24
\hour[28]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[28]~29_combout\ = (\hour[28]~2_combout\ & ((\Add1~56_combout\) # ((!\hour[0]~1_combout\ & hour(28))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(28),
	datad => \Add1~56_combout\,
	combout => \hour[28]~29_combout\);

-- Location: FF_X22_Y24_N25
\hour[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(28));

-- Location: LCCOMB_X23_Y23_N26
\Add1~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (hour(29) & (!\Add1~57\)) # (!hour(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!hour(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X22_Y24_N30
\hour[29]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[29]~30_combout\ = (\hour[0]~1_combout\ & (!\LessThan2~1_combout\ & ((\Add1~58_combout\)))) # (!\hour[0]~1_combout\ & (((hour(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(29),
	datad => \Add1~58_combout\,
	combout => \hour[29]~30_combout\);

-- Location: FF_X22_Y24_N31
\hour[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[29]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(29));

-- Location: LCCOMB_X22_Y24_N20
\hour[30]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[30]~31_combout\ = (\hour[0]~1_combout\ & (!\LessThan2~1_combout\ & ((\Add1~60_combout\)))) # (!\hour[0]~1_combout\ & (((hour(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(30),
	datad => \Add1~60_combout\,
	combout => \hour[30]~31_combout\);

-- Location: FF_X22_Y24_N21
\hour[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(30));

-- Location: LCCOMB_X22_Y24_N18
\Equal13~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~7_combout\ = (!hour(28) & (!hour(29) & !hour(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(28),
	datac => hour(29),
	datad => hour(30),
	combout => \Equal13~7_combout\);

-- Location: LCCOMB_X22_Y23_N2
\hour[25]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[25]~26_combout\ = (\hour[28]~2_combout\ & ((\Add1~50_combout\) # ((hour(25) & !\hour[0]~1_combout\)))) # (!\hour[28]~2_combout\ & (((hour(25) & !\hour[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \Add1~50_combout\,
	datac => hour(25),
	datad => \hour[0]~1_combout\,
	combout => \hour[25]~26_combout\);

-- Location: FF_X22_Y23_N3
\hour[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[25]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(25));

-- Location: LCCOMB_X22_Y23_N12
\hour[26]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[26]~27_combout\ = (\hour[28]~2_combout\ & ((\Add1~52_combout\) # ((!\hour[0]~1_combout\ & hour(26))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(26),
	datad => \Add1~52_combout\,
	combout => \hour[26]~27_combout\);

-- Location: FF_X22_Y23_N13
\hour[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[26]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(26));

-- Location: LCCOMB_X22_Y23_N0
\Equal13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (!hour(27) & (!hour(25) & (!hour(24) & !hour(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(27),
	datab => hour(25),
	datac => hour(24),
	datad => hour(26),
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X23_Y25_N28
\Equal13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (!hour(19) & (!hour(16) & (!hour(17) & !hour(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(19),
	datab => hour(16),
	datac => hour(17),
	datad => hour(18),
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X22_Y24_N26
\hour[6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[6]~7_combout\ = (\Add1~12_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(6))))) # (!\Add1~12_combout\ & (!\hour[0]~1_combout\ & (hour(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(6),
	datad => \hour[28]~2_combout\,
	combout => \hour[6]~7_combout\);

-- Location: FF_X22_Y24_N27
\hour[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(6));

-- Location: LCCOMB_X22_Y24_N22
\Equal13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (!hour(4) & (!hour(7) & (!hour(5) & !hour(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(7),
	datac => hour(5),
	datad => hour(6),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X23_Y25_N8
\hour[13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[13]~14_combout\ = (\Add1~26_combout\ & ((\hour[28]~2_combout\) # ((!\hour[0]~1_combout\ & hour(13))))) # (!\Add1~26_combout\ & (!\hour[0]~1_combout\ & (hour(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(13),
	datad => \hour[28]~2_combout\,
	combout => \hour[13]~14_combout\);

-- Location: FF_X23_Y25_N9
\hour[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[13]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(13));

-- Location: LCCOMB_X23_Y25_N26
\hour[14]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[14]~15_combout\ = (\hour[0]~1_combout\ & (\Add1~28_combout\ & ((\hour[28]~2_combout\)))) # (!\hour[0]~1_combout\ & ((hour(14)) # ((\Add1~28_combout\ & \hour[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[0]~1_combout\,
	datab => \Add1~28_combout\,
	datac => hour(14),
	datad => \hour[28]~2_combout\,
	combout => \hour[14]~15_combout\);

-- Location: FF_X23_Y25_N27
\hour[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(14));

-- Location: LCCOMB_X23_Y25_N12
\hour[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[15]~16_combout\ = (\hour[0]~1_combout\ & (\Add1~30_combout\ & ((\hour[28]~2_combout\)))) # (!\hour[0]~1_combout\ & ((hour(15)) # ((\Add1~30_combout\ & \hour[28]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[0]~1_combout\,
	datab => \Add1~30_combout\,
	datac => hour(15),
	datad => \hour[28]~2_combout\,
	combout => \hour[15]~16_combout\);

-- Location: FF_X23_Y25_N13
\hour[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(15));

-- Location: LCCOMB_X23_Y25_N18
\Equal13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (!hour(12) & (!hour(13) & (!hour(14) & !hour(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(12),
	datab => hour(13),
	datac => hour(14),
	datad => hour(15),
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X22_Y25_N10
\Equal13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (\Equal13~1_combout\ & (\Equal13~3_combout\ & (\Equal13~0_combout\ & \Equal13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \Equal13~3_combout\,
	datac => \Equal13~0_combout\,
	datad => \Equal13~2_combout\,
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X22_Y25_N18
\Equal13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~8_combout\ = (\Equal13~5_combout\ & (\Equal13~7_combout\ & (\Equal13~6_combout\ & \Equal13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~5_combout\,
	datab => \Equal13~7_combout\,
	datac => \Equal13~6_combout\,
	datad => \Equal13~4_combout\,
	combout => \Equal13~8_combout\);

-- Location: LCCOMB_X21_Y25_N30
\LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!hour(31) & ((\LessThan2~0_combout\) # (!\Equal13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datac => hour(31),
	datad => \Equal13~8_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y25_N20
\hour[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[0]~1_combout\ = (\hbut1~input_o\) # ((\LessThan2~1_combout\) # (\LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hbut1~input_o\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan1~1_combout\,
	combout => \hour[0]~1_combout\);

-- Location: LCCOMB_X22_Y24_N16
\hour[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour[2]~4_combout\ = (\hour[28]~2_combout\ & ((\Add1~4_combout\) # ((!\hour[0]~1_combout\ & hour(2))))) # (!\hour[28]~2_combout\ & (!\hour[0]~1_combout\ & (hour(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[28]~2_combout\,
	datab => \hour[0]~1_combout\,
	datac => hour(2),
	datad => \Add1~4_combout\,
	combout => \hour[2]~4_combout\);

-- Location: FF_X22_Y24_N17
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: LCCOMB_X22_Y24_N8
\hour~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour~32_combout\ = (\Add1~0_combout\ & ((hour(31)) # ((\Equal13~8_combout\ & !\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~8_combout\,
	datab => \Add1~0_combout\,
	datac => hour(31),
	datad => \LessThan2~0_combout\,
	combout => \hour~32_combout\);

-- Location: FF_X22_Y24_N9
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour~32_combout\,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: LCCOMB_X22_Y24_N14
\LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (hour(3) & (hour(2) & ((hour(0)) # (hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(2),
	datac => hour(0),
	datad => hour(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y24_N12
\hour~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hour~0_combout\ = (\Add1~2_combout\ & ((hour(31)) # ((\Equal13~8_combout\ & !\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~8_combout\,
	datab => \LessThan2~0_combout\,
	datac => hour(31),
	datad => \Add1~2_combout\,
	combout => \hour~0_combout\);

-- Location: FF_X22_Y24_N13
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hour~0_combout\,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: LCCOMB_X22_Y25_N24
\Equal17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (!hour(0) & (hour(2) & (!hour(31) & \Equal13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => hour(2),
	datac => hour(31),
	datad => \Equal13~8_combout\,
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X22_Y25_N28
\Equal19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (hour(1) & (!hour(3) & \Equal17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(1),
	datac => hour(3),
	datad => \Equal17~0_combout\,
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X22_Y25_N30
\Equal25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = (!hour(1) & (hour(3) & \Equal17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(1),
	datac => hour(3),
	datad => \Equal17~0_combout\,
	combout => \Equal25~0_combout\);

-- Location: LCCOMB_X22_Y25_N8
\buffhred~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~3_combout\ = (\Equal19~0_combout\) # ((\Equal25~0_combout\) # ((\Equal21~0_combout\ & hour(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~0_combout\,
	datab => \Equal19~0_combout\,
	datac => \Equal25~0_combout\,
	datad => hour(0),
	combout => \buffhred~3_combout\);

-- Location: LCCOMB_X22_Y25_N22
\Equal14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (hour(0) & (!hour(2) & (!hour(31) & \Equal13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => hour(2),
	datac => hour(31),
	datad => \Equal13~8_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X22_Y25_N16
\buffhred~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~2_combout\ = (!hour(3) & ((\Equal14~0_combout\) # (\Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(3),
	datac => \Equal14~0_combout\,
	datad => \Equal17~0_combout\,
	combout => \buffhred~2_combout\);

-- Location: LCCOMB_X22_Y25_N14
\buffhred~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~4_combout\ = (!\main~0_combout\ & ((\buffhred~3_combout\) # ((!hour(1) & \buffhred~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main~0_combout\,
	datab => hour(1),
	datac => \buffhred~3_combout\,
	datad => \buffhred~2_combout\,
	combout => \buffhred~4_combout\);

-- Location: LCCOMB_X25_Y25_N14
\WideNor1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor1~3_combout\ = (hour(3)) # ((hour(1) & ((!\Equal14~0_combout\))) # (!hour(1) & (!\Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(1),
	datac => \Equal17~0_combout\,
	datad => \Equal14~0_combout\,
	combout => \WideNor1~3_combout\);

-- Location: LCCOMB_X22_Y25_N4
\Equal13~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~9_combout\ = (!hour(2) & (!hour(31) & \Equal13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(2),
	datac => hour(31),
	datad => \Equal13~8_combout\,
	combout => \Equal13~9_combout\);

-- Location: LCCOMB_X25_Y25_N12
\WideNor1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor1~2_combout\ = (!hour(3) & (\Equal13~9_combout\ & ((!hour(0)) # (!hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(1),
	datac => hour(0),
	datad => \Equal13~9_combout\,
	combout => \WideNor1~2_combout\);

-- Location: LCCOMB_X25_Y25_N4
\WideNor1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor1~4_combout\ = (\WideNor1~2_combout\) # (!\WideNor1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor1~3_combout\,
	datad => \WideNor1~2_combout\,
	combout => \WideNor1~4_combout\);

-- Location: LCCOMB_X22_Y25_N26
\Equal21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (hour(3) & (!hour(2) & (!hour(31) & \Equal13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(2),
	datac => hour(31),
	datad => \Equal13~8_combout\,
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X25_Y25_N18
\WideNor1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor1~7_combout\ = (!\Equal21~0_combout\ & (((hour(1)) # (!\Equal17~0_combout\)) # (!hour(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(1),
	datac => \Equal17~0_combout\,
	datad => \Equal21~0_combout\,
	combout => \WideNor1~7_combout\);

-- Location: LCCOMB_X25_Y25_N28
WideNor1 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor1~combout\ = ((\Equal19~0_combout\) # ((\WideNor1~4_combout\) # (!\WideNor1~7_combout\))) # (!\WideNor1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor1~5_combout\,
	datab => \Equal19~0_combout\,
	datac => \WideNor1~4_combout\,
	datad => \WideNor1~7_combout\,
	combout => \WideNor1~combout\);

-- Location: LCCOMB_X22_Y25_N0
\buffhred~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~10_combout\ = (\buffhred~4_combout\) # ((!buffmgreen(0) & (buffhred(0) & !\WideNor1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffmgreen(0),
	datab => \buffhred~4_combout\,
	datac => buffhred(0),
	datad => \WideNor1~combout\,
	combout => \buffhred~10_combout\);

-- Location: FF_X22_Y25_N1
\buffhred[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffhred~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffhred(0));

-- Location: LCCOMB_X26_Y27_N24
\hred[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hred[0]~0_combout\ = !buffhred(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buffhred(0),
	combout => \hred[0]~0_combout\);

-- Location: FF_X26_Y27_N25
\hred[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hred[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hred[0]~reg0_q\);

-- Location: LCCOMB_X25_Y25_N24
\buffhred~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~5_combout\ = (buffhred(1) & (!buffmgreen(1) & ((\Equal25~0_combout\) # (!\WideNor1~combout\)))) # (!buffhred(1) & (((\Equal25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffmgreen(1),
	datab => \Equal25~0_combout\,
	datac => buffhred(1),
	datad => \WideNor1~combout\,
	combout => \buffhred~5_combout\);

-- Location: FF_X25_Y25_N25
\buffhred[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffhred~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffhred(1));

-- Location: LCCOMB_X24_Y27_N24
\hred[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hred[1]~1_combout\ = !buffhred(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buffhred(1),
	combout => \hred[1]~1_combout\);

-- Location: FF_X24_Y27_N25
\hred[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hred[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hred[1]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N8
\main~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \main~1_combout\ = (buffmgreen(2) & buffhred(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffmgreen(2),
	datad => buffhred(2),
	combout => \main~1_combout\);

-- Location: LCCOMB_X22_Y27_N4
\Equal12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!min(1) & min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(1),
	datad => min(3),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X21_Y25_N28
\min~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~33_combout\ = (\Add2~0_combout\ & ((min(31)) # ((!\LessThan1~0_combout\ & \Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(31),
	datab => \LessThan1~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \min~33_combout\);

-- Location: FF_X21_Y25_N29
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min~33_combout\,
	ena => \min[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X21_Y27_N30
\Add2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = min(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X21_Y25_N22
\min[31]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[31]~32_combout\ = (\min[31]~1_combout\ & (!\LessThan1~1_combout\ & ((\Add2~62_combout\)))) # (!\min[31]~1_combout\ & (((min(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[31]~1_combout\,
	datab => \LessThan1~1_combout\,
	datac => min(31),
	datad => \Add2~62_combout\,
	combout => \min[31]~32_combout\);

-- Location: FF_X21_Y25_N23
\min[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \min[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(31));

-- Location: LCCOMB_X20_Y27_N28
\Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (!min(31) & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => min(31),
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X22_Y27_N14
\Equal12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (min(2) & (\Equal12~0_combout\ & (!min(0) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datab => \Equal12~0_combout\,
	datac => min(0),
	datad => \Equal0~8_combout\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X23_Y27_N0
\Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (min(0) & (min(2) & (!min(3) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => min(2),
	datac => min(3),
	datad => \Equal0~8_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X22_Y27_N20
\Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!min(2) & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X23_Y27_N20
\buffmgreen~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~7_combout\ = (\Equal5~0_combout\) # ((!min(0) & (!min(3) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \Equal5~0_combout\,
	datac => min(3),
	datad => \Equal0~9_combout\,
	combout => \buffmgreen~7_combout\);

-- Location: LCCOMB_X23_Y27_N22
\buffmgreen~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~8_combout\ = (\Equal10~0_combout\) # ((\Equal12~1_combout\) # ((min(1) & \buffmgreen~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal12~1_combout\,
	datac => min(1),
	datad => \buffmgreen~7_combout\,
	combout => \buffmgreen~8_combout\);

-- Location: LCCOMB_X23_Y27_N26
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!min(2) & (min(0) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datac => min(0),
	datad => \Equal0~8_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y27_N12
\Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!min(0) & (min(2) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(0),
	datac => min(2),
	datad => \Equal0~8_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X23_Y27_N4
\WideNor0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = (min(3)) # ((min(1) & (!\Equal1~0_combout\)) # (!min(1) & ((!\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(3),
	datac => \Equal1~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \WideNor0~4_combout\);

-- Location: LCCOMB_X23_Y27_N14
\WideNor0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (!min(3) & (\Equal0~9_combout\ & ((!min(1)) # (!min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => min(1),
	datac => min(3),
	datad => \Equal0~9_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X23_Y27_N8
\Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!min(3) & (min(1) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datac => min(1),
	datad => \Equal4~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X23_Y27_N10
\WideNor0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor0~5_combout\ = (!\Equal12~1_combout\ & (((min(2)) # (!\Equal0~8_combout\)) # (!min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(2),
	datac => \Equal0~8_combout\,
	datad => \Equal12~1_combout\,
	combout => \WideNor0~5_combout\);

-- Location: LCCOMB_X23_Y27_N18
\WideNor0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (!\Equal5~0_combout\ & (!\Equal6~0_combout\ & \WideNor0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => \Equal6~0_combout\,
	datad => \WideNor0~5_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X23_Y27_N2
WideNor0 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = ((\WideNor0~2_combout\) # (!\WideNor0~3_combout\)) # (!\WideNor0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~4_combout\,
	datac => \WideNor0~2_combout\,
	datad => \WideNor0~3_combout\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X23_Y27_N6
\buffmgreen~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~9_combout\ = (\buffmgreen~6_combout\ & (((!\main~1_combout\ & \buffmgreen~8_combout\)) # (!\WideNor0~combout\))) # (!\buffmgreen~6_combout\ & (!\main~1_combout\ & (\buffmgreen~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffmgreen~6_combout\,
	datab => \main~1_combout\,
	datac => \buffmgreen~8_combout\,
	datad => \WideNor0~combout\,
	combout => \buffmgreen~9_combout\);

-- Location: FF_X23_Y27_N7
\buffmgreen[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffmgreen~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffmgreen(2));

-- Location: LCCOMB_X24_Y27_N6
\buffhred~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~6_combout\ = (!buffmgreen(2) & buffhred(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffmgreen(2),
	datad => buffhred(2),
	combout => \buffhred~6_combout\);

-- Location: LCCOMB_X25_Y25_N16
\buffhred~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~7_combout\ = (\Equal21~0_combout\) # ((!hour(3) & (\Equal13~9_combout\ & !hour(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => \Equal13~9_combout\,
	datac => hour(0),
	datad => \Equal21~0_combout\,
	combout => \buffhred~7_combout\);

-- Location: LCCOMB_X22_Y25_N6
\Equal18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (hour(2) & (!hour(31) & \Equal13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(2),
	datac => hour(31),
	datad => \Equal13~8_combout\,
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X25_Y25_N2
\Equal18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal18~1_combout\ = (!hour(3) & (hour(0) & \Equal18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datac => hour(0),
	datad => \Equal18~0_combout\,
	combout => \Equal18~1_combout\);

-- Location: LCCOMB_X25_Y25_N22
\buffhred~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~8_combout\ = (\Equal25~0_combout\) # ((hour(1) & ((\buffhred~7_combout\) # (\Equal18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => \buffhred~7_combout\,
	datac => \Equal25~0_combout\,
	datad => \Equal18~1_combout\,
	combout => \buffhred~8_combout\);

-- Location: LCCOMB_X25_Y25_N30
\buffhred~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffhred~9_combout\ = (\main~1_combout\ & (\buffhred~6_combout\ & ((!\WideNor1~combout\)))) # (!\main~1_combout\ & ((\buffhred~8_combout\) # ((\buffhred~6_combout\ & !\WideNor1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main~1_combout\,
	datab => \buffhred~6_combout\,
	datac => \buffhred~8_combout\,
	datad => \WideNor1~combout\,
	combout => \buffhred~9_combout\);

-- Location: FF_X25_Y25_N31
\buffhred[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffhred~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffhred(2));

-- Location: LCCOMB_X24_Y27_N10
\hred[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hred[2]~2_combout\ = !buffhred(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buffhred(2),
	combout => \hred[2]~2_combout\);

-- Location: FF_X24_Y27_N11
\hred[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hred[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hred[2]~reg0_q\);

-- Location: LCCOMB_X25_Y25_N8
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (((buffhred(3) & !\WideNor1~combout\)) # (!\WideNor1~7_combout\)) # (!\WideNor1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor1~3_combout\,
	datab => \WideNor1~7_combout\,
	datac => buffhred(3),
	datad => \WideNor1~combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X25_Y25_N9
\buffhred[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffhred(3));

-- Location: LCCOMB_X25_Y25_N20
\hred[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hred[3]~3_combout\ = !buffhred(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffhred(3),
	combout => \hred[3]~3_combout\);

-- Location: FF_X25_Y25_N21
\hred[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hred[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hred[3]~reg0_q\);

-- Location: LCCOMB_X25_Y25_N0
\WideNor1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor1~6_combout\ = (!\Equal19~0_combout\ & (!\Equal18~1_combout\ & \WideNor1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal19~0_combout\,
	datac => \Equal18~1_combout\,
	datad => \WideNor1~7_combout\,
	combout => \WideNor1~6_combout\);

-- Location: LCCOMB_X25_Y25_N6
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ((!\WideNor1~2_combout\ & (\WideNor1~3_combout\ & buffhred(4)))) # (!\WideNor1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor1~2_combout\,
	datab => \WideNor1~3_combout\,
	datac => buffhred(4),
	datad => \WideNor1~6_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X25_Y25_N7
\buffhred[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffhred(4));

-- Location: LCCOMB_X27_Y27_N4
\hred[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hred[4]~4_combout\ = !buffhred(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buffhred(4),
	combout => \hred[4]~4_combout\);

-- Location: FF_X27_Y27_N5
\hred[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \hred[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hred[4]~reg0_q\);

-- Location: LCCOMB_X22_Y27_N30
\buffmgreen~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~13_combout\ = (\buffmgreen~4_combout\) # ((!buffhred(0) & (buffmgreen(0) & !\WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buffmgreen~4_combout\,
	datab => buffhred(0),
	datac => buffmgreen(0),
	datad => \WideNor0~combout\,
	combout => \buffmgreen~13_combout\);

-- Location: FF_X22_Y27_N31
\buffmgreen[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffmgreen~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffmgreen(0));

-- Location: LCCOMB_X25_Y27_N24
\mgreen[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mgreen[0]~0_combout\ = !buffmgreen(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buffmgreen(0),
	combout => \mgreen[0]~0_combout\);

-- Location: FF_X25_Y27_N25
\mgreen[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \mgreen[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mgreen[0]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N28
\buffmgreen~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~5_combout\ = (buffmgreen(1) & (!buffhred(1) & ((\Equal12~1_combout\) # (!\WideNor0~combout\)))) # (!buffmgreen(1) & (\Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => buffhred(1),
	datac => buffmgreen(1),
	datad => \WideNor0~combout\,
	combout => \buffmgreen~5_combout\);

-- Location: FF_X23_Y27_N29
\buffmgreen[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffmgreen~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffmgreen(1));

-- Location: LCCOMB_X25_Y25_N10
\mgreen[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mgreen[1]~1_combout\ = !buffmgreen(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffmgreen(1),
	combout => \mgreen[1]~1_combout\);

-- Location: FF_X25_Y25_N11
\mgreen[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \mgreen[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mgreen[1]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N12
\mgreen[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mgreen[2]~2_combout\ = !buffmgreen(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffmgreen(2),
	combout => \mgreen[2]~2_combout\);

-- Location: FF_X24_Y27_N13
\mgreen[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \mgreen[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mgreen[2]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N16
\buffmgreen~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~10_combout\ = (buffhred(3) & (!buffmgreen(3) & ((!\WideNor0~5_combout\) # (!\WideNor0~4_combout\)))) # (!buffhred(3) & (((!\WideNor0~5_combout\) # (!\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffhred(3),
	datab => buffmgreen(3),
	datac => \WideNor0~4_combout\,
	datad => \WideNor0~5_combout\,
	combout => \buffmgreen~10_combout\);

-- Location: LCCOMB_X23_Y27_N24
\buffmgreen~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~11_combout\ = (\buffmgreen~10_combout\) # ((!buffhred(3) & (buffmgreen(3) & !\WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffhred(3),
	datab => \buffmgreen~10_combout\,
	datac => buffmgreen(3),
	datad => \WideNor0~combout\,
	combout => \buffmgreen~11_combout\);

-- Location: FF_X23_Y27_N25
\buffmgreen[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffmgreen~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffmgreen(3));

-- Location: LCCOMB_X24_Y27_N22
\mgreen[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mgreen[3]~3_combout\ = !buffmgreen(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buffmgreen(3),
	combout => \mgreen[3]~3_combout\);

-- Location: FF_X24_Y27_N23
\mgreen[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \mgreen[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mgreen[3]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N30
\buffmgreen~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \buffmgreen~12_combout\ = (buffmgreen(4) & (!buffhred(4) & ((!\WideNor0~combout\) # (!\WideNor0~3_combout\)))) # (!buffmgreen(4) & (((!\WideNor0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => buffhred(4),
	datab => \WideNor0~3_combout\,
	datac => buffmgreen(4),
	datad => \WideNor0~combout\,
	combout => \buffmgreen~12_combout\);

-- Location: FF_X23_Y27_N31
\buffmgreen[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \buffmgreen~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buffmgreen(4));

-- Location: LCCOMB_X22_Y27_N16
\mgreen[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mgreen[4]~4_combout\ = !buffmgreen(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buffmgreen(4),
	combout => \mgreen[4]~4_combout\);

-- Location: FF_X22_Y27_N17
\mgreen[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clk~clkctrl_outclk\,
	d => \mgreen[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mgreen[4]~reg0_q\);

ww_hred(0) <= \hred[0]~output_o\;

ww_hred(1) <= \hred[1]~output_o\;

ww_hred(2) <= \hred[2]~output_o\;

ww_hred(3) <= \hred[3]~output_o\;

ww_hred(4) <= \hred[4]~output_o\;

ww_mgreen(0) <= \mgreen[0]~output_o\;

ww_mgreen(1) <= \mgreen[1]~output_o\;

ww_mgreen(2) <= \mgreen[2]~output_o\;

ww_mgreen(3) <= \mgreen[3]~output_o\;

ww_mgreen(4) <= \mgreen[4]~output_o\;

ww_dblue(0) <= \dblue[0]~output_o\;

ww_dblue(1) <= \dblue[1]~output_o\;

ww_dblue(2) <= \dblue[2]~output_o\;

ww_dblue(3) <= \dblue[3]~output_o\;

ww_dblue(4) <= \dblue[4]~output_o\;
END structure;


