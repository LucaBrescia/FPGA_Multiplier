-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

-- DATE "02/04/2023 18:20:30"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	GPIO_1 : INOUT std_logic_vector(31 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[6]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[8]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[10]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[12]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[14]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[15]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[16]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[17]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[18]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[19]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[20]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[21]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[22]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[23]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[24]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[25]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[26]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[27]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[28]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[29]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[30]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[31]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[3]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[5]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[7]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[9]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[11]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[13]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|blink_hb|counter_output[2]~26_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[3]~28_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[8]~38_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[10]~42_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[12]~46_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[16]~54_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[18]~58_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[19]~60_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~58_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~60_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~62_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~64_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~58_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~58_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~59\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~60_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~61\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~62_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~63\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~64_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~58_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~59\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~60_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~61\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~62_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~63\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~64_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~58_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~0_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt~1_combout\ : std_logic;
SIGNAL \spi0|spi|Add1~0_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt~0_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt~2_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt~3_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~72_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~73_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~74_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~75_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~76_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~77_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~78_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~79_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~80_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~81_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~82_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~2_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~3_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[0]~72_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \GPIO_1[0]~input_o\ : std_logic;
SIGNAL \GPIO_1[1]~input_o\ : std_logic;
SIGNAL \GPIO_1[2]~input_o\ : std_logic;
SIGNAL \GPIO_1[4]~input_o\ : std_logic;
SIGNAL \GPIO_1[6]~input_o\ : std_logic;
SIGNAL \GPIO_1[8]~input_o\ : std_logic;
SIGNAL \GPIO_1[10]~input_o\ : std_logic;
SIGNAL \GPIO_1[12]~input_o\ : std_logic;
SIGNAL \GPIO_1[14]~input_o\ : std_logic;
SIGNAL \GPIO_1[15]~input_o\ : std_logic;
SIGNAL \GPIO_1[16]~input_o\ : std_logic;
SIGNAL \GPIO_1[17]~input_o\ : std_logic;
SIGNAL \GPIO_1[18]~input_o\ : std_logic;
SIGNAL \GPIO_1[19]~input_o\ : std_logic;
SIGNAL \GPIO_1[20]~input_o\ : std_logic;
SIGNAL \GPIO_1[21]~input_o\ : std_logic;
SIGNAL \GPIO_1[22]~input_o\ : std_logic;
SIGNAL \GPIO_1[23]~input_o\ : std_logic;
SIGNAL \GPIO_1[24]~input_o\ : std_logic;
SIGNAL \GPIO_1[25]~input_o\ : std_logic;
SIGNAL \GPIO_1[26]~input_o\ : std_logic;
SIGNAL \GPIO_1[27]~input_o\ : std_logic;
SIGNAL \GPIO_1[28]~input_o\ : std_logic;
SIGNAL \GPIO_1[29]~input_o\ : std_logic;
SIGNAL \GPIO_1[30]~input_o\ : std_logic;
SIGNAL \GPIO_1[31]~input_o\ : std_logic;
SIGNAL \GPIO_1[3]~input_o\ : std_logic;
SIGNAL \GPIO_1[9]~input_o\ : std_logic;
SIGNAL \GPIO_1[11]~input_o\ : std_logic;
SIGNAL \GPIO_1[13]~input_o\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[9]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[10]~feeder_combout\ : std_logic;
SIGNAL \GPIO_1[0]~output_o\ : std_logic;
SIGNAL \GPIO_1[1]~output_o\ : std_logic;
SIGNAL \GPIO_1[2]~output_o\ : std_logic;
SIGNAL \GPIO_1[4]~output_o\ : std_logic;
SIGNAL \GPIO_1[6]~output_o\ : std_logic;
SIGNAL \GPIO_1[8]~output_o\ : std_logic;
SIGNAL \GPIO_1[10]~output_o\ : std_logic;
SIGNAL \GPIO_1[12]~output_o\ : std_logic;
SIGNAL \GPIO_1[14]~output_o\ : std_logic;
SIGNAL \GPIO_1[15]~output_o\ : std_logic;
SIGNAL \GPIO_1[16]~output_o\ : std_logic;
SIGNAL \GPIO_1[17]~output_o\ : std_logic;
SIGNAL \GPIO_1[18]~output_o\ : std_logic;
SIGNAL \GPIO_1[19]~output_o\ : std_logic;
SIGNAL \GPIO_1[20]~output_o\ : std_logic;
SIGNAL \GPIO_1[21]~output_o\ : std_logic;
SIGNAL \GPIO_1[22]~output_o\ : std_logic;
SIGNAL \GPIO_1[23]~output_o\ : std_logic;
SIGNAL \GPIO_1[24]~output_o\ : std_logic;
SIGNAL \GPIO_1[25]~output_o\ : std_logic;
SIGNAL \GPIO_1[26]~output_o\ : std_logic;
SIGNAL \GPIO_1[27]~output_o\ : std_logic;
SIGNAL \GPIO_1[28]~output_o\ : std_logic;
SIGNAL \GPIO_1[29]~output_o\ : std_logic;
SIGNAL \GPIO_1[30]~output_o\ : std_logic;
SIGNAL \GPIO_1[31]~output_o\ : std_logic;
SIGNAL \GPIO_1[3]~output_o\ : std_logic;
SIGNAL \GPIO_1[5]~output_o\ : std_logic;
SIGNAL \GPIO_1[7]~output_o\ : std_logic;
SIGNAL \GPIO_1[9]~output_o\ : std_logic;
SIGNAL \GPIO_1[11]~output_o\ : std_logic;
SIGNAL \GPIO_1[13]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDG[9]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPIO_1[7]~input_o\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[2]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \spi0|pb0_synchronizer[0]~feeder_combout\ : std_logic;
SIGNAL \spi0|pb0_synchronizer[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|pb0_synchronizer[2]~feeder_combout\ : std_logic;
SIGNAL \spi0|Equal0~0_combout\ : std_logic;
SIGNAL \spi0|reset~q\ : std_logic;
SIGNAL \spi0|spi|read_me~q\ : std_logic;
SIGNAL \GPIO_1[5]~input_o\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue~0_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[3]~1_combout\ : std_logic;
SIGNAL \spi0|spi|data_out~0_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out~2_combout\ : std_logic;
SIGNAL \spi0|spi|data_out~3_combout\ : std_logic;
SIGNAL \spi0|spi|data_out~4_combout\ : std_logic;
SIGNAL \spi0|spi|data_out~5_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[5]~1_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~6_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~7_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~9_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~10_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~11_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[11]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out~12_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~13_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~14_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~15_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[5][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[9][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add8~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|u_pipe[10][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~58_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add0~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add1~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add2~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add3~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add7~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~59\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~61\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~63\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~64_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~62_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~60_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~58_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~1\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~3\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~5\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~7\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~9\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~11\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~13\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~15\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~17\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~19\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~21\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~23\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~25\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~27\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~29\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~31\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~33\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~35\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~56_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~54_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~52_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~50_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~48_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~46_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~44_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~42_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~40_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~38_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~36_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~34_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~32_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~30_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~28_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~26_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~24_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~22_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~20_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~18_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~16_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~14_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~12_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~10_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~8_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~6_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~4_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~2_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~1_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~3_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~5_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~7_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~9_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~11_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~13_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~15_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~17_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~19_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~21_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~23_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~25_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~27_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~29_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~31_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~33_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~35_cout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~37\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~39\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~41\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~43\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~45\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~47\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~49\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~51\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~53\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~59\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~61\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~63\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~64_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt~2_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[14]~1_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt~3_combout\ : std_logic;
SIGNAL \spi0|spi|Add0~0_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt~0_combout\ : std_logic;
SIGNAL \spi0|spi|Equal1~0_combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~0_combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~q\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~60_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~71_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[14]~0_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~62_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~70_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~69_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~59\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~61\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~63\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~65\ : std_logic;
SIGNAL \spi0|spi_fir|Add5~66_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~55\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~57\ : std_logic;
SIGNAL \spi0|spi_fir|Add4~58_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~65\ : std_logic;
SIGNAL \spi0|spi_fir|Add6~66_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~65\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~66_combout\ : std_logic;
SIGNAL \spi0|spi_fir|Add9~68_combout\ : std_logic;
SIGNAL \spi0|spi|MISO~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO~q\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[1]~24_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[1]~25\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[2]~27\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[3]~29\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[4]~30_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[4]~31\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[5]~32_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[5]~33\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[6]~34_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[6]~35\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[7]~36_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[7]~37\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[8]~39\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[9]~40_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[9]~41\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[10]~43\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[11]~44_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[11]~45\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[12]~47\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[13]~48_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[13]~49\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[14]~50_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[14]~51\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[15]~52_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[15]~53\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[16]~55\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[17]~56_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[17]~57\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[18]~59\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[19]~61\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[20]~62_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[20]~63\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[21]~64_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[21]~65\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[22]~66_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[22]~67\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[23]~68_combout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[23]~69\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[24]~70_combout\ : std_logic;
SIGNAL \spi0|LED~0_combout\ : std_logic;
SIGNAL \spi0|pb0_synchronizer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \spi0|LED\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \spi0|blink_hb|counter_output\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \spi0|spi|wrcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|spi_value\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|spi_readvalue\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|sck_synchronizer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \spi0|spi|rdcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|data_out\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT31\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT30\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT29\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT28\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT25\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT24\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT21\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT20\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT17\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT16\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT13\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT12\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT9\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT8\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT5\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT4\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT1\ & 
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~dataout\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult6|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult6|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT28\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT29\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT30\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ <= \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT30\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT29\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT28\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT25\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT24\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT21\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT20\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT17\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT16\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT13\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT12\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT9\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT8\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT5\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT4\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT1\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~dataout\ & 
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~4\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult7|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult7|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT28\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ <= \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT25\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT24\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT21\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT20\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT17\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT16\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT13\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT12\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT9\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT8\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT5\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT4\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT1\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~dataout\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~8\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~7\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~6\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~5\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~4\ & 
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult10|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult10|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~5\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~6\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~7\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~8\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT25\ & 
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT24\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT21\ & 
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT20\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT17\ & 
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT16\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT13\ & 
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT12\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT9\ & 
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT8\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT5\ & 
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT4\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT1\ & 
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~dataout\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~7\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~6\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~5\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~4\
& \spi0|spi_fir|Mult9|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult9|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult9|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~5\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~6\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~7\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT25\ & 
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT24\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT21\ & 
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT20\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT17\ & 
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT16\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT13\ & 
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT12\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT9\ & 
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT8\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT5\ & 
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT4\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT1\ & 
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~dataout\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~7\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~6\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~5\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~4\
& \spi0|spi_fir|Mult8|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult8|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult8|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~5\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~6\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~7\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT25\ & 
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT21\ & 
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT9\ & 
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT5\ & 
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT1\ & 
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~dataout\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~7\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~6\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~5\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~4\
& \spi0|spi_fir|Mult1|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult1|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult1|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~5\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~6\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~7\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT24\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT20\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~dataout\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~8\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~7\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~6\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~5\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~4\ & 
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult0|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult0|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~5\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~6\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~7\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~8\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT25\ & 
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT24\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT21\ & 
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT20\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT17\ & 
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT13\ & 
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT9\ & 
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT8\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT5\ & 
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT4\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT1\ & 
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~dataout\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~7\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~6\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~5\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~4\
& \spi0|spi_fir|Mult2|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult2|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult2|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~5\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~6\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~7\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT30\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT29\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT28\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT25\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT24\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT21\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT20\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT17\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT16\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT13\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT12\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT9\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT8\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT5\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT4\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT1\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~dataout\ & 
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~4\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult3|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult3|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~4\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT28\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT29\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ <= \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT31\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT30\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT29\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT28\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT25\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT24\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT21\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT20\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT17\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT16\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT13\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT12\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT9\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT8\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT5\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT4\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT1\ & 
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~dataout\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult4|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult4|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT28\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT30\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ <= \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAA_bus\ <= (\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT31\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT30\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT29\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT28\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT27\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT26\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT25\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT24\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT23\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT22\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT21\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT20\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT19\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT18\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT17\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT16\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT15\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT14\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT13\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT12\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT11\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT10\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT9\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT8\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT7\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT6\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT5\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT4\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT3\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT2\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT1\ & 
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~dataout\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~3\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~2\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~1\ & \spi0|spi_fir|Mult5|auto_generated|mac_mult1~0\);

\spi0|spi_fir|Mult5|auto_generated|mac_out2~0\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(0);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~1\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(1);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~2\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(2);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~3\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(3);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~dataout\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(4);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT1\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(5);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT2\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(6);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT3\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(7);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT4\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(8);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT5\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(9);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT6\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(10);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(11);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT8\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(12);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(13);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT10\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(14);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT11\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(15);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT12\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(16);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(17);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT14\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(18);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(19);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT16\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(20);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT17\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(21);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT18\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(22);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(23);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT20\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(24);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(25);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT22\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(26);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(27);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT24\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(28);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(29);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT26\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(30);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT27\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(31);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT28\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(32);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(33);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT30\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(34);
\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ <= \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\(35);

\spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & vcc & gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & vcc & gnd & vcc & vcc & gnd & vcc & gnd & gnd);

\spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAB_bus\ <= (\spi0|spi_fir|u_pipe[5][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[5][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[5][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult6|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT28\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT29\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT30\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult6|auto_generated|mac_mult1~DATAOUT31\ <= \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[6][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[6][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[6][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & gnd);

\spi0|spi_fir|Mult7|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT28\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT29\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult7|auto_generated|mac_mult1~DATAOUT30\ <= \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[9][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[9][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[9][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[9][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\spi0|spi_fir|Mult10|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~5\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~6\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~7\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~8\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult10|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[8][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[8][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[8][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\spi0|spi_fir|Mult9|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~5\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~6\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~7\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult9|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[7][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[7][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[7][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[7][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\spi0|spi_fir|Mult8|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~5\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~6\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~7\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult8|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[0][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[0][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[0][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[0][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\spi0|spi_fir|Mult1|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~5\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~6\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~7\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi|data_out\(15) & \spi0|spi|data_out\(14) & \spi0|spi|data_out\(13) & \spi0|spi|data_out\(12) & \spi0|spi|data_out\(11) & \spi0|spi|data_out\(10) & \spi0|spi|data_out\(9) & 
\spi0|spi|data_out\(8) & \spi0|spi|data_out\(7) & \spi0|spi|data_out\(6) & \spi0|spi|data_out\(5) & \spi0|spi|data_out\(4) & \spi0|spi|data_out\(3) & \spi0|spi|data_out\(2) & \spi0|spi|data_out\(1) & \spi0|spi|data_out\(0) & gnd & gnd);

\spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\spi0|spi_fir|Mult0|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~5\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~6\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~7\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~8\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[1][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[1][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[1][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[1][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\spi0|spi_fir|Mult2|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~5\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~6\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~7\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult2|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[2][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[2][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[2][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & gnd);

\spi0|spi_fir|Mult3|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~4\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT28\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT29\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult3|auto_generated|mac_mult1~DATAOUT30\ <= \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & vcc & gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & vcc & gnd & vcc & vcc & gnd & vcc & gnd & gnd);

\spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAB_bus\ <= (\spi0|spi_fir|u_pipe[3][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[3][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[3][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[3][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult4|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT28\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT29\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT30\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult4|auto_generated|mac_mult1~DATAOUT31\ <= \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\(35);

\spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAA_bus\ <= (\spi0|spi_fir|u_pipe[4][15]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][14]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][13]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[4][11]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][7]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[4][6]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][4]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1_q\ & 
\spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\ & gnd & gnd);

\spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & gnd & vcc & gnd & gnd & gnd & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\spi0|spi_fir|Mult5|auto_generated|mac_mult1~0\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(0);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~1\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(1);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~2\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(2);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~3\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(3);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~dataout\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(4);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT1\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(5);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT2\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(6);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT3\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(7);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT4\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(8);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT5\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(9);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT6\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(10);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT7\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(11);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT8\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(12);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT9\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(13);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT10\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(14);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT11\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(15);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT12\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(16);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT13\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(17);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT14\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(18);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT15\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(19);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT16\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(20);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT17\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(21);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT18\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(22);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT19\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(23);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT20\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(24);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT21\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(25);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT22\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(26);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT23\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(27);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT24\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(28);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT25\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(29);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT26\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(30);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT27\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(31);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT28\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(32);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT29\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(33);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT30\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(34);
\spi0|spi_fir|Mult5|auto_generated|mac_mult1~DATAOUT31\ <= \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\(35);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: FF_X1_Y20_N13
\spi0|blink_hb|counter_output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(19));

-- Location: FF_X1_Y20_N11
\spi0|blink_hb|counter_output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(18));

-- Location: FF_X1_Y20_N7
\spi0|blink_hb|counter_output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(16));

-- Location: FF_X1_Y21_N31
\spi0|blink_hb|counter_output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(12));

-- Location: FF_X1_Y21_N27
\spi0|blink_hb|counter_output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(10));

-- Location: FF_X1_Y21_N23
\spi0|blink_hb|counter_output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(8));

-- Location: FF_X1_Y21_N13
\spi0|blink_hb|counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(3));

-- Location: FF_X1_Y21_N11
\spi0|blink_hb|counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(2));

-- Location: LCCOMB_X1_Y21_N10
\spi0|blink_hb|counter_output[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[2]~26_combout\ = (\spi0|blink_hb|counter_output\(2) & (!\spi0|blink_hb|counter_output[1]~25\)) # (!\spi0|blink_hb|counter_output\(2) & ((\spi0|blink_hb|counter_output[1]~25\) # (GND)))
-- \spi0|blink_hb|counter_output[2]~27\ = CARRY((!\spi0|blink_hb|counter_output[1]~25\) # (!\spi0|blink_hb|counter_output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(2),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[1]~25\,
	combout => \spi0|blink_hb|counter_output[2]~26_combout\,
	cout => \spi0|blink_hb|counter_output[2]~27\);

-- Location: LCCOMB_X1_Y21_N12
\spi0|blink_hb|counter_output[3]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[3]~28_combout\ = (\spi0|blink_hb|counter_output\(3) & (\spi0|blink_hb|counter_output[2]~27\ $ (GND))) # (!\spi0|blink_hb|counter_output\(3) & (!\spi0|blink_hb|counter_output[2]~27\ & VCC))
-- \spi0|blink_hb|counter_output[3]~29\ = CARRY((\spi0|blink_hb|counter_output\(3) & !\spi0|blink_hb|counter_output[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(3),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[2]~27\,
	combout => \spi0|blink_hb|counter_output[3]~28_combout\,
	cout => \spi0|blink_hb|counter_output[3]~29\);

-- Location: LCCOMB_X1_Y21_N22
\spi0|blink_hb|counter_output[8]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[8]~38_combout\ = (\spi0|blink_hb|counter_output\(8) & (!\spi0|blink_hb|counter_output[7]~37\)) # (!\spi0|blink_hb|counter_output\(8) & ((\spi0|blink_hb|counter_output[7]~37\) # (GND)))
-- \spi0|blink_hb|counter_output[8]~39\ = CARRY((!\spi0|blink_hb|counter_output[7]~37\) # (!\spi0|blink_hb|counter_output\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(8),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[7]~37\,
	combout => \spi0|blink_hb|counter_output[8]~38_combout\,
	cout => \spi0|blink_hb|counter_output[8]~39\);

-- Location: LCCOMB_X1_Y21_N26
\spi0|blink_hb|counter_output[10]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[10]~42_combout\ = (\spi0|blink_hb|counter_output\(10) & (!\spi0|blink_hb|counter_output[9]~41\)) # (!\spi0|blink_hb|counter_output\(10) & ((\spi0|blink_hb|counter_output[9]~41\) # (GND)))
-- \spi0|blink_hb|counter_output[10]~43\ = CARRY((!\spi0|blink_hb|counter_output[9]~41\) # (!\spi0|blink_hb|counter_output\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(10),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[9]~41\,
	combout => \spi0|blink_hb|counter_output[10]~42_combout\,
	cout => \spi0|blink_hb|counter_output[10]~43\);

-- Location: LCCOMB_X1_Y21_N30
\spi0|blink_hb|counter_output[12]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[12]~46_combout\ = (\spi0|blink_hb|counter_output\(12) & (!\spi0|blink_hb|counter_output[11]~45\)) # (!\spi0|blink_hb|counter_output\(12) & ((\spi0|blink_hb|counter_output[11]~45\) # (GND)))
-- \spi0|blink_hb|counter_output[12]~47\ = CARRY((!\spi0|blink_hb|counter_output[11]~45\) # (!\spi0|blink_hb|counter_output\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(12),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[11]~45\,
	combout => \spi0|blink_hb|counter_output[12]~46_combout\,
	cout => \spi0|blink_hb|counter_output[12]~47\);

-- Location: LCCOMB_X1_Y20_N6
\spi0|blink_hb|counter_output[16]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[16]~54_combout\ = (\spi0|blink_hb|counter_output\(16) & (!\spi0|blink_hb|counter_output[15]~53\)) # (!\spi0|blink_hb|counter_output\(16) & ((\spi0|blink_hb|counter_output[15]~53\) # (GND)))
-- \spi0|blink_hb|counter_output[16]~55\ = CARRY((!\spi0|blink_hb|counter_output[15]~53\) # (!\spi0|blink_hb|counter_output\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(16),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[15]~53\,
	combout => \spi0|blink_hb|counter_output[16]~54_combout\,
	cout => \spi0|blink_hb|counter_output[16]~55\);

-- Location: LCCOMB_X1_Y20_N10
\spi0|blink_hb|counter_output[18]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[18]~58_combout\ = (\spi0|blink_hb|counter_output\(18) & (!\spi0|blink_hb|counter_output[17]~57\)) # (!\spi0|blink_hb|counter_output\(18) & ((\spi0|blink_hb|counter_output[17]~57\) # (GND)))
-- \spi0|blink_hb|counter_output[18]~59\ = CARRY((!\spi0|blink_hb|counter_output[17]~57\) # (!\spi0|blink_hb|counter_output\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(18),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[17]~57\,
	combout => \spi0|blink_hb|counter_output[18]~58_combout\,
	cout => \spi0|blink_hb|counter_output[18]~59\);

-- Location: LCCOMB_X1_Y20_N12
\spi0|blink_hb|counter_output[19]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[19]~60_combout\ = (\spi0|blink_hb|counter_output\(19) & (\spi0|blink_hb|counter_output[18]~59\ $ (GND))) # (!\spi0|blink_hb|counter_output\(19) & (!\spi0|blink_hb|counter_output[18]~59\ & VCC))
-- \spi0|blink_hb|counter_output[19]~61\ = CARRY((\spi0|blink_hb|counter_output\(19) & !\spi0|blink_hb|counter_output[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(19),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[18]~59\,
	combout => \spi0|blink_hb|counter_output[19]~60_combout\,
	cout => \spi0|blink_hb|counter_output[19]~61\);

-- Location: DSPOUT_X34_Y22_N2
\spi0|spi_fir|Mult6|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult6|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y23_N2
\spi0|spi_fir|Mult7|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult7|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X33_Y23_N14
\spi0|spi_fir|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~0_combout\ = (\spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\ & (\spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\ $ (VCC))) # (!\spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\ & (\spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\ & VCC))
-- \spi0|spi_fir|Add5~1\ = CARRY((\spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \spi0|spi_fir|Add5~0_combout\,
	cout => \spi0|spi_fir|Add5~1\);

-- Location: LCCOMB_X33_Y23_N16
\spi0|spi_fir|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~2_combout\ = (\spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\ & (\spi0|spi_fir|Add5~1\ & VCC)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\ & (!\spi0|spi_fir|Add5~1\)))) 
-- # (!\spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\ & (!\spi0|spi_fir|Add5~1\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\ & ((\spi0|spi_fir|Add5~1\) # (GND)))))
-- \spi0|spi_fir|Add5~3\ = CARRY((\spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\ & (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\ & !\spi0|spi_fir|Add5~1\)) # (!\spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\ & ((!\spi0|spi_fir|Add5~1\) # 
-- (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~1\,
	combout => \spi0|spi_fir|Add5~2_combout\,
	cout => \spi0|spi_fir|Add5~3\);

-- Location: LCCOMB_X33_Y23_N18
\spi0|spi_fir|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~4_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT2\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT2\ $ (!\spi0|spi_fir|Add5~3\)))) # (GND)
-- \spi0|spi_fir|Add5~5\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT2\) # (!\spi0|spi_fir|Add5~3\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT2\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT2\ & !\spi0|spi_fir|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT2\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~3\,
	combout => \spi0|spi_fir|Add5~4_combout\,
	cout => \spi0|spi_fir|Add5~5\);

-- Location: LCCOMB_X33_Y23_N22
\spi0|spi_fir|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~8_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT4\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT4\ $ (!\spi0|spi_fir|Add5~7\)))) # (GND)
-- \spi0|spi_fir|Add5~9\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT4\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT4\) # (!\spi0|spi_fir|Add5~7\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT4\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT4\ & !\spi0|spi_fir|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT4\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~7\,
	combout => \spi0|spi_fir|Add5~8_combout\,
	cout => \spi0|spi_fir|Add5~9\);

-- Location: LCCOMB_X33_Y23_N24
\spi0|spi_fir|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~10_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\ & (\spi0|spi_fir|Add5~9\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\ & 
-- (!\spi0|spi_fir|Add5~9\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add5~9\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\ & 
-- ((\spi0|spi_fir|Add5~9\) # (GND)))))
-- \spi0|spi_fir|Add5~11\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\ & !\spi0|spi_fir|Add5~9\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT5\ & 
-- ((!\spi0|spi_fir|Add5~9\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT5\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~9\,
	combout => \spi0|spi_fir|Add5~10_combout\,
	cout => \spi0|spi_fir|Add5~11\);

-- Location: LCCOMB_X33_Y23_N26
\spi0|spi_fir|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~12_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT6\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT6\ $ (!\spi0|spi_fir|Add5~11\)))) # (GND)
-- \spi0|spi_fir|Add5~13\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT6\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT6\) # (!\spi0|spi_fir|Add5~11\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT6\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT6\ & !\spi0|spi_fir|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT6\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~11\,
	combout => \spi0|spi_fir|Add5~12_combout\,
	cout => \spi0|spi_fir|Add5~13\);

-- Location: LCCOMB_X33_Y23_N28
\spi0|spi_fir|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~14_combout\ = (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\ & (\spi0|spi_fir|Add5~13\ & VCC)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\ & 
-- (!\spi0|spi_fir|Add5~13\)))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add5~13\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\spi0|spi_fir|Add5~13\) # (GND)))))
-- \spi0|spi_fir|Add5~15\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\ & !\spi0|spi_fir|Add5~13\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT7\ & 
-- ((!\spi0|spi_fir|Add5~13\) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT7\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~13\,
	combout => \spi0|spi_fir|Add5~14_combout\,
	cout => \spi0|spi_fir|Add5~15\);

-- Location: LCCOMB_X33_Y22_N0
\spi0|spi_fir|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~18_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\ & (\spi0|spi_fir|Add5~17\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\ & 
-- (!\spi0|spi_fir|Add5~17\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add5~17\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\ & 
-- ((\spi0|spi_fir|Add5~17\) # (GND)))))
-- \spi0|spi_fir|Add5~19\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\ & !\spi0|spi_fir|Add5~17\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT9\ & 
-- ((!\spi0|spi_fir|Add5~17\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT9\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~17\,
	combout => \spi0|spi_fir|Add5~18_combout\,
	cout => \spi0|spi_fir|Add5~19\);

-- Location: LCCOMB_X33_Y22_N8
\spi0|spi_fir|Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~26_combout\ = (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\ & (\spi0|spi_fir|Add5~25\ & VCC)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\spi0|spi_fir|Add5~25\)))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add5~25\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\ & 
-- ((\spi0|spi_fir|Add5~25\) # (GND)))))
-- \spi0|spi_fir|Add5~27\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\ & !\spi0|spi_fir|Add5~25\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT13\ & 
-- ((!\spi0|spi_fir|Add5~25\) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT13\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~25\,
	combout => \spi0|spi_fir|Add5~26_combout\,
	cout => \spi0|spi_fir|Add5~27\);

-- Location: LCCOMB_X33_Y22_N10
\spi0|spi_fir|Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~28_combout\ = ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT14\ $ (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT14\ $ (!\spi0|spi_fir|Add5~27\)))) # (GND)
-- \spi0|spi_fir|Add5~29\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT14\) # (!\spi0|spi_fir|Add5~27\))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT14\ & 
-- (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT14\ & !\spi0|spi_fir|Add5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT14\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~27\,
	combout => \spi0|spi_fir|Add5~28_combout\,
	cout => \spi0|spi_fir|Add5~29\);

-- Location: LCCOMB_X33_Y22_N12
\spi0|spi_fir|Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~30_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\ & (\spi0|spi_fir|Add5~29\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\spi0|spi_fir|Add5~29\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add5~29\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\spi0|spi_fir|Add5~29\) # (GND)))))
-- \spi0|spi_fir|Add5~31\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add5~29\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT15\ & 
-- ((!\spi0|spi_fir|Add5~29\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT15\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~29\,
	combout => \spi0|spi_fir|Add5~30_combout\,
	cout => \spi0|spi_fir|Add5~31\);

-- Location: LCCOMB_X33_Y22_N14
\spi0|spi_fir|Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~32_combout\ = ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT16\ $ (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT16\ $ (!\spi0|spi_fir|Add5~31\)))) # (GND)
-- \spi0|spi_fir|Add5~33\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT16\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT16\) # (!\spi0|spi_fir|Add5~31\))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT16\ & 
-- (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT16\ & !\spi0|spi_fir|Add5~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT16\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~31\,
	combout => \spi0|spi_fir|Add5~32_combout\,
	cout => \spi0|spi_fir|Add5~33\);

-- Location: LCCOMB_X33_Y22_N16
\spi0|spi_fir|Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~34_combout\ = (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\ & (\spi0|spi_fir|Add5~33\ & VCC)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\spi0|spi_fir|Add5~33\)))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add5~33\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\spi0|spi_fir|Add5~33\) # (GND)))))
-- \spi0|spi_fir|Add5~35\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\ & !\spi0|spi_fir|Add5~33\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT17\ & 
-- ((!\spi0|spi_fir|Add5~33\) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT17\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~33\,
	combout => \spi0|spi_fir|Add5~34_combout\,
	cout => \spi0|spi_fir|Add5~35\);

-- Location: LCCOMB_X33_Y22_N18
\spi0|spi_fir|Add5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~36_combout\ = ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT18\ $ (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT18\ $ (!\spi0|spi_fir|Add5~35\)))) # (GND)
-- \spi0|spi_fir|Add5~37\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT18\) # (!\spi0|spi_fir|Add5~35\))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT18\ & 
-- (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT18\ & !\spi0|spi_fir|Add5~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~35\,
	combout => \spi0|spi_fir|Add5~36_combout\,
	cout => \spi0|spi_fir|Add5~37\);

-- Location: LCCOMB_X33_Y22_N22
\spi0|spi_fir|Add5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~40_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT20\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT20\ $ (!\spi0|spi_fir|Add5~39\)))) # (GND)
-- \spi0|spi_fir|Add5~41\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT20\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT20\) # (!\spi0|spi_fir|Add5~39\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT20\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT20\ & !\spi0|spi_fir|Add5~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT20\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~39\,
	combout => \spi0|spi_fir|Add5~40_combout\,
	cout => \spi0|spi_fir|Add5~41\);

-- Location: LCCOMB_X33_Y22_N24
\spi0|spi_fir|Add5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~42_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\ & (\spi0|spi_fir|Add5~41\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\spi0|spi_fir|Add5~41\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add5~41\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\spi0|spi_fir|Add5~41\) # (GND)))))
-- \spi0|spi_fir|Add5~43\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add5~41\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\spi0|spi_fir|Add5~41\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT21\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~41\,
	combout => \spi0|spi_fir|Add5~42_combout\,
	cout => \spi0|spi_fir|Add5~43\);

-- Location: LCCOMB_X33_Y22_N28
\spi0|spi_fir|Add5~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~46_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\ & (\spi0|spi_fir|Add5~45\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\ & 
-- (!\spi0|spi_fir|Add5~45\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add5~45\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\spi0|spi_fir|Add5~45\) # (GND)))))
-- \spi0|spi_fir|Add5~47\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\ & !\spi0|spi_fir|Add5~45\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\spi0|spi_fir|Add5~45\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT23\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~45\,
	combout => \spi0|spi_fir|Add5~46_combout\,
	cout => \spi0|spi_fir|Add5~47\);

-- Location: LCCOMB_X33_Y21_N0
\spi0|spi_fir|Add5~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~50_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\ & (\spi0|spi_fir|Add5~49\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\ & 
-- (!\spi0|spi_fir|Add5~49\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add5~49\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\spi0|spi_fir|Add5~49\) # (GND)))))
-- \spi0|spi_fir|Add5~51\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\ & !\spi0|spi_fir|Add5~49\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT25\ & 
-- ((!\spi0|spi_fir|Add5~49\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT25\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~49\,
	combout => \spi0|spi_fir|Add5~50_combout\,
	cout => \spi0|spi_fir|Add5~51\);

-- Location: LCCOMB_X33_Y21_N8
\spi0|spi_fir|Add5~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~58_combout\ = (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT29\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\ & (\spi0|spi_fir|Add5~57\ & VCC)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\ & 
-- (!\spi0|spi_fir|Add5~57\)))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT29\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\ & (!\spi0|spi_fir|Add5~57\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\ & 
-- ((\spi0|spi_fir|Add5~57\) # (GND)))))
-- \spi0|spi_fir|Add5~59\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT29\ & (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\ & !\spi0|spi_fir|Add5~57\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT29\ & 
-- ((!\spi0|spi_fir|Add5~57\) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT29\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~57\,
	combout => \spi0|spi_fir|Add5~58_combout\,
	cout => \spi0|spi_fir|Add5~59\);

-- Location: LCCOMB_X33_Y21_N10
\spi0|spi_fir|Add5~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~60_combout\ = ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT30\ $ (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ $ (!\spi0|spi_fir|Add5~59\)))) # (GND)
-- \spi0|spi_fir|Add5~61\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT30\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\) # (!\spi0|spi_fir|Add5~59\))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT30\ & 
-- (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ & !\spi0|spi_fir|Add5~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT30\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~59\,
	combout => \spi0|spi_fir|Add5~60_combout\,
	cout => \spi0|spi_fir|Add5~61\);

-- Location: LCCOMB_X33_Y21_N12
\spi0|spi_fir|Add5~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~62_combout\ = (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ & (\spi0|spi_fir|Add5~61\ & VCC)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ & 
-- (!\spi0|spi_fir|Add5~61\)))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ & (!\spi0|spi_fir|Add5~61\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ & 
-- ((\spi0|spi_fir|Add5~61\) # (GND)))))
-- \spi0|spi_fir|Add5~63\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ & (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ & !\spi0|spi_fir|Add5~61\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ & 
-- ((!\spi0|spi_fir|Add5~61\) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~61\,
	combout => \spi0|spi_fir|Add5~62_combout\,
	cout => \spi0|spi_fir|Add5~63\);

-- Location: LCCOMB_X33_Y21_N14
\spi0|spi_fir|Add5~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~64_combout\ = ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ $ (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ $ (!\spi0|spi_fir|Add5~63\)))) # (GND)
-- \spi0|spi_fir|Add5~65\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\) # (!\spi0|spi_fir|Add5~63\))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ & 
-- (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\ & !\spi0|spi_fir|Add5~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~63\,
	combout => \spi0|spi_fir|Add5~64_combout\,
	cout => \spi0|spi_fir|Add5~65\);

-- Location: DSPOUT_X18_Y25_N2
\spi0|spi_fir|Mult10|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult10|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y26_N2
\spi0|spi_fir|Mult9|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult9|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y25_N8
\spi0|spi_fir|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~4_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT3\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT3\ $ (!\spi0|spi_fir|Add8~3\)))) # (GND)
-- \spi0|spi_fir|Add8~5\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT3\) # (!\spi0|spi_fir|Add8~3\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT3\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT3\ & !\spi0|spi_fir|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT3\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~3\,
	combout => \spi0|spi_fir|Add8~4_combout\,
	cout => \spi0|spi_fir|Add8~5\);

-- Location: LCCOMB_X19_Y25_N12
\spi0|spi_fir|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~8_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT5\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT5\ $ (!\spi0|spi_fir|Add8~7\)))) # (GND)
-- \spi0|spi_fir|Add8~9\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT5\) # (!\spi0|spi_fir|Add8~7\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT5\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT5\ & !\spi0|spi_fir|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT5\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~7\,
	combout => \spi0|spi_fir|Add8~8_combout\,
	cout => \spi0|spi_fir|Add8~9\);

-- Location: LCCOMB_X19_Y25_N14
\spi0|spi_fir|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~10_combout\ = (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT6\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\ & (\spi0|spi_fir|Add8~9\ & VCC)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\ & 
-- (!\spi0|spi_fir|Add8~9\)))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT6\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\ & (!\spi0|spi_fir|Add8~9\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\ & 
-- ((\spi0|spi_fir|Add8~9\) # (GND)))))
-- \spi0|spi_fir|Add8~11\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT6\ & (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\ & !\spi0|spi_fir|Add8~9\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT6\ & 
-- ((!\spi0|spi_fir|Add8~9\) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT6\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~9\,
	combout => \spi0|spi_fir|Add8~10_combout\,
	cout => \spi0|spi_fir|Add8~11\);

-- Location: LCCOMB_X19_Y25_N16
\spi0|spi_fir|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~12_combout\ = ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT7\ $ (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT7\ $ (!\spi0|spi_fir|Add8~11\)))) # (GND)
-- \spi0|spi_fir|Add8~13\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT7\) # (!\spi0|spi_fir|Add8~11\))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT7\ & 
-- (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT7\ & !\spi0|spi_fir|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT7\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~11\,
	combout => \spi0|spi_fir|Add8~12_combout\,
	cout => \spi0|spi_fir|Add8~13\);

-- Location: LCCOMB_X19_Y25_N26
\spi0|spi_fir|Add8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~22_combout\ = (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT12\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\ & (\spi0|spi_fir|Add8~21\ & VCC)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\ & 
-- (!\spi0|spi_fir|Add8~21\)))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT12\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\ & (!\spi0|spi_fir|Add8~21\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\ & 
-- ((\spi0|spi_fir|Add8~21\) # (GND)))))
-- \spi0|spi_fir|Add8~23\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT12\ & (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\ & !\spi0|spi_fir|Add8~21\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT12\ & 
-- ((!\spi0|spi_fir|Add8~21\) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT12\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~21\,
	combout => \spi0|spi_fir|Add8~22_combout\,
	cout => \spi0|spi_fir|Add8~23\);

-- Location: LCCOMB_X19_Y24_N0
\spi0|spi_fir|Add8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~28_combout\ = ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT15\ $ (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT15\ $ (!\spi0|spi_fir|Add8~27\)))) # (GND)
-- \spi0|spi_fir|Add8~29\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT15\) # (!\spi0|spi_fir|Add8~27\))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT15\ & 
-- (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add8~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT15\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~27\,
	combout => \spi0|spi_fir|Add8~28_combout\,
	cout => \spi0|spi_fir|Add8~29\);

-- Location: LCCOMB_X19_Y24_N2
\spi0|spi_fir|Add8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~30_combout\ = (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT16\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\ & (\spi0|spi_fir|Add8~29\ & VCC)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\ & 
-- (!\spi0|spi_fir|Add8~29\)))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT16\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\ & (!\spi0|spi_fir|Add8~29\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\spi0|spi_fir|Add8~29\) # (GND)))))
-- \spi0|spi_fir|Add8~31\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT16\ & (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\ & !\spi0|spi_fir|Add8~29\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT16\ & 
-- ((!\spi0|spi_fir|Add8~29\) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT16\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~29\,
	combout => \spi0|spi_fir|Add8~30_combout\,
	cout => \spi0|spi_fir|Add8~31\);

-- Location: LCCOMB_X19_Y24_N4
\spi0|spi_fir|Add8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~32_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT17\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT17\ $ (!\spi0|spi_fir|Add8~31\)))) # (GND)
-- \spi0|spi_fir|Add8~33\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT17\) # (!\spi0|spi_fir|Add8~31\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT17\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT17\ & !\spi0|spi_fir|Add8~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT17\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~31\,
	combout => \spi0|spi_fir|Add8~32_combout\,
	cout => \spi0|spi_fir|Add8~33\);

-- Location: LCCOMB_X19_Y24_N8
\spi0|spi_fir|Add8~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~36_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT19\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT19\ $ (!\spi0|spi_fir|Add8~35\)))) # (GND)
-- \spi0|spi_fir|Add8~37\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT19\) # (!\spi0|spi_fir|Add8~35\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT19\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT19\ & !\spi0|spi_fir|Add8~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT19\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~35\,
	combout => \spi0|spi_fir|Add8~36_combout\,
	cout => \spi0|spi_fir|Add8~37\);

-- Location: LCCOMB_X19_Y24_N10
\spi0|spi_fir|Add8~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~38_combout\ = (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT20\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\ & (\spi0|spi_fir|Add8~37\ & VCC)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\ & 
-- (!\spi0|spi_fir|Add8~37\)))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT20\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\ & (!\spi0|spi_fir|Add8~37\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\spi0|spi_fir|Add8~37\) # (GND)))))
-- \spi0|spi_fir|Add8~39\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT20\ & (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\ & !\spi0|spi_fir|Add8~37\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT20\ & 
-- ((!\spi0|spi_fir|Add8~37\) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT20\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~37\,
	combout => \spi0|spi_fir|Add8~38_combout\,
	cout => \spi0|spi_fir|Add8~39\);

-- Location: LCCOMB_X19_Y24_N12
\spi0|spi_fir|Add8~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~40_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT21\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT21\ $ (!\spi0|spi_fir|Add8~39\)))) # (GND)
-- \spi0|spi_fir|Add8~41\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT21\) # (!\spi0|spi_fir|Add8~39\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT21\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add8~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT21\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~39\,
	combout => \spi0|spi_fir|Add8~40_combout\,
	cout => \spi0|spi_fir|Add8~41\);

-- Location: LCCOMB_X19_Y24_N14
\spi0|spi_fir|Add8~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~42_combout\ = (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT22\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\ & (\spi0|spi_fir|Add8~41\ & VCC)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\ & 
-- (!\spi0|spi_fir|Add8~41\)))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT22\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\ & (!\spi0|spi_fir|Add8~41\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\spi0|spi_fir|Add8~41\) # (GND)))))
-- \spi0|spi_fir|Add8~43\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT22\ & (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\ & !\spi0|spi_fir|Add8~41\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT22\ & 
-- ((!\spi0|spi_fir|Add8~41\) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT22\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~41\,
	combout => \spi0|spi_fir|Add8~42_combout\,
	cout => \spi0|spi_fir|Add8~43\);

-- Location: LCCOMB_X19_Y24_N16
\spi0|spi_fir|Add8~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~44_combout\ = ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT23\ $ (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT23\ $ (!\spi0|spi_fir|Add8~43\)))) # (GND)
-- \spi0|spi_fir|Add8~45\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT23\) # (!\spi0|spi_fir|Add8~43\))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT23\ & 
-- (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT23\ & !\spi0|spi_fir|Add8~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT23\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~43\,
	combout => \spi0|spi_fir|Add8~44_combout\,
	cout => \spi0|spi_fir|Add8~45\);

-- Location: LCCOMB_X19_Y24_N22
\spi0|spi_fir|Add8~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~50_combout\ = (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\ & (\spi0|spi_fir|Add8~49\ & VCC)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\ & 
-- (!\spi0|spi_fir|Add8~49\)))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\ & (!\spi0|spi_fir|Add8~49\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\spi0|spi_fir|Add8~49\) # (GND)))))
-- \spi0|spi_fir|Add8~51\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ & (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\ & !\spi0|spi_fir|Add8~49\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ & 
-- ((!\spi0|spi_fir|Add8~49\) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~49\,
	combout => \spi0|spi_fir|Add8~50_combout\,
	cout => \spi0|spi_fir|Add8~51\);

-- Location: LCCOMB_X19_Y24_N24
\spi0|spi_fir|Add8~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~52_combout\ = ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\ $ (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ $ (!\spi0|spi_fir|Add8~51\)))) # (GND)
-- \spi0|spi_fir|Add8~53\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\) # (!\spi0|spi_fir|Add8~51\))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\ & 
-- (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ & !\spi0|spi_fir|Add8~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~51\,
	combout => \spi0|spi_fir|Add8~52_combout\,
	cout => \spi0|spi_fir|Add8~53\);

-- Location: LCCOMB_X19_Y24_N26
\spi0|spi_fir|Add8~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~54_combout\ = \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\ $ (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Add8~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT26\,
	cin => \spi0|spi_fir|Add8~53\,
	combout => \spi0|spi_fir|Add8~54_combout\);

-- Location: DSPOUT_X18_Y24_N2
\spi0|spi_fir|Mult8|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult8|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X20_Y25_N8
\spi0|spi_fir|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~6_combout\ = (\spi0|spi_fir|Add8~4_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\ & (\spi0|spi_fir|Add7~5\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add7~5\)))) # 
-- (!\spi0|spi_fir|Add8~4_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add7~5\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Add7~5\) # (GND)))))
-- \spi0|spi_fir|Add7~7\ = CARRY((\spi0|spi_fir|Add8~4_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\ & !\spi0|spi_fir|Add7~5\)) # (!\spi0|spi_fir|Add8~4_combout\ & ((!\spi0|spi_fir|Add7~5\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~4_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~5\,
	combout => \spi0|spi_fir|Add7~6_combout\,
	cout => \spi0|spi_fir|Add7~7\);

-- Location: LCCOMB_X20_Y25_N14
\spi0|spi_fir|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~12_combout\ = ((\spi0|spi_fir|Add8~10_combout\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT6\ $ (!\spi0|spi_fir|Add7~11\)))) # (GND)
-- \spi0|spi_fir|Add7~13\ = CARRY((\spi0|spi_fir|Add8~10_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT6\) # (!\spi0|spi_fir|Add7~11\))) # (!\spi0|spi_fir|Add8~10_combout\ & (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT6\ & 
-- !\spi0|spi_fir|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~10_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~11\,
	combout => \spi0|spi_fir|Add7~12_combout\,
	cout => \spi0|spi_fir|Add7~13\);

-- Location: LCCOMB_X20_Y25_N20
\spi0|spi_fir|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~18_combout\ = (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add8~16_combout\ & (\spi0|spi_fir|Add7~17\ & VCC)) # (!\spi0|spi_fir|Add8~16_combout\ & (!\spi0|spi_fir|Add7~17\)))) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add8~16_combout\ & (!\spi0|spi_fir|Add7~17\)) # (!\spi0|spi_fir|Add8~16_combout\ & ((\spi0|spi_fir|Add7~17\) # (GND)))))
-- \spi0|spi_fir|Add7~19\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add8~16_combout\ & !\spi0|spi_fir|Add7~17\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT9\ & ((!\spi0|spi_fir|Add7~17\) # 
-- (!\spi0|spi_fir|Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT9\,
	datab => \spi0|spi_fir|Add8~16_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~17\,
	combout => \spi0|spi_fir|Add7~18_combout\,
	cout => \spi0|spi_fir|Add7~19\);

-- Location: LCCOMB_X20_Y25_N26
\spi0|spi_fir|Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~24_combout\ = ((\spi0|spi_fir|Add8~22_combout\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT12\ $ (!\spi0|spi_fir|Add7~23\)))) # (GND)
-- \spi0|spi_fir|Add7~25\ = CARRY((\spi0|spi_fir|Add8~22_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT12\) # (!\spi0|spi_fir|Add7~23\))) # (!\spi0|spi_fir|Add8~22_combout\ & (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT12\ & 
-- !\spi0|spi_fir|Add7~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~22_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~23\,
	combout => \spi0|spi_fir|Add7~24_combout\,
	cout => \spi0|spi_fir|Add7~25\);

-- Location: LCCOMB_X20_Y25_N28
\spi0|spi_fir|Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~26_combout\ = (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Add8~24_combout\ & (\spi0|spi_fir|Add7~25\ & VCC)) # (!\spi0|spi_fir|Add8~24_combout\ & (!\spi0|spi_fir|Add7~25\)))) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Add8~24_combout\ & (!\spi0|spi_fir|Add7~25\)) # (!\spi0|spi_fir|Add8~24_combout\ & ((\spi0|spi_fir|Add7~25\) # (GND)))))
-- \spi0|spi_fir|Add7~27\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add8~24_combout\ & !\spi0|spi_fir|Add7~25\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT13\ & ((!\spi0|spi_fir|Add7~25\) # 
-- (!\spi0|spi_fir|Add8~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT13\,
	datab => \spi0|spi_fir|Add8~24_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~25\,
	combout => \spi0|spi_fir|Add7~26_combout\,
	cout => \spi0|spi_fir|Add7~27\);

-- Location: LCCOMB_X20_Y25_N30
\spi0|spi_fir|Add7~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~28_combout\ = ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT14\ $ (\spi0|spi_fir|Add8~26_combout\ $ (!\spi0|spi_fir|Add7~27\)))) # (GND)
-- \spi0|spi_fir|Add7~29\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Add8~26_combout\) # (!\spi0|spi_fir|Add7~27\))) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT14\ & (\spi0|spi_fir|Add8~26_combout\ & 
-- !\spi0|spi_fir|Add7~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT14\,
	datab => \spi0|spi_fir|Add8~26_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~27\,
	combout => \spi0|spi_fir|Add7~28_combout\,
	cout => \spi0|spi_fir|Add7~29\);

-- Location: LCCOMB_X20_Y24_N2
\spi0|spi_fir|Add7~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~32_combout\ = ((\spi0|spi_fir|Add8~30_combout\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT16\ $ (!\spi0|spi_fir|Add7~31\)))) # (GND)
-- \spi0|spi_fir|Add7~33\ = CARRY((\spi0|spi_fir|Add8~30_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT16\) # (!\spi0|spi_fir|Add7~31\))) # (!\spi0|spi_fir|Add8~30_combout\ & (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT16\ & 
-- !\spi0|spi_fir|Add7~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~30_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~31\,
	combout => \spi0|spi_fir|Add7~32_combout\,
	cout => \spi0|spi_fir|Add7~33\);

-- Location: LCCOMB_X20_Y24_N4
\spi0|spi_fir|Add7~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~34_combout\ = (\spi0|spi_fir|Add8~32_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\ & (\spi0|spi_fir|Add7~33\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add7~33\)))) # 
-- (!\spi0|spi_fir|Add8~32_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add7~33\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add7~33\) # (GND)))))
-- \spi0|spi_fir|Add7~35\ = CARRY((\spi0|spi_fir|Add8~32_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\ & !\spi0|spi_fir|Add7~33\)) # (!\spi0|spi_fir|Add8~32_combout\ & ((!\spi0|spi_fir|Add7~33\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~32_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~33\,
	combout => \spi0|spi_fir|Add7~34_combout\,
	cout => \spi0|spi_fir|Add7~35\);

-- Location: LCCOMB_X20_Y24_N6
\spi0|spi_fir|Add7~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~36_combout\ = ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT18\ $ (\spi0|spi_fir|Add8~34_combout\ $ (!\spi0|spi_fir|Add7~35\)))) # (GND)
-- \spi0|spi_fir|Add7~37\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Add8~34_combout\) # (!\spi0|spi_fir|Add7~35\))) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT18\ & (\spi0|spi_fir|Add8~34_combout\ & 
-- !\spi0|spi_fir|Add7~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Add8~34_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~35\,
	combout => \spi0|spi_fir|Add7~36_combout\,
	cout => \spi0|spi_fir|Add7~37\);

-- Location: LCCOMB_X20_Y24_N14
\spi0|spi_fir|Add7~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~44_combout\ = ((\spi0|spi_fir|Add8~42_combout\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT22\ $ (!\spi0|spi_fir|Add7~43\)))) # (GND)
-- \spi0|spi_fir|Add7~45\ = CARRY((\spi0|spi_fir|Add8~42_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT22\) # (!\spi0|spi_fir|Add7~43\))) # (!\spi0|spi_fir|Add8~42_combout\ & (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT22\ & 
-- !\spi0|spi_fir|Add7~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~42_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~43\,
	combout => \spi0|spi_fir|Add7~44_combout\,
	cout => \spi0|spi_fir|Add7~45\);

-- Location: LCCOMB_X20_Y24_N24
\spi0|spi_fir|Add7~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~54_combout\ = (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add8~52_combout\ & (\spi0|spi_fir|Add7~53\ & VCC)) # (!\spi0|spi_fir|Add8~52_combout\ & (!\spi0|spi_fir|Add7~53\)))) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add8~52_combout\ & (!\spi0|spi_fir|Add7~53\)) # (!\spi0|spi_fir|Add8~52_combout\ & ((\spi0|spi_fir|Add7~53\) # (GND)))))
-- \spi0|spi_fir|Add7~55\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ & (!\spi0|spi_fir|Add8~52_combout\ & !\spi0|spi_fir|Add7~53\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ & ((!\spi0|spi_fir|Add7~53\) # 
-- (!\spi0|spi_fir|Add8~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Add8~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~53\,
	combout => \spi0|spi_fir|Add7~54_combout\,
	cout => \spi0|spi_fir|Add7~55\);

-- Location: DSPOUT_X18_Y20_N2
\spi0|spi_fir|Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y21_N2
\spi0|spi_fir|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y21_N8
\spi0|spi_fir|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~4_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT3\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT3\ $ (!\spi0|spi_fir|Add0~3\)))) # (GND)
-- \spi0|spi_fir|Add0~5\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT3\) # (!\spi0|spi_fir|Add0~3\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT3\ & !\spi0|spi_fir|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~3\,
	combout => \spi0|spi_fir|Add0~4_combout\,
	cout => \spi0|spi_fir|Add0~5\);

-- Location: LCCOMB_X19_Y21_N10
\spi0|spi_fir|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~6_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\ & (\spi0|spi_fir|Add0~5\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\ & 
-- (!\spi0|spi_fir|Add0~5\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\ & (!\spi0|spi_fir|Add0~5\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\ & 
-- ((\spi0|spi_fir|Add0~5\) # (GND)))))
-- \spi0|spi_fir|Add0~7\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT4\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\ & !\spi0|spi_fir|Add0~5\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((!\spi0|spi_fir|Add0~5\) 
-- # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~5\,
	combout => \spi0|spi_fir|Add0~6_combout\,
	cout => \spi0|spi_fir|Add0~7\);

-- Location: LCCOMB_X19_Y21_N12
\spi0|spi_fir|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~8_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT5\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT5\ $ (!\spi0|spi_fir|Add0~7\)))) # (GND)
-- \spi0|spi_fir|Add0~9\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT5\) # (!\spi0|spi_fir|Add0~7\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\spi0|spi_fir|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~7\,
	combout => \spi0|spi_fir|Add0~8_combout\,
	cout => \spi0|spi_fir|Add0~9\);

-- Location: LCCOMB_X19_Y21_N14
\spi0|spi_fir|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~10_combout\ = (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\spi0|spi_fir|Add0~9\ & VCC)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\ & 
-- (!\spi0|spi_fir|Add0~9\)))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\ & (!\spi0|spi_fir|Add0~9\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\ & 
-- ((\spi0|spi_fir|Add0~9\) # (GND)))))
-- \spi0|spi_fir|Add0~11\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT6\ & (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\spi0|spi_fir|Add0~9\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT6\ & 
-- ((!\spi0|spi_fir|Add0~9\) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~9\,
	combout => \spi0|spi_fir|Add0~10_combout\,
	cout => \spi0|spi_fir|Add0~11\);

-- Location: LCCOMB_X19_Y21_N16
\spi0|spi_fir|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~12_combout\ = ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT7\ $ (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT7\ $ (!\spi0|spi_fir|Add0~11\)))) # (GND)
-- \spi0|spi_fir|Add0~13\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT7\) # (!\spi0|spi_fir|Add0~11\))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\spi0|spi_fir|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~11\,
	combout => \spi0|spi_fir|Add0~12_combout\,
	cout => \spi0|spi_fir|Add0~13\);

-- Location: LCCOMB_X19_Y21_N26
\spi0|spi_fir|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~22_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\ & (\spi0|spi_fir|Add0~21\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\ & 
-- (!\spi0|spi_fir|Add0~21\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\ & (!\spi0|spi_fir|Add0~21\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\ & 
-- ((\spi0|spi_fir|Add0~21\) # (GND)))))
-- \spi0|spi_fir|Add0~23\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\ & !\spi0|spi_fir|Add0~21\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT12\ & 
-- ((!\spi0|spi_fir|Add0~21\) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~21\,
	combout => \spi0|spi_fir|Add0~22_combout\,
	cout => \spi0|spi_fir|Add0~23\);

-- Location: LCCOMB_X19_Y20_N0
\spi0|spi_fir|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~28_combout\ = ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT15\ $ (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (!\spi0|spi_fir|Add0~27\)))) # (GND)
-- \spi0|spi_fir|Add0~29\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT15\) # (!\spi0|spi_fir|Add0~27\))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~27\,
	combout => \spi0|spi_fir|Add0~28_combout\,
	cout => \spi0|spi_fir|Add0~29\);

-- Location: LCCOMB_X19_Y20_N2
\spi0|spi_fir|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~30_combout\ = (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\spi0|spi_fir|Add0~29\ & VCC)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- (!\spi0|spi_fir|Add0~29\)))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\spi0|spi_fir|Add0~29\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- ((\spi0|spi_fir|Add0~29\) # (GND)))))
-- \spi0|spi_fir|Add0~31\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT16\ & (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\spi0|spi_fir|Add0~29\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT16\ & 
-- ((!\spi0|spi_fir|Add0~29\) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~29\,
	combout => \spi0|spi_fir|Add0~30_combout\,
	cout => \spi0|spi_fir|Add0~31\);

-- Location: LCCOMB_X19_Y20_N8
\spi0|spi_fir|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~36_combout\ = ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT19\ $ (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\spi0|spi_fir|Add0~35\)))) # (GND)
-- \spi0|spi_fir|Add0~37\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\spi0|spi_fir|Add0~35\))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\spi0|spi_fir|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~35\,
	combout => \spi0|spi_fir|Add0~36_combout\,
	cout => \spi0|spi_fir|Add0~37\);

-- Location: LCCOMB_X19_Y20_N10
\spi0|spi_fir|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~38_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\ & (\spi0|spi_fir|Add0~37\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- (!\spi0|spi_fir|Add0~37\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\ & (!\spi0|spi_fir|Add0~37\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- ((\spi0|spi_fir|Add0~37\) # (GND)))))
-- \spi0|spi_fir|Add0~39\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\spi0|spi_fir|Add0~37\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- ((!\spi0|spi_fir|Add0~37\) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~37\,
	combout => \spi0|spi_fir|Add0~38_combout\,
	cout => \spi0|spi_fir|Add0~39\);

-- Location: LCCOMB_X19_Y20_N12
\spi0|spi_fir|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~40_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT21\ $ (!\spi0|spi_fir|Add0~39\)))) # (GND)
-- \spi0|spi_fir|Add0~41\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT21\) # (!\spi0|spi_fir|Add0~39\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~39\,
	combout => \spi0|spi_fir|Add0~40_combout\,
	cout => \spi0|spi_fir|Add0~41\);

-- Location: LCCOMB_X19_Y20_N14
\spi0|spi_fir|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~42_combout\ = (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\spi0|spi_fir|Add0~41\ & VCC)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- (!\spi0|spi_fir|Add0~41\)))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\spi0|spi_fir|Add0~41\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- ((\spi0|spi_fir|Add0~41\) # (GND)))))
-- \spi0|spi_fir|Add0~43\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT22\ & (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\spi0|spi_fir|Add0~41\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- ((!\spi0|spi_fir|Add0~41\) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~41\,
	combout => \spi0|spi_fir|Add0~42_combout\,
	cout => \spi0|spi_fir|Add0~43\);

-- Location: LCCOMB_X19_Y20_N16
\spi0|spi_fir|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~44_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT23\ $ (!\spi0|spi_fir|Add0~43\)))) # (GND)
-- \spi0|spi_fir|Add0~45\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT23\) # (!\spi0|spi_fir|Add0~43\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\spi0|spi_fir|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~43\,
	combout => \spi0|spi_fir|Add0~44_combout\,
	cout => \spi0|spi_fir|Add0~45\);

-- Location: LCCOMB_X19_Y20_N24
\spi0|spi_fir|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~52_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\ $ (!\spi0|spi_fir|Add0~51\)))) # (GND)
-- \spi0|spi_fir|Add0~53\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\) # (!\spi0|spi_fir|Add0~51\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\ & !\spi0|spi_fir|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~51\,
	combout => \spi0|spi_fir|Add0~52_combout\,
	cout => \spi0|spi_fir|Add0~53\);

-- Location: LCCOMB_X19_Y20_N26
\spi0|spi_fir|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~54_combout\ = \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Add0~53\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT27\,
	cin => \spi0|spi_fir|Add0~53\,
	combout => \spi0|spi_fir|Add0~54_combout\);

-- Location: DSPOUT_X18_Y22_N2
\spi0|spi_fir|Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X20_Y21_N2
\spi0|spi_fir|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~0_combout\ = (\spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\ & (\spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\ $ (VCC))) # (!\spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\ & (\spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\ & VCC))
-- \spi0|spi_fir|Add1~1\ = CARRY((\spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \spi0|spi_fir|Add1~0_combout\,
	cout => \spi0|spi_fir|Add1~1\);

-- Location: LCCOMB_X20_Y21_N8
\spi0|spi_fir|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~6_combout\ = (\spi0|spi_fir|Add0~4_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\ & (\spi0|spi_fir|Add1~5\ & VCC)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add1~5\)))) # 
-- (!\spi0|spi_fir|Add0~4_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add1~5\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Add1~5\) # (GND)))))
-- \spi0|spi_fir|Add1~7\ = CARRY((\spi0|spi_fir|Add0~4_combout\ & (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\ & !\spi0|spi_fir|Add1~5\)) # (!\spi0|spi_fir|Add0~4_combout\ & ((!\spi0|spi_fir|Add1~5\) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~4_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~5\,
	combout => \spi0|spi_fir|Add1~6_combout\,
	cout => \spi0|spi_fir|Add1~7\);

-- Location: LCCOMB_X20_Y21_N10
\spi0|spi_fir|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~8_combout\ = ((\spi0|spi_fir|Add0~6_combout\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT4\ $ (!\spi0|spi_fir|Add1~7\)))) # (GND)
-- \spi0|spi_fir|Add1~9\ = CARRY((\spi0|spi_fir|Add0~6_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT4\) # (!\spi0|spi_fir|Add1~7\))) # (!\spi0|spi_fir|Add0~6_combout\ & (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT4\ & 
-- !\spi0|spi_fir|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~6_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~7\,
	combout => \spi0|spi_fir|Add1~8_combout\,
	cout => \spi0|spi_fir|Add1~9\);

-- Location: LCCOMB_X20_Y21_N12
\spi0|spi_fir|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~10_combout\ = (\spi0|spi_fir|Add0~8_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\ & (\spi0|spi_fir|Add1~9\ & VCC)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add1~9\)))) # 
-- (!\spi0|spi_fir|Add0~8_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add1~9\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Add1~9\) # (GND)))))
-- \spi0|spi_fir|Add1~11\ = CARRY((\spi0|spi_fir|Add0~8_combout\ & (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\ & !\spi0|spi_fir|Add1~9\)) # (!\spi0|spi_fir|Add0~8_combout\ & ((!\spi0|spi_fir|Add1~9\) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~8_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~9\,
	combout => \spi0|spi_fir|Add1~10_combout\,
	cout => \spi0|spi_fir|Add1~11\);

-- Location: LCCOMB_X20_Y21_N14
\spi0|spi_fir|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~12_combout\ = ((\spi0|spi_fir|Add0~10_combout\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT6\ $ (!\spi0|spi_fir|Add1~11\)))) # (GND)
-- \spi0|spi_fir|Add1~13\ = CARRY((\spi0|spi_fir|Add0~10_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT6\) # (!\spi0|spi_fir|Add1~11\))) # (!\spi0|spi_fir|Add0~10_combout\ & (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT6\ & 
-- !\spi0|spi_fir|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~10_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~11\,
	combout => \spi0|spi_fir|Add1~12_combout\,
	cout => \spi0|spi_fir|Add1~13\);

-- Location: LCCOMB_X20_Y21_N16
\spi0|spi_fir|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~14_combout\ = (\spi0|spi_fir|Add0~12_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\ & (\spi0|spi_fir|Add1~13\ & VCC)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add1~13\)))) # 
-- (!\spi0|spi_fir|Add0~12_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add1~13\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Add1~13\) # (GND)))))
-- \spi0|spi_fir|Add1~15\ = CARRY((\spi0|spi_fir|Add0~12_combout\ & (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\ & !\spi0|spi_fir|Add1~13\)) # (!\spi0|spi_fir|Add0~12_combout\ & ((!\spi0|spi_fir|Add1~13\) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~12_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~13\,
	combout => \spi0|spi_fir|Add1~14_combout\,
	cout => \spi0|spi_fir|Add1~15\);

-- Location: LCCOMB_X20_Y21_N22
\spi0|spi_fir|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~20_combout\ = ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT10\ $ (\spi0|spi_fir|Add0~18_combout\ $ (!\spi0|spi_fir|Add1~19\)))) # (GND)
-- \spi0|spi_fir|Add1~21\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Add0~18_combout\) # (!\spi0|spi_fir|Add1~19\))) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT10\ & (\spi0|spi_fir|Add0~18_combout\ & 
-- !\spi0|spi_fir|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT10\,
	datab => \spi0|spi_fir|Add0~18_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~19\,
	combout => \spi0|spi_fir|Add1~20_combout\,
	cout => \spi0|spi_fir|Add1~21\);

-- Location: LCCOMB_X20_Y21_N24
\spi0|spi_fir|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~22_combout\ = (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add0~20_combout\ & (\spi0|spi_fir|Add1~21\ & VCC)) # (!\spi0|spi_fir|Add0~20_combout\ & (!\spi0|spi_fir|Add1~21\)))) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add0~20_combout\ & (!\spi0|spi_fir|Add1~21\)) # (!\spi0|spi_fir|Add0~20_combout\ & ((\spi0|spi_fir|Add1~21\) # (GND)))))
-- \spi0|spi_fir|Add1~23\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Add0~20_combout\ & !\spi0|spi_fir|Add1~21\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT11\ & ((!\spi0|spi_fir|Add1~21\) # 
-- (!\spi0|spi_fir|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT11\,
	datab => \spi0|spi_fir|Add0~20_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~21\,
	combout => \spi0|spi_fir|Add1~22_combout\,
	cout => \spi0|spi_fir|Add1~23\);

-- Location: LCCOMB_X20_Y21_N28
\spi0|spi_fir|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~26_combout\ = (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Add0~24_combout\ & (\spi0|spi_fir|Add1~25\ & VCC)) # (!\spi0|spi_fir|Add0~24_combout\ & (!\spi0|spi_fir|Add1~25\)))) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Add0~24_combout\ & (!\spi0|spi_fir|Add1~25\)) # (!\spi0|spi_fir|Add0~24_combout\ & ((\spi0|spi_fir|Add1~25\) # (GND)))))
-- \spi0|spi_fir|Add1~27\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add0~24_combout\ & !\spi0|spi_fir|Add1~25\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT13\ & ((!\spi0|spi_fir|Add1~25\) # 
-- (!\spi0|spi_fir|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT13\,
	datab => \spi0|spi_fir|Add0~24_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~25\,
	combout => \spi0|spi_fir|Add1~26_combout\,
	cout => \spi0|spi_fir|Add1~27\);

-- Location: LCCOMB_X20_Y20_N0
\spi0|spi_fir|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~30_combout\ = (\spi0|spi_fir|Add0~28_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\ & (\spi0|spi_fir|Add1~29\ & VCC)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add1~29\)))) # 
-- (!\spi0|spi_fir|Add0~28_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add1~29\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Add1~29\) # (GND)))))
-- \spi0|spi_fir|Add1~31\ = CARRY((\spi0|spi_fir|Add0~28_combout\ & (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add1~29\)) # (!\spi0|spi_fir|Add0~28_combout\ & ((!\spi0|spi_fir|Add1~29\) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~28_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~29\,
	combout => \spi0|spi_fir|Add1~30_combout\,
	cout => \spi0|spi_fir|Add1~31\);

-- Location: LCCOMB_X20_Y20_N2
\spi0|spi_fir|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~32_combout\ = ((\spi0|spi_fir|Add0~30_combout\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT16\ $ (!\spi0|spi_fir|Add1~31\)))) # (GND)
-- \spi0|spi_fir|Add1~33\ = CARRY((\spi0|spi_fir|Add0~30_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT16\) # (!\spi0|spi_fir|Add1~31\))) # (!\spi0|spi_fir|Add0~30_combout\ & (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT16\ & 
-- !\spi0|spi_fir|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~30_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~31\,
	combout => \spi0|spi_fir|Add1~32_combout\,
	cout => \spi0|spi_fir|Add1~33\);

-- Location: LCCOMB_X20_Y20_N4
\spi0|spi_fir|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~34_combout\ = (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add0~32_combout\ & (\spi0|spi_fir|Add1~33\ & VCC)) # (!\spi0|spi_fir|Add0~32_combout\ & (!\spi0|spi_fir|Add1~33\)))) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add0~32_combout\ & (!\spi0|spi_fir|Add1~33\)) # (!\spi0|spi_fir|Add0~32_combout\ & ((\spi0|spi_fir|Add1~33\) # (GND)))))
-- \spi0|spi_fir|Add1~35\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add0~32_combout\ & !\spi0|spi_fir|Add1~33\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT17\ & ((!\spi0|spi_fir|Add1~33\) # 
-- (!\spi0|spi_fir|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT17\,
	datab => \spi0|spi_fir|Add0~32_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~33\,
	combout => \spi0|spi_fir|Add1~34_combout\,
	cout => \spi0|spi_fir|Add1~35\);

-- Location: LCCOMB_X20_Y20_N8
\spi0|spi_fir|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~38_combout\ = (\spi0|spi_fir|Add0~36_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\ & (\spi0|spi_fir|Add1~37\ & VCC)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add1~37\)))) # 
-- (!\spi0|spi_fir|Add0~36_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add1~37\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Add1~37\) # (GND)))))
-- \spi0|spi_fir|Add1~39\ = CARRY((\spi0|spi_fir|Add0~36_combout\ & (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\ & !\spi0|spi_fir|Add1~37\)) # (!\spi0|spi_fir|Add0~36_combout\ & ((!\spi0|spi_fir|Add1~37\) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~36_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~37\,
	combout => \spi0|spi_fir|Add1~38_combout\,
	cout => \spi0|spi_fir|Add1~39\);

-- Location: LCCOMB_X20_Y20_N10
\spi0|spi_fir|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~40_combout\ = ((\spi0|spi_fir|Add0~38_combout\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT20\ $ (!\spi0|spi_fir|Add1~39\)))) # (GND)
-- \spi0|spi_fir|Add1~41\ = CARRY((\spi0|spi_fir|Add0~38_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT20\) # (!\spi0|spi_fir|Add1~39\))) # (!\spi0|spi_fir|Add0~38_combout\ & (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT20\ & 
-- !\spi0|spi_fir|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~38_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~39\,
	combout => \spi0|spi_fir|Add1~40_combout\,
	cout => \spi0|spi_fir|Add1~41\);

-- Location: LCCOMB_X20_Y20_N12
\spi0|spi_fir|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~42_combout\ = (\spi0|spi_fir|Add0~40_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\ & (\spi0|spi_fir|Add1~41\ & VCC)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add1~41\)))) # 
-- (!\spi0|spi_fir|Add0~40_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add1~41\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Add1~41\) # (GND)))))
-- \spi0|spi_fir|Add1~43\ = CARRY((\spi0|spi_fir|Add0~40_combout\ & (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add1~41\)) # (!\spi0|spi_fir|Add0~40_combout\ & ((!\spi0|spi_fir|Add1~41\) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~40_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~41\,
	combout => \spi0|spi_fir|Add1~42_combout\,
	cout => \spi0|spi_fir|Add1~43\);

-- Location: LCCOMB_X20_Y20_N14
\spi0|spi_fir|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~44_combout\ = ((\spi0|spi_fir|Add0~42_combout\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT22\ $ (!\spi0|spi_fir|Add1~43\)))) # (GND)
-- \spi0|spi_fir|Add1~45\ = CARRY((\spi0|spi_fir|Add0~42_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT22\) # (!\spi0|spi_fir|Add1~43\))) # (!\spi0|spi_fir|Add0~42_combout\ & (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT22\ & 
-- !\spi0|spi_fir|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~42_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~43\,
	combout => \spi0|spi_fir|Add1~44_combout\,
	cout => \spi0|spi_fir|Add1~45\);

-- Location: LCCOMB_X20_Y20_N16
\spi0|spi_fir|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~46_combout\ = (\spi0|spi_fir|Add0~44_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\ & (\spi0|spi_fir|Add1~45\ & VCC)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add1~45\)))) # 
-- (!\spi0|spi_fir|Add0~44_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add1~45\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Add1~45\) # (GND)))))
-- \spi0|spi_fir|Add1~47\ = CARRY((\spi0|spi_fir|Add0~44_combout\ & (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\ & !\spi0|spi_fir|Add1~45\)) # (!\spi0|spi_fir|Add0~44_combout\ & ((!\spi0|spi_fir|Add1~45\) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~44_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~45\,
	combout => \spi0|spi_fir|Add1~46_combout\,
	cout => \spi0|spi_fir|Add1~47\);

-- Location: LCCOMB_X20_Y20_N18
\spi0|spi_fir|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~48_combout\ = ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT24\ $ (\spi0|spi_fir|Add0~46_combout\ $ (!\spi0|spi_fir|Add1~47\)))) # (GND)
-- \spi0|spi_fir|Add1~49\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT24\ & ((\spi0|spi_fir|Add0~46_combout\) # (!\spi0|spi_fir|Add1~47\))) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT24\ & (\spi0|spi_fir|Add0~46_combout\ & 
-- !\spi0|spi_fir|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT24\,
	datab => \spi0|spi_fir|Add0~46_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~47\,
	combout => \spi0|spi_fir|Add1~48_combout\,
	cout => \spi0|spi_fir|Add1~49\);

-- Location: LCCOMB_X20_Y20_N24
\spi0|spi_fir|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~54_combout\ = (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add0~52_combout\ & (\spi0|spi_fir|Add1~53\ & VCC)) # (!\spi0|spi_fir|Add0~52_combout\ & (!\spi0|spi_fir|Add1~53\)))) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add0~52_combout\ & (!\spi0|spi_fir|Add1~53\)) # (!\spi0|spi_fir|Add0~52_combout\ & ((\spi0|spi_fir|Add1~53\) # (GND)))))
-- \spi0|spi_fir|Add1~55\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ & (!\spi0|spi_fir|Add0~52_combout\ & !\spi0|spi_fir|Add1~53\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ & ((!\spi0|spi_fir|Add1~53\) # 
-- (!\spi0|spi_fir|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Add0~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~53\,
	combout => \spi0|spi_fir|Add1~54_combout\,
	cout => \spi0|spi_fir|Add1~55\);

-- Location: LCCOMB_X20_Y20_N26
\spi0|spi_fir|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~56_combout\ = ((\spi0|spi_fir|Add0~54_combout\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ $ (!\spi0|spi_fir|Add1~55\)))) # (GND)
-- \spi0|spi_fir|Add1~57\ = CARRY((\spi0|spi_fir|Add0~54_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\) # (!\spi0|spi_fir|Add1~55\))) # (!\spi0|spi_fir|Add0~54_combout\ & (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\ & 
-- !\spi0|spi_fir|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~54_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~55\,
	combout => \spi0|spi_fir|Add1~56_combout\,
	cout => \spi0|spi_fir|Add1~57\);

-- Location: LCCOMB_X20_Y20_N28
\spi0|spi_fir|Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~58_combout\ = \spi0|spi_fir|Add0~54_combout\ $ (\spi0|spi_fir|Add1~57\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~54_combout\,
	datad => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT27\,
	cin => \spi0|spi_fir|Add1~57\,
	combout => \spi0|spi_fir|Add1~58_combout\);

-- Location: DSPOUT_X18_Y19_N2
\spi0|spi_fir|Mult3|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y21_N16
\spi0|spi_fir|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~0_combout\ = (\spi0|spi_fir|Add1~0_combout\ & (\spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\ $ (VCC))) # (!\spi0|spi_fir|Add1~0_combout\ & (\spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\ & VCC))
-- \spi0|spi_fir|Add2~1\ = CARRY((\spi0|spi_fir|Add1~0_combout\ & \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~0_combout\,
	datab => \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \spi0|spi_fir|Add2~0_combout\,
	cout => \spi0|spi_fir|Add2~1\);

-- Location: LCCOMB_X21_Y21_N26
\spi0|spi_fir|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~10_combout\ = (\spi0|spi_fir|Add1~10_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\ & (\spi0|spi_fir|Add2~9\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add2~9\)))) # 
-- (!\spi0|spi_fir|Add1~10_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add2~9\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Add2~9\) # (GND)))))
-- \spi0|spi_fir|Add2~11\ = CARRY((\spi0|spi_fir|Add1~10_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\ & !\spi0|spi_fir|Add2~9\)) # (!\spi0|spi_fir|Add1~10_combout\ & ((!\spi0|spi_fir|Add2~9\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~10_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~9\,
	combout => \spi0|spi_fir|Add2~10_combout\,
	cout => \spi0|spi_fir|Add2~11\);

-- Location: LCCOMB_X21_Y20_N0
\spi0|spi_fir|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~16_combout\ = ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT8\ $ (\spi0|spi_fir|Add1~16_combout\ $ (!\spi0|spi_fir|Add2~15\)))) # (GND)
-- \spi0|spi_fir|Add2~17\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Add1~16_combout\) # (!\spi0|spi_fir|Add2~15\))) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT8\ & (\spi0|spi_fir|Add1~16_combout\ & 
-- !\spi0|spi_fir|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT8\,
	datab => \spi0|spi_fir|Add1~16_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~15\,
	combout => \spi0|spi_fir|Add2~16_combout\,
	cout => \spi0|spi_fir|Add2~17\);

-- Location: LCCOMB_X21_Y20_N2
\spi0|spi_fir|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~18_combout\ = (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add1~18_combout\ & (\spi0|spi_fir|Add2~17\ & VCC)) # (!\spi0|spi_fir|Add1~18_combout\ & (!\spi0|spi_fir|Add2~17\)))) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add1~18_combout\ & (!\spi0|spi_fir|Add2~17\)) # (!\spi0|spi_fir|Add1~18_combout\ & ((\spi0|spi_fir|Add2~17\) # (GND)))))
-- \spi0|spi_fir|Add2~19\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add1~18_combout\ & !\spi0|spi_fir|Add2~17\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT9\ & ((!\spi0|spi_fir|Add2~17\) # 
-- (!\spi0|spi_fir|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT9\,
	datab => \spi0|spi_fir|Add1~18_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~17\,
	combout => \spi0|spi_fir|Add2~18_combout\,
	cout => \spi0|spi_fir|Add2~19\);

-- Location: LCCOMB_X21_Y20_N8
\spi0|spi_fir|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~24_combout\ = ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT12\ $ (\spi0|spi_fir|Add1~24_combout\ $ (!\spi0|spi_fir|Add2~23\)))) # (GND)
-- \spi0|spi_fir|Add2~25\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT12\ & ((\spi0|spi_fir|Add1~24_combout\) # (!\spi0|spi_fir|Add2~23\))) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT12\ & (\spi0|spi_fir|Add1~24_combout\ & 
-- !\spi0|spi_fir|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT12\,
	datab => \spi0|spi_fir|Add1~24_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~23\,
	combout => \spi0|spi_fir|Add2~24_combout\,
	cout => \spi0|spi_fir|Add2~25\);

-- Location: LCCOMB_X21_Y20_N10
\spi0|spi_fir|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~26_combout\ = (\spi0|spi_fir|Add1~26_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\ & (\spi0|spi_fir|Add2~25\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add2~25\)))) # 
-- (!\spi0|spi_fir|Add1~26_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add2~25\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Add2~25\) # (GND)))))
-- \spi0|spi_fir|Add2~27\ = CARRY((\spi0|spi_fir|Add1~26_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\ & !\spi0|spi_fir|Add2~25\)) # (!\spi0|spi_fir|Add1~26_combout\ & ((!\spi0|spi_fir|Add2~25\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~26_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~25\,
	combout => \spi0|spi_fir|Add2~26_combout\,
	cout => \spi0|spi_fir|Add2~27\);

-- Location: LCCOMB_X21_Y20_N12
\spi0|spi_fir|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~28_combout\ = ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT14\ $ (\spi0|spi_fir|Add1~28_combout\ $ (!\spi0|spi_fir|Add2~27\)))) # (GND)
-- \spi0|spi_fir|Add2~29\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Add1~28_combout\) # (!\spi0|spi_fir|Add2~27\))) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT14\ & (\spi0|spi_fir|Add1~28_combout\ & 
-- !\spi0|spi_fir|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT14\,
	datab => \spi0|spi_fir|Add1~28_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~27\,
	combout => \spi0|spi_fir|Add2~28_combout\,
	cout => \spi0|spi_fir|Add2~29\);

-- Location: LCCOMB_X21_Y20_N14
\spi0|spi_fir|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~30_combout\ = (\spi0|spi_fir|Add1~30_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\ & (\spi0|spi_fir|Add2~29\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add2~29\)))) # 
-- (!\spi0|spi_fir|Add1~30_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add2~29\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Add2~29\) # (GND)))))
-- \spi0|spi_fir|Add2~31\ = CARRY((\spi0|spi_fir|Add1~30_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add2~29\)) # (!\spi0|spi_fir|Add1~30_combout\ & ((!\spi0|spi_fir|Add2~29\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~30_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~29\,
	combout => \spi0|spi_fir|Add2~30_combout\,
	cout => \spi0|spi_fir|Add2~31\);

-- Location: LCCOMB_X21_Y20_N16
\spi0|spi_fir|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~32_combout\ = ((\spi0|spi_fir|Add1~32_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT16\ $ (!\spi0|spi_fir|Add2~31\)))) # (GND)
-- \spi0|spi_fir|Add2~33\ = CARRY((\spi0|spi_fir|Add1~32_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT16\) # (!\spi0|spi_fir|Add2~31\))) # (!\spi0|spi_fir|Add1~32_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT16\ & 
-- !\spi0|spi_fir|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~32_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~31\,
	combout => \spi0|spi_fir|Add2~32_combout\,
	cout => \spi0|spi_fir|Add2~33\);

-- Location: LCCOMB_X21_Y20_N26
\spi0|spi_fir|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~42_combout\ = (\spi0|spi_fir|Add1~42_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\ & (\spi0|spi_fir|Add2~41\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add2~41\)))) # 
-- (!\spi0|spi_fir|Add1~42_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add2~41\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Add2~41\) # (GND)))))
-- \spi0|spi_fir|Add2~43\ = CARRY((\spi0|spi_fir|Add1~42_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add2~41\)) # (!\spi0|spi_fir|Add1~42_combout\ & ((!\spi0|spi_fir|Add2~41\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~42_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~41\,
	combout => \spi0|spi_fir|Add2~42_combout\,
	cout => \spi0|spi_fir|Add2~43\);

-- Location: LCCOMB_X21_Y19_N0
\spi0|spi_fir|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~48_combout\ = ((\spi0|spi_fir|Add1~48_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT24\ $ (!\spi0|spi_fir|Add2~47\)))) # (GND)
-- \spi0|spi_fir|Add2~49\ = CARRY((\spi0|spi_fir|Add1~48_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT24\) # (!\spi0|spi_fir|Add2~47\))) # (!\spi0|spi_fir|Add1~48_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT24\ & 
-- !\spi0|spi_fir|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~48_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~47\,
	combout => \spi0|spi_fir|Add2~48_combout\,
	cout => \spi0|spi_fir|Add2~49\);

-- Location: LCCOMB_X21_Y19_N2
\spi0|spi_fir|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~50_combout\ = (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add1~50_combout\ & (\spi0|spi_fir|Add2~49\ & VCC)) # (!\spi0|spi_fir|Add1~50_combout\ & (!\spi0|spi_fir|Add2~49\)))) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add1~50_combout\ & (!\spi0|spi_fir|Add2~49\)) # (!\spi0|spi_fir|Add1~50_combout\ & ((\spi0|spi_fir|Add2~49\) # (GND)))))
-- \spi0|spi_fir|Add2~51\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add1~50_combout\ & !\spi0|spi_fir|Add2~49\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT25\ & ((!\spi0|spi_fir|Add2~49\) # 
-- (!\spi0|spi_fir|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT25\,
	datab => \spi0|spi_fir|Add1~50_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~49\,
	combout => \spi0|spi_fir|Add2~50_combout\,
	cout => \spi0|spi_fir|Add2~51\);

-- Location: LCCOMB_X21_Y19_N6
\spi0|spi_fir|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~54_combout\ = (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add1~54_combout\ & (\spi0|spi_fir|Add2~53\ & VCC)) # (!\spi0|spi_fir|Add1~54_combout\ & (!\spi0|spi_fir|Add2~53\)))) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add1~54_combout\ & (!\spi0|spi_fir|Add2~53\)) # (!\spi0|spi_fir|Add1~54_combout\ & ((\spi0|spi_fir|Add2~53\) # (GND)))))
-- \spi0|spi_fir|Add2~55\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT27\ & (!\spi0|spi_fir|Add1~54_combout\ & !\spi0|spi_fir|Add2~53\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT27\ & ((!\spi0|spi_fir|Add2~53\) # 
-- (!\spi0|spi_fir|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Add1~54_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~53\,
	combout => \spi0|spi_fir|Add2~54_combout\,
	cout => \spi0|spi_fir|Add2~55\);

-- Location: LCCOMB_X21_Y19_N8
\spi0|spi_fir|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~56_combout\ = ((\spi0|spi_fir|Add1~56_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT28\ $ (!\spi0|spi_fir|Add2~55\)))) # (GND)
-- \spi0|spi_fir|Add2~57\ = CARRY((\spi0|spi_fir|Add1~56_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT28\) # (!\spi0|spi_fir|Add2~55\))) # (!\spi0|spi_fir|Add1~56_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT28\ & 
-- !\spi0|spi_fir|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~56_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~55\,
	combout => \spi0|spi_fir|Add2~56_combout\,
	cout => \spi0|spi_fir|Add2~57\);

-- Location: LCCOMB_X21_Y19_N10
\spi0|spi_fir|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~58_combout\ = (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT29\ & ((\spi0|spi_fir|Add1~58_combout\ & (\spi0|spi_fir|Add2~57\ & VCC)) # (!\spi0|spi_fir|Add1~58_combout\ & (!\spi0|spi_fir|Add2~57\)))) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT29\ & ((\spi0|spi_fir|Add1~58_combout\ & (!\spi0|spi_fir|Add2~57\)) # (!\spi0|spi_fir|Add1~58_combout\ & ((\spi0|spi_fir|Add2~57\) # (GND)))))
-- \spi0|spi_fir|Add2~59\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT29\ & (!\spi0|spi_fir|Add1~58_combout\ & !\spi0|spi_fir|Add2~57\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT29\ & ((!\spi0|spi_fir|Add2~57\) # 
-- (!\spi0|spi_fir|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT29\,
	datab => \spi0|spi_fir|Add1~58_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~57\,
	combout => \spi0|spi_fir|Add2~58_combout\,
	cout => \spi0|spi_fir|Add2~59\);

-- Location: LCCOMB_X21_Y19_N12
\spi0|spi_fir|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~60_combout\ = ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ $ (\spi0|spi_fir|Add1~58_combout\ $ (!\spi0|spi_fir|Add2~59\)))) # (GND)
-- \spi0|spi_fir|Add2~61\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ & ((\spi0|spi_fir|Add1~58_combout\) # (!\spi0|spi_fir|Add2~59\))) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ & (\spi0|spi_fir|Add1~58_combout\ & 
-- !\spi0|spi_fir|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\,
	datab => \spi0|spi_fir|Add1~58_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~59\,
	combout => \spi0|spi_fir|Add2~60_combout\,
	cout => \spi0|spi_fir|Add2~61\);

-- Location: LCCOMB_X21_Y19_N14
\spi0|spi_fir|Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~62_combout\ = (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ & ((\spi0|spi_fir|Add1~58_combout\ & (\spi0|spi_fir|Add2~61\ & VCC)) # (!\spi0|spi_fir|Add1~58_combout\ & (!\spi0|spi_fir|Add2~61\)))) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ & ((\spi0|spi_fir|Add1~58_combout\ & (!\spi0|spi_fir|Add2~61\)) # (!\spi0|spi_fir|Add1~58_combout\ & ((\spi0|spi_fir|Add2~61\) # (GND)))))
-- \spi0|spi_fir|Add2~63\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ & (!\spi0|spi_fir|Add1~58_combout\ & !\spi0|spi_fir|Add2~61\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\ & ((!\spi0|spi_fir|Add2~61\) # 
-- (!\spi0|spi_fir|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\,
	datab => \spi0|spi_fir|Add1~58_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~61\,
	combout => \spi0|spi_fir|Add2~62_combout\,
	cout => \spi0|spi_fir|Add2~63\);

-- Location: LCCOMB_X21_Y19_N16
\spi0|spi_fir|Add2~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~64_combout\ = \spi0|spi_fir|Add1~58_combout\ $ (\spi0|spi_fir|Add2~63\ $ (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi_fir|Add1~58_combout\,
	datad => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT30\,
	cin => \spi0|spi_fir|Add2~63\,
	combout => \spi0|spi_fir|Add2~64_combout\);

-- Location: DSPOUT_X34_Y20_N2
\spi0|spi_fir|Mult4|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult4|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y21_N16
\spi0|spi_fir|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~0_combout\ = (\spi0|spi_fir|Add2~0_combout\ & (\spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\ $ (VCC))) # (!\spi0|spi_fir|Add2~0_combout\ & (\spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\ & VCC))
-- \spi0|spi_fir|Add3~1\ = CARRY((\spi0|spi_fir|Add2~0_combout\ & \spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~0_combout\,
	datab => \spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \spi0|spi_fir|Add3~0_combout\,
	cout => \spi0|spi_fir|Add3~1\);

-- Location: LCCOMB_X22_Y21_N18
\spi0|spi_fir|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~2_combout\ = (\spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\ & ((\spi0|spi_fir|Add2~2_combout\ & (\spi0|spi_fir|Add3~1\ & VCC)) # (!\spi0|spi_fir|Add2~2_combout\ & (!\spi0|spi_fir|Add3~1\)))) # (!\spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\ & 
-- ((\spi0|spi_fir|Add2~2_combout\ & (!\spi0|spi_fir|Add3~1\)) # (!\spi0|spi_fir|Add2~2_combout\ & ((\spi0|spi_fir|Add3~1\) # (GND)))))
-- \spi0|spi_fir|Add3~3\ = CARRY((\spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\ & (!\spi0|spi_fir|Add2~2_combout\ & !\spi0|spi_fir|Add3~1\)) # (!\spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\ & ((!\spi0|spi_fir|Add3~1\) # (!\spi0|spi_fir|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|Add2~2_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~1\,
	combout => \spi0|spi_fir|Add3~2_combout\,
	cout => \spi0|spi_fir|Add3~3\);

-- Location: LCCOMB_X22_Y21_N20
\spi0|spi_fir|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~4_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT2\ $ (\spi0|spi_fir|Add2~4_combout\ $ (!\spi0|spi_fir|Add3~3\)))) # (GND)
-- \spi0|spi_fir|Add3~5\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Add2~4_combout\) # (!\spi0|spi_fir|Add3~3\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT2\ & (\spi0|spi_fir|Add2~4_combout\ & 
-- !\spi0|spi_fir|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT2\,
	datab => \spi0|spi_fir|Add2~4_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~3\,
	combout => \spi0|spi_fir|Add3~4_combout\,
	cout => \spi0|spi_fir|Add3~5\);

-- Location: LCCOMB_X22_Y21_N24
\spi0|spi_fir|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~8_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT4\ $ (\spi0|spi_fir|Add2~8_combout\ $ (!\spi0|spi_fir|Add3~7\)))) # (GND)
-- \spi0|spi_fir|Add3~9\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT4\ & ((\spi0|spi_fir|Add2~8_combout\) # (!\spi0|spi_fir|Add3~7\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT4\ & (\spi0|spi_fir|Add2~8_combout\ & 
-- !\spi0|spi_fir|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT4\,
	datab => \spi0|spi_fir|Add2~8_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~7\,
	combout => \spi0|spi_fir|Add3~8_combout\,
	cout => \spi0|spi_fir|Add3~9\);

-- Location: LCCOMB_X22_Y21_N28
\spi0|spi_fir|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~12_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT6\ $ (\spi0|spi_fir|Add2~12_combout\ $ (!\spi0|spi_fir|Add3~11\)))) # (GND)
-- \spi0|spi_fir|Add3~13\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT6\ & ((\spi0|spi_fir|Add2~12_combout\) # (!\spi0|spi_fir|Add3~11\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT6\ & (\spi0|spi_fir|Add2~12_combout\ & 
-- !\spi0|spi_fir|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT6\,
	datab => \spi0|spi_fir|Add2~12_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~11\,
	combout => \spi0|spi_fir|Add3~12_combout\,
	cout => \spi0|spi_fir|Add3~13\);

-- Location: LCCOMB_X22_Y21_N30
\spi0|spi_fir|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~14_combout\ = (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Add2~14_combout\ & (\spi0|spi_fir|Add3~13\ & VCC)) # (!\spi0|spi_fir|Add2~14_combout\ & (!\spi0|spi_fir|Add3~13\)))) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Add2~14_combout\ & (!\spi0|spi_fir|Add3~13\)) # (!\spi0|spi_fir|Add2~14_combout\ & ((\spi0|spi_fir|Add3~13\) # (GND)))))
-- \spi0|spi_fir|Add3~15\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add2~14_combout\ & !\spi0|spi_fir|Add3~13\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT7\ & ((!\spi0|spi_fir|Add3~13\) # 
-- (!\spi0|spi_fir|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT7\,
	datab => \spi0|spi_fir|Add2~14_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~13\,
	combout => \spi0|spi_fir|Add3~14_combout\,
	cout => \spi0|spi_fir|Add3~15\);

-- Location: LCCOMB_X22_Y20_N0
\spi0|spi_fir|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~16_combout\ = ((\spi0|spi_fir|Add2~16_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT8\ $ (!\spi0|spi_fir|Add3~15\)))) # (GND)
-- \spi0|spi_fir|Add3~17\ = CARRY((\spi0|spi_fir|Add2~16_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT8\) # (!\spi0|spi_fir|Add3~15\))) # (!\spi0|spi_fir|Add2~16_combout\ & (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT8\ & 
-- !\spi0|spi_fir|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~16_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~15\,
	combout => \spi0|spi_fir|Add3~16_combout\,
	cout => \spi0|spi_fir|Add3~17\);

-- Location: LCCOMB_X22_Y20_N2
\spi0|spi_fir|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~18_combout\ = (\spi0|spi_fir|Add2~18_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\ & (\spi0|spi_fir|Add3~17\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add3~17\)))) # 
-- (!\spi0|spi_fir|Add2~18_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add3~17\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add3~17\) # (GND)))))
-- \spi0|spi_fir|Add3~19\ = CARRY((\spi0|spi_fir|Add2~18_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\ & !\spi0|spi_fir|Add3~17\)) # (!\spi0|spi_fir|Add2~18_combout\ & ((!\spi0|spi_fir|Add3~17\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~18_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~17\,
	combout => \spi0|spi_fir|Add3~18_combout\,
	cout => \spi0|spi_fir|Add3~19\);

-- Location: LCCOMB_X22_Y20_N8
\spi0|spi_fir|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~24_combout\ = ((\spi0|spi_fir|Add2~24_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT12\ $ (!\spi0|spi_fir|Add3~23\)))) # (GND)
-- \spi0|spi_fir|Add3~25\ = CARRY((\spi0|spi_fir|Add2~24_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT12\) # (!\spi0|spi_fir|Add3~23\))) # (!\spi0|spi_fir|Add2~24_combout\ & (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT12\ & 
-- !\spi0|spi_fir|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~24_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~23\,
	combout => \spi0|spi_fir|Add3~24_combout\,
	cout => \spi0|spi_fir|Add3~25\);

-- Location: LCCOMB_X22_Y20_N10
\spi0|spi_fir|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~26_combout\ = (\spi0|spi_fir|Add2~26_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\ & (\spi0|spi_fir|Add3~25\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add3~25\)))) # 
-- (!\spi0|spi_fir|Add2~26_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add3~25\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Add3~25\) # (GND)))))
-- \spi0|spi_fir|Add3~27\ = CARRY((\spi0|spi_fir|Add2~26_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\ & !\spi0|spi_fir|Add3~25\)) # (!\spi0|spi_fir|Add2~26_combout\ & ((!\spi0|spi_fir|Add3~25\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~26_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~25\,
	combout => \spi0|spi_fir|Add3~26_combout\,
	cout => \spi0|spi_fir|Add3~27\);

-- Location: LCCOMB_X22_Y20_N12
\spi0|spi_fir|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~28_combout\ = ((\spi0|spi_fir|Add2~28_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT14\ $ (!\spi0|spi_fir|Add3~27\)))) # (GND)
-- \spi0|spi_fir|Add3~29\ = CARRY((\spi0|spi_fir|Add2~28_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT14\) # (!\spi0|spi_fir|Add3~27\))) # (!\spi0|spi_fir|Add2~28_combout\ & (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT14\ & 
-- !\spi0|spi_fir|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~28_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~27\,
	combout => \spi0|spi_fir|Add3~28_combout\,
	cout => \spi0|spi_fir|Add3~29\);

-- Location: LCCOMB_X22_Y20_N14
\spi0|spi_fir|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~30_combout\ = (\spi0|spi_fir|Add2~30_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\ & (\spi0|spi_fir|Add3~29\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add3~29\)))) # 
-- (!\spi0|spi_fir|Add2~30_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add3~29\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Add3~29\) # (GND)))))
-- \spi0|spi_fir|Add3~31\ = CARRY((\spi0|spi_fir|Add2~30_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add3~29\)) # (!\spi0|spi_fir|Add2~30_combout\ & ((!\spi0|spi_fir|Add3~29\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~30_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~29\,
	combout => \spi0|spi_fir|Add3~30_combout\,
	cout => \spi0|spi_fir|Add3~31\);

-- Location: LCCOMB_X22_Y20_N16
\spi0|spi_fir|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~32_combout\ = ((\spi0|spi_fir|Add2~32_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT16\ $ (!\spi0|spi_fir|Add3~31\)))) # (GND)
-- \spi0|spi_fir|Add3~33\ = CARRY((\spi0|spi_fir|Add2~32_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT16\) # (!\spi0|spi_fir|Add3~31\))) # (!\spi0|spi_fir|Add2~32_combout\ & (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT16\ & 
-- !\spi0|spi_fir|Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~32_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~31\,
	combout => \spi0|spi_fir|Add3~32_combout\,
	cout => \spi0|spi_fir|Add3~33\);

-- Location: LCCOMB_X22_Y20_N22
\spi0|spi_fir|Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~38_combout\ = (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Add2~38_combout\ & (\spi0|spi_fir|Add3~37\ & VCC)) # (!\spi0|spi_fir|Add2~38_combout\ & (!\spi0|spi_fir|Add3~37\)))) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Add2~38_combout\ & (!\spi0|spi_fir|Add3~37\)) # (!\spi0|spi_fir|Add2~38_combout\ & ((\spi0|spi_fir|Add3~37\) # (GND)))))
-- \spi0|spi_fir|Add3~39\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add2~38_combout\ & !\spi0|spi_fir|Add3~37\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT19\ & ((!\spi0|spi_fir|Add3~37\) # 
-- (!\spi0|spi_fir|Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT19\,
	datab => \spi0|spi_fir|Add2~38_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~37\,
	combout => \spi0|spi_fir|Add3~38_combout\,
	cout => \spi0|spi_fir|Add3~39\);

-- Location: LCCOMB_X22_Y20_N24
\spi0|spi_fir|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~40_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT20\ $ (\spi0|spi_fir|Add2~40_combout\ $ (!\spi0|spi_fir|Add3~39\)))) # (GND)
-- \spi0|spi_fir|Add3~41\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT20\ & ((\spi0|spi_fir|Add2~40_combout\) # (!\spi0|spi_fir|Add3~39\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT20\ & (\spi0|spi_fir|Add2~40_combout\ & 
-- !\spi0|spi_fir|Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT20\,
	datab => \spi0|spi_fir|Add2~40_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~39\,
	combout => \spi0|spi_fir|Add3~40_combout\,
	cout => \spi0|spi_fir|Add3~41\);

-- Location: LCCOMB_X22_Y20_N26
\spi0|spi_fir|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~42_combout\ = (\spi0|spi_fir|Add2~42_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\ & (\spi0|spi_fir|Add3~41\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add3~41\)))) # 
-- (!\spi0|spi_fir|Add2~42_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add3~41\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Add3~41\) # (GND)))))
-- \spi0|spi_fir|Add3~43\ = CARRY((\spi0|spi_fir|Add2~42_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add3~41\)) # (!\spi0|spi_fir|Add2~42_combout\ & ((!\spi0|spi_fir|Add3~41\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~42_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~41\,
	combout => \spi0|spi_fir|Add3~42_combout\,
	cout => \spi0|spi_fir|Add3~43\);

-- Location: LCCOMB_X22_Y20_N30
\spi0|spi_fir|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~46_combout\ = (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Add2~46_combout\ & (\spi0|spi_fir|Add3~45\ & VCC)) # (!\spi0|spi_fir|Add2~46_combout\ & (!\spi0|spi_fir|Add3~45\)))) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Add2~46_combout\ & (!\spi0|spi_fir|Add3~45\)) # (!\spi0|spi_fir|Add2~46_combout\ & ((\spi0|spi_fir|Add3~45\) # (GND)))))
-- \spi0|spi_fir|Add3~47\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add2~46_combout\ & !\spi0|spi_fir|Add3~45\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT23\ & ((!\spi0|spi_fir|Add3~45\) # 
-- (!\spi0|spi_fir|Add2~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT23\,
	datab => \spi0|spi_fir|Add2~46_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~45\,
	combout => \spi0|spi_fir|Add3~46_combout\,
	cout => \spi0|spi_fir|Add3~47\);

-- Location: LCCOMB_X22_Y19_N0
\spi0|spi_fir|Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~48_combout\ = ((\spi0|spi_fir|Add2~48_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT24\ $ (!\spi0|spi_fir|Add3~47\)))) # (GND)
-- \spi0|spi_fir|Add3~49\ = CARRY((\spi0|spi_fir|Add2~48_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT24\) # (!\spi0|spi_fir|Add3~47\))) # (!\spi0|spi_fir|Add2~48_combout\ & (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT24\ & 
-- !\spi0|spi_fir|Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~48_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~47\,
	combout => \spi0|spi_fir|Add3~48_combout\,
	cout => \spi0|spi_fir|Add3~49\);

-- Location: LCCOMB_X22_Y19_N2
\spi0|spi_fir|Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~50_combout\ = (\spi0|spi_fir|Add2~50_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\ & (\spi0|spi_fir|Add3~49\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add3~49\)))) # 
-- (!\spi0|spi_fir|Add2~50_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add3~49\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add3~49\) # (GND)))))
-- \spi0|spi_fir|Add3~51\ = CARRY((\spi0|spi_fir|Add2~50_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\ & !\spi0|spi_fir|Add3~49\)) # (!\spi0|spi_fir|Add2~50_combout\ & ((!\spi0|spi_fir|Add3~49\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~50_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~49\,
	combout => \spi0|spi_fir|Add3~50_combout\,
	cout => \spi0|spi_fir|Add3~51\);

-- Location: LCCOMB_X22_Y19_N6
\spi0|spi_fir|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~54_combout\ = (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add2~54_combout\ & (\spi0|spi_fir|Add3~53\ & VCC)) # (!\spi0|spi_fir|Add2~54_combout\ & (!\spi0|spi_fir|Add3~53\)))) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add2~54_combout\ & (!\spi0|spi_fir|Add3~53\)) # (!\spi0|spi_fir|Add2~54_combout\ & ((\spi0|spi_fir|Add3~53\) # (GND)))))
-- \spi0|spi_fir|Add3~55\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT27\ & (!\spi0|spi_fir|Add2~54_combout\ & !\spi0|spi_fir|Add3~53\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT27\ & ((!\spi0|spi_fir|Add3~53\) # 
-- (!\spi0|spi_fir|Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Add2~54_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~53\,
	combout => \spi0|spi_fir|Add3~54_combout\,
	cout => \spi0|spi_fir|Add3~55\);

-- Location: LCCOMB_X22_Y19_N8
\spi0|spi_fir|Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~56_combout\ = ((\spi0|spi_fir|Add2~56_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT28\ $ (!\spi0|spi_fir|Add3~55\)))) # (GND)
-- \spi0|spi_fir|Add3~57\ = CARRY((\spi0|spi_fir|Add2~56_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT28\) # (!\spi0|spi_fir|Add3~55\))) # (!\spi0|spi_fir|Add2~56_combout\ & (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT28\ & 
-- !\spi0|spi_fir|Add3~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~56_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~55\,
	combout => \spi0|spi_fir|Add3~56_combout\,
	cout => \spi0|spi_fir|Add3~57\);

-- Location: LCCOMB_X22_Y19_N10
\spi0|spi_fir|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~58_combout\ = (\spi0|spi_fir|Add2~58_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\ & (\spi0|spi_fir|Add3~57\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\ & (!\spi0|spi_fir|Add3~57\)))) # 
-- (!\spi0|spi_fir|Add2~58_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\ & (!\spi0|spi_fir|Add3~57\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\ & ((\spi0|spi_fir|Add3~57\) # (GND)))))
-- \spi0|spi_fir|Add3~59\ = CARRY((\spi0|spi_fir|Add2~58_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\ & !\spi0|spi_fir|Add3~57\)) # (!\spi0|spi_fir|Add2~58_combout\ & ((!\spi0|spi_fir|Add3~57\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~58_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~57\,
	combout => \spi0|spi_fir|Add3~58_combout\,
	cout => \spi0|spi_fir|Add3~59\);

-- Location: LCCOMB_X22_Y19_N12
\spi0|spi_fir|Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~60_combout\ = ((\spi0|spi_fir|Add2~60_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT30\ $ (!\spi0|spi_fir|Add3~59\)))) # (GND)
-- \spi0|spi_fir|Add3~61\ = CARRY((\spi0|spi_fir|Add2~60_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT30\) # (!\spi0|spi_fir|Add3~59\))) # (!\spi0|spi_fir|Add2~60_combout\ & (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT30\ & 
-- !\spi0|spi_fir|Add3~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~60_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~59\,
	combout => \spi0|spi_fir|Add3~60_combout\,
	cout => \spi0|spi_fir|Add3~61\);

-- Location: LCCOMB_X22_Y19_N14
\spi0|spi_fir|Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~62_combout\ = (\spi0|spi_fir|Add2~62_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ & (\spi0|spi_fir|Add3~61\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ & (!\spi0|spi_fir|Add3~61\)))) # 
-- (!\spi0|spi_fir|Add2~62_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ & (!\spi0|spi_fir|Add3~61\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ & ((\spi0|spi_fir|Add3~61\) # (GND)))))
-- \spi0|spi_fir|Add3~63\ = CARRY((\spi0|spi_fir|Add2~62_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ & !\spi0|spi_fir|Add3~61\)) # (!\spi0|spi_fir|Add2~62_combout\ & ((!\spi0|spi_fir|Add3~61\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~62_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~61\,
	combout => \spi0|spi_fir|Add3~62_combout\,
	cout => \spi0|spi_fir|Add3~63\);

-- Location: LCCOMB_X22_Y19_N16
\spi0|spi_fir|Add3~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~64_combout\ = \spi0|spi_fir|Add2~64_combout\ $ (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\ $ (!\spi0|spi_fir|Add3~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~64_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT31\,
	cin => \spi0|spi_fir|Add3~63\,
	combout => \spi0|spi_fir|Add3~64_combout\);

-- Location: DSPOUT_X18_Y23_N2
\spi0|spi_fir|Mult5|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult5|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y20_N2
\spi0|spi_fir|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~0_combout\ = (\spi0|spi_fir|Add3~8_combout\ & (\spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\ $ (VCC))) # (!\spi0|spi_fir|Add3~8_combout\ & (\spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\ & VCC))
-- \spi0|spi_fir|Add4~1\ = CARRY((\spi0|spi_fir|Add3~8_combout\ & \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~8_combout\,
	datab => \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \spi0|spi_fir|Add4~0_combout\,
	cout => \spi0|spi_fir|Add4~1\);

-- Location: LCCOMB_X23_Y20_N4
\spi0|spi_fir|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~2_combout\ = (\spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\ & ((\spi0|spi_fir|Add3~10_combout\ & (\spi0|spi_fir|Add4~1\ & VCC)) # (!\spi0|spi_fir|Add3~10_combout\ & (!\spi0|spi_fir|Add4~1\)))) # (!\spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\ 
-- & ((\spi0|spi_fir|Add3~10_combout\ & (!\spi0|spi_fir|Add4~1\)) # (!\spi0|spi_fir|Add3~10_combout\ & ((\spi0|spi_fir|Add4~1\) # (GND)))))
-- \spi0|spi_fir|Add4~3\ = CARRY((\spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\ & (!\spi0|spi_fir|Add3~10_combout\ & !\spi0|spi_fir|Add4~1\)) # (!\spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\ & ((!\spi0|spi_fir|Add4~1\) # (!\spi0|spi_fir|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|Add3~10_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~1\,
	combout => \spi0|spi_fir|Add4~2_combout\,
	cout => \spi0|spi_fir|Add4~3\);

-- Location: LCCOMB_X23_Y20_N8
\spi0|spi_fir|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~6_combout\ = (\spi0|spi_fir|Add3~14_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\ & (\spi0|spi_fir|Add4~5\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add4~5\)))) # 
-- (!\spi0|spi_fir|Add3~14_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add4~5\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Add4~5\) # (GND)))))
-- \spi0|spi_fir|Add4~7\ = CARRY((\spi0|spi_fir|Add3~14_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\ & !\spi0|spi_fir|Add4~5\)) # (!\spi0|spi_fir|Add3~14_combout\ & ((!\spi0|spi_fir|Add4~5\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~14_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~5\,
	combout => \spi0|spi_fir|Add4~6_combout\,
	cout => \spi0|spi_fir|Add4~7\);

-- Location: LCCOMB_X23_Y20_N10
\spi0|spi_fir|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~8_combout\ = ((\spi0|spi_fir|Add3~16_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT8\ $ (!\spi0|spi_fir|Add4~7\)))) # (GND)
-- \spi0|spi_fir|Add4~9\ = CARRY((\spi0|spi_fir|Add3~16_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT8\) # (!\spi0|spi_fir|Add4~7\))) # (!\spi0|spi_fir|Add3~16_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT8\ & 
-- !\spi0|spi_fir|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~16_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~7\,
	combout => \spi0|spi_fir|Add4~8_combout\,
	cout => \spi0|spi_fir|Add4~9\);

-- Location: LCCOMB_X23_Y20_N14
\spi0|spi_fir|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~12_combout\ = ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT10\ $ (\spi0|spi_fir|Add3~20_combout\ $ (!\spi0|spi_fir|Add4~11\)))) # (GND)
-- \spi0|spi_fir|Add4~13\ = CARRY((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Add3~20_combout\) # (!\spi0|spi_fir|Add4~11\))) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT10\ & (\spi0|spi_fir|Add3~20_combout\ & 
-- !\spi0|spi_fir|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT10\,
	datab => \spi0|spi_fir|Add3~20_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~11\,
	combout => \spi0|spi_fir|Add4~12_combout\,
	cout => \spi0|spi_fir|Add4~13\);

-- Location: LCCOMB_X23_Y20_N16
\spi0|spi_fir|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~14_combout\ = (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add3~22_combout\ & (\spi0|spi_fir|Add4~13\ & VCC)) # (!\spi0|spi_fir|Add3~22_combout\ & (!\spi0|spi_fir|Add4~13\)))) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add3~22_combout\ & (!\spi0|spi_fir|Add4~13\)) # (!\spi0|spi_fir|Add3~22_combout\ & ((\spi0|spi_fir|Add4~13\) # (GND)))))
-- \spi0|spi_fir|Add4~15\ = CARRY((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Add3~22_combout\ & !\spi0|spi_fir|Add4~13\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT11\ & ((!\spi0|spi_fir|Add4~13\) # 
-- (!\spi0|spi_fir|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT11\,
	datab => \spi0|spi_fir|Add3~22_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~13\,
	combout => \spi0|spi_fir|Add4~14_combout\,
	cout => \spi0|spi_fir|Add4~15\);

-- Location: LCCOMB_X23_Y20_N24
\spi0|spi_fir|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~22_combout\ = (\spi0|spi_fir|Add3~30_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\ & (\spi0|spi_fir|Add4~21\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add4~21\)))) # 
-- (!\spi0|spi_fir|Add3~30_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add4~21\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Add4~21\) # (GND)))))
-- \spi0|spi_fir|Add4~23\ = CARRY((\spi0|spi_fir|Add3~30_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add4~21\)) # (!\spi0|spi_fir|Add3~30_combout\ & ((!\spi0|spi_fir|Add4~21\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~30_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~21\,
	combout => \spi0|spi_fir|Add4~22_combout\,
	cout => \spi0|spi_fir|Add4~23\);

-- Location: LCCOMB_X23_Y19_N0
\spi0|spi_fir|Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~30_combout\ = (\spi0|spi_fir|Add3~38_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\ & (\spi0|spi_fir|Add4~29\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add4~29\)))) # 
-- (!\spi0|spi_fir|Add3~38_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add4~29\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Add4~29\) # (GND)))))
-- \spi0|spi_fir|Add4~31\ = CARRY((\spi0|spi_fir|Add3~38_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\ & !\spi0|spi_fir|Add4~29\)) # (!\spi0|spi_fir|Add3~38_combout\ & ((!\spi0|spi_fir|Add4~29\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~38_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~29\,
	combout => \spi0|spi_fir|Add4~30_combout\,
	cout => \spi0|spi_fir|Add4~31\);

-- Location: LCCOMB_X23_Y19_N2
\spi0|spi_fir|Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~32_combout\ = ((\spi0|spi_fir|Add3~40_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT20\ $ (!\spi0|spi_fir|Add4~31\)))) # (GND)
-- \spi0|spi_fir|Add4~33\ = CARRY((\spi0|spi_fir|Add3~40_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT20\) # (!\spi0|spi_fir|Add4~31\))) # (!\spi0|spi_fir|Add3~40_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT20\ & 
-- !\spi0|spi_fir|Add4~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~40_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~31\,
	combout => \spi0|spi_fir|Add4~32_combout\,
	cout => \spi0|spi_fir|Add4~33\);

-- Location: LCCOMB_X23_Y19_N4
\spi0|spi_fir|Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~34_combout\ = (\spi0|spi_fir|Add3~42_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\ & (\spi0|spi_fir|Add4~33\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add4~33\)))) # 
-- (!\spi0|spi_fir|Add3~42_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add4~33\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Add4~33\) # (GND)))))
-- \spi0|spi_fir|Add4~35\ = CARRY((\spi0|spi_fir|Add3~42_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add4~33\)) # (!\spi0|spi_fir|Add3~42_combout\ & ((!\spi0|spi_fir|Add4~33\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~42_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~33\,
	combout => \spi0|spi_fir|Add4~34_combout\,
	cout => \spi0|spi_fir|Add4~35\);

-- Location: LCCOMB_X23_Y19_N8
\spi0|spi_fir|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~38_combout\ = (\spi0|spi_fir|Add3~46_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\ & (\spi0|spi_fir|Add4~37\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add4~37\)))) # 
-- (!\spi0|spi_fir|Add3~46_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add4~37\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Add4~37\) # (GND)))))
-- \spi0|spi_fir|Add4~39\ = CARRY((\spi0|spi_fir|Add3~46_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\ & !\spi0|spi_fir|Add4~37\)) # (!\spi0|spi_fir|Add3~46_combout\ & ((!\spi0|spi_fir|Add4~37\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~46_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~37\,
	combout => \spi0|spi_fir|Add4~38_combout\,
	cout => \spi0|spi_fir|Add4~39\);

-- Location: LCCOMB_X23_Y19_N10
\spi0|spi_fir|Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~40_combout\ = ((\spi0|spi_fir|Add3~48_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT24\ $ (!\spi0|spi_fir|Add4~39\)))) # (GND)
-- \spi0|spi_fir|Add4~41\ = CARRY((\spi0|spi_fir|Add3~48_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT24\) # (!\spi0|spi_fir|Add4~39\))) # (!\spi0|spi_fir|Add3~48_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT24\ & 
-- !\spi0|spi_fir|Add4~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~48_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~39\,
	combout => \spi0|spi_fir|Add4~40_combout\,
	cout => \spi0|spi_fir|Add4~41\);

-- Location: LCCOMB_X23_Y19_N12
\spi0|spi_fir|Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~42_combout\ = (\spi0|spi_fir|Add3~50_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\ & (\spi0|spi_fir|Add4~41\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add4~41\)))) # 
-- (!\spi0|spi_fir|Add3~50_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add4~41\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add4~41\) # (GND)))))
-- \spi0|spi_fir|Add4~43\ = CARRY((\spi0|spi_fir|Add3~50_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\ & !\spi0|spi_fir|Add4~41\)) # (!\spi0|spi_fir|Add3~50_combout\ & ((!\spi0|spi_fir|Add4~41\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~50_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~41\,
	combout => \spi0|spi_fir|Add4~42_combout\,
	cout => \spi0|spi_fir|Add4~43\);

-- Location: LCCOMB_X23_Y19_N14
\spi0|spi_fir|Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~44_combout\ = ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Add3~52_combout\ $ (!\spi0|spi_fir|Add4~43\)))) # (GND)
-- \spi0|spi_fir|Add4~45\ = CARRY((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Add3~52_combout\) # (!\spi0|spi_fir|Add4~43\))) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT26\ & (\spi0|spi_fir|Add3~52_combout\ & 
-- !\spi0|spi_fir|Add4~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Add3~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~43\,
	combout => \spi0|spi_fir|Add4~44_combout\,
	cout => \spi0|spi_fir|Add4~45\);

-- Location: LCCOMB_X23_Y19_N18
\spi0|spi_fir|Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~48_combout\ = ((\spi0|spi_fir|Add3~56_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT28\ $ (!\spi0|spi_fir|Add4~47\)))) # (GND)
-- \spi0|spi_fir|Add4~49\ = CARRY((\spi0|spi_fir|Add3~56_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT28\) # (!\spi0|spi_fir|Add4~47\))) # (!\spi0|spi_fir|Add3~56_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT28\ & 
-- !\spi0|spi_fir|Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~56_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~47\,
	combout => \spi0|spi_fir|Add4~48_combout\,
	cout => \spi0|spi_fir|Add4~49\);

-- Location: LCCOMB_X23_Y19_N26
\spi0|spi_fir|Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~56_combout\ = ((\spi0|spi_fir|Add3~64_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ $ (!\spi0|spi_fir|Add4~55\)))) # (GND)
-- \spi0|spi_fir|Add4~57\ = CARRY((\spi0|spi_fir|Add3~64_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\) # (!\spi0|spi_fir|Add4~55\))) # (!\spi0|spi_fir|Add3~64_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ & 
-- !\spi0|spi_fir|Add4~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~64_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~55\,
	combout => \spi0|spi_fir|Add4~56_combout\,
	cout => \spi0|spi_fir|Add4~57\);

-- Location: LCCOMB_X24_Y23_N20
\spi0|spi_fir|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~6_combout\ = (\spi0|spi_fir|Add7~6_combout\ & ((\spi0|spi_fir|Add3~6_combout\ & (\spi0|spi_fir|Add6~5\ & VCC)) # (!\spi0|spi_fir|Add3~6_combout\ & (!\spi0|spi_fir|Add6~5\)))) # (!\spi0|spi_fir|Add7~6_combout\ & 
-- ((\spi0|spi_fir|Add3~6_combout\ & (!\spi0|spi_fir|Add6~5\)) # (!\spi0|spi_fir|Add3~6_combout\ & ((\spi0|spi_fir|Add6~5\) # (GND)))))
-- \spi0|spi_fir|Add6~7\ = CARRY((\spi0|spi_fir|Add7~6_combout\ & (!\spi0|spi_fir|Add3~6_combout\ & !\spi0|spi_fir|Add6~5\)) # (!\spi0|spi_fir|Add7~6_combout\ & ((!\spi0|spi_fir|Add6~5\) # (!\spi0|spi_fir|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~6_combout\,
	datab => \spi0|spi_fir|Add3~6_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~5\,
	combout => \spi0|spi_fir|Add6~6_combout\,
	cout => \spi0|spi_fir|Add6~7\);

-- Location: LCCOMB_X24_Y23_N30
\spi0|spi_fir|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~16_combout\ = ((\spi0|spi_fir|Add4~8_combout\ $ (\spi0|spi_fir|Add7~16_combout\ $ (!\spi0|spi_fir|Add6~15\)))) # (GND)
-- \spi0|spi_fir|Add6~17\ = CARRY((\spi0|spi_fir|Add4~8_combout\ & ((\spi0|spi_fir|Add7~16_combout\) # (!\spi0|spi_fir|Add6~15\))) # (!\spi0|spi_fir|Add4~8_combout\ & (\spi0|spi_fir|Add7~16_combout\ & !\spi0|spi_fir|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~8_combout\,
	datab => \spi0|spi_fir|Add7~16_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~15\,
	combout => \spi0|spi_fir|Add6~16_combout\,
	cout => \spi0|spi_fir|Add6~17\);

-- Location: LCCOMB_X24_Y22_N2
\spi0|spi_fir|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~20_combout\ = ((\spi0|spi_fir|Add4~12_combout\ $ (\spi0|spi_fir|Add7~20_combout\ $ (!\spi0|spi_fir|Add6~19\)))) # (GND)
-- \spi0|spi_fir|Add6~21\ = CARRY((\spi0|spi_fir|Add4~12_combout\ & ((\spi0|spi_fir|Add7~20_combout\) # (!\spi0|spi_fir|Add6~19\))) # (!\spi0|spi_fir|Add4~12_combout\ & (\spi0|spi_fir|Add7~20_combout\ & !\spi0|spi_fir|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~12_combout\,
	datab => \spi0|spi_fir|Add7~20_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~19\,
	combout => \spi0|spi_fir|Add6~20_combout\,
	cout => \spi0|spi_fir|Add6~21\);

-- Location: LCCOMB_X24_Y22_N4
\spi0|spi_fir|Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~22_combout\ = (\spi0|spi_fir|Add4~14_combout\ & ((\spi0|spi_fir|Add7~22_combout\ & (\spi0|spi_fir|Add6~21\ & VCC)) # (!\spi0|spi_fir|Add7~22_combout\ & (!\spi0|spi_fir|Add6~21\)))) # (!\spi0|spi_fir|Add4~14_combout\ & 
-- ((\spi0|spi_fir|Add7~22_combout\ & (!\spi0|spi_fir|Add6~21\)) # (!\spi0|spi_fir|Add7~22_combout\ & ((\spi0|spi_fir|Add6~21\) # (GND)))))
-- \spi0|spi_fir|Add6~23\ = CARRY((\spi0|spi_fir|Add4~14_combout\ & (!\spi0|spi_fir|Add7~22_combout\ & !\spi0|spi_fir|Add6~21\)) # (!\spi0|spi_fir|Add4~14_combout\ & ((!\spi0|spi_fir|Add6~21\) # (!\spi0|spi_fir|Add7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~14_combout\,
	datab => \spi0|spi_fir|Add7~22_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~21\,
	combout => \spi0|spi_fir|Add6~22_combout\,
	cout => \spi0|spi_fir|Add6~23\);

-- Location: LCCOMB_X24_Y22_N6
\spi0|spi_fir|Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~24_combout\ = ((\spi0|spi_fir|Add7~24_combout\ $ (\spi0|spi_fir|Add4~16_combout\ $ (!\spi0|spi_fir|Add6~23\)))) # (GND)
-- \spi0|spi_fir|Add6~25\ = CARRY((\spi0|spi_fir|Add7~24_combout\ & ((\spi0|spi_fir|Add4~16_combout\) # (!\spi0|spi_fir|Add6~23\))) # (!\spi0|spi_fir|Add7~24_combout\ & (\spi0|spi_fir|Add4~16_combout\ & !\spi0|spi_fir|Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~24_combout\,
	datab => \spi0|spi_fir|Add4~16_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~23\,
	combout => \spi0|spi_fir|Add6~24_combout\,
	cout => \spi0|spi_fir|Add6~25\);

-- Location: LCCOMB_X24_Y22_N20
\spi0|spi_fir|Add6~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~38_combout\ = (\spi0|spi_fir|Add4~30_combout\ & ((\spi0|spi_fir|Add7~38_combout\ & (\spi0|spi_fir|Add6~37\ & VCC)) # (!\spi0|spi_fir|Add7~38_combout\ & (!\spi0|spi_fir|Add6~37\)))) # (!\spi0|spi_fir|Add4~30_combout\ & 
-- ((\spi0|spi_fir|Add7~38_combout\ & (!\spi0|spi_fir|Add6~37\)) # (!\spi0|spi_fir|Add7~38_combout\ & ((\spi0|spi_fir|Add6~37\) # (GND)))))
-- \spi0|spi_fir|Add6~39\ = CARRY((\spi0|spi_fir|Add4~30_combout\ & (!\spi0|spi_fir|Add7~38_combout\ & !\spi0|spi_fir|Add6~37\)) # (!\spi0|spi_fir|Add4~30_combout\ & ((!\spi0|spi_fir|Add6~37\) # (!\spi0|spi_fir|Add7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~30_combout\,
	datab => \spi0|spi_fir|Add7~38_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~37\,
	combout => \spi0|spi_fir|Add6~38_combout\,
	cout => \spi0|spi_fir|Add6~39\);

-- Location: LCCOMB_X24_Y22_N26
\spi0|spi_fir|Add6~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~44_combout\ = ((\spi0|spi_fir|Add7~44_combout\ $ (\spi0|spi_fir|Add4~36_combout\ $ (!\spi0|spi_fir|Add6~43\)))) # (GND)
-- \spi0|spi_fir|Add6~45\ = CARRY((\spi0|spi_fir|Add7~44_combout\ & ((\spi0|spi_fir|Add4~36_combout\) # (!\spi0|spi_fir|Add6~43\))) # (!\spi0|spi_fir|Add7~44_combout\ & (\spi0|spi_fir|Add4~36_combout\ & !\spi0|spi_fir|Add6~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~44_combout\,
	datab => \spi0|spi_fir|Add4~36_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~43\,
	combout => \spi0|spi_fir|Add6~44_combout\,
	cout => \spi0|spi_fir|Add6~45\);

-- Location: LCCOMB_X24_Y22_N30
\spi0|spi_fir|Add6~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~48_combout\ = ((\spi0|spi_fir|Add4~40_combout\ $ (\spi0|spi_fir|Add7~48_combout\ $ (!\spi0|spi_fir|Add6~47\)))) # (GND)
-- \spi0|spi_fir|Add6~49\ = CARRY((\spi0|spi_fir|Add4~40_combout\ & ((\spi0|spi_fir|Add7~48_combout\) # (!\spi0|spi_fir|Add6~47\))) # (!\spi0|spi_fir|Add4~40_combout\ & (\spi0|spi_fir|Add7~48_combout\ & !\spi0|spi_fir|Add6~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~40_combout\,
	datab => \spi0|spi_fir|Add7~48_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~47\,
	combout => \spi0|spi_fir|Add6~48_combout\,
	cout => \spi0|spi_fir|Add6~49\);

-- Location: LCCOMB_X24_Y21_N2
\spi0|spi_fir|Add6~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~52_combout\ = ((\spi0|spi_fir|Add4~44_combout\ $ (\spi0|spi_fir|Add7~52_combout\ $ (!\spi0|spi_fir|Add6~51\)))) # (GND)
-- \spi0|spi_fir|Add6~53\ = CARRY((\spi0|spi_fir|Add4~44_combout\ & ((\spi0|spi_fir|Add7~52_combout\) # (!\spi0|spi_fir|Add6~51\))) # (!\spi0|spi_fir|Add4~44_combout\ & (\spi0|spi_fir|Add7~52_combout\ & !\spi0|spi_fir|Add6~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~44_combout\,
	datab => \spi0|spi_fir|Add7~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~51\,
	combout => \spi0|spi_fir|Add6~52_combout\,
	cout => \spi0|spi_fir|Add6~53\);

-- Location: LCCOMB_X24_Y21_N4
\spi0|spi_fir|Add6~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~54_combout\ = (\spi0|spi_fir|Add7~54_combout\ & ((\spi0|spi_fir|Add4~46_combout\ & (\spi0|spi_fir|Add6~53\ & VCC)) # (!\spi0|spi_fir|Add4~46_combout\ & (!\spi0|spi_fir|Add6~53\)))) # (!\spi0|spi_fir|Add7~54_combout\ & 
-- ((\spi0|spi_fir|Add4~46_combout\ & (!\spi0|spi_fir|Add6~53\)) # (!\spi0|spi_fir|Add4~46_combout\ & ((\spi0|spi_fir|Add6~53\) # (GND)))))
-- \spi0|spi_fir|Add6~55\ = CARRY((\spi0|spi_fir|Add7~54_combout\ & (!\spi0|spi_fir|Add4~46_combout\ & !\spi0|spi_fir|Add6~53\)) # (!\spi0|spi_fir|Add7~54_combout\ & ((!\spi0|spi_fir|Add6~53\) # (!\spi0|spi_fir|Add4~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~54_combout\,
	datab => \spi0|spi_fir|Add4~46_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~53\,
	combout => \spi0|spi_fir|Add6~54_combout\,
	cout => \spi0|spi_fir|Add6~55\);

-- Location: LCCOMB_X24_Y21_N6
\spi0|spi_fir|Add6~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~56_combout\ = ((\spi0|spi_fir|Add4~48_combout\ $ (\spi0|spi_fir|Add7~56_combout\ $ (!\spi0|spi_fir|Add6~55\)))) # (GND)
-- \spi0|spi_fir|Add6~57\ = CARRY((\spi0|spi_fir|Add4~48_combout\ & ((\spi0|spi_fir|Add7~56_combout\) # (!\spi0|spi_fir|Add6~55\))) # (!\spi0|spi_fir|Add4~48_combout\ & (\spi0|spi_fir|Add7~56_combout\ & !\spi0|spi_fir|Add6~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~48_combout\,
	datab => \spi0|spi_fir|Add7~56_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~55\,
	combout => \spi0|spi_fir|Add6~56_combout\,
	cout => \spi0|spi_fir|Add6~57\);

-- Location: LCCOMB_X23_Y22_N18
\spi0|spi_fir|Add9~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~36_combout\ = ((\spi0|spi_fir|Add5~36_combout\ $ (\spi0|spi_fir|Add6~36_combout\ $ (!\spi0|spi_fir|Add9~35_cout\)))) # (GND)
-- \spi0|spi_fir|Add9~37\ = CARRY((\spi0|spi_fir|Add5~36_combout\ & ((\spi0|spi_fir|Add6~36_combout\) # (!\spi0|spi_fir|Add9~35_cout\))) # (!\spi0|spi_fir|Add5~36_combout\ & (\spi0|spi_fir|Add6~36_combout\ & !\spi0|spi_fir|Add9~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~36_combout\,
	datab => \spi0|spi_fir|Add6~36_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~35_cout\,
	combout => \spi0|spi_fir|Add9~36_combout\,
	cout => \spi0|spi_fir|Add9~37\);

-- Location: LCCOMB_X23_Y22_N20
\spi0|spi_fir|Add9~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~38_combout\ = (\spi0|spi_fir|Add6~38_combout\ & ((\spi0|spi_fir|Add5~38_combout\ & (\spi0|spi_fir|Add9~37\ & VCC)) # (!\spi0|spi_fir|Add5~38_combout\ & (!\spi0|spi_fir|Add9~37\)))) # (!\spi0|spi_fir|Add6~38_combout\ & 
-- ((\spi0|spi_fir|Add5~38_combout\ & (!\spi0|spi_fir|Add9~37\)) # (!\spi0|spi_fir|Add5~38_combout\ & ((\spi0|spi_fir|Add9~37\) # (GND)))))
-- \spi0|spi_fir|Add9~39\ = CARRY((\spi0|spi_fir|Add6~38_combout\ & (!\spi0|spi_fir|Add5~38_combout\ & !\spi0|spi_fir|Add9~37\)) # (!\spi0|spi_fir|Add6~38_combout\ & ((!\spi0|spi_fir|Add9~37\) # (!\spi0|spi_fir|Add5~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~38_combout\,
	datab => \spi0|spi_fir|Add5~38_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~37\,
	combout => \spi0|spi_fir|Add9~38_combout\,
	cout => \spi0|spi_fir|Add9~39\);

-- Location: LCCOMB_X23_Y22_N22
\spi0|spi_fir|Add9~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~40_combout\ = ((\spi0|spi_fir|Add5~40_combout\ $ (\spi0|spi_fir|Add6~40_combout\ $ (!\spi0|spi_fir|Add9~39\)))) # (GND)
-- \spi0|spi_fir|Add9~41\ = CARRY((\spi0|spi_fir|Add5~40_combout\ & ((\spi0|spi_fir|Add6~40_combout\) # (!\spi0|spi_fir|Add9~39\))) # (!\spi0|spi_fir|Add5~40_combout\ & (\spi0|spi_fir|Add6~40_combout\ & !\spi0|spi_fir|Add9~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~40_combout\,
	datab => \spi0|spi_fir|Add6~40_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~39\,
	combout => \spi0|spi_fir|Add9~40_combout\,
	cout => \spi0|spi_fir|Add9~41\);

-- Location: LCCOMB_X23_Y22_N24
\spi0|spi_fir|Add9~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~42_combout\ = (\spi0|spi_fir|Add5~42_combout\ & ((\spi0|spi_fir|Add6~42_combout\ & (\spi0|spi_fir|Add9~41\ & VCC)) # (!\spi0|spi_fir|Add6~42_combout\ & (!\spi0|spi_fir|Add9~41\)))) # (!\spi0|spi_fir|Add5~42_combout\ & 
-- ((\spi0|spi_fir|Add6~42_combout\ & (!\spi0|spi_fir|Add9~41\)) # (!\spi0|spi_fir|Add6~42_combout\ & ((\spi0|spi_fir|Add9~41\) # (GND)))))
-- \spi0|spi_fir|Add9~43\ = CARRY((\spi0|spi_fir|Add5~42_combout\ & (!\spi0|spi_fir|Add6~42_combout\ & !\spi0|spi_fir|Add9~41\)) # (!\spi0|spi_fir|Add5~42_combout\ & ((!\spi0|spi_fir|Add9~41\) # (!\spi0|spi_fir|Add6~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~42_combout\,
	datab => \spi0|spi_fir|Add6~42_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~41\,
	combout => \spi0|spi_fir|Add9~42_combout\,
	cout => \spi0|spi_fir|Add9~43\);

-- Location: LCCOMB_X23_Y22_N26
\spi0|spi_fir|Add9~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~44_combout\ = ((\spi0|spi_fir|Add6~44_combout\ $ (\spi0|spi_fir|Add5~44_combout\ $ (!\spi0|spi_fir|Add9~43\)))) # (GND)
-- \spi0|spi_fir|Add9~45\ = CARRY((\spi0|spi_fir|Add6~44_combout\ & ((\spi0|spi_fir|Add5~44_combout\) # (!\spi0|spi_fir|Add9~43\))) # (!\spi0|spi_fir|Add6~44_combout\ & (\spi0|spi_fir|Add5~44_combout\ & !\spi0|spi_fir|Add9~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~44_combout\,
	datab => \spi0|spi_fir|Add5~44_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~43\,
	combout => \spi0|spi_fir|Add9~44_combout\,
	cout => \spi0|spi_fir|Add9~45\);

-- Location: LCCOMB_X23_Y22_N28
\spi0|spi_fir|Add9~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~46_combout\ = (\spi0|spi_fir|Add5~46_combout\ & ((\spi0|spi_fir|Add6~46_combout\ & (\spi0|spi_fir|Add9~45\ & VCC)) # (!\spi0|spi_fir|Add6~46_combout\ & (!\spi0|spi_fir|Add9~45\)))) # (!\spi0|spi_fir|Add5~46_combout\ & 
-- ((\spi0|spi_fir|Add6~46_combout\ & (!\spi0|spi_fir|Add9~45\)) # (!\spi0|spi_fir|Add6~46_combout\ & ((\spi0|spi_fir|Add9~45\) # (GND)))))
-- \spi0|spi_fir|Add9~47\ = CARRY((\spi0|spi_fir|Add5~46_combout\ & (!\spi0|spi_fir|Add6~46_combout\ & !\spi0|spi_fir|Add9~45\)) # (!\spi0|spi_fir|Add5~46_combout\ & ((!\spi0|spi_fir|Add9~45\) # (!\spi0|spi_fir|Add6~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~46_combout\,
	datab => \spi0|spi_fir|Add6~46_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~45\,
	combout => \spi0|spi_fir|Add9~46_combout\,
	cout => \spi0|spi_fir|Add9~47\);

-- Location: LCCOMB_X23_Y22_N30
\spi0|spi_fir|Add9~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~48_combout\ = ((\spi0|spi_fir|Add6~48_combout\ $ (\spi0|spi_fir|Add5~48_combout\ $ (!\spi0|spi_fir|Add9~47\)))) # (GND)
-- \spi0|spi_fir|Add9~49\ = CARRY((\spi0|spi_fir|Add6~48_combout\ & ((\spi0|spi_fir|Add5~48_combout\) # (!\spi0|spi_fir|Add9~47\))) # (!\spi0|spi_fir|Add6~48_combout\ & (\spi0|spi_fir|Add5~48_combout\ & !\spi0|spi_fir|Add9~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~48_combout\,
	datab => \spi0|spi_fir|Add5~48_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~47\,
	combout => \spi0|spi_fir|Add9~48_combout\,
	cout => \spi0|spi_fir|Add9~49\);

-- Location: LCCOMB_X23_Y21_N0
\spi0|spi_fir|Add9~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~50_combout\ = (\spi0|spi_fir|Add5~50_combout\ & ((\spi0|spi_fir|Add6~50_combout\ & (\spi0|spi_fir|Add9~49\ & VCC)) # (!\spi0|spi_fir|Add6~50_combout\ & (!\spi0|spi_fir|Add9~49\)))) # (!\spi0|spi_fir|Add5~50_combout\ & 
-- ((\spi0|spi_fir|Add6~50_combout\ & (!\spi0|spi_fir|Add9~49\)) # (!\spi0|spi_fir|Add6~50_combout\ & ((\spi0|spi_fir|Add9~49\) # (GND)))))
-- \spi0|spi_fir|Add9~51\ = CARRY((\spi0|spi_fir|Add5~50_combout\ & (!\spi0|spi_fir|Add6~50_combout\ & !\spi0|spi_fir|Add9~49\)) # (!\spi0|spi_fir|Add5~50_combout\ & ((!\spi0|spi_fir|Add9~49\) # (!\spi0|spi_fir|Add6~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~50_combout\,
	datab => \spi0|spi_fir|Add6~50_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~49\,
	combout => \spi0|spi_fir|Add9~50_combout\,
	cout => \spi0|spi_fir|Add9~51\);

-- Location: LCCOMB_X23_Y21_N2
\spi0|spi_fir|Add9~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~52_combout\ = ((\spi0|spi_fir|Add6~52_combout\ $ (\spi0|spi_fir|Add5~52_combout\ $ (!\spi0|spi_fir|Add9~51\)))) # (GND)
-- \spi0|spi_fir|Add9~53\ = CARRY((\spi0|spi_fir|Add6~52_combout\ & ((\spi0|spi_fir|Add5~52_combout\) # (!\spi0|spi_fir|Add9~51\))) # (!\spi0|spi_fir|Add6~52_combout\ & (\spi0|spi_fir|Add5~52_combout\ & !\spi0|spi_fir|Add9~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~52_combout\,
	datab => \spi0|spi_fir|Add5~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~51\,
	combout => \spi0|spi_fir|Add9~52_combout\,
	cout => \spi0|spi_fir|Add9~53\);

-- Location: LCCOMB_X23_Y21_N4
\spi0|spi_fir|Add9~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~54_combout\ = (\spi0|spi_fir|Add6~54_combout\ & ((\spi0|spi_fir|Add5~54_combout\ & (\spi0|spi_fir|Add9~53\ & VCC)) # (!\spi0|spi_fir|Add5~54_combout\ & (!\spi0|spi_fir|Add9~53\)))) # (!\spi0|spi_fir|Add6~54_combout\ & 
-- ((\spi0|spi_fir|Add5~54_combout\ & (!\spi0|spi_fir|Add9~53\)) # (!\spi0|spi_fir|Add5~54_combout\ & ((\spi0|spi_fir|Add9~53\) # (GND)))))
-- \spi0|spi_fir|Add9~55\ = CARRY((\spi0|spi_fir|Add6~54_combout\ & (!\spi0|spi_fir|Add5~54_combout\ & !\spi0|spi_fir|Add9~53\)) # (!\spi0|spi_fir|Add6~54_combout\ & ((!\spi0|spi_fir|Add9~53\) # (!\spi0|spi_fir|Add5~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~54_combout\,
	datab => \spi0|spi_fir|Add5~54_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~53\,
	combout => \spi0|spi_fir|Add9~54_combout\,
	cout => \spi0|spi_fir|Add9~55\);

-- Location: LCCOMB_X23_Y21_N6
\spi0|spi_fir|Add9~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~56_combout\ = ((\spi0|spi_fir|Add6~56_combout\ $ (\spi0|spi_fir|Add5~56_combout\ $ (!\spi0|spi_fir|Add9~55\)))) # (GND)
-- \spi0|spi_fir|Add9~57\ = CARRY((\spi0|spi_fir|Add6~56_combout\ & ((\spi0|spi_fir|Add5~56_combout\) # (!\spi0|spi_fir|Add9~55\))) # (!\spi0|spi_fir|Add6~56_combout\ & (\spi0|spi_fir|Add5~56_combout\ & !\spi0|spi_fir|Add9~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~56_combout\,
	datab => \spi0|spi_fir|Add5~56_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~55\,
	combout => \spi0|spi_fir|Add9~56_combout\,
	cout => \spi0|spi_fir|Add9~57\);

-- Location: LCCOMB_X23_Y21_N8
\spi0|spi_fir|Add9~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~58_combout\ = (\spi0|spi_fir|Add5~58_combout\ & ((\spi0|spi_fir|Add6~58_combout\ & (\spi0|spi_fir|Add9~57\ & VCC)) # (!\spi0|spi_fir|Add6~58_combout\ & (!\spi0|spi_fir|Add9~57\)))) # (!\spi0|spi_fir|Add5~58_combout\ & 
-- ((\spi0|spi_fir|Add6~58_combout\ & (!\spi0|spi_fir|Add9~57\)) # (!\spi0|spi_fir|Add6~58_combout\ & ((\spi0|spi_fir|Add9~57\) # (GND)))))
-- \spi0|spi_fir|Add9~59\ = CARRY((\spi0|spi_fir|Add5~58_combout\ & (!\spi0|spi_fir|Add6~58_combout\ & !\spi0|spi_fir|Add9~57\)) # (!\spi0|spi_fir|Add5~58_combout\ & ((!\spi0|spi_fir|Add9~57\) # (!\spi0|spi_fir|Add6~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~58_combout\,
	datab => \spi0|spi_fir|Add6~58_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~57\,
	combout => \spi0|spi_fir|Add9~58_combout\,
	cout => \spi0|spi_fir|Add9~59\);

-- Location: FF_X23_Y21_N23
\spi0|spi|spi_value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~72_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(11));

-- Location: FF_X23_Y21_N25
\spi0|spi|spi_value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~73_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(10));

-- Location: FF_X23_Y21_N31
\spi0|spi|spi_value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~74_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(9));

-- Location: FF_X24_Y21_N27
\spi0|spi|spi_value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~75_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(8));

-- Location: FF_X24_Y21_N25
\spi0|spi|spi_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~76_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(7));

-- Location: FF_X22_Y22_N17
\spi0|spi|spi_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~77_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(6));

-- Location: FF_X22_Y22_N3
\spi0|spi|spi_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~78_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(5));

-- Location: FF_X22_Y22_N13
\spi0|spi|spi_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~79_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(4));

-- Location: FF_X22_Y22_N31
\spi0|spi|spi_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~80_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(3));

-- Location: FF_X22_Y22_N25
\spi0|spi|spi_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~81_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(2));

-- Location: FF_X22_Y22_N11
\spi0|spi|spi_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~82_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(1));

-- Location: FF_X21_Y22_N9
\spi0|spi|spi_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|spi_value~3_combout\,
	sclr => \spi0|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(0));

-- Location: FF_X1_Y21_N5
\spi0|blink_hb|counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(0));

-- Location: FF_X22_Y22_N7
\spi0|spi|wrcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|wrcnt~1_combout\,
	ena => \spi0|spi|spi_value[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(2));

-- Location: FF_X27_Y22_N15
\spi0|spi|rdcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|rdcnt~0_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(3));

-- Location: FF_X27_Y22_N1
\spi0|spi|rdcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|rdcnt~2_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(2));

-- Location: FF_X27_Y22_N11
\spi0|spi|rdcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|rdcnt~3_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(0));

-- Location: FF_X27_Y22_N9
\spi0|spi|rdcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|rdcnt~4_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(1));

-- Location: LCCOMB_X27_Y22_N6
\spi0|spi|read_me~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|read_me~0_combout\ = (\spi0|spi|rdcnt\(0) & (\spi0|spi|rdcnt\(1) & (\spi0|spi|rdcnt\(3) & \spi0|spi|rdcnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|rdcnt\(0),
	datab => \spi0|spi|rdcnt\(1),
	datac => \spi0|spi|rdcnt\(3),
	datad => \spi0|spi|rdcnt\(2),
	combout => \spi0|spi|read_me~0_combout\);

-- Location: LCCOMB_X22_Y22_N6
\spi0|spi|wrcnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~1_combout\ = (!\spi0|reset~q\ & (!\spi0|spi|Equal1~0_combout\ & (\spi0|spi|wrcnt\(2) $ (\spi0|spi|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datab => \spi0|spi|Equal1~0_combout\,
	datac => \spi0|spi|wrcnt\(2),
	datad => \spi0|spi|Add0~0_combout\,
	combout => \spi0|spi|wrcnt~1_combout\);

-- Location: LCCOMB_X27_Y22_N12
\spi0|spi|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|Add1~0_combout\ = (\spi0|spi|rdcnt\(1) & \spi0|spi|rdcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|rdcnt\(1),
	datad => \spi0|spi|rdcnt\(0),
	combout => \spi0|spi|Add1~0_combout\);

-- Location: LCCOMB_X27_Y22_N14
\spi0|spi|rdcnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~0_combout\ = (!\spi0|reset~q\ & (\spi0|spi|rdcnt\(3) $ (((\spi0|spi|Add1~0_combout\ & \spi0|spi|rdcnt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|Add1~0_combout\,
	datab => \spi0|reset~q\,
	datac => \spi0|spi|rdcnt\(3),
	datad => \spi0|spi|rdcnt\(2),
	combout => \spi0|spi|rdcnt~0_combout\);

-- Location: LCCOMB_X27_Y22_N0
\spi0|spi|rdcnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~2_combout\ = (!\spi0|spi|read_me~0_combout\ & (!\spi0|reset~q\ & (\spi0|spi|rdcnt\(2) $ (\spi0|spi|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|read_me~0_combout\,
	datab => \spi0|reset~q\,
	datac => \spi0|spi|rdcnt\(2),
	datad => \spi0|spi|Add1~0_combout\,
	combout => \spi0|spi|rdcnt~2_combout\);

-- Location: LCCOMB_X27_Y22_N10
\spi0|spi|rdcnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~3_combout\ = (!\spi0|reset~q\ & !\spi0|spi|rdcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi0|reset~q\,
	datac => \spi0|spi|rdcnt\(0),
	combout => \spi0|spi|rdcnt~3_combout\);

-- Location: LCCOMB_X27_Y22_N8
\spi0|spi|rdcnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~4_combout\ = (!\spi0|spi|read_me~0_combout\ & (!\spi0|reset~q\ & (\spi0|spi|rdcnt\(1) $ (\spi0|spi|rdcnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|read_me~0_combout\,
	datab => \spi0|reset~q\,
	datac => \spi0|spi|rdcnt\(1),
	datad => \spi0|spi|rdcnt\(0),
	combout => \spi0|spi|rdcnt~4_combout\);

-- Location: FF_X27_Y22_N31
\spi0|spi|spi_readvalue[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|spi_readvalue[9]~feeder_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(9));

-- Location: FF_X27_Y22_N27
\spi0|spi|spi_readvalue[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|spi_readvalue[10]~feeder_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(10));

-- Location: FF_X27_Y22_N23
\spi0|spi|spi_readvalue[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~13_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(13));

-- Location: LCCOMB_X23_Y21_N22
\spi0|spi_fir|Add9~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~72_combout\ = (\spi0|spi|feed_me~q\ & (\spi0|spi_fir|Add9~58_combout\)) # (!\spi0|spi|feed_me~q\ & ((\spi0|spi|spi_value\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datac => \spi0|spi_fir|Add9~58_combout\,
	datad => \spi0|spi|spi_value\(10),
	combout => \spi0|spi_fir|Add9~72_combout\);

-- Location: LCCOMB_X23_Y21_N24
\spi0|spi_fir|Add9~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~73_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~56_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_value\(9),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~56_combout\,
	combout => \spi0|spi_fir|Add9~73_combout\);

-- Location: LCCOMB_X23_Y21_N30
\spi0|spi_fir|Add9~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~74_combout\ = (\spi0|spi|feed_me~q\ & (\spi0|spi_fir|Add9~54_combout\)) # (!\spi0|spi|feed_me~q\ & ((\spi0|spi|spi_value\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datac => \spi0|spi_fir|Add9~54_combout\,
	datad => \spi0|spi|spi_value\(8),
	combout => \spi0|spi_fir|Add9~74_combout\);

-- Location: LCCOMB_X24_Y21_N26
\spi0|spi_fir|Add9~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~75_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~52_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|spi_value\(7),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~52_combout\,
	combout => \spi0|spi_fir|Add9~75_combout\);

-- Location: LCCOMB_X24_Y21_N24
\spi0|spi_fir|Add9~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~76_combout\ = (\spi0|spi|feed_me~q\ & (\spi0|spi_fir|Add9~50_combout\)) # (!\spi0|spi|feed_me~q\ & ((\spi0|spi|spi_value\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datac => \spi0|spi_fir|Add9~50_combout\,
	datad => \spi0|spi|spi_value\(6),
	combout => \spi0|spi_fir|Add9~76_combout\);

-- Location: LCCOMB_X22_Y22_N16
\spi0|spi_fir|Add9~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~77_combout\ = (\spi0|spi|feed_me~q\ & (\spi0|spi_fir|Add9~48_combout\)) # (!\spi0|spi|feed_me~q\ & ((\spi0|spi|spi_value\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datac => \spi0|spi_fir|Add9~48_combout\,
	datad => \spi0|spi|spi_value\(5),
	combout => \spi0|spi_fir|Add9~77_combout\);

-- Location: LCCOMB_X22_Y22_N2
\spi0|spi_fir|Add9~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~78_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~46_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_value\(4),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~46_combout\,
	combout => \spi0|spi_fir|Add9~78_combout\);

-- Location: LCCOMB_X22_Y22_N12
\spi0|spi_fir|Add9~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~79_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~44_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_value\(3),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~44_combout\,
	combout => \spi0|spi_fir|Add9~79_combout\);

-- Location: LCCOMB_X22_Y22_N30
\spi0|spi_fir|Add9~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~80_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~42_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|spi_value\(2),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~42_combout\,
	combout => \spi0|spi_fir|Add9~80_combout\);

-- Location: LCCOMB_X22_Y22_N24
\spi0|spi_fir|Add9~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~81_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~40_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_value\(1),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~40_combout\,
	combout => \spi0|spi_fir|Add9~81_combout\);

-- Location: LCCOMB_X22_Y22_N10
\spi0|spi_fir|Add9~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~82_combout\ = (\spi0|spi|feed_me~q\ & (\spi0|spi_fir|Add9~38_combout\)) # (!\spi0|spi|feed_me~q\ & ((\spi0|spi|spi_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datac => \spi0|spi_fir|Add9~38_combout\,
	datad => \spi0|spi|spi_value\(0),
	combout => \spi0|spi_fir|Add9~82_combout\);

-- Location: LCCOMB_X22_Y22_N22
\spi0|spi|spi_value~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~2_combout\ = (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(0) & ((\spi0|spi|sck_synchronizer\(2)) # (!\spi0|spi|sck_synchronizer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datab => \spi0|spi|sck_synchronizer\(2),
	datac => \spi0|spi|sck_synchronizer\(1),
	datad => \spi0|spi|spi_value\(0),
	combout => \spi0|spi|spi_value~2_combout\);

-- Location: LCCOMB_X21_Y22_N8
\spi0|spi|spi_value~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~3_combout\ = (\spi0|spi|spi_value~2_combout\) # ((!\spi0|reset~q\ & (\spi0|spi|feed_me~q\ & \spi0|spi_fir|Add9~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datab => \spi0|spi|spi_value~2_combout\,
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~36_combout\,
	combout => \spi0|spi|spi_value~3_combout\);

-- Location: LCCOMB_X1_Y21_N4
\spi0|blink_hb|counter_output[0]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[0]~72_combout\ = !\spi0|blink_hb|counter_output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|counter_output\(0),
	combout => \spi0|blink_hb|counter_output[0]~72_combout\);

-- Location: LCCOMB_X27_Y22_N30
\spi0|spi|spi_readvalue[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[9]~feeder_combout\ = \spi0|spi|data_out~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~9_combout\,
	combout => \spi0|spi|spi_readvalue[9]~feeder_combout\);

-- Location: LCCOMB_X27_Y22_N26
\spi0|spi|spi_readvalue[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[10]~feeder_combout\ = \spi0|spi|data_out~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|data_out~10_combout\,
	combout => \spi0|spi|spi_readvalue[10]~feeder_combout\);

-- Location: IOOBUF_X37_Y0_N23
\GPIO_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\GPIO_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\GPIO_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\GPIO_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\GPIO_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[6]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\GPIO_1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[8]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\GPIO_1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\GPIO_1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\GPIO_1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\GPIO_1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\GPIO_1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\GPIO_1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\GPIO_1[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[18]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\GPIO_1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\GPIO_1[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[20]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\GPIO_1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[21]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\GPIO_1[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[22]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\GPIO_1[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[23]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\GPIO_1[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[24]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\GPIO_1[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[25]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\GPIO_1[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[26]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\GPIO_1[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[27]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\GPIO_1[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[28]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\GPIO_1[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\GPIO_1[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[30]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\GPIO_1[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[31]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\GPIO_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|spi|MISO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\GPIO_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\GPIO_1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\GPIO_1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO_1[7]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\GPIO_1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO_1[5]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\GPIO_1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|spi|MISO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|blink_hb|counter_output\(24),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|LED\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[9]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y0_N1
\GPIO_1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(7),
	o => \GPIO_1[7]~input_o\);

-- Location: FF_X28_Y21_N5
\spi0|spi|sck_synchronizer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO_1[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(0));

-- Location: LCCOMB_X27_Y21_N30
\spi0|spi|sck_synchronizer[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|sck_synchronizer[1]~feeder_combout\ = \spi0|spi|sck_synchronizer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|sck_synchronizer\(0),
	combout => \spi0|spi|sck_synchronizer[1]~feeder_combout\);

-- Location: FF_X27_Y21_N31
\spi0|spi|sck_synchronizer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|sck_synchronizer[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(1));

-- Location: LCCOMB_X27_Y21_N24
\spi0|spi|sck_synchronizer[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|sck_synchronizer[2]~feeder_combout\ = \spi0|spi|sck_synchronizer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|sck_synchronizer\(1),
	combout => \spi0|spi|sck_synchronizer[2]~feeder_combout\);

-- Location: FF_X27_Y21_N25
\spi0|spi|sck_synchronizer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|sck_synchronizer[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(2));

-- Location: LCCOMB_X27_Y22_N20
\spi0|spi|read_me~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|read_me~1_combout\ = (\spi0|spi|read_me~q\) # ((\spi0|spi|read_me~0_combout\ & (\spi0|spi|sck_synchronizer\(2) & !\spi0|spi|sck_synchronizer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|read_me~0_combout\,
	datab => \spi0|spi|sck_synchronizer\(2),
	datac => \spi0|spi|read_me~q\,
	datad => \spi0|spi|sck_synchronizer\(1),
	combout => \spi0|spi|read_me~1_combout\);

-- Location: LCCOMB_X26_Y22_N16
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y21_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X21_Y22_N22
\spi0|pb0_synchronizer[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|pb0_synchronizer[0]~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \spi0|pb0_synchronizer[0]~feeder_combout\);

-- Location: FF_X21_Y22_N23
\spi0|pb0_synchronizer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|pb0_synchronizer[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|pb0_synchronizer\(0));

-- Location: LCCOMB_X21_Y22_N28
\spi0|pb0_synchronizer[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|pb0_synchronizer[1]~feeder_combout\ = \spi0|pb0_synchronizer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|pb0_synchronizer\(0),
	combout => \spi0|pb0_synchronizer[1]~feeder_combout\);

-- Location: FF_X21_Y22_N29
\spi0|pb0_synchronizer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|pb0_synchronizer[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|pb0_synchronizer\(1));

-- Location: LCCOMB_X21_Y22_N0
\spi0|pb0_synchronizer[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|pb0_synchronizer[2]~feeder_combout\ = \spi0|pb0_synchronizer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|pb0_synchronizer\(1),
	combout => \spi0|pb0_synchronizer[2]~feeder_combout\);

-- Location: FF_X21_Y22_N1
\spi0|pb0_synchronizer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|pb0_synchronizer[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|pb0_synchronizer\(2));

-- Location: LCCOMB_X21_Y22_N10
\spi0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|Equal0~0_combout\ = (\spi0|pb0_synchronizer\(1) & !\spi0|pb0_synchronizer\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi0|pb0_synchronizer\(1),
	datad => \spi0|pb0_synchronizer\(2),
	combout => \spi0|Equal0~0_combout\);

-- Location: FF_X21_Y22_N11
\spi0|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|reset~q\);

-- Location: FF_X27_Y22_N21
\spi0|spi|read_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|read_me~1_combout\,
	asdata => \~GND~combout\,
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|read_me~q\);

-- Location: IOIBUF_X35_Y0_N29
\GPIO_1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(5),
	o => \GPIO_1[5]~input_o\);

-- Location: LCCOMB_X21_Y22_N20
\spi0|spi|spi_readvalue~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue~0_combout\ = (\GPIO_1[5]~input_o\ & !\spi0|reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO_1[5]~input_o\,
	datad => \spi0|reset~q\,
	combout => \spi0|spi|spi_readvalue~0_combout\);

-- Location: LCCOMB_X26_Y22_N28
\spi0|spi|rdcnt[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[3]~1_combout\ = (\spi0|reset~q\) # ((!\spi0|spi|sck_synchronizer\(1) & \spi0|spi|sck_synchronizer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|sck_synchronizer\(1),
	datac => \spi0|spi|sck_synchronizer\(2),
	datad => \spi0|reset~q\,
	combout => \spi0|spi|rdcnt[3]~1_combout\);

-- Location: FF_X21_Y22_N21
\spi0|spi|spi_readvalue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|spi_readvalue~0_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(0));

-- Location: LCCOMB_X21_Y22_N18
\spi0|spi|data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~0_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(0),
	combout => \spi0|spi|data_out~0_combout\);

-- Location: LCCOMB_X21_Y22_N16
\spi0|spi|spi_readvalue[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[1]~feeder_combout\ = \spi0|spi|data_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~0_combout\,
	combout => \spi0|spi|spi_readvalue[1]~feeder_combout\);

-- Location: FF_X21_Y22_N17
\spi0|spi|spi_readvalue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|spi_readvalue[1]~feeder_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(1));

-- Location: LCCOMB_X21_Y22_N6
\spi0|spi|data_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~2_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(1),
	combout => \spi0|spi|data_out~2_combout\);

-- Location: FF_X21_Y22_N7
\spi0|spi|spi_readvalue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~2_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(2));

-- Location: LCCOMB_X21_Y22_N4
\spi0|spi|data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~3_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(2),
	combout => \spi0|spi|data_out~3_combout\);

-- Location: FF_X21_Y22_N5
\spi0|spi|spi_readvalue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~3_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(3));

-- Location: LCCOMB_X21_Y22_N14
\spi0|spi|data_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~4_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datac => \spi0|spi|spi_readvalue\(3),
	combout => \spi0|spi|data_out~4_combout\);

-- Location: FF_X21_Y22_N15
\spi0|spi|spi_readvalue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~4_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(4));

-- Location: LCCOMB_X21_Y22_N12
\spi0|spi|data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~5_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datac => \spi0|spi|spi_readvalue\(4),
	combout => \spi0|spi|data_out~5_combout\);

-- Location: LCCOMB_X24_Y21_N28
\spi0|spi|data_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[4]~feeder_combout\ = \spi0|spi|data_out~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|data_out~5_combout\,
	combout => \spi0|spi|data_out[4]~feeder_combout\);

-- Location: LCCOMB_X26_Y22_N6
\spi0|spi|data_out[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[5]~1_combout\ = (\spi0|spi|read_me~q\) # (\spi0|reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|read_me~q\,
	datad => \spi0|reset~q\,
	combout => \spi0|spi|data_out[5]~1_combout\);

-- Location: FF_X24_Y21_N29
\spi0|spi|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[4]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(4));

-- Location: FF_X22_Y21_N9
\spi0|spi_fir|u_pipe[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(4),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][4]~_Duplicate_1_q\);

-- Location: FF_X22_Y21_N19
\spi0|spi_fir|u_pipe[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][4]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y21_N14
\spi0|spi_fir|u_pipe[2][4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][4]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y21_N15
\spi0|spi_fir|u_pipe[2][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1_q\);

-- Location: FF_X22_Y21_N13
\spi0|spi_fir|u_pipe[3][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][4]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][4]~_Duplicate_1_q\);

-- Location: FF_X21_Y21_N11
\spi0|spi_fir|u_pipe[4][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[3][4]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y21_N14
\spi0|spi_fir|u_pipe[5][4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][4]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y21_N15
\spi0|spi_fir|u_pipe[5][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1_q\);

-- Location: FF_X21_Y21_N17
\spi0|spi_fir|u_pipe[6][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[5][4]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y21_N2
\spi0|spi_fir|u_pipe[7][4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][4]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y21_N3
\spi0|spi_fir|u_pipe[7][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1_q\);

-- Location: FF_X21_Y22_N13
\spi0|spi|spi_readvalue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~5_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(5));

-- Location: LCCOMB_X21_Y22_N2
\spi0|spi|data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~6_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(5),
	combout => \spi0|spi|data_out~6_combout\);

-- Location: LCCOMB_X19_Y22_N30
\spi0|spi|data_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[5]~feeder_combout\ = \spi0|spi|data_out~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~6_combout\,
	combout => \spi0|spi|data_out[5]~feeder_combout\);

-- Location: FF_X19_Y22_N31
\spi0|spi|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[5]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(5));

-- Location: FF_X19_Y22_N23
\spi0|spi_fir|u_pipe[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(5),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][5]~_Duplicate_1_q\);

-- Location: FF_X19_Y22_N3
\spi0|spi_fir|u_pipe[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][5]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y22_N18
\spi0|spi_fir|u_pipe[2][5]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][5]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y22_N19
\spi0|spi_fir|u_pipe[2][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N28
\spi0|spi_fir|u_pipe[3][5]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][5]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N29
\spi0|spi_fir|u_pipe[3][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N24
\spi0|spi_fir|u_pipe[4][5]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][5]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N25
\spi0|spi_fir|u_pipe[4][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N30
\spi0|spi_fir|u_pipe[5][5]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][5]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N31
\spi0|spi_fir|u_pipe[5][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1_q\);

-- Location: FF_X26_Y23_N9
\spi0|spi_fir|u_pipe[6][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[5][5]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][5]~_Duplicate_1_q\);

-- Location: FF_X26_Y23_N19
\spi0|spi_fir|u_pipe[7][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[6][5]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][5]~_Duplicate_1_q\);

-- Location: FF_X21_Y22_N3
\spi0|spi|spi_readvalue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~6_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(6));

-- Location: LCCOMB_X21_Y22_N24
\spi0|spi|data_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~7_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(6),
	combout => \spi0|spi|data_out~7_combout\);

-- Location: LCCOMB_X20_Y22_N6
\spi0|spi|data_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[6]~feeder_combout\ = \spi0|spi|data_out~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~7_combout\,
	combout => \spi0|spi|data_out[6]~feeder_combout\);

-- Location: FF_X20_Y22_N7
\spi0|spi|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[6]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(6));

-- Location: LCCOMB_X24_Y20_N2
\spi0|spi_fir|u_pipe[0][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(6),
	combout => \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X24_Y20_N3
\spi0|spi_fir|u_pipe[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y20_N12
\spi0|spi_fir|u_pipe[1][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[0][6]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X24_Y20_N13
\spi0|spi_fir|u_pipe[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y20_N24
\spi0|spi_fir|u_pipe[2][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][6]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][6]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X24_Y20_N25
\spi0|spi_fir|u_pipe[2][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][6]~_Duplicate_1_q\);

-- Location: FF_X27_Y20_N5
\spi0|spi_fir|u_pipe[3][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][6]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N22
\spi0|spi_fir|u_pipe[4][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][6]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][6]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N23
\spi0|spi_fir|u_pipe[4][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][6]~_Duplicate_1_q\);

-- Location: FF_X26_Y23_N1
\spi0|spi_fir|u_pipe[5][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][6]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N2
\spi0|spi_fir|u_pipe[6][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][6]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N3
\spi0|spi_fir|u_pipe[6][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N20
\spi0|spi_fir|u_pipe[7][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][6]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N21
\spi0|spi_fir|u_pipe[7][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1_q\);

-- Location: FF_X21_Y22_N25
\spi0|spi|spi_readvalue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~7_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(7));

-- Location: LCCOMB_X21_Y22_N30
\spi0|spi|data_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~8_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(7),
	combout => \spi0|spi|data_out~8_combout\);

-- Location: FF_X21_Y21_N13
\spi0|spi|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out~8_combout\,
	sload => VCC,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(7));

-- Location: LCCOMB_X22_Y21_N2
\spi0|spi_fir|u_pipe[0][7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(7),
	combout => \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y21_N3
\spi0|spi_fir|u_pipe[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y21_N0
\spi0|spi_fir|u_pipe[1][7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[0][7]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y21_N1
\spi0|spi_fir|u_pipe[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y21_N4
\spi0|spi_fir|u_pipe[2][7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][7]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y21_N5
\spi0|spi_fir|u_pipe[2][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1_q\);

-- Location: FF_X22_Y21_N11
\spi0|spi_fir|u_pipe[3][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][7]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][7]~_Duplicate_1_q\);

-- Location: FF_X21_Y23_N27
\spi0|spi_fir|u_pipe[4][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[3][7]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][7]~_Duplicate_1_q\);

-- Location: FF_X17_Y23_N31
\spi0|spi_fir|u_pipe[5][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][7]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][7]~_Duplicate_1_q\);

-- Location: FF_X17_Y23_N13
\spi0|spi_fir|u_pipe[6][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[5][7]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y23_N0
\spi0|spi_fir|u_pipe[7][7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][7]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y23_N1
\spi0|spi_fir|u_pipe[7][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1_q\);

-- Location: FF_X21_Y22_N31
\spi0|spi|spi_readvalue[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~8_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(8));

-- Location: LCCOMB_X26_Y22_N14
\spi0|spi|data_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~9_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(8),
	combout => \spi0|spi|data_out~9_combout\);

-- Location: LCCOMB_X26_Y22_N22
\spi0|spi|data_out[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[8]~feeder_combout\ = \spi0|spi|data_out~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|data_out~9_combout\,
	combout => \spi0|spi|data_out[8]~feeder_combout\);

-- Location: FF_X26_Y22_N23
\spi0|spi|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[8]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(8));

-- Location: FF_X23_Y23_N5
\spi0|spi_fir|u_pipe[0][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(8),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][8]~_Duplicate_1_q\);

-- Location: FF_X23_Y23_N11
\spi0|spi_fir|u_pipe[1][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][8]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y23_N2
\spi0|spi_fir|u_pipe[2][8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][8]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][8]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y23_N3
\spi0|spi_fir|u_pipe[2][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1_q\);

-- Location: FF_X26_Y23_N27
\spi0|spi_fir|u_pipe[3][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][8]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N16
\spi0|spi_fir|u_pipe[4][8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][8]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][8]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N17
\spi0|spi_fir|u_pipe[4][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N6
\spi0|spi_fir|u_pipe[5][8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][8]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N7
\spi0|spi_fir|u_pipe[5][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y23_N4
\spi0|spi_fir|u_pipe[6][8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][8]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y23_N5
\spi0|spi_fir|u_pipe[6][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1_q\);

-- Location: FF_X26_Y23_N11
\spi0|spi_fir|u_pipe[7][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[6][8]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y22_N4
\spi0|spi|data_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~10_combout\ = (\spi0|spi|spi_readvalue\(9) & !\spi0|reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_readvalue\(9),
	datac => \spi0|reset~q\,
	combout => \spi0|spi|data_out~10_combout\);

-- Location: LCCOMB_X26_Y22_N24
\spi0|spi|data_out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[9]~feeder_combout\ = \spi0|spi|data_out~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~10_combout\,
	combout => \spi0|spi|data_out[9]~feeder_combout\);

-- Location: FF_X26_Y22_N25
\spi0|spi|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[9]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(9));

-- Location: FF_X19_Y21_N5
\spi0|spi_fir|u_pipe[0][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(9),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][9]~_Duplicate_1_q\);

-- Location: FF_X21_Y21_N1
\spi0|spi_fir|u_pipe[1][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][9]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y21_N8
\spi0|spi_fir|u_pipe[2][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y21_N9
\spi0|spi_fir|u_pipe[2][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y20_N0
\spi0|spi_fir|u_pipe[3][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X24_Y20_N1
\spi0|spi_fir|u_pipe[3][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y20_N28
\spi0|spi_fir|u_pipe[4][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X24_Y20_N29
\spi0|spi_fir|u_pipe[4][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y20_N16
\spi0|spi_fir|u_pipe[5][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X24_Y20_N17
\spi0|spi_fir|u_pipe[5][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y23_N18
\spi0|spi_fir|u_pipe[6][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y23_N19
\spi0|spi_fir|u_pipe[6][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N22
\spi0|spi_fir|u_pipe[7][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N23
\spi0|spi_fir|u_pipe[7][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y22_N24
\spi0|spi|data_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~11_combout\ = (\spi0|spi|spi_readvalue\(10) & !\spi0|reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_readvalue\(10),
	datac => \spi0|reset~q\,
	combout => \spi0|spi|data_out~11_combout\);

-- Location: LCCOMB_X26_Y22_N18
\spi0|spi|data_out[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[10]~feeder_combout\ = \spi0|spi|data_out~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~11_combout\,
	combout => \spi0|spi|data_out[10]~feeder_combout\);

-- Location: FF_X26_Y22_N19
\spi0|spi|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[10]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(10));

-- Location: FF_X26_Y20_N23
\spi0|spi_fir|u_pipe[0][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(10),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][10]~_Duplicate_1_q\);

-- Location: FF_X26_Y20_N11
\spi0|spi_fir|u_pipe[1][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][10]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][10]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N30
\spi0|spi_fir|u_pipe[2][10]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][10]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][10]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N31
\spi0|spi_fir|u_pipe[2][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1_q\);

-- Location: FF_X26_Y20_N3
\spi0|spi_fir|u_pipe[3][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][10]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][10]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N26
\spi0|spi_fir|u_pipe[4][10]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][10]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][10]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N27
\spi0|spi_fir|u_pipe[4][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1_q\);

-- Location: FF_X26_Y20_N19
\spi0|spi_fir|u_pipe[5][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][10]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][10]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y23_N28
\spi0|spi_fir|u_pipe[6][10]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][10]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][10]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y23_N29
\spi0|spi_fir|u_pipe[6][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y23_N2
\spi0|spi_fir|u_pipe[7][10]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][10]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y23_N3
\spi0|spi_fir|u_pipe[7][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y22_N2
\spi0|spi|spi_readvalue[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[11]~feeder_combout\ = \spi0|spi|data_out~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|data_out~11_combout\,
	combout => \spi0|spi|spi_readvalue[11]~feeder_combout\);

-- Location: FF_X27_Y22_N3
\spi0|spi|spi_readvalue[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|spi_readvalue[11]~feeder_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(11));

-- Location: LCCOMB_X27_Y22_N16
\spi0|spi|data_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~12_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(11),
	combout => \spi0|spi|data_out~12_combout\);

-- Location: LCCOMB_X26_Y22_N0
\spi0|spi|data_out[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[11]~feeder_combout\ = \spi0|spi|data_out~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~12_combout\,
	combout => \spi0|spi|data_out[11]~feeder_combout\);

-- Location: FF_X26_Y22_N1
\spi0|spi|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[11]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(11));

-- Location: LCCOMB_X19_Y23_N16
\spi0|spi_fir|u_pipe[0][11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][11]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(11),
	combout => \spi0|spi_fir|u_pipe[0][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y23_N17
\spi0|spi_fir|u_pipe[0][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][11]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][11]~_Duplicate_1_q\);

-- Location: FF_X19_Y23_N31
\spi0|spi_fir|u_pipe[1][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][11]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][11]~_Duplicate_1_q\);

-- Location: FF_X19_Y23_N3
\spi0|spi_fir|u_pipe[2][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[1][11]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][11]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y23_N28
\spi0|spi_fir|u_pipe[3][11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][11]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][11]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y23_N29
\spi0|spi_fir|u_pipe[3][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y23_N26
\spi0|spi_fir|u_pipe[4][11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][11]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][11]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y23_N27
\spi0|spi_fir|u_pipe[4][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][11]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][11]~_Duplicate_1_q\);

-- Location: FF_X19_Y23_N25
\spi0|spi_fir|u_pipe[5][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][11]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][11]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y23_N8
\spi0|spi_fir|u_pipe[6][11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][11]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][11]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][11]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y23_N9
\spi0|spi_fir|u_pipe[6][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][11]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][11]~_Duplicate_1_q\);

-- Location: FF_X19_Y23_N7
\spi0|spi_fir|u_pipe[7][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[6][11]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][11]~_Duplicate_1_q\);

-- Location: FF_X27_Y22_N17
\spi0|spi|spi_readvalue[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~12_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(12));

-- Location: LCCOMB_X27_Y22_N22
\spi0|spi|data_out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~13_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(12),
	combout => \spi0|spi|data_out~13_combout\);

-- Location: LCCOMB_X26_Y22_N30
\spi0|spi|data_out[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[12]~feeder_combout\ = \spi0|spi|data_out~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~13_combout\,
	combout => \spi0|spi|data_out[12]~feeder_combout\);

-- Location: FF_X26_Y22_N31
\spi0|spi|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[12]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(12));

-- Location: FF_X24_Y20_N5
\spi0|spi_fir|u_pipe[0][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(12),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][12]~_Duplicate_1_q\);

-- Location: FF_X24_Y20_N19
\spi0|spi_fir|u_pipe[1][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][12]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][12]~_Duplicate_1_q\);

-- Location: FF_X22_Y23_N29
\spi0|spi_fir|u_pipe[2][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[1][12]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][12]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N20
\spi0|spi_fir|u_pipe[3][12]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][12]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][12]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N21
\spi0|spi_fir|u_pipe[3][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N4
\spi0|spi_fir|u_pipe[4][12]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][12]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N5
\spi0|spi_fir|u_pipe[4][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1_q\);

-- Location: FF_X22_Y23_N13
\spi0|spi_fir|u_pipe[5][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][12]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][12]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N16
\spi0|spi_fir|u_pipe[6][12]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][12]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][12]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N17
\spi0|spi_fir|u_pipe[6][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N0
\spi0|spi_fir|u_pipe[7][12]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][12]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N1
\spi0|spi_fir|u_pipe[7][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y22_N28
\spi0|spi|data_out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~14_combout\ = (\spi0|spi|spi_readvalue\(13) & !\spi0|reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_readvalue\(13),
	datac => \spi0|reset~q\,
	combout => \spi0|spi|data_out~14_combout\);

-- Location: LCCOMB_X26_Y22_N20
\spi0|spi|data_out[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[13]~feeder_combout\ = \spi0|spi|data_out~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~14_combout\,
	combout => \spi0|spi|data_out[13]~feeder_combout\);

-- Location: FF_X26_Y22_N21
\spi0|spi|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[13]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(13));

-- Location: LCCOMB_X17_Y22_N18
\spi0|spi_fir|u_pipe[0][13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(13),
	combout => \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y22_N19
\spi0|spi_fir|u_pipe[0][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y22_N4
\spi0|spi_fir|u_pipe[1][13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[0][13]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y22_N5
\spi0|spi_fir|u_pipe[1][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1_q\);

-- Location: FF_X17_Y22_N21
\spi0|spi_fir|u_pipe[2][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[1][13]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][13]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y23_N14
\spi0|spi_fir|u_pipe[3][13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][13]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][13]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y23_N15
\spi0|spi_fir|u_pipe[3][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1_q\);

-- Location: FF_X17_Y23_N21
\spi0|spi_fir|u_pipe[4][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[3][13]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][13]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y23_N8
\spi0|spi_fir|u_pipe[5][13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][13]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][13]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y23_N9
\spi0|spi_fir|u_pipe[5][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1_q\);

-- Location: FF_X17_Y23_N27
\spi0|spi_fir|u_pipe[6][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[5][13]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][13]~_Duplicate_1_q\);

-- Location: FF_X17_Y23_N3
\spi0|spi_fir|u_pipe[7][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[6][13]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][13]~_Duplicate_1_q\);

-- Location: FF_X27_Y22_N29
\spi0|spi|spi_readvalue[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~14_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(14));

-- Location: LCCOMB_X27_Y22_N18
\spi0|spi|data_out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~15_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(14),
	combout => \spi0|spi|data_out~15_combout\);

-- Location: LCCOMB_X26_Y22_N26
\spi0|spi|data_out[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[14]~feeder_combout\ = \spi0|spi|data_out~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~15_combout\,
	combout => \spi0|spi|data_out[14]~feeder_combout\);

-- Location: FF_X26_Y22_N27
\spi0|spi|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[14]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(14));

-- Location: LCCOMB_X24_Y20_N26
\spi0|spi_fir|u_pipe[0][14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(14),
	combout => \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1feeder_combout\);

-- Location: FF_X24_Y20_N27
\spi0|spi_fir|u_pipe[0][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1_q\);

-- Location: FF_X24_Y20_N9
\spi0|spi_fir|u_pipe[1][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][14]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][14]~_Duplicate_1_q\);

-- Location: FF_X24_Y20_N31
\spi0|spi_fir|u_pipe[2][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[1][14]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][14]~_Duplicate_1_q\);

-- Location: FF_X24_Y20_N23
\spi0|spi_fir|u_pipe[3][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][14]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][14]~_Duplicate_1_q\);

-- Location: FF_X24_Y20_N11
\spi0|spi_fir|u_pipe[4][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[3][14]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][14]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y20_N2
\spi0|spi_fir|u_pipe[5][14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][14]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][14]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y20_N3
\spi0|spi_fir|u_pipe[5][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y20_N20
\spi0|spi_fir|u_pipe[6][14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][14]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y20_N21
\spi0|spi_fir|u_pipe[6][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y20_N30
\spi0|spi_fir|u_pipe[7][14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][14]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y20_N31
\spi0|spi_fir|u_pipe[7][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1_q\);

-- Location: FF_X27_Y22_N19
\spi0|spi|spi_readvalue[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~15_combout\,
	ena => \spi0|spi|rdcnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(15));

-- Location: LCCOMB_X26_Y22_N4
\spi0|spi|data_out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out~16_combout\ = (!\spi0|reset~q\ & \spi0|spi|spi_readvalue\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datad => \spi0|spi|spi_readvalue\(15),
	combout => \spi0|spi|data_out~16_combout\);

-- Location: FF_X26_Y22_N5
\spi0|spi|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out~16_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(15));

-- Location: LCCOMB_X22_Y23_N26
\spi0|spi_fir|u_pipe[0][15]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][15]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(15),
	combout => \spi0|spi_fir|u_pipe[0][15]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N27
\spi0|spi_fir|u_pipe[0][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][15]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][15]~_Duplicate_1_q\);

-- Location: FF_X22_Y23_N9
\spi0|spi_fir|u_pipe[1][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][15]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][15]~_Duplicate_1_q\);

-- Location: FF_X22_Y23_N15
\spi0|spi_fir|u_pipe[2][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[1][15]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][15]~_Duplicate_1_q\);

-- Location: FF_X22_Y23_N3
\spi0|spi_fir|u_pipe[3][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][15]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][15]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N18
\spi0|spi_fir|u_pipe[4][15]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][15]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][15]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][15]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][15]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N19
\spi0|spi_fir|u_pipe[4][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][15]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][15]~_Duplicate_1_q\);

-- Location: FF_X22_Y23_N31
\spi0|spi_fir|u_pipe[5][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][15]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][15]~_Duplicate_1_q\);

-- Location: FF_X22_Y23_N7
\spi0|spi_fir|u_pipe[6][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[5][15]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][15]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N10
\spi0|spi_fir|u_pipe[7][15]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][15]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][15]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][15]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][15]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N11
\spi0|spi_fir|u_pipe[7][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][15]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][15]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y22_N12
\spi0|spi|data_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[0]~feeder_combout\ = \spi0|spi|data_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~0_combout\,
	combout => \spi0|spi|data_out[0]~feeder_combout\);

-- Location: FF_X20_Y22_N13
\spi0|spi|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[0]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(0));

-- Location: FF_X20_Y21_N3
\spi0|spi_fir|u_pipe[0][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(0),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y21_N0
\spi0|spi_fir|u_pipe[1][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[0][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y21_N1
\spi0|spi_fir|u_pipe[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y21_N6
\spi0|spi_fir|u_pipe[2][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y21_N7
\spi0|spi_fir|u_pipe[2][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y21_N4
\spi0|spi_fir|u_pipe[3][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y21_N5
\spi0|spi_fir|u_pipe[3][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\);

-- Location: FF_X22_Y21_N17
\spi0|spi_fir|u_pipe[4][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[3][0]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y20_N0
\spi0|spi_fir|u_pipe[5][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y20_N1
\spi0|spi_fir|u_pipe[5][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y23_N6
\spi0|spi_fir|u_pipe[6][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y23_N7
\spi0|spi_fir|u_pipe[6][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y23_N4
\spi0|spi_fir|u_pipe[7][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y23_N5
\spi0|spi_fir|u_pipe[7][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y22_N30
\spi0|spi|data_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[1]~feeder_combout\ = \spi0|spi|data_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~2_combout\,
	combout => \spi0|spi|data_out[1]~feeder_combout\);

-- Location: FF_X20_Y22_N31
\spi0|spi|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[1]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(1));

-- Location: FF_X17_Y21_N31
\spi0|spi_fir|u_pipe[0][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi|data_out\(1),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][1]~_Duplicate_1_q\);

-- Location: FF_X17_Y21_N1
\spi0|spi_fir|u_pipe[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[0][1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y21_N0
\spi0|spi_fir|u_pipe[2][1]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][1]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X20_Y21_N1
\spi0|spi_fir|u_pipe[2][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\);

-- Location: FF_X20_Y21_N5
\spi0|spi_fir|u_pipe[3][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][1]~_Duplicate_1_q\);

-- Location: FF_X22_Y21_N7
\spi0|spi_fir|u_pipe[4][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[3][1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y23_N6
\spi0|spi_fir|u_pipe[5][1]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[4][1]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y23_N7
\spi0|spi_fir|u_pipe[5][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y23_N8
\spi0|spi_fir|u_pipe[6][1]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][1]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y23_N9
\spi0|spi_fir|u_pipe[6][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\);

-- Location: FF_X23_Y23_N13
\spi0|spi_fir|u_pipe[7][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[6][1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y22_N8
\spi0|spi|data_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[2]~feeder_combout\ = \spi0|spi|data_out~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~3_combout\,
	combout => \spi0|spi|data_out[2]~feeder_combout\);

-- Location: FF_X20_Y22_N9
\spi0|spi|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[2]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(2));

-- Location: LCCOMB_X26_Y20_N16
\spi0|spi_fir|u_pipe[0][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(2),
	combout => \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N17
\spi0|spi_fir|u_pipe[0][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N12
\spi0|spi_fir|u_pipe[1][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[0][2]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N13
\spi0|spi_fir|u_pipe[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N28
\spi0|spi_fir|u_pipe[2][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][2]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N29
\spi0|spi_fir|u_pipe[2][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N20
\spi0|spi_fir|u_pipe[3][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][2]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N21
\spi0|spi_fir|u_pipe[3][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N4
\spi0|spi_fir|u_pipe[4][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][2]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N5
\spi0|spi_fir|u_pipe[4][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1_q\);

-- Location: FF_X26_Y20_N25
\spi0|spi_fir|u_pipe[5][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][2]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N0
\spi0|spi_fir|u_pipe[6][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][2]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N1
\spi0|spi_fir|u_pipe[6][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X26_Y20_N6
\spi0|spi_fir|u_pipe[7][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][2]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X26_Y20_N7
\spi0|spi_fir|u_pipe[7][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y22_N28
\spi0|spi|data_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[3]~feeder_combout\ = \spi0|spi|data_out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out~4_combout\,
	combout => \spi0|spi|data_out[3]~feeder_combout\);

-- Location: FF_X19_Y22_N29
\spi0|spi|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|data_out[3]~feeder_combout\,
	ena => \spi0|spi|data_out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(3));

-- Location: LCCOMB_X19_Y22_N12
\spi0|spi_fir|u_pipe[0][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1feeder_combout\ = \spi0|spi|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|data_out\(3),
	combout => \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y22_N13
\spi0|spi_fir|u_pipe[0][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y22_N16
\spi0|spi_fir|u_pipe[1][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[0][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y22_N17
\spi0|spi_fir|u_pipe[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y22_N0
\spi0|spi_fir|u_pipe[2][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[1][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y22_N1
\spi0|spi_fir|u_pipe[2][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y23_N16
\spi0|spi_fir|u_pipe[3][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[2][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y23_N17
\spi0|spi_fir|u_pipe[3][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y23_N30
\spi0|spi_fir|u_pipe[4][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[3][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y23_N31
\spi0|spi_fir|u_pipe[4][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1_q\);

-- Location: FF_X27_Y23_N1
\spi0|spi_fir|u_pipe[5][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[4][3]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[5][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y23_N8
\spi0|spi_fir|u_pipe[6][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[5][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[5][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X27_Y23_N9
\spi0|spi_fir|u_pipe[6][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y23_N24
\spi0|spi_fir|u_pipe[7][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[6][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y23_N25
\spi0|spi_fir|u_pipe[7][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1_q\);

-- Location: DSPMULT_X18_Y24_N0
\spi0|spi_fir|Mult8|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult8|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: FF_X19_Y23_N1
\spi0|spi_fir|u_pipe[8][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[7][5]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][5]~_Duplicate_1_q\);

-- Location: FF_X19_Y23_N21
\spi0|spi_fir|u_pipe[9][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[8][5]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y26_N16
\spi0|spi_fir|u_pipe[8][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][6]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y26_N17
\spi0|spi_fir|u_pipe[8][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y26_N28
\spi0|spi_fir|u_pipe[9][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][6]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][6]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y26_N29
\spi0|spi_fir|u_pipe[9][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][6]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y23_N24
\spi0|spi_fir|u_pipe[8][7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][7]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y23_N25
\spi0|spi_fir|u_pipe[8][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N18
\spi0|spi_fir|u_pipe[9][7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][7]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][7]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N19
\spi0|spi_fir|u_pipe[9][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][7]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y23_N24
\spi0|spi_fir|u_pipe[8][8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][8]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][8]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y23_N25
\spi0|spi_fir|u_pipe[8][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y25_N2
\spi0|spi_fir|u_pipe[9][8]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][8]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][8]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y25_N3
\spi0|spi_fir|u_pipe[9][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][8]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][8]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N10
\spi0|spi_fir|u_pipe[8][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N11
\spi0|spi_fir|u_pipe[8][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N28
\spi0|spi_fir|u_pipe[9][9]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][9]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][9]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N29
\spi0|spi_fir|u_pipe[9][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][9]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y26_N14
\spi0|spi_fir|u_pipe[8][10]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][10]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y26_N15
\spi0|spi_fir|u_pipe[8][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1_q\);

-- Location: FF_X19_Y26_N31
\spi0|spi_fir|u_pipe[9][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[8][10]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][10]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y23_N10
\spi0|spi_fir|u_pipe[8][11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][11]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][11]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y23_N11
\spi0|spi_fir|u_pipe[8][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y23_N22
\spi0|spi_fir|u_pipe[9][11]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][11]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][11]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y23_N23
\spi0|spi_fir|u_pipe[9][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][11]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][11]~_Duplicate_1_q\);

-- Location: FF_X17_Y26_N31
\spi0|spi_fir|u_pipe[8][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[7][12]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][12]~_Duplicate_1_q\);

-- Location: FF_X17_Y26_N5
\spi0|spi_fir|u_pipe[9][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[8][12]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][12]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y23_N10
\spi0|spi_fir|u_pipe[8][13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][13]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][13]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y23_N11
\spi0|spi_fir|u_pipe[8][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N26
\spi0|spi_fir|u_pipe[9][13]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][13]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][13]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N27
\spi0|spi_fir|u_pipe[9][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][13]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][13]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y23_N4
\spi0|spi_fir|u_pipe[8][14]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][14]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y23_N5
\spi0|spi_fir|u_pipe[8][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1_q\);

-- Location: FF_X17_Y25_N13
\spi0|spi_fir|u_pipe[9][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[8][14]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][14]~_Duplicate_1_q\);

-- Location: FF_X19_Y23_N13
\spi0|spi_fir|u_pipe[8][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[7][15]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][15]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y23_N4
\spi0|spi_fir|u_pipe[9][15]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][15]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][15]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][15]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][15]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y23_N5
\spi0|spi_fir|u_pipe[9][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][15]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][15]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N6
\spi0|spi_fir|u_pipe[8][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N7
\spi0|spi_fir|u_pipe[8][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N24
\spi0|spi_fir|u_pipe[9][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N25
\spi0|spi_fir|u_pipe[9][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\);

-- Location: FF_X20_Y25_N1
\spi0|spi_fir|u_pipe[8][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[7][1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\);

-- Location: FF_X17_Y25_N17
\spi0|spi_fir|u_pipe[9][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][1]~_Duplicate_1_q\);

-- Location: FF_X19_Y23_N15
\spi0|spi_fir|u_pipe[8][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[7][2]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y25_N0
\spi0|spi_fir|u_pipe[9][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][2]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][2]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y25_N1
\spi0|spi_fir|u_pipe[9][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][2]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N2
\spi0|spi_fir|u_pipe[8][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N3
\spi0|spi_fir|u_pipe[8][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N22
\spi0|spi_fir|u_pipe[9][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][3]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][3]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N23
\spi0|spi_fir|u_pipe[9][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][3]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N0
\spi0|spi_fir|u_pipe[8][4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[7][4]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N1
\spi0|spi_fir|u_pipe[8][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y25_N20
\spi0|spi_fir|u_pipe[9][4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|u_pipe[9][4]~_Duplicate_1feeder_combout\ = \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi_fir|u_pipe[8][4]~_Duplicate_1_q\,
	combout => \spi0|spi_fir|u_pipe[9][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X17_Y25_N21
\spi0|spi_fir|u_pipe[9][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|u_pipe[9][4]~_Duplicate_1feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[9][4]~_Duplicate_1_q\);

-- Location: DSPMULT_X18_Y25_N0
\spi0|spi_fir|Mult10|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult10|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X18_Y26_N0
\spi0|spi_fir|Mult9|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult9|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y25_N4
\spi0|spi_fir|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~0_combout\ = (\spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\ & (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT1\ $ (VCC))) # (!\spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\ & (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT1\ & 
-- VCC))
-- \spi0|spi_fir|Add8~1\ = CARRY((\spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\ & \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	combout => \spi0|spi_fir|Add8~0_combout\,
	cout => \spi0|spi_fir|Add8~1\);

-- Location: LCCOMB_X19_Y25_N6
\spi0|spi_fir|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~2_combout\ = (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\ & (\spi0|spi_fir|Add8~1\ & VCC)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\ & 
-- (!\spi0|spi_fir|Add8~1\)))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\ & (!\spi0|spi_fir|Add8~1\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\ & 
-- ((\spi0|spi_fir|Add8~1\) # (GND)))))
-- \spi0|spi_fir|Add8~3\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT2\ & (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\ & !\spi0|spi_fir|Add8~1\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT2\ & 
-- ((!\spi0|spi_fir|Add8~1\) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT2\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~1\,
	combout => \spi0|spi_fir|Add8~2_combout\,
	cout => \spi0|spi_fir|Add8~3\);

-- Location: LCCOMB_X19_Y25_N10
\spi0|spi_fir|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~6_combout\ = (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT4\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\ & (\spi0|spi_fir|Add8~5\ & VCC)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\ & 
-- (!\spi0|spi_fir|Add8~5\)))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT4\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\ & (!\spi0|spi_fir|Add8~5\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\ & 
-- ((\spi0|spi_fir|Add8~5\) # (GND)))))
-- \spi0|spi_fir|Add8~7\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT4\ & (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\ & !\spi0|spi_fir|Add8~5\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT4\ & 
-- ((!\spi0|spi_fir|Add8~5\) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT4\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~5\,
	combout => \spi0|spi_fir|Add8~6_combout\,
	cout => \spi0|spi_fir|Add8~7\);

-- Location: LCCOMB_X19_Y25_N18
\spi0|spi_fir|Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~14_combout\ = (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\ & (\spi0|spi_fir|Add8~13\ & VCC)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\ & 
-- (!\spi0|spi_fir|Add8~13\)))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\ & (!\spi0|spi_fir|Add8~13\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\ & 
-- ((\spi0|spi_fir|Add8~13\) # (GND)))))
-- \spi0|spi_fir|Add8~15\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT8\ & (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\ & !\spi0|spi_fir|Add8~13\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT8\ & 
-- ((!\spi0|spi_fir|Add8~13\) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT8\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~13\,
	combout => \spi0|spi_fir|Add8~14_combout\,
	cout => \spi0|spi_fir|Add8~15\);

-- Location: LCCOMB_X19_Y25_N20
\spi0|spi_fir|Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~16_combout\ = ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT9\ $ (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT9\ $ (!\spi0|spi_fir|Add8~15\)))) # (GND)
-- \spi0|spi_fir|Add8~17\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT9\) # (!\spi0|spi_fir|Add8~15\))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT9\ & 
-- (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT9\ & !\spi0|spi_fir|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT9\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~15\,
	combout => \spi0|spi_fir|Add8~16_combout\,
	cout => \spi0|spi_fir|Add8~17\);

-- Location: LCCOMB_X19_Y25_N22
\spi0|spi_fir|Add8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~18_combout\ = (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\ & (\spi0|spi_fir|Add8~17\ & VCC)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\ & 
-- (!\spi0|spi_fir|Add8~17\)))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\ & (!\spi0|spi_fir|Add8~17\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\ & 
-- ((\spi0|spi_fir|Add8~17\) # (GND)))))
-- \spi0|spi_fir|Add8~19\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT10\ & (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\ & !\spi0|spi_fir|Add8~17\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT10\ & 
-- ((!\spi0|spi_fir|Add8~17\) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT10\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~17\,
	combout => \spi0|spi_fir|Add8~18_combout\,
	cout => \spi0|spi_fir|Add8~19\);

-- Location: LCCOMB_X19_Y25_N24
\spi0|spi_fir|Add8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~20_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT11\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT11\ $ (!\spi0|spi_fir|Add8~19\)))) # (GND)
-- \spi0|spi_fir|Add8~21\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT11\) # (!\spi0|spi_fir|Add8~19\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT11\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT11\ & !\spi0|spi_fir|Add8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT11\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~19\,
	combout => \spi0|spi_fir|Add8~20_combout\,
	cout => \spi0|spi_fir|Add8~21\);

-- Location: LCCOMB_X19_Y25_N28
\spi0|spi_fir|Add8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~24_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT13\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT13\ $ (!\spi0|spi_fir|Add8~23\)))) # (GND)
-- \spi0|spi_fir|Add8~25\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT13\) # (!\spi0|spi_fir|Add8~23\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT13\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT13\ & !\spi0|spi_fir|Add8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT13\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~23\,
	combout => \spi0|spi_fir|Add8~24_combout\,
	cout => \spi0|spi_fir|Add8~25\);

-- Location: LCCOMB_X19_Y25_N30
\spi0|spi_fir|Add8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~26_combout\ = (\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\ & (\spi0|spi_fir|Add8~25\ & VCC)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\ & 
-- (!\spi0|spi_fir|Add8~25\)))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\ & (!\spi0|spi_fir|Add8~25\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\spi0|spi_fir|Add8~25\) # (GND)))))
-- \spi0|spi_fir|Add8~27\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT14\ & (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\ & !\spi0|spi_fir|Add8~25\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT14\ & 
-- ((!\spi0|spi_fir|Add8~25\) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT14\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~25\,
	combout => \spi0|spi_fir|Add8~26_combout\,
	cout => \spi0|spi_fir|Add8~27\);

-- Location: LCCOMB_X19_Y24_N6
\spi0|spi_fir|Add8~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~34_combout\ = (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\ & (\spi0|spi_fir|Add8~33\ & VCC)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\ & 
-- (!\spi0|spi_fir|Add8~33\)))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\ & (!\spi0|spi_fir|Add8~33\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\spi0|spi_fir|Add8~33\) # (GND)))))
-- \spi0|spi_fir|Add8~35\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT18\ & (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\ & !\spi0|spi_fir|Add8~33\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT18\ & 
-- ((!\spi0|spi_fir|Add8~33\) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~33\,
	combout => \spi0|spi_fir|Add8~34_combout\,
	cout => \spi0|spi_fir|Add8~35\);

-- Location: LCCOMB_X19_Y24_N18
\spi0|spi_fir|Add8~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~46_combout\ = (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT24\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\ & (\spi0|spi_fir|Add8~45\ & VCC)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\ & 
-- (!\spi0|spi_fir|Add8~45\)))) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT24\ & ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\ & (!\spi0|spi_fir|Add8~45\)) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\spi0|spi_fir|Add8~45\) # (GND)))))
-- \spi0|spi_fir|Add8~47\ = CARRY((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT24\ & (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\ & !\spi0|spi_fir|Add8~45\)) # (!\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT24\ & 
-- ((!\spi0|spi_fir|Add8~45\) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT24\,
	datab => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~45\,
	combout => \spi0|spi_fir|Add8~46_combout\,
	cout => \spi0|spi_fir|Add8~47\);

-- Location: LCCOMB_X19_Y24_N20
\spi0|spi_fir|Add8~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add8~48_combout\ = ((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT25\ $ (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT25\ $ (!\spi0|spi_fir|Add8~47\)))) # (GND)
-- \spi0|spi_fir|Add8~49\ = CARRY((\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT25\) # (!\spi0|spi_fir|Add8~47\))) # (!\spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT25\ & 
-- (\spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT25\ & !\spi0|spi_fir|Add8~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult10|auto_generated|mac_out2~DATAOUT25\,
	datab => \spi0|spi_fir|Mult9|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \spi0|spi_fir|Add8~47\,
	combout => \spi0|spi_fir|Add8~48_combout\,
	cout => \spi0|spi_fir|Add8~49\);

-- Location: FF_X20_Y25_N3
\spi0|spi_fir|u_pipe[10][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \spi0|spi_fir|u_pipe[9][0]~_Duplicate_1_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi_fir|u_pipe[10][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y25_N2
\spi0|spi_fir|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~0_combout\ = (\spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\ & (\spi0|spi_fir|u_pipe[10][0]~_Duplicate_1_q\ $ (VCC))) # (!\spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\ & (\spi0|spi_fir|u_pipe[10][0]~_Duplicate_1_q\ & VCC))
-- \spi0|spi_fir|Add7~1\ = CARRY((\spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\ & \spi0|spi_fir|u_pipe[10][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[8][0]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|u_pipe[10][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \spi0|spi_fir|Add7~0_combout\,
	cout => \spi0|spi_fir|Add7~1\);

-- Location: LCCOMB_X20_Y25_N4
\spi0|spi_fir|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~2_combout\ = (\spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\ & ((\spi0|spi_fir|Add8~0_combout\ & (\spi0|spi_fir|Add7~1\ & VCC)) # (!\spi0|spi_fir|Add8~0_combout\ & (!\spi0|spi_fir|Add7~1\)))) # (!\spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\ & 
-- ((\spi0|spi_fir|Add8~0_combout\ & (!\spi0|spi_fir|Add7~1\)) # (!\spi0|spi_fir|Add8~0_combout\ & ((\spi0|spi_fir|Add7~1\) # (GND)))))
-- \spi0|spi_fir|Add7~3\ = CARRY((\spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\ & (!\spi0|spi_fir|Add8~0_combout\ & !\spi0|spi_fir|Add7~1\)) # (!\spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\ & ((!\spi0|spi_fir|Add7~1\) # (!\spi0|spi_fir|Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[8][1]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|Add8~0_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~1\,
	combout => \spi0|spi_fir|Add7~2_combout\,
	cout => \spi0|spi_fir|Add7~3\);

-- Location: LCCOMB_X20_Y25_N6
\spi0|spi_fir|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~4_combout\ = ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT2\ $ (\spi0|spi_fir|Add8~2_combout\ $ (!\spi0|spi_fir|Add7~3\)))) # (GND)
-- \spi0|spi_fir|Add7~5\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Add8~2_combout\) # (!\spi0|spi_fir|Add7~3\))) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT2\ & (\spi0|spi_fir|Add8~2_combout\ & 
-- !\spi0|spi_fir|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT2\,
	datab => \spi0|spi_fir|Add8~2_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~3\,
	combout => \spi0|spi_fir|Add7~4_combout\,
	cout => \spi0|spi_fir|Add7~5\);

-- Location: LCCOMB_X20_Y25_N10
\spi0|spi_fir|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~8_combout\ = ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT4\ $ (\spi0|spi_fir|Add8~6_combout\ $ (!\spi0|spi_fir|Add7~7\)))) # (GND)
-- \spi0|spi_fir|Add7~9\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT4\ & ((\spi0|spi_fir|Add8~6_combout\) # (!\spi0|spi_fir|Add7~7\))) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT4\ & (\spi0|spi_fir|Add8~6_combout\ & 
-- !\spi0|spi_fir|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT4\,
	datab => \spi0|spi_fir|Add8~6_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~7\,
	combout => \spi0|spi_fir|Add7~8_combout\,
	cout => \spi0|spi_fir|Add7~9\);

-- Location: LCCOMB_X20_Y25_N12
\spi0|spi_fir|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~10_combout\ = (\spi0|spi_fir|Add8~8_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\ & (\spi0|spi_fir|Add7~9\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add7~9\)))) # 
-- (!\spi0|spi_fir|Add8~8_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add7~9\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Add7~9\) # (GND)))))
-- \spi0|spi_fir|Add7~11\ = CARRY((\spi0|spi_fir|Add8~8_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\ & !\spi0|spi_fir|Add7~9\)) # (!\spi0|spi_fir|Add8~8_combout\ & ((!\spi0|spi_fir|Add7~9\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~8_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~9\,
	combout => \spi0|spi_fir|Add7~10_combout\,
	cout => \spi0|spi_fir|Add7~11\);

-- Location: LCCOMB_X20_Y25_N16
\spi0|spi_fir|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~14_combout\ = (\spi0|spi_fir|Add8~12_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\ & (\spi0|spi_fir|Add7~13\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add7~13\)))) # 
-- (!\spi0|spi_fir|Add8~12_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add7~13\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Add7~13\) # (GND)))))
-- \spi0|spi_fir|Add7~15\ = CARRY((\spi0|spi_fir|Add8~12_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\ & !\spi0|spi_fir|Add7~13\)) # (!\spi0|spi_fir|Add8~12_combout\ & ((!\spi0|spi_fir|Add7~13\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~12_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~13\,
	combout => \spi0|spi_fir|Add7~14_combout\,
	cout => \spi0|spi_fir|Add7~15\);

-- Location: LCCOMB_X20_Y25_N18
\spi0|spi_fir|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~16_combout\ = ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT8\ $ (\spi0|spi_fir|Add8~14_combout\ $ (!\spi0|spi_fir|Add7~15\)))) # (GND)
-- \spi0|spi_fir|Add7~17\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Add8~14_combout\) # (!\spi0|spi_fir|Add7~15\))) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT8\ & (\spi0|spi_fir|Add8~14_combout\ & 
-- !\spi0|spi_fir|Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT8\,
	datab => \spi0|spi_fir|Add8~14_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~15\,
	combout => \spi0|spi_fir|Add7~16_combout\,
	cout => \spi0|spi_fir|Add7~17\);

-- Location: LCCOMB_X20_Y25_N22
\spi0|spi_fir|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~20_combout\ = ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT10\ $ (\spi0|spi_fir|Add8~18_combout\ $ (!\spi0|spi_fir|Add7~19\)))) # (GND)
-- \spi0|spi_fir|Add7~21\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Add8~18_combout\) # (!\spi0|spi_fir|Add7~19\))) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT10\ & (\spi0|spi_fir|Add8~18_combout\ & 
-- !\spi0|spi_fir|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT10\,
	datab => \spi0|spi_fir|Add8~18_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~19\,
	combout => \spi0|spi_fir|Add7~20_combout\,
	cout => \spi0|spi_fir|Add7~21\);

-- Location: LCCOMB_X20_Y25_N24
\spi0|spi_fir|Add7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~22_combout\ = (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add8~20_combout\ & (\spi0|spi_fir|Add7~21\ & VCC)) # (!\spi0|spi_fir|Add8~20_combout\ & (!\spi0|spi_fir|Add7~21\)))) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add8~20_combout\ & (!\spi0|spi_fir|Add7~21\)) # (!\spi0|spi_fir|Add8~20_combout\ & ((\spi0|spi_fir|Add7~21\) # (GND)))))
-- \spi0|spi_fir|Add7~23\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Add8~20_combout\ & !\spi0|spi_fir|Add7~21\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT11\ & ((!\spi0|spi_fir|Add7~21\) # 
-- (!\spi0|spi_fir|Add8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT11\,
	datab => \spi0|spi_fir|Add8~20_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~21\,
	combout => \spi0|spi_fir|Add7~22_combout\,
	cout => \spi0|spi_fir|Add7~23\);

-- Location: LCCOMB_X20_Y24_N0
\spi0|spi_fir|Add7~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~30_combout\ = (\spi0|spi_fir|Add8~28_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\ & (\spi0|spi_fir|Add7~29\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add7~29\)))) # 
-- (!\spi0|spi_fir|Add8~28_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\ & (!\spi0|spi_fir|Add7~29\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\ & ((\spi0|spi_fir|Add7~29\) # (GND)))))
-- \spi0|spi_fir|Add7~31\ = CARRY((\spi0|spi_fir|Add8~28_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\ & !\spi0|spi_fir|Add7~29\)) # (!\spi0|spi_fir|Add8~28_combout\ & ((!\spi0|spi_fir|Add7~29\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~28_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~29\,
	combout => \spi0|spi_fir|Add7~30_combout\,
	cout => \spi0|spi_fir|Add7~31\);

-- Location: LCCOMB_X20_Y24_N8
\spi0|spi_fir|Add7~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~38_combout\ = (\spi0|spi_fir|Add8~36_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\ & (\spi0|spi_fir|Add7~37\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add7~37\)))) # 
-- (!\spi0|spi_fir|Add8~36_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add7~37\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Add7~37\) # (GND)))))
-- \spi0|spi_fir|Add7~39\ = CARRY((\spi0|spi_fir|Add8~36_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\ & !\spi0|spi_fir|Add7~37\)) # (!\spi0|spi_fir|Add8~36_combout\ & ((!\spi0|spi_fir|Add7~37\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~36_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~37\,
	combout => \spi0|spi_fir|Add7~38_combout\,
	cout => \spi0|spi_fir|Add7~39\);

-- Location: LCCOMB_X20_Y24_N10
\spi0|spi_fir|Add7~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~40_combout\ = ((\spi0|spi_fir|Add8~38_combout\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT20\ $ (!\spi0|spi_fir|Add7~39\)))) # (GND)
-- \spi0|spi_fir|Add7~41\ = CARRY((\spi0|spi_fir|Add8~38_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT20\) # (!\spi0|spi_fir|Add7~39\))) # (!\spi0|spi_fir|Add8~38_combout\ & (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT20\ & 
-- !\spi0|spi_fir|Add7~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~38_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~39\,
	combout => \spi0|spi_fir|Add7~40_combout\,
	cout => \spi0|spi_fir|Add7~41\);

-- Location: LCCOMB_X20_Y24_N12
\spi0|spi_fir|Add7~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~42_combout\ = (\spi0|spi_fir|Add8~40_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\ & (\spi0|spi_fir|Add7~41\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add7~41\)))) # 
-- (!\spi0|spi_fir|Add8~40_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\ & (!\spi0|spi_fir|Add7~41\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\ & ((\spi0|spi_fir|Add7~41\) # (GND)))))
-- \spi0|spi_fir|Add7~43\ = CARRY((\spi0|spi_fir|Add8~40_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\ & !\spi0|spi_fir|Add7~41\)) # (!\spi0|spi_fir|Add8~40_combout\ & ((!\spi0|spi_fir|Add7~41\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~40_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~41\,
	combout => \spi0|spi_fir|Add7~42_combout\,
	cout => \spi0|spi_fir|Add7~43\);

-- Location: LCCOMB_X20_Y24_N16
\spi0|spi_fir|Add7~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~46_combout\ = (\spi0|spi_fir|Add8~44_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\ & (\spi0|spi_fir|Add7~45\ & VCC)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add7~45\)))) # 
-- (!\spi0|spi_fir|Add8~44_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add7~45\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Add7~45\) # (GND)))))
-- \spi0|spi_fir|Add7~47\ = CARRY((\spi0|spi_fir|Add8~44_combout\ & (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\ & !\spi0|spi_fir|Add7~45\)) # (!\spi0|spi_fir|Add8~44_combout\ & ((!\spi0|spi_fir|Add7~45\) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~44_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~45\,
	combout => \spi0|spi_fir|Add7~46_combout\,
	cout => \spi0|spi_fir|Add7~47\);

-- Location: LCCOMB_X20_Y24_N18
\spi0|spi_fir|Add7~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~48_combout\ = ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT24\ $ (\spi0|spi_fir|Add8~46_combout\ $ (!\spi0|spi_fir|Add7~47\)))) # (GND)
-- \spi0|spi_fir|Add7~49\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT24\ & ((\spi0|spi_fir|Add8~46_combout\) # (!\spi0|spi_fir|Add7~47\))) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT24\ & (\spi0|spi_fir|Add8~46_combout\ & 
-- !\spi0|spi_fir|Add7~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT24\,
	datab => \spi0|spi_fir|Add8~46_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~47\,
	combout => \spi0|spi_fir|Add7~48_combout\,
	cout => \spi0|spi_fir|Add7~49\);

-- Location: LCCOMB_X20_Y24_N20
\spi0|spi_fir|Add7~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~50_combout\ = (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add8~48_combout\ & (\spi0|spi_fir|Add7~49\ & VCC)) # (!\spi0|spi_fir|Add8~48_combout\ & (!\spi0|spi_fir|Add7~49\)))) # 
-- (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add8~48_combout\ & (!\spi0|spi_fir|Add7~49\)) # (!\spi0|spi_fir|Add8~48_combout\ & ((\spi0|spi_fir|Add7~49\) # (GND)))))
-- \spi0|spi_fir|Add7~51\ = CARRY((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add8~48_combout\ & !\spi0|spi_fir|Add7~49\)) # (!\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT25\ & ((!\spi0|spi_fir|Add7~49\) # 
-- (!\spi0|spi_fir|Add8~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT25\,
	datab => \spi0|spi_fir|Add8~48_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~49\,
	combout => \spi0|spi_fir|Add7~50_combout\,
	cout => \spi0|spi_fir|Add7~51\);

-- Location: LCCOMB_X20_Y24_N22
\spi0|spi_fir|Add7~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~52_combout\ = ((\spi0|spi_fir|Add8~50_combout\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT26\ $ (!\spi0|spi_fir|Add7~51\)))) # (GND)
-- \spi0|spi_fir|Add7~53\ = CARRY((\spi0|spi_fir|Add8~50_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT26\) # (!\spi0|spi_fir|Add7~51\))) # (!\spi0|spi_fir|Add8~50_combout\ & (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT26\ & 
-- !\spi0|spi_fir|Add7~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~50_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~51\,
	combout => \spi0|spi_fir|Add7~52_combout\,
	cout => \spi0|spi_fir|Add7~53\);

-- Location: LCCOMB_X20_Y24_N26
\spi0|spi_fir|Add7~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~56_combout\ = ((\spi0|spi_fir|Add8~54_combout\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ $ (!\spi0|spi_fir|Add7~55\)))) # (GND)
-- \spi0|spi_fir|Add7~57\ = CARRY((\spi0|spi_fir|Add8~54_combout\ & ((\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\) # (!\spi0|spi_fir|Add7~55\))) # (!\spi0|spi_fir|Add8~54_combout\ & (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\ & 
-- !\spi0|spi_fir|Add7~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~54_combout\,
	datab => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \spi0|spi_fir|Add7~55\,
	combout => \spi0|spi_fir|Add7~56_combout\,
	cout => \spi0|spi_fir|Add7~57\);

-- Location: LCCOMB_X20_Y24_N28
\spi0|spi_fir|Add7~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add7~58_combout\ = \spi0|spi_fir|Add8~54_combout\ $ (\spi0|spi_fir|Add7~57\ $ (\spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add8~54_combout\,
	datad => \spi0|spi_fir|Mult8|auto_generated|mac_out2~DATAOUT27\,
	cin => \spi0|spi_fir|Add7~57\,
	combout => \spi0|spi_fir|Add7~58_combout\);

-- Location: DSPMULT_X18_Y23_N0
\spi0|spi_fir|Mult5|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult5|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X18_Y20_N0
\spi0|spi_fir|Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X18_Y21_N0
\spi0|spi_fir|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y21_N4
\spi0|spi_fir|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~0_combout\ = (\spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\ & (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT1\ $ (VCC))) # (!\spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\ & (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT1\ & VCC))
-- \spi0|spi_fir|Add0~1\ = CARRY((\spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\ & \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[1][0]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	combout => \spi0|spi_fir|Add0~0_combout\,
	cout => \spi0|spi_fir|Add0~1\);

-- Location: LCCOMB_X19_Y21_N6
\spi0|spi_fir|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~2_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\ & (\spi0|spi_fir|Add0~1\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\ & 
-- (!\spi0|spi_fir|Add0~1\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\ & (!\spi0|spi_fir|Add0~1\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\ & 
-- ((\spi0|spi_fir|Add0~1\) # (GND)))))
-- \spi0|spi_fir|Add0~3\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT2\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\ & !\spi0|spi_fir|Add0~1\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((!\spi0|spi_fir|Add0~1\) 
-- # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~1\,
	combout => \spi0|spi_fir|Add0~2_combout\,
	cout => \spi0|spi_fir|Add0~3\);

-- Location: LCCOMB_X19_Y21_N18
\spi0|spi_fir|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~14_combout\ = (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\spi0|spi_fir|Add0~13\ & VCC)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\ & 
-- (!\spi0|spi_fir|Add0~13\)))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\spi0|spi_fir|Add0~13\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\ & 
-- ((\spi0|spi_fir|Add0~13\) # (GND)))))
-- \spi0|spi_fir|Add0~15\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT8\ & (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\spi0|spi_fir|Add0~13\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT8\ & 
-- ((!\spi0|spi_fir|Add0~13\) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~13\,
	combout => \spi0|spi_fir|Add0~14_combout\,
	cout => \spi0|spi_fir|Add0~15\);

-- Location: LCCOMB_X19_Y21_N20
\spi0|spi_fir|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~16_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT9\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT9\ $ (!\spi0|spi_fir|Add0~15\)))) # (GND)
-- \spi0|spi_fir|Add0~17\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT9\) # (!\spi0|spi_fir|Add0~15\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\spi0|spi_fir|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~15\,
	combout => \spi0|spi_fir|Add0~16_combout\,
	cout => \spi0|spi_fir|Add0~17\);

-- Location: LCCOMB_X19_Y21_N22
\spi0|spi_fir|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~18_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\ & (\spi0|spi_fir|Add0~17\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\ & 
-- (!\spi0|spi_fir|Add0~17\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\ & (!\spi0|spi_fir|Add0~17\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\ & 
-- ((\spi0|spi_fir|Add0~17\) # (GND)))))
-- \spi0|spi_fir|Add0~19\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\ & !\spi0|spi_fir|Add0~17\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- ((!\spi0|spi_fir|Add0~17\) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~17\,
	combout => \spi0|spi_fir|Add0~18_combout\,
	cout => \spi0|spi_fir|Add0~19\);

-- Location: LCCOMB_X19_Y21_N24
\spi0|spi_fir|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~20_combout\ = ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT11\ $ (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT11\ $ (!\spi0|spi_fir|Add0~19\)))) # (GND)
-- \spi0|spi_fir|Add0~21\ = CARRY((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT11\) # (!\spi0|spi_fir|Add0~19\))) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT11\ & 
-- (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT11\ & !\spi0|spi_fir|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~19\,
	combout => \spi0|spi_fir|Add0~20_combout\,
	cout => \spi0|spi_fir|Add0~21\);

-- Location: LCCOMB_X19_Y21_N28
\spi0|spi_fir|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~24_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT13\ $ (!\spi0|spi_fir|Add0~23\)))) # (GND)
-- \spi0|spi_fir|Add0~25\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT13\) # (!\spi0|spi_fir|Add0~23\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\spi0|spi_fir|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~23\,
	combout => \spi0|spi_fir|Add0~24_combout\,
	cout => \spi0|spi_fir|Add0~25\);

-- Location: LCCOMB_X19_Y21_N30
\spi0|spi_fir|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~26_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\ & (\spi0|spi_fir|Add0~25\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- (!\spi0|spi_fir|Add0~25\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\ & (!\spi0|spi_fir|Add0~25\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- ((\spi0|spi_fir|Add0~25\) # (GND)))))
-- \spi0|spi_fir|Add0~27\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\ & !\spi0|spi_fir|Add0~25\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- ((!\spi0|spi_fir|Add0~25\) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~25\,
	combout => \spi0|spi_fir|Add0~26_combout\,
	cout => \spi0|spi_fir|Add0~27\);

-- Location: LCCOMB_X19_Y20_N4
\spi0|spi_fir|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~32_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT17\ $ (!\spi0|spi_fir|Add0~31\)))) # (GND)
-- \spi0|spi_fir|Add0~33\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT17\) # (!\spi0|spi_fir|Add0~31\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT17\ & !\spi0|spi_fir|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~31\,
	combout => \spi0|spi_fir|Add0~32_combout\,
	cout => \spi0|spi_fir|Add0~33\);

-- Location: LCCOMB_X19_Y20_N6
\spi0|spi_fir|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~34_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\spi0|spi_fir|Add0~33\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- (!\spi0|spi_fir|Add0~33\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\ & (!\spi0|spi_fir|Add0~33\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\ & 
-- ((\spi0|spi_fir|Add0~33\) # (GND)))))
-- \spi0|spi_fir|Add0~35\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\ & !\spi0|spi_fir|Add0~33\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- ((!\spi0|spi_fir|Add0~33\) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~33\,
	combout => \spi0|spi_fir|Add0~34_combout\,
	cout => \spi0|spi_fir|Add0~35\);

-- Location: LCCOMB_X19_Y20_N18
\spi0|spi_fir|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~46_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\ & (\spi0|spi_fir|Add0~45\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\ & 
-- (!\spi0|spi_fir|Add0~45\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\ & (!\spi0|spi_fir|Add0~45\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\spi0|spi_fir|Add0~45\) # (GND)))))
-- \spi0|spi_fir|Add0~47\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\ & !\spi0|spi_fir|Add0~45\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- ((!\spi0|spi_fir|Add0~45\) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~45\,
	combout => \spi0|spi_fir|Add0~46_combout\,
	cout => \spi0|spi_fir|Add0~47\);

-- Location: LCCOMB_X19_Y20_N20
\spi0|spi_fir|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~48_combout\ = ((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT25\ $ (!\spi0|spi_fir|Add0~47\)))) # (GND)
-- \spi0|spi_fir|Add0~49\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT25\) # (!\spi0|spi_fir|Add0~47\))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- (\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT25\ & !\spi0|spi_fir|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~47\,
	combout => \spi0|spi_fir|Add0~48_combout\,
	cout => \spi0|spi_fir|Add0~49\);

-- Location: LCCOMB_X19_Y20_N22
\spi0|spi_fir|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add0~50_combout\ = (\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\ & (\spi0|spi_fir|Add0~49\ & VCC)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\ & 
-- (!\spi0|spi_fir|Add0~49\)))) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\ & (!\spi0|spi_fir|Add0~49\)) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\ & 
-- ((\spi0|spi_fir|Add0~49\) # (GND)))))
-- \spi0|spi_fir|Add0~51\ = CARRY((\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\ & !\spi0|spi_fir|Add0~49\)) # (!\spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- ((!\spi0|spi_fir|Add0~49\) # (!\spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \spi0|spi_fir|Add0~49\,
	combout => \spi0|spi_fir|Add0~50_combout\,
	cout => \spi0|spi_fir|Add0~51\);

-- Location: DSPMULT_X18_Y22_N0
\spi0|spi_fir|Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X20_Y21_N4
\spi0|spi_fir|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~2_combout\ = (\spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\ & ((\spi0|spi_fir|Add0~0_combout\ & (\spi0|spi_fir|Add1~1\ & VCC)) # (!\spi0|spi_fir|Add0~0_combout\ & (!\spi0|spi_fir|Add1~1\)))) # (!\spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\ & 
-- ((\spi0|spi_fir|Add0~0_combout\ & (!\spi0|spi_fir|Add1~1\)) # (!\spi0|spi_fir|Add0~0_combout\ & ((\spi0|spi_fir|Add1~1\) # (GND)))))
-- \spi0|spi_fir|Add1~3\ = CARRY((\spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\ & (!\spi0|spi_fir|Add0~0_combout\ & !\spi0|spi_fir|Add1~1\)) # (!\spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\ & ((!\spi0|spi_fir|Add1~1\) # (!\spi0|spi_fir|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|u_pipe[2][1]~_Duplicate_1_q\,
	datab => \spi0|spi_fir|Add0~0_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~1\,
	combout => \spi0|spi_fir|Add1~2_combout\,
	cout => \spi0|spi_fir|Add1~3\);

-- Location: LCCOMB_X20_Y21_N6
\spi0|spi_fir|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~4_combout\ = ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT2\ $ (\spi0|spi_fir|Add0~2_combout\ $ (!\spi0|spi_fir|Add1~3\)))) # (GND)
-- \spi0|spi_fir|Add1~5\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Add0~2_combout\) # (!\spi0|spi_fir|Add1~3\))) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT2\ & (\spi0|spi_fir|Add0~2_combout\ & 
-- !\spi0|spi_fir|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT2\,
	datab => \spi0|spi_fir|Add0~2_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~3\,
	combout => \spi0|spi_fir|Add1~4_combout\,
	cout => \spi0|spi_fir|Add1~5\);

-- Location: LCCOMB_X20_Y21_N18
\spi0|spi_fir|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~16_combout\ = ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT8\ $ (\spi0|spi_fir|Add0~14_combout\ $ (!\spi0|spi_fir|Add1~15\)))) # (GND)
-- \spi0|spi_fir|Add1~17\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Add0~14_combout\) # (!\spi0|spi_fir|Add1~15\))) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT8\ & (\spi0|spi_fir|Add0~14_combout\ & 
-- !\spi0|spi_fir|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT8\,
	datab => \spi0|spi_fir|Add0~14_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~15\,
	combout => \spi0|spi_fir|Add1~16_combout\,
	cout => \spi0|spi_fir|Add1~17\);

-- Location: LCCOMB_X20_Y21_N20
\spi0|spi_fir|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~18_combout\ = (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add0~16_combout\ & (\spi0|spi_fir|Add1~17\ & VCC)) # (!\spi0|spi_fir|Add0~16_combout\ & (!\spi0|spi_fir|Add1~17\)))) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add0~16_combout\ & (!\spi0|spi_fir|Add1~17\)) # (!\spi0|spi_fir|Add0~16_combout\ & ((\spi0|spi_fir|Add1~17\) # (GND)))))
-- \spi0|spi_fir|Add1~19\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add0~16_combout\ & !\spi0|spi_fir|Add1~17\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT9\ & ((!\spi0|spi_fir|Add1~17\) # 
-- (!\spi0|spi_fir|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT9\,
	datab => \spi0|spi_fir|Add0~16_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~17\,
	combout => \spi0|spi_fir|Add1~18_combout\,
	cout => \spi0|spi_fir|Add1~19\);

-- Location: LCCOMB_X20_Y21_N26
\spi0|spi_fir|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~24_combout\ = ((\spi0|spi_fir|Add0~22_combout\ $ (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT12\ $ (!\spi0|spi_fir|Add1~23\)))) # (GND)
-- \spi0|spi_fir|Add1~25\ = CARRY((\spi0|spi_fir|Add0~22_combout\ & ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT12\) # (!\spi0|spi_fir|Add1~23\))) # (!\spi0|spi_fir|Add0~22_combout\ & (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT12\ & 
-- !\spi0|spi_fir|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add0~22_combout\,
	datab => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~23\,
	combout => \spi0|spi_fir|Add1~24_combout\,
	cout => \spi0|spi_fir|Add1~25\);

-- Location: LCCOMB_X20_Y21_N30
\spi0|spi_fir|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~28_combout\ = ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT14\ $ (\spi0|spi_fir|Add0~26_combout\ $ (!\spi0|spi_fir|Add1~27\)))) # (GND)
-- \spi0|spi_fir|Add1~29\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\spi0|spi_fir|Add0~26_combout\) # (!\spi0|spi_fir|Add1~27\))) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT14\ & (\spi0|spi_fir|Add0~26_combout\ & 
-- !\spi0|spi_fir|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT14\,
	datab => \spi0|spi_fir|Add0~26_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~27\,
	combout => \spi0|spi_fir|Add1~28_combout\,
	cout => \spi0|spi_fir|Add1~29\);

-- Location: LCCOMB_X20_Y20_N6
\spi0|spi_fir|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~36_combout\ = ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT18\ $ (\spi0|spi_fir|Add0~34_combout\ $ (!\spi0|spi_fir|Add1~35\)))) # (GND)
-- \spi0|spi_fir|Add1~37\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Add0~34_combout\) # (!\spi0|spi_fir|Add1~35\))) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT18\ & (\spi0|spi_fir|Add0~34_combout\ & 
-- !\spi0|spi_fir|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Add0~34_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~35\,
	combout => \spi0|spi_fir|Add1~36_combout\,
	cout => \spi0|spi_fir|Add1~37\);

-- Location: LCCOMB_X20_Y20_N20
\spi0|spi_fir|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~50_combout\ = (\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add0~48_combout\ & (\spi0|spi_fir|Add1~49\ & VCC)) # (!\spi0|spi_fir|Add0~48_combout\ & (!\spi0|spi_fir|Add1~49\)))) # 
-- (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT25\ & ((\spi0|spi_fir|Add0~48_combout\ & (!\spi0|spi_fir|Add1~49\)) # (!\spi0|spi_fir|Add0~48_combout\ & ((\spi0|spi_fir|Add1~49\) # (GND)))))
-- \spi0|spi_fir|Add1~51\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT25\ & (!\spi0|spi_fir|Add0~48_combout\ & !\spi0|spi_fir|Add1~49\)) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT25\ & ((!\spi0|spi_fir|Add1~49\) # 
-- (!\spi0|spi_fir|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT25\,
	datab => \spi0|spi_fir|Add0~48_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~49\,
	combout => \spi0|spi_fir|Add1~50_combout\,
	cout => \spi0|spi_fir|Add1~51\);

-- Location: LCCOMB_X20_Y20_N22
\spi0|spi_fir|Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add1~52_combout\ = ((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Add0~50_combout\ $ (!\spi0|spi_fir|Add1~51\)))) # (GND)
-- \spi0|spi_fir|Add1~53\ = CARRY((\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Add0~50_combout\) # (!\spi0|spi_fir|Add1~51\))) # (!\spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT26\ & (\spi0|spi_fir|Add0~50_combout\ & 
-- !\spi0|spi_fir|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult2|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Add0~50_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add1~51\,
	combout => \spi0|spi_fir|Add1~52_combout\,
	cout => \spi0|spi_fir|Add1~53\);

-- Location: DSPMULT_X18_Y19_N0
\spi0|spi_fir|Mult3|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y21_N18
\spi0|spi_fir|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~2_combout\ = (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT1\ & ((\spi0|spi_fir|Add1~2_combout\ & (\spi0|spi_fir|Add2~1\ & VCC)) # (!\spi0|spi_fir|Add1~2_combout\ & (!\spi0|spi_fir|Add2~1\)))) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT1\ & ((\spi0|spi_fir|Add1~2_combout\ & (!\spi0|spi_fir|Add2~1\)) # (!\spi0|spi_fir|Add1~2_combout\ & ((\spi0|spi_fir|Add2~1\) # (GND)))))
-- \spi0|spi_fir|Add2~3\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT1\ & (!\spi0|spi_fir|Add1~2_combout\ & !\spi0|spi_fir|Add2~1\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT1\ & ((!\spi0|spi_fir|Add2~1\) # 
-- (!\spi0|spi_fir|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT1\,
	datab => \spi0|spi_fir|Add1~2_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~1\,
	combout => \spi0|spi_fir|Add2~2_combout\,
	cout => \spi0|spi_fir|Add2~3\);

-- Location: LCCOMB_X21_Y21_N20
\spi0|spi_fir|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~4_combout\ = ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT2\ $ (\spi0|spi_fir|Add1~4_combout\ $ (!\spi0|spi_fir|Add2~3\)))) # (GND)
-- \spi0|spi_fir|Add2~5\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT2\ & ((\spi0|spi_fir|Add1~4_combout\) # (!\spi0|spi_fir|Add2~3\))) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT2\ & (\spi0|spi_fir|Add1~4_combout\ & 
-- !\spi0|spi_fir|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT2\,
	datab => \spi0|spi_fir|Add1~4_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~3\,
	combout => \spi0|spi_fir|Add2~4_combout\,
	cout => \spi0|spi_fir|Add2~5\);

-- Location: LCCOMB_X21_Y21_N22
\spi0|spi_fir|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~6_combout\ = (\spi0|spi_fir|Add1~6_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\ & (\spi0|spi_fir|Add2~5\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add2~5\)))) # 
-- (!\spi0|spi_fir|Add1~6_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add2~5\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Add2~5\) # (GND)))))
-- \spi0|spi_fir|Add2~7\ = CARRY((\spi0|spi_fir|Add1~6_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\ & !\spi0|spi_fir|Add2~5\)) # (!\spi0|spi_fir|Add1~6_combout\ & ((!\spi0|spi_fir|Add2~5\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~6_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~5\,
	combout => \spi0|spi_fir|Add2~6_combout\,
	cout => \spi0|spi_fir|Add2~7\);

-- Location: LCCOMB_X21_Y21_N24
\spi0|spi_fir|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~8_combout\ = ((\spi0|spi_fir|Add1~8_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT4\ $ (!\spi0|spi_fir|Add2~7\)))) # (GND)
-- \spi0|spi_fir|Add2~9\ = CARRY((\spi0|spi_fir|Add1~8_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT4\) # (!\spi0|spi_fir|Add2~7\))) # (!\spi0|spi_fir|Add1~8_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT4\ & 
-- !\spi0|spi_fir|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~8_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~7\,
	combout => \spi0|spi_fir|Add2~8_combout\,
	cout => \spi0|spi_fir|Add2~9\);

-- Location: LCCOMB_X21_Y21_N28
\spi0|spi_fir|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~12_combout\ = ((\spi0|spi_fir|Add1~12_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT6\ $ (!\spi0|spi_fir|Add2~11\)))) # (GND)
-- \spi0|spi_fir|Add2~13\ = CARRY((\spi0|spi_fir|Add1~12_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT6\) # (!\spi0|spi_fir|Add2~11\))) # (!\spi0|spi_fir|Add1~12_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT6\ & 
-- !\spi0|spi_fir|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~12_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~11\,
	combout => \spi0|spi_fir|Add2~12_combout\,
	cout => \spi0|spi_fir|Add2~13\);

-- Location: LCCOMB_X21_Y21_N30
\spi0|spi_fir|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~14_combout\ = (\spi0|spi_fir|Add1~14_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\ & (\spi0|spi_fir|Add2~13\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add2~13\)))) # 
-- (!\spi0|spi_fir|Add1~14_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\ & (!\spi0|spi_fir|Add2~13\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\ & ((\spi0|spi_fir|Add2~13\) # (GND)))))
-- \spi0|spi_fir|Add2~15\ = CARRY((\spi0|spi_fir|Add1~14_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\ & !\spi0|spi_fir|Add2~13\)) # (!\spi0|spi_fir|Add1~14_combout\ & ((!\spi0|spi_fir|Add2~13\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~14_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~13\,
	combout => \spi0|spi_fir|Add2~14_combout\,
	cout => \spi0|spi_fir|Add2~15\);

-- Location: LCCOMB_X21_Y20_N4
\spi0|spi_fir|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~20_combout\ = ((\spi0|spi_fir|Add1~20_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT10\ $ (!\spi0|spi_fir|Add2~19\)))) # (GND)
-- \spi0|spi_fir|Add2~21\ = CARRY((\spi0|spi_fir|Add1~20_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT10\) # (!\spi0|spi_fir|Add2~19\))) # (!\spi0|spi_fir|Add1~20_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT10\ & 
-- !\spi0|spi_fir|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~20_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~19\,
	combout => \spi0|spi_fir|Add2~20_combout\,
	cout => \spi0|spi_fir|Add2~21\);

-- Location: LCCOMB_X21_Y20_N6
\spi0|spi_fir|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~22_combout\ = (\spi0|spi_fir|Add1~22_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\ & (\spi0|spi_fir|Add2~21\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Add2~21\)))) # 
-- (!\spi0|spi_fir|Add1~22_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Add2~21\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add2~21\) # (GND)))))
-- \spi0|spi_fir|Add2~23\ = CARRY((\spi0|spi_fir|Add1~22_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\ & !\spi0|spi_fir|Add2~21\)) # (!\spi0|spi_fir|Add1~22_combout\ & ((!\spi0|spi_fir|Add2~21\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~22_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~21\,
	combout => \spi0|spi_fir|Add2~22_combout\,
	cout => \spi0|spi_fir|Add2~23\);

-- Location: LCCOMB_X21_Y20_N18
\spi0|spi_fir|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~34_combout\ = (\spi0|spi_fir|Add1~34_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\ & (\spi0|spi_fir|Add2~33\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add2~33\)))) # 
-- (!\spi0|spi_fir|Add1~34_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add2~33\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add2~33\) # (GND)))))
-- \spi0|spi_fir|Add2~35\ = CARRY((\spi0|spi_fir|Add1~34_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\ & !\spi0|spi_fir|Add2~33\)) # (!\spi0|spi_fir|Add1~34_combout\ & ((!\spi0|spi_fir|Add2~33\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~34_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~33\,
	combout => \spi0|spi_fir|Add2~34_combout\,
	cout => \spi0|spi_fir|Add2~35\);

-- Location: LCCOMB_X21_Y20_N20
\spi0|spi_fir|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~36_combout\ = ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT18\ $ (\spi0|spi_fir|Add1~36_combout\ $ (!\spi0|spi_fir|Add2~35\)))) # (GND)
-- \spi0|spi_fir|Add2~37\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Add1~36_combout\) # (!\spi0|spi_fir|Add2~35\))) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT18\ & (\spi0|spi_fir|Add1~36_combout\ & 
-- !\spi0|spi_fir|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Add1~36_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~35\,
	combout => \spi0|spi_fir|Add2~36_combout\,
	cout => \spi0|spi_fir|Add2~37\);

-- Location: LCCOMB_X21_Y20_N22
\spi0|spi_fir|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~38_combout\ = (\spi0|spi_fir|Add1~38_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\ & (\spi0|spi_fir|Add2~37\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add2~37\)))) # 
-- (!\spi0|spi_fir|Add1~38_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add2~37\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Add2~37\) # (GND)))))
-- \spi0|spi_fir|Add2~39\ = CARRY((\spi0|spi_fir|Add1~38_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\ & !\spi0|spi_fir|Add2~37\)) # (!\spi0|spi_fir|Add1~38_combout\ & ((!\spi0|spi_fir|Add2~37\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~38_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~37\,
	combout => \spi0|spi_fir|Add2~38_combout\,
	cout => \spi0|spi_fir|Add2~39\);

-- Location: LCCOMB_X21_Y20_N24
\spi0|spi_fir|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~40_combout\ = ((\spi0|spi_fir|Add1~40_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT20\ $ (!\spi0|spi_fir|Add2~39\)))) # (GND)
-- \spi0|spi_fir|Add2~41\ = CARRY((\spi0|spi_fir|Add1~40_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT20\) # (!\spi0|spi_fir|Add2~39\))) # (!\spi0|spi_fir|Add1~40_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT20\ & 
-- !\spi0|spi_fir|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~40_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~39\,
	combout => \spi0|spi_fir|Add2~40_combout\,
	cout => \spi0|spi_fir|Add2~41\);

-- Location: LCCOMB_X21_Y20_N28
\spi0|spi_fir|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~44_combout\ = ((\spi0|spi_fir|Add1~44_combout\ $ (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT22\ $ (!\spi0|spi_fir|Add2~43\)))) # (GND)
-- \spi0|spi_fir|Add2~45\ = CARRY((\spi0|spi_fir|Add1~44_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT22\) # (!\spi0|spi_fir|Add2~43\))) # (!\spi0|spi_fir|Add1~44_combout\ & (\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT22\ & 
-- !\spi0|spi_fir|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~44_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~43\,
	combout => \spi0|spi_fir|Add2~44_combout\,
	cout => \spi0|spi_fir|Add2~45\);

-- Location: LCCOMB_X21_Y20_N30
\spi0|spi_fir|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~46_combout\ = (\spi0|spi_fir|Add1~46_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\ & (\spi0|spi_fir|Add2~45\ & VCC)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add2~45\)))) # 
-- (!\spi0|spi_fir|Add1~46_combout\ & ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\ & (!\spi0|spi_fir|Add2~45\)) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\ & ((\spi0|spi_fir|Add2~45\) # (GND)))))
-- \spi0|spi_fir|Add2~47\ = CARRY((\spi0|spi_fir|Add1~46_combout\ & (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\ & !\spi0|spi_fir|Add2~45\)) # (!\spi0|spi_fir|Add1~46_combout\ & ((!\spi0|spi_fir|Add2~45\) # 
-- (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add1~46_combout\,
	datab => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~45\,
	combout => \spi0|spi_fir|Add2~46_combout\,
	cout => \spi0|spi_fir|Add2~47\);

-- Location: LCCOMB_X21_Y19_N4
\spi0|spi_fir|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add2~52_combout\ = ((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Add1~52_combout\ $ (!\spi0|spi_fir|Add2~51\)))) # (GND)
-- \spi0|spi_fir|Add2~53\ = CARRY((\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Add1~52_combout\) # (!\spi0|spi_fir|Add2~51\))) # (!\spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT26\ & (\spi0|spi_fir|Add1~52_combout\ & 
-- !\spi0|spi_fir|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult3|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Add1~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add2~51\,
	combout => \spi0|spi_fir|Add2~52_combout\,
	cout => \spi0|spi_fir|Add2~53\);

-- Location: DSPMULT_X34_Y20_N0
\spi0|spi_fir|Mult4|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult4|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y21_N22
\spi0|spi_fir|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~6_combout\ = (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Add2~6_combout\ & (\spi0|spi_fir|Add3~5\ & VCC)) # (!\spi0|spi_fir|Add2~6_combout\ & (!\spi0|spi_fir|Add3~5\)))) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Add2~6_combout\ & (!\spi0|spi_fir|Add3~5\)) # (!\spi0|spi_fir|Add2~6_combout\ & ((\spi0|spi_fir|Add3~5\) # (GND)))))
-- \spi0|spi_fir|Add3~7\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add2~6_combout\ & !\spi0|spi_fir|Add3~5\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT3\ & ((!\spi0|spi_fir|Add3~5\) # 
-- (!\spi0|spi_fir|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT3\,
	datab => \spi0|spi_fir|Add2~6_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~5\,
	combout => \spi0|spi_fir|Add3~6_combout\,
	cout => \spi0|spi_fir|Add3~7\);

-- Location: LCCOMB_X22_Y21_N26
\spi0|spi_fir|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~10_combout\ = (\spi0|spi_fir|Add2~10_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\ & (\spi0|spi_fir|Add3~9\ & VCC)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add3~9\)))) # 
-- (!\spi0|spi_fir|Add2~10_combout\ & ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\ & (!\spi0|spi_fir|Add3~9\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\ & ((\spi0|spi_fir|Add3~9\) # (GND)))))
-- \spi0|spi_fir|Add3~11\ = CARRY((\spi0|spi_fir|Add2~10_combout\ & (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\ & !\spi0|spi_fir|Add3~9\)) # (!\spi0|spi_fir|Add2~10_combout\ & ((!\spi0|spi_fir|Add3~9\) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add2~10_combout\,
	datab => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~9\,
	combout => \spi0|spi_fir|Add3~10_combout\,
	cout => \spi0|spi_fir|Add3~11\);

-- Location: LCCOMB_X22_Y20_N4
\spi0|spi_fir|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~20_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT10\ $ (\spi0|spi_fir|Add2~20_combout\ $ (!\spi0|spi_fir|Add3~19\)))) # (GND)
-- \spi0|spi_fir|Add3~21\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Add2~20_combout\) # (!\spi0|spi_fir|Add3~19\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT10\ & (\spi0|spi_fir|Add2~20_combout\ & 
-- !\spi0|spi_fir|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT10\,
	datab => \spi0|spi_fir|Add2~20_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~19\,
	combout => \spi0|spi_fir|Add3~20_combout\,
	cout => \spi0|spi_fir|Add3~21\);

-- Location: LCCOMB_X22_Y20_N6
\spi0|spi_fir|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~22_combout\ = (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add2~22_combout\ & (\spi0|spi_fir|Add3~21\ & VCC)) # (!\spi0|spi_fir|Add2~22_combout\ & (!\spi0|spi_fir|Add3~21\)))) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Add2~22_combout\ & (!\spi0|spi_fir|Add3~21\)) # (!\spi0|spi_fir|Add2~22_combout\ & ((\spi0|spi_fir|Add3~21\) # (GND)))))
-- \spi0|spi_fir|Add3~23\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Add2~22_combout\ & !\spi0|spi_fir|Add3~21\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT11\ & ((!\spi0|spi_fir|Add3~21\) # 
-- (!\spi0|spi_fir|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT11\,
	datab => \spi0|spi_fir|Add2~22_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~21\,
	combout => \spi0|spi_fir|Add3~22_combout\,
	cout => \spi0|spi_fir|Add3~23\);

-- Location: LCCOMB_X22_Y20_N18
\spi0|spi_fir|Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~34_combout\ = (\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add2~34_combout\ & (\spi0|spi_fir|Add3~33\ & VCC)) # (!\spi0|spi_fir|Add2~34_combout\ & (!\spi0|spi_fir|Add3~33\)))) # 
-- (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add2~34_combout\ & (!\spi0|spi_fir|Add3~33\)) # (!\spi0|spi_fir|Add2~34_combout\ & ((\spi0|spi_fir|Add3~33\) # (GND)))))
-- \spi0|spi_fir|Add3~35\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add2~34_combout\ & !\spi0|spi_fir|Add3~33\)) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT17\ & ((!\spi0|spi_fir|Add3~33\) # 
-- (!\spi0|spi_fir|Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT17\,
	datab => \spi0|spi_fir|Add2~34_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~33\,
	combout => \spi0|spi_fir|Add3~34_combout\,
	cout => \spi0|spi_fir|Add3~35\);

-- Location: LCCOMB_X22_Y20_N20
\spi0|spi_fir|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~36_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT18\ $ (\spi0|spi_fir|Add2~36_combout\ $ (!\spi0|spi_fir|Add3~35\)))) # (GND)
-- \spi0|spi_fir|Add3~37\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Add2~36_combout\) # (!\spi0|spi_fir|Add3~35\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT18\ & (\spi0|spi_fir|Add2~36_combout\ & 
-- !\spi0|spi_fir|Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Add2~36_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~35\,
	combout => \spi0|spi_fir|Add3~36_combout\,
	cout => \spi0|spi_fir|Add3~37\);

-- Location: LCCOMB_X22_Y20_N28
\spi0|spi_fir|Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~44_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT22\ $ (\spi0|spi_fir|Add2~44_combout\ $ (!\spi0|spi_fir|Add3~43\)))) # (GND)
-- \spi0|spi_fir|Add3~45\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT22\ & ((\spi0|spi_fir|Add2~44_combout\) # (!\spi0|spi_fir|Add3~43\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT22\ & (\spi0|spi_fir|Add2~44_combout\ & 
-- !\spi0|spi_fir|Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT22\,
	datab => \spi0|spi_fir|Add2~44_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~43\,
	combout => \spi0|spi_fir|Add3~44_combout\,
	cout => \spi0|spi_fir|Add3~45\);

-- Location: LCCOMB_X22_Y19_N4
\spi0|spi_fir|Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add3~52_combout\ = ((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Add2~52_combout\ $ (!\spi0|spi_fir|Add3~51\)))) # (GND)
-- \spi0|spi_fir|Add3~53\ = CARRY((\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Add2~52_combout\) # (!\spi0|spi_fir|Add3~51\))) # (!\spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT26\ & (\spi0|spi_fir|Add2~52_combout\ & 
-- !\spi0|spi_fir|Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult4|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Add2~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add3~51\,
	combout => \spi0|spi_fir|Add3~52_combout\,
	cout => \spi0|spi_fir|Add3~53\);

-- Location: LCCOMB_X23_Y20_N6
\spi0|spi_fir|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~4_combout\ = ((\spi0|spi_fir|Add3~12_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT6\ $ (!\spi0|spi_fir|Add4~3\)))) # (GND)
-- \spi0|spi_fir|Add4~5\ = CARRY((\spi0|spi_fir|Add3~12_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT6\) # (!\spi0|spi_fir|Add4~3\))) # (!\spi0|spi_fir|Add3~12_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT6\ & 
-- !\spi0|spi_fir|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~12_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~3\,
	combout => \spi0|spi_fir|Add4~4_combout\,
	cout => \spi0|spi_fir|Add4~5\);

-- Location: LCCOMB_X23_Y20_N12
\spi0|spi_fir|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~10_combout\ = (\spi0|spi_fir|Add3~18_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\ & (\spi0|spi_fir|Add4~9\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add4~9\)))) # 
-- (!\spi0|spi_fir|Add3~18_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\ & (!\spi0|spi_fir|Add4~9\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\ & ((\spi0|spi_fir|Add4~9\) # (GND)))))
-- \spi0|spi_fir|Add4~11\ = CARRY((\spi0|spi_fir|Add3~18_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\ & !\spi0|spi_fir|Add4~9\)) # (!\spi0|spi_fir|Add3~18_combout\ & ((!\spi0|spi_fir|Add4~9\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~18_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~9\,
	combout => \spi0|spi_fir|Add4~10_combout\,
	cout => \spi0|spi_fir|Add4~11\);

-- Location: LCCOMB_X23_Y20_N18
\spi0|spi_fir|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~16_combout\ = ((\spi0|spi_fir|Add3~24_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT12\ $ (!\spi0|spi_fir|Add4~15\)))) # (GND)
-- \spi0|spi_fir|Add4~17\ = CARRY((\spi0|spi_fir|Add3~24_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT12\) # (!\spi0|spi_fir|Add4~15\))) # (!\spi0|spi_fir|Add3~24_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT12\ & 
-- !\spi0|spi_fir|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~24_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~15\,
	combout => \spi0|spi_fir|Add4~16_combout\,
	cout => \spi0|spi_fir|Add4~17\);

-- Location: LCCOMB_X23_Y20_N20
\spi0|spi_fir|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~18_combout\ = (\spi0|spi_fir|Add3~26_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\ & (\spi0|spi_fir|Add4~17\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add4~17\)))) # 
-- (!\spi0|spi_fir|Add3~26_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\ & (!\spi0|spi_fir|Add4~17\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\ & ((\spi0|spi_fir|Add4~17\) # (GND)))))
-- \spi0|spi_fir|Add4~19\ = CARRY((\spi0|spi_fir|Add3~26_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\ & !\spi0|spi_fir|Add4~17\)) # (!\spi0|spi_fir|Add3~26_combout\ & ((!\spi0|spi_fir|Add4~17\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~26_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~17\,
	combout => \spi0|spi_fir|Add4~18_combout\,
	cout => \spi0|spi_fir|Add4~19\);

-- Location: LCCOMB_X23_Y20_N22
\spi0|spi_fir|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~20_combout\ = ((\spi0|spi_fir|Add3~28_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT14\ $ (!\spi0|spi_fir|Add4~19\)))) # (GND)
-- \spi0|spi_fir|Add4~21\ = CARRY((\spi0|spi_fir|Add3~28_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT14\) # (!\spi0|spi_fir|Add4~19\))) # (!\spi0|spi_fir|Add3~28_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT14\ & 
-- !\spi0|spi_fir|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~28_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~19\,
	combout => \spi0|spi_fir|Add4~20_combout\,
	cout => \spi0|spi_fir|Add4~21\);

-- Location: LCCOMB_X23_Y20_N26
\spi0|spi_fir|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~24_combout\ = ((\spi0|spi_fir|Add3~32_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT16\ $ (!\spi0|spi_fir|Add4~23\)))) # (GND)
-- \spi0|spi_fir|Add4~25\ = CARRY((\spi0|spi_fir|Add3~32_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT16\) # (!\spi0|spi_fir|Add4~23\))) # (!\spi0|spi_fir|Add3~32_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT16\ & 
-- !\spi0|spi_fir|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~32_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~23\,
	combout => \spi0|spi_fir|Add4~24_combout\,
	cout => \spi0|spi_fir|Add4~25\);

-- Location: LCCOMB_X23_Y20_N28
\spi0|spi_fir|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~26_combout\ = (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add3~34_combout\ & (\spi0|spi_fir|Add4~25\ & VCC)) # (!\spi0|spi_fir|Add3~34_combout\ & (!\spi0|spi_fir|Add4~25\)))) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT17\ & ((\spi0|spi_fir|Add3~34_combout\ & (!\spi0|spi_fir|Add4~25\)) # (!\spi0|spi_fir|Add3~34_combout\ & ((\spi0|spi_fir|Add4~25\) # (GND)))))
-- \spi0|spi_fir|Add4~27\ = CARRY((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT17\ & (!\spi0|spi_fir|Add3~34_combout\ & !\spi0|spi_fir|Add4~25\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT17\ & ((!\spi0|spi_fir|Add4~25\) # 
-- (!\spi0|spi_fir|Add3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT17\,
	datab => \spi0|spi_fir|Add3~34_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~25\,
	combout => \spi0|spi_fir|Add4~26_combout\,
	cout => \spi0|spi_fir|Add4~27\);

-- Location: LCCOMB_X23_Y20_N30
\spi0|spi_fir|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~28_combout\ = ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT18\ $ (\spi0|spi_fir|Add3~36_combout\ $ (!\spi0|spi_fir|Add4~27\)))) # (GND)
-- \spi0|spi_fir|Add4~29\ = CARRY((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT18\ & ((\spi0|spi_fir|Add3~36_combout\) # (!\spi0|spi_fir|Add4~27\))) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT18\ & (\spi0|spi_fir|Add3~36_combout\ & 
-- !\spi0|spi_fir|Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT18\,
	datab => \spi0|spi_fir|Add3~36_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~27\,
	combout => \spi0|spi_fir|Add4~28_combout\,
	cout => \spi0|spi_fir|Add4~29\);

-- Location: LCCOMB_X23_Y19_N6
\spi0|spi_fir|Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~36_combout\ = ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT22\ $ (\spi0|spi_fir|Add3~44_combout\ $ (!\spi0|spi_fir|Add4~35\)))) # (GND)
-- \spi0|spi_fir|Add4~37\ = CARRY((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT22\ & ((\spi0|spi_fir|Add3~44_combout\) # (!\spi0|spi_fir|Add4~35\))) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT22\ & (\spi0|spi_fir|Add3~44_combout\ & 
-- !\spi0|spi_fir|Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT22\,
	datab => \spi0|spi_fir|Add3~44_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~35\,
	combout => \spi0|spi_fir|Add4~36_combout\,
	cout => \spi0|spi_fir|Add4~37\);

-- Location: LCCOMB_X23_Y19_N16
\spi0|spi_fir|Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~46_combout\ = (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add3~54_combout\ & (\spi0|spi_fir|Add4~45\ & VCC)) # (!\spi0|spi_fir|Add3~54_combout\ & (!\spi0|spi_fir|Add4~45\)))) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Add3~54_combout\ & (!\spi0|spi_fir|Add4~45\)) # (!\spi0|spi_fir|Add3~54_combout\ & ((\spi0|spi_fir|Add4~45\) # (GND)))))
-- \spi0|spi_fir|Add4~47\ = CARRY((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT27\ & (!\spi0|spi_fir|Add3~54_combout\ & !\spi0|spi_fir|Add4~45\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT27\ & ((!\spi0|spi_fir|Add4~45\) # 
-- (!\spi0|spi_fir|Add3~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Add3~54_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~45\,
	combout => \spi0|spi_fir|Add4~46_combout\,
	cout => \spi0|spi_fir|Add4~47\);

-- Location: LCCOMB_X23_Y19_N20
\spi0|spi_fir|Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~50_combout\ = (\spi0|spi_fir|Add3~58_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\ & (\spi0|spi_fir|Add4~49\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\ & (!\spi0|spi_fir|Add4~49\)))) # 
-- (!\spi0|spi_fir|Add3~58_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\ & (!\spi0|spi_fir|Add4~49\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\ & ((\spi0|spi_fir|Add4~49\) # (GND)))))
-- \spi0|spi_fir|Add4~51\ = CARRY((\spi0|spi_fir|Add3~58_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\ & !\spi0|spi_fir|Add4~49\)) # (!\spi0|spi_fir|Add3~58_combout\ & ((!\spi0|spi_fir|Add4~49\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~58_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~49\,
	combout => \spi0|spi_fir|Add4~50_combout\,
	cout => \spi0|spi_fir|Add4~51\);

-- Location: LCCOMB_X23_Y19_N22
\spi0|spi_fir|Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~52_combout\ = ((\spi0|spi_fir|Add3~60_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT30\ $ (!\spi0|spi_fir|Add4~51\)))) # (GND)
-- \spi0|spi_fir|Add4~53\ = CARRY((\spi0|spi_fir|Add3~60_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT30\) # (!\spi0|spi_fir|Add4~51\))) # (!\spi0|spi_fir|Add3~60_combout\ & (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT30\ & 
-- !\spi0|spi_fir|Add4~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~60_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~51\,
	combout => \spi0|spi_fir|Add4~52_combout\,
	cout => \spi0|spi_fir|Add4~53\);

-- Location: LCCOMB_X23_Y19_N24
\spi0|spi_fir|Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~54_combout\ = (\spi0|spi_fir|Add3~62_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ & (\spi0|spi_fir|Add4~53\ & VCC)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ & (!\spi0|spi_fir|Add4~53\)))) # 
-- (!\spi0|spi_fir|Add3~62_combout\ & ((\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ & (!\spi0|spi_fir|Add4~53\)) # (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ & ((\spi0|spi_fir|Add4~53\) # (GND)))))
-- \spi0|spi_fir|Add4~55\ = CARRY((\spi0|spi_fir|Add3~62_combout\ & (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ & !\spi0|spi_fir|Add4~53\)) # (!\spi0|spi_fir|Add3~62_combout\ & ((!\spi0|spi_fir|Add4~53\) # 
-- (!\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~62_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \spi0|spi_fir|Add4~53\,
	combout => \spi0|spi_fir|Add4~54_combout\,
	cout => \spi0|spi_fir|Add4~55\);

-- Location: LCCOMB_X24_Y23_N14
\spi0|spi_fir|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~0_combout\ = (\spi0|spi_fir|Add3~0_combout\ & (\spi0|spi_fir|Add7~0_combout\ $ (VCC))) # (!\spi0|spi_fir|Add3~0_combout\ & (\spi0|spi_fir|Add7~0_combout\ & VCC))
-- \spi0|spi_fir|Add6~1\ = CARRY((\spi0|spi_fir|Add3~0_combout\ & \spi0|spi_fir|Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~0_combout\,
	datab => \spi0|spi_fir|Add7~0_combout\,
	datad => VCC,
	combout => \spi0|spi_fir|Add6~0_combout\,
	cout => \spi0|spi_fir|Add6~1\);

-- Location: LCCOMB_X24_Y23_N16
\spi0|spi_fir|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~2_combout\ = (\spi0|spi_fir|Add3~2_combout\ & ((\spi0|spi_fir|Add7~2_combout\ & (\spi0|spi_fir|Add6~1\ & VCC)) # (!\spi0|spi_fir|Add7~2_combout\ & (!\spi0|spi_fir|Add6~1\)))) # (!\spi0|spi_fir|Add3~2_combout\ & 
-- ((\spi0|spi_fir|Add7~2_combout\ & (!\spi0|spi_fir|Add6~1\)) # (!\spi0|spi_fir|Add7~2_combout\ & ((\spi0|spi_fir|Add6~1\) # (GND)))))
-- \spi0|spi_fir|Add6~3\ = CARRY((\spi0|spi_fir|Add3~2_combout\ & (!\spi0|spi_fir|Add7~2_combout\ & !\spi0|spi_fir|Add6~1\)) # (!\spi0|spi_fir|Add3~2_combout\ & ((!\spi0|spi_fir|Add6~1\) # (!\spi0|spi_fir|Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~2_combout\,
	datab => \spi0|spi_fir|Add7~2_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~1\,
	combout => \spi0|spi_fir|Add6~2_combout\,
	cout => \spi0|spi_fir|Add6~3\);

-- Location: LCCOMB_X24_Y23_N18
\spi0|spi_fir|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~4_combout\ = ((\spi0|spi_fir|Add3~4_combout\ $ (\spi0|spi_fir|Add7~4_combout\ $ (!\spi0|spi_fir|Add6~3\)))) # (GND)
-- \spi0|spi_fir|Add6~5\ = CARRY((\spi0|spi_fir|Add3~4_combout\ & ((\spi0|spi_fir|Add7~4_combout\) # (!\spi0|spi_fir|Add6~3\))) # (!\spi0|spi_fir|Add3~4_combout\ & (\spi0|spi_fir|Add7~4_combout\ & !\spi0|spi_fir|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~4_combout\,
	datab => \spi0|spi_fir|Add7~4_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~3\,
	combout => \spi0|spi_fir|Add6~4_combout\,
	cout => \spi0|spi_fir|Add6~5\);

-- Location: LCCOMB_X24_Y23_N22
\spi0|spi_fir|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~8_combout\ = ((\spi0|spi_fir|Add4~0_combout\ $ (\spi0|spi_fir|Add7~8_combout\ $ (!\spi0|spi_fir|Add6~7\)))) # (GND)
-- \spi0|spi_fir|Add6~9\ = CARRY((\spi0|spi_fir|Add4~0_combout\ & ((\spi0|spi_fir|Add7~8_combout\) # (!\spi0|spi_fir|Add6~7\))) # (!\spi0|spi_fir|Add4~0_combout\ & (\spi0|spi_fir|Add7~8_combout\ & !\spi0|spi_fir|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~0_combout\,
	datab => \spi0|spi_fir|Add7~8_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~7\,
	combout => \spi0|spi_fir|Add6~8_combout\,
	cout => \spi0|spi_fir|Add6~9\);

-- Location: LCCOMB_X24_Y23_N24
\spi0|spi_fir|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~10_combout\ = (\spi0|spi_fir|Add4~2_combout\ & ((\spi0|spi_fir|Add7~10_combout\ & (\spi0|spi_fir|Add6~9\ & VCC)) # (!\spi0|spi_fir|Add7~10_combout\ & (!\spi0|spi_fir|Add6~9\)))) # (!\spi0|spi_fir|Add4~2_combout\ & 
-- ((\spi0|spi_fir|Add7~10_combout\ & (!\spi0|spi_fir|Add6~9\)) # (!\spi0|spi_fir|Add7~10_combout\ & ((\spi0|spi_fir|Add6~9\) # (GND)))))
-- \spi0|spi_fir|Add6~11\ = CARRY((\spi0|spi_fir|Add4~2_combout\ & (!\spi0|spi_fir|Add7~10_combout\ & !\spi0|spi_fir|Add6~9\)) # (!\spi0|spi_fir|Add4~2_combout\ & ((!\spi0|spi_fir|Add6~9\) # (!\spi0|spi_fir|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~2_combout\,
	datab => \spi0|spi_fir|Add7~10_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~9\,
	combout => \spi0|spi_fir|Add6~10_combout\,
	cout => \spi0|spi_fir|Add6~11\);

-- Location: LCCOMB_X24_Y23_N26
\spi0|spi_fir|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~12_combout\ = ((\spi0|spi_fir|Add7~12_combout\ $ (\spi0|spi_fir|Add4~4_combout\ $ (!\spi0|spi_fir|Add6~11\)))) # (GND)
-- \spi0|spi_fir|Add6~13\ = CARRY((\spi0|spi_fir|Add7~12_combout\ & ((\spi0|spi_fir|Add4~4_combout\) # (!\spi0|spi_fir|Add6~11\))) # (!\spi0|spi_fir|Add7~12_combout\ & (\spi0|spi_fir|Add4~4_combout\ & !\spi0|spi_fir|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~12_combout\,
	datab => \spi0|spi_fir|Add4~4_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~11\,
	combout => \spi0|spi_fir|Add6~12_combout\,
	cout => \spi0|spi_fir|Add6~13\);

-- Location: LCCOMB_X24_Y23_N28
\spi0|spi_fir|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~14_combout\ = (\spi0|spi_fir|Add4~6_combout\ & ((\spi0|spi_fir|Add7~14_combout\ & (\spi0|spi_fir|Add6~13\ & VCC)) # (!\spi0|spi_fir|Add7~14_combout\ & (!\spi0|spi_fir|Add6~13\)))) # (!\spi0|spi_fir|Add4~6_combout\ & 
-- ((\spi0|spi_fir|Add7~14_combout\ & (!\spi0|spi_fir|Add6~13\)) # (!\spi0|spi_fir|Add7~14_combout\ & ((\spi0|spi_fir|Add6~13\) # (GND)))))
-- \spi0|spi_fir|Add6~15\ = CARRY((\spi0|spi_fir|Add4~6_combout\ & (!\spi0|spi_fir|Add7~14_combout\ & !\spi0|spi_fir|Add6~13\)) # (!\spi0|spi_fir|Add4~6_combout\ & ((!\spi0|spi_fir|Add6~13\) # (!\spi0|spi_fir|Add7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~6_combout\,
	datab => \spi0|spi_fir|Add7~14_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~13\,
	combout => \spi0|spi_fir|Add6~14_combout\,
	cout => \spi0|spi_fir|Add6~15\);

-- Location: LCCOMB_X24_Y22_N0
\spi0|spi_fir|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~18_combout\ = (\spi0|spi_fir|Add7~18_combout\ & ((\spi0|spi_fir|Add4~10_combout\ & (\spi0|spi_fir|Add6~17\ & VCC)) # (!\spi0|spi_fir|Add4~10_combout\ & (!\spi0|spi_fir|Add6~17\)))) # (!\spi0|spi_fir|Add7~18_combout\ & 
-- ((\spi0|spi_fir|Add4~10_combout\ & (!\spi0|spi_fir|Add6~17\)) # (!\spi0|spi_fir|Add4~10_combout\ & ((\spi0|spi_fir|Add6~17\) # (GND)))))
-- \spi0|spi_fir|Add6~19\ = CARRY((\spi0|spi_fir|Add7~18_combout\ & (!\spi0|spi_fir|Add4~10_combout\ & !\spi0|spi_fir|Add6~17\)) # (!\spi0|spi_fir|Add7~18_combout\ & ((!\spi0|spi_fir|Add6~17\) # (!\spi0|spi_fir|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~18_combout\,
	datab => \spi0|spi_fir|Add4~10_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~17\,
	combout => \spi0|spi_fir|Add6~18_combout\,
	cout => \spi0|spi_fir|Add6~19\);

-- Location: LCCOMB_X24_Y22_N8
\spi0|spi_fir|Add6~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~26_combout\ = (\spi0|spi_fir|Add7~26_combout\ & ((\spi0|spi_fir|Add4~18_combout\ & (\spi0|spi_fir|Add6~25\ & VCC)) # (!\spi0|spi_fir|Add4~18_combout\ & (!\spi0|spi_fir|Add6~25\)))) # (!\spi0|spi_fir|Add7~26_combout\ & 
-- ((\spi0|spi_fir|Add4~18_combout\ & (!\spi0|spi_fir|Add6~25\)) # (!\spi0|spi_fir|Add4~18_combout\ & ((\spi0|spi_fir|Add6~25\) # (GND)))))
-- \spi0|spi_fir|Add6~27\ = CARRY((\spi0|spi_fir|Add7~26_combout\ & (!\spi0|spi_fir|Add4~18_combout\ & !\spi0|spi_fir|Add6~25\)) # (!\spi0|spi_fir|Add7~26_combout\ & ((!\spi0|spi_fir|Add6~25\) # (!\spi0|spi_fir|Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~26_combout\,
	datab => \spi0|spi_fir|Add4~18_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~25\,
	combout => \spi0|spi_fir|Add6~26_combout\,
	cout => \spi0|spi_fir|Add6~27\);

-- Location: LCCOMB_X24_Y22_N10
\spi0|spi_fir|Add6~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~28_combout\ = ((\spi0|spi_fir|Add7~28_combout\ $ (\spi0|spi_fir|Add4~20_combout\ $ (!\spi0|spi_fir|Add6~27\)))) # (GND)
-- \spi0|spi_fir|Add6~29\ = CARRY((\spi0|spi_fir|Add7~28_combout\ & ((\spi0|spi_fir|Add4~20_combout\) # (!\spi0|spi_fir|Add6~27\))) # (!\spi0|spi_fir|Add7~28_combout\ & (\spi0|spi_fir|Add4~20_combout\ & !\spi0|spi_fir|Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~28_combout\,
	datab => \spi0|spi_fir|Add4~20_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~27\,
	combout => \spi0|spi_fir|Add6~28_combout\,
	cout => \spi0|spi_fir|Add6~29\);

-- Location: LCCOMB_X24_Y22_N12
\spi0|spi_fir|Add6~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~30_combout\ = (\spi0|spi_fir|Add4~22_combout\ & ((\spi0|spi_fir|Add7~30_combout\ & (\spi0|spi_fir|Add6~29\ & VCC)) # (!\spi0|spi_fir|Add7~30_combout\ & (!\spi0|spi_fir|Add6~29\)))) # (!\spi0|spi_fir|Add4~22_combout\ & 
-- ((\spi0|spi_fir|Add7~30_combout\ & (!\spi0|spi_fir|Add6~29\)) # (!\spi0|spi_fir|Add7~30_combout\ & ((\spi0|spi_fir|Add6~29\) # (GND)))))
-- \spi0|spi_fir|Add6~31\ = CARRY((\spi0|spi_fir|Add4~22_combout\ & (!\spi0|spi_fir|Add7~30_combout\ & !\spi0|spi_fir|Add6~29\)) # (!\spi0|spi_fir|Add4~22_combout\ & ((!\spi0|spi_fir|Add6~29\) # (!\spi0|spi_fir|Add7~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~22_combout\,
	datab => \spi0|spi_fir|Add7~30_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~29\,
	combout => \spi0|spi_fir|Add6~30_combout\,
	cout => \spi0|spi_fir|Add6~31\);

-- Location: LCCOMB_X24_Y22_N14
\spi0|spi_fir|Add6~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~32_combout\ = ((\spi0|spi_fir|Add7~32_combout\ $ (\spi0|spi_fir|Add4~24_combout\ $ (!\spi0|spi_fir|Add6~31\)))) # (GND)
-- \spi0|spi_fir|Add6~33\ = CARRY((\spi0|spi_fir|Add7~32_combout\ & ((\spi0|spi_fir|Add4~24_combout\) # (!\spi0|spi_fir|Add6~31\))) # (!\spi0|spi_fir|Add7~32_combout\ & (\spi0|spi_fir|Add4~24_combout\ & !\spi0|spi_fir|Add6~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~32_combout\,
	datab => \spi0|spi_fir|Add4~24_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~31\,
	combout => \spi0|spi_fir|Add6~32_combout\,
	cout => \spi0|spi_fir|Add6~33\);

-- Location: LCCOMB_X24_Y22_N16
\spi0|spi_fir|Add6~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~34_combout\ = (\spi0|spi_fir|Add7~34_combout\ & ((\spi0|spi_fir|Add4~26_combout\ & (\spi0|spi_fir|Add6~33\ & VCC)) # (!\spi0|spi_fir|Add4~26_combout\ & (!\spi0|spi_fir|Add6~33\)))) # (!\spi0|spi_fir|Add7~34_combout\ & 
-- ((\spi0|spi_fir|Add4~26_combout\ & (!\spi0|spi_fir|Add6~33\)) # (!\spi0|spi_fir|Add4~26_combout\ & ((\spi0|spi_fir|Add6~33\) # (GND)))))
-- \spi0|spi_fir|Add6~35\ = CARRY((\spi0|spi_fir|Add7~34_combout\ & (!\spi0|spi_fir|Add4~26_combout\ & !\spi0|spi_fir|Add6~33\)) # (!\spi0|spi_fir|Add7~34_combout\ & ((!\spi0|spi_fir|Add6~33\) # (!\spi0|spi_fir|Add4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~34_combout\,
	datab => \spi0|spi_fir|Add4~26_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~33\,
	combout => \spi0|spi_fir|Add6~34_combout\,
	cout => \spi0|spi_fir|Add6~35\);

-- Location: LCCOMB_X24_Y22_N18
\spi0|spi_fir|Add6~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~36_combout\ = ((\spi0|spi_fir|Add7~36_combout\ $ (\spi0|spi_fir|Add4~28_combout\ $ (!\spi0|spi_fir|Add6~35\)))) # (GND)
-- \spi0|spi_fir|Add6~37\ = CARRY((\spi0|spi_fir|Add7~36_combout\ & ((\spi0|spi_fir|Add4~28_combout\) # (!\spi0|spi_fir|Add6~35\))) # (!\spi0|spi_fir|Add7~36_combout\ & (\spi0|spi_fir|Add4~28_combout\ & !\spi0|spi_fir|Add6~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~36_combout\,
	datab => \spi0|spi_fir|Add4~28_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~35\,
	combout => \spi0|spi_fir|Add6~36_combout\,
	cout => \spi0|spi_fir|Add6~37\);

-- Location: LCCOMB_X24_Y22_N22
\spi0|spi_fir|Add6~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~40_combout\ = ((\spi0|spi_fir|Add4~32_combout\ $ (\spi0|spi_fir|Add7~40_combout\ $ (!\spi0|spi_fir|Add6~39\)))) # (GND)
-- \spi0|spi_fir|Add6~41\ = CARRY((\spi0|spi_fir|Add4~32_combout\ & ((\spi0|spi_fir|Add7~40_combout\) # (!\spi0|spi_fir|Add6~39\))) # (!\spi0|spi_fir|Add4~32_combout\ & (\spi0|spi_fir|Add7~40_combout\ & !\spi0|spi_fir|Add6~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~32_combout\,
	datab => \spi0|spi_fir|Add7~40_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~39\,
	combout => \spi0|spi_fir|Add6~40_combout\,
	cout => \spi0|spi_fir|Add6~41\);

-- Location: LCCOMB_X24_Y22_N24
\spi0|spi_fir|Add6~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~42_combout\ = (\spi0|spi_fir|Add4~34_combout\ & ((\spi0|spi_fir|Add7~42_combout\ & (\spi0|spi_fir|Add6~41\ & VCC)) # (!\spi0|spi_fir|Add7~42_combout\ & (!\spi0|spi_fir|Add6~41\)))) # (!\spi0|spi_fir|Add4~34_combout\ & 
-- ((\spi0|spi_fir|Add7~42_combout\ & (!\spi0|spi_fir|Add6~41\)) # (!\spi0|spi_fir|Add7~42_combout\ & ((\spi0|spi_fir|Add6~41\) # (GND)))))
-- \spi0|spi_fir|Add6~43\ = CARRY((\spi0|spi_fir|Add4~34_combout\ & (!\spi0|spi_fir|Add7~42_combout\ & !\spi0|spi_fir|Add6~41\)) # (!\spi0|spi_fir|Add4~34_combout\ & ((!\spi0|spi_fir|Add6~41\) # (!\spi0|spi_fir|Add7~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~34_combout\,
	datab => \spi0|spi_fir|Add7~42_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~41\,
	combout => \spi0|spi_fir|Add6~42_combout\,
	cout => \spi0|spi_fir|Add6~43\);

-- Location: LCCOMB_X24_Y22_N28
\spi0|spi_fir|Add6~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~46_combout\ = (\spi0|spi_fir|Add4~38_combout\ & ((\spi0|spi_fir|Add7~46_combout\ & (\spi0|spi_fir|Add6~45\ & VCC)) # (!\spi0|spi_fir|Add7~46_combout\ & (!\spi0|spi_fir|Add6~45\)))) # (!\spi0|spi_fir|Add4~38_combout\ & 
-- ((\spi0|spi_fir|Add7~46_combout\ & (!\spi0|spi_fir|Add6~45\)) # (!\spi0|spi_fir|Add7~46_combout\ & ((\spi0|spi_fir|Add6~45\) # (GND)))))
-- \spi0|spi_fir|Add6~47\ = CARRY((\spi0|spi_fir|Add4~38_combout\ & (!\spi0|spi_fir|Add7~46_combout\ & !\spi0|spi_fir|Add6~45\)) # (!\spi0|spi_fir|Add4~38_combout\ & ((!\spi0|spi_fir|Add6~45\) # (!\spi0|spi_fir|Add7~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~38_combout\,
	datab => \spi0|spi_fir|Add7~46_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~45\,
	combout => \spi0|spi_fir|Add6~46_combout\,
	cout => \spi0|spi_fir|Add6~47\);

-- Location: LCCOMB_X24_Y21_N0
\spi0|spi_fir|Add6~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~50_combout\ = (\spi0|spi_fir|Add4~42_combout\ & ((\spi0|spi_fir|Add7~50_combout\ & (\spi0|spi_fir|Add6~49\ & VCC)) # (!\spi0|spi_fir|Add7~50_combout\ & (!\spi0|spi_fir|Add6~49\)))) # (!\spi0|spi_fir|Add4~42_combout\ & 
-- ((\spi0|spi_fir|Add7~50_combout\ & (!\spi0|spi_fir|Add6~49\)) # (!\spi0|spi_fir|Add7~50_combout\ & ((\spi0|spi_fir|Add6~49\) # (GND)))))
-- \spi0|spi_fir|Add6~51\ = CARRY((\spi0|spi_fir|Add4~42_combout\ & (!\spi0|spi_fir|Add7~50_combout\ & !\spi0|spi_fir|Add6~49\)) # (!\spi0|spi_fir|Add4~42_combout\ & ((!\spi0|spi_fir|Add6~49\) # (!\spi0|spi_fir|Add7~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~42_combout\,
	datab => \spi0|spi_fir|Add7~50_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~49\,
	combout => \spi0|spi_fir|Add6~50_combout\,
	cout => \spi0|spi_fir|Add6~51\);

-- Location: LCCOMB_X24_Y21_N8
\spi0|spi_fir|Add6~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~58_combout\ = (\spi0|spi_fir|Add7~58_combout\ & ((\spi0|spi_fir|Add4~50_combout\ & (\spi0|spi_fir|Add6~57\ & VCC)) # (!\spi0|spi_fir|Add4~50_combout\ & (!\spi0|spi_fir|Add6~57\)))) # (!\spi0|spi_fir|Add7~58_combout\ & 
-- ((\spi0|spi_fir|Add4~50_combout\ & (!\spi0|spi_fir|Add6~57\)) # (!\spi0|spi_fir|Add4~50_combout\ & ((\spi0|spi_fir|Add6~57\) # (GND)))))
-- \spi0|spi_fir|Add6~59\ = CARRY((\spi0|spi_fir|Add7~58_combout\ & (!\spi0|spi_fir|Add4~50_combout\ & !\spi0|spi_fir|Add6~57\)) # (!\spi0|spi_fir|Add7~58_combout\ & ((!\spi0|spi_fir|Add6~57\) # (!\spi0|spi_fir|Add4~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~58_combout\,
	datab => \spi0|spi_fir|Add4~50_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~57\,
	combout => \spi0|spi_fir|Add6~58_combout\,
	cout => \spi0|spi_fir|Add6~59\);

-- Location: LCCOMB_X24_Y21_N10
\spi0|spi_fir|Add6~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~60_combout\ = ((\spi0|spi_fir|Add7~58_combout\ $ (\spi0|spi_fir|Add4~52_combout\ $ (!\spi0|spi_fir|Add6~59\)))) # (GND)
-- \spi0|spi_fir|Add6~61\ = CARRY((\spi0|spi_fir|Add7~58_combout\ & ((\spi0|spi_fir|Add4~52_combout\) # (!\spi0|spi_fir|Add6~59\))) # (!\spi0|spi_fir|Add7~58_combout\ & (\spi0|spi_fir|Add4~52_combout\ & !\spi0|spi_fir|Add6~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~58_combout\,
	datab => \spi0|spi_fir|Add4~52_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~59\,
	combout => \spi0|spi_fir|Add6~60_combout\,
	cout => \spi0|spi_fir|Add6~61\);

-- Location: LCCOMB_X24_Y21_N12
\spi0|spi_fir|Add6~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~62_combout\ = (\spi0|spi_fir|Add7~58_combout\ & ((\spi0|spi_fir|Add4~54_combout\ & (\spi0|spi_fir|Add6~61\ & VCC)) # (!\spi0|spi_fir|Add4~54_combout\ & (!\spi0|spi_fir|Add6~61\)))) # (!\spi0|spi_fir|Add7~58_combout\ & 
-- ((\spi0|spi_fir|Add4~54_combout\ & (!\spi0|spi_fir|Add6~61\)) # (!\spi0|spi_fir|Add4~54_combout\ & ((\spi0|spi_fir|Add6~61\) # (GND)))))
-- \spi0|spi_fir|Add6~63\ = CARRY((\spi0|spi_fir|Add7~58_combout\ & (!\spi0|spi_fir|Add4~54_combout\ & !\spi0|spi_fir|Add6~61\)) # (!\spi0|spi_fir|Add7~58_combout\ & ((!\spi0|spi_fir|Add6~61\) # (!\spi0|spi_fir|Add4~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~58_combout\,
	datab => \spi0|spi_fir|Add4~54_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~61\,
	combout => \spi0|spi_fir|Add6~62_combout\,
	cout => \spi0|spi_fir|Add6~63\);

-- Location: LCCOMB_X24_Y21_N14
\spi0|spi_fir|Add6~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~64_combout\ = ((\spi0|spi_fir|Add4~56_combout\ $ (\spi0|spi_fir|Add7~58_combout\ $ (!\spi0|spi_fir|Add6~63\)))) # (GND)
-- \spi0|spi_fir|Add6~65\ = CARRY((\spi0|spi_fir|Add4~56_combout\ & ((\spi0|spi_fir|Add7~58_combout\) # (!\spi0|spi_fir|Add6~63\))) # (!\spi0|spi_fir|Add4~56_combout\ & (\spi0|spi_fir|Add7~58_combout\ & !\spi0|spi_fir|Add6~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add4~56_combout\,
	datab => \spi0|spi_fir|Add7~58_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add6~63\,
	combout => \spi0|spi_fir|Add6~64_combout\,
	cout => \spi0|spi_fir|Add6~65\);

-- Location: DSPMULT_X34_Y22_N0
\spi0|spi_fir|Mult6|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult6|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X34_Y23_N0
\spi0|spi_fir|Mult7|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \CLOCK_50~inputclkctrl_outclk\,
	aclr => GND,
	ena => \spi0|spi|read_me~q\,
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAA_bus\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \spi0|spi_fir|Mult7|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X33_Y23_N20
\spi0|spi_fir|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~6_combout\ = (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\ & (\spi0|spi_fir|Add5~5\ & VCC)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\ & 
-- (!\spi0|spi_fir|Add5~5\)))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT3\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Add5~5\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\ & 
-- ((\spi0|spi_fir|Add5~5\) # (GND)))))
-- \spi0|spi_fir|Add5~7\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT3\ & (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\ & !\spi0|spi_fir|Add5~5\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT3\ & ((!\spi0|spi_fir|Add5~5\) 
-- # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT3\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~5\,
	combout => \spi0|spi_fir|Add5~6_combout\,
	cout => \spi0|spi_fir|Add5~7\);

-- Location: LCCOMB_X33_Y23_N30
\spi0|spi_fir|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~16_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT8\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT8\ $ (!\spi0|spi_fir|Add5~15\)))) # (GND)
-- \spi0|spi_fir|Add5~17\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT8\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT8\) # (!\spi0|spi_fir|Add5~15\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT8\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT8\ & !\spi0|spi_fir|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT8\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~15\,
	combout => \spi0|spi_fir|Add5~16_combout\,
	cout => \spi0|spi_fir|Add5~17\);

-- Location: LCCOMB_X33_Y22_N2
\spi0|spi_fir|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~20_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT10\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT10\ $ (!\spi0|spi_fir|Add5~19\)))) # (GND)
-- \spi0|spi_fir|Add5~21\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT10\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT10\) # (!\spi0|spi_fir|Add5~19\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT10\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT10\ & !\spi0|spi_fir|Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT10\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~19\,
	combout => \spi0|spi_fir|Add5~20_combout\,
	cout => \spi0|spi_fir|Add5~21\);

-- Location: LCCOMB_X33_Y22_N4
\spi0|spi_fir|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~22_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\ & (\spi0|spi_fir|Add5~21\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\ & 
-- (!\spi0|spi_fir|Add5~21\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT11\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Add5~21\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\ & 
-- ((\spi0|spi_fir|Add5~21\) # (GND)))))
-- \spi0|spi_fir|Add5~23\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT11\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\ & !\spi0|spi_fir|Add5~21\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT11\ & 
-- ((!\spi0|spi_fir|Add5~21\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT11\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~21\,
	combout => \spi0|spi_fir|Add5~22_combout\,
	cout => \spi0|spi_fir|Add5~23\);

-- Location: LCCOMB_X33_Y22_N6
\spi0|spi_fir|Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~24_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT12\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT12\ $ (!\spi0|spi_fir|Add5~23\)))) # (GND)
-- \spi0|spi_fir|Add5~25\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT12\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT12\) # (!\spi0|spi_fir|Add5~23\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT12\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT12\ & !\spi0|spi_fir|Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT12\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~23\,
	combout => \spi0|spi_fir|Add5~24_combout\,
	cout => \spi0|spi_fir|Add5~25\);

-- Location: LCCOMB_X33_Y22_N20
\spi0|spi_fir|Add5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~38_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\ & (\spi0|spi_fir|Add5~37\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\spi0|spi_fir|Add5~37\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT19\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Add5~37\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\spi0|spi_fir|Add5~37\) # (GND)))))
-- \spi0|spi_fir|Add5~39\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT19\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\ & !\spi0|spi_fir|Add5~37\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT19\ & 
-- ((!\spi0|spi_fir|Add5~37\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT19\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~37\,
	combout => \spi0|spi_fir|Add5~38_combout\,
	cout => \spi0|spi_fir|Add5~39\);

-- Location: LCCOMB_X33_Y22_N26
\spi0|spi_fir|Add5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~44_combout\ = ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT22\ $ (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT22\ $ (!\spi0|spi_fir|Add5~43\)))) # (GND)
-- \spi0|spi_fir|Add5~45\ = CARRY((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT22\ & ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT22\) # (!\spi0|spi_fir|Add5~43\))) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT22\ & 
-- (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT22\ & !\spi0|spi_fir|Add5~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT22\,
	datab => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~43\,
	combout => \spi0|spi_fir|Add5~44_combout\,
	cout => \spi0|spi_fir|Add5~45\);

-- Location: LCCOMB_X33_Y22_N30
\spi0|spi_fir|Add5~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~48_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT24\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT24\ $ (!\spi0|spi_fir|Add5~47\)))) # (GND)
-- \spi0|spi_fir|Add5~49\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT24\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT24\) # (!\spi0|spi_fir|Add5~47\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT24\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT24\ & !\spi0|spi_fir|Add5~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT24\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~47\,
	combout => \spi0|spi_fir|Add5~48_combout\,
	cout => \spi0|spi_fir|Add5~49\);

-- Location: LCCOMB_X33_Y21_N2
\spi0|spi_fir|Add5~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~52_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT26\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT26\ $ (!\spi0|spi_fir|Add5~51\)))) # (GND)
-- \spi0|spi_fir|Add5~53\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT26\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT26\) # (!\spi0|spi_fir|Add5~51\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT26\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT26\ & !\spi0|spi_fir|Add5~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT26\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~51\,
	combout => \spi0|spi_fir|Add5~52_combout\,
	cout => \spi0|spi_fir|Add5~53\);

-- Location: LCCOMB_X33_Y21_N4
\spi0|spi_fir|Add5~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~54_combout\ = (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\ & (\spi0|spi_fir|Add5~53\ & VCC)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\ & 
-- (!\spi0|spi_fir|Add5~53\)))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT27\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\ & (!\spi0|spi_fir|Add5~53\)) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\ & 
-- ((\spi0|spi_fir|Add5~53\) # (GND)))))
-- \spi0|spi_fir|Add5~55\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT27\ & (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\ & !\spi0|spi_fir|Add5~53\)) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT27\ & 
-- ((!\spi0|spi_fir|Add5~53\) # (!\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT27\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~53\,
	combout => \spi0|spi_fir|Add5~54_combout\,
	cout => \spi0|spi_fir|Add5~55\);

-- Location: LCCOMB_X33_Y21_N6
\spi0|spi_fir|Add5~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~56_combout\ = ((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT28\ $ (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT28\ $ (!\spi0|spi_fir|Add5~55\)))) # (GND)
-- \spi0|spi_fir|Add5~57\ = CARRY((\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT28\ & ((\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT28\) # (!\spi0|spi_fir|Add5~55\))) # (!\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT28\ & 
-- (\spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT28\ & !\spi0|spi_fir|Add5~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT28\,
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \spi0|spi_fir|Add5~55\,
	combout => \spi0|spi_fir|Add5~56_combout\,
	cout => \spi0|spi_fir|Add5~57\);

-- Location: LCCOMB_X23_Y23_N14
\spi0|spi_fir|Add9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~1_cout\ = CARRY((\spi0|spi_fir|Add5~0_combout\ & \spi0|spi_fir|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~0_combout\,
	datab => \spi0|spi_fir|Add6~0_combout\,
	datad => VCC,
	cout => \spi0|spi_fir|Add9~1_cout\);

-- Location: LCCOMB_X23_Y23_N16
\spi0|spi_fir|Add9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~3_cout\ = CARRY((\spi0|spi_fir|Add5~2_combout\ & (!\spi0|spi_fir|Add6~2_combout\ & !\spi0|spi_fir|Add9~1_cout\)) # (!\spi0|spi_fir|Add5~2_combout\ & ((!\spi0|spi_fir|Add9~1_cout\) # (!\spi0|spi_fir|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~2_combout\,
	datab => \spi0|spi_fir|Add6~2_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~1_cout\,
	cout => \spi0|spi_fir|Add9~3_cout\);

-- Location: LCCOMB_X23_Y23_N18
\spi0|spi_fir|Add9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~5_cout\ = CARRY((\spi0|spi_fir|Add5~4_combout\ & ((\spi0|spi_fir|Add6~4_combout\) # (!\spi0|spi_fir|Add9~3_cout\))) # (!\spi0|spi_fir|Add5~4_combout\ & (\spi0|spi_fir|Add6~4_combout\ & !\spi0|spi_fir|Add9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~4_combout\,
	datab => \spi0|spi_fir|Add6~4_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~3_cout\,
	cout => \spi0|spi_fir|Add9~5_cout\);

-- Location: LCCOMB_X23_Y23_N20
\spi0|spi_fir|Add9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~7_cout\ = CARRY((\spi0|spi_fir|Add6~6_combout\ & (!\spi0|spi_fir|Add5~6_combout\ & !\spi0|spi_fir|Add9~5_cout\)) # (!\spi0|spi_fir|Add6~6_combout\ & ((!\spi0|spi_fir|Add9~5_cout\) # (!\spi0|spi_fir|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~6_combout\,
	datab => \spi0|spi_fir|Add5~6_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~5_cout\,
	cout => \spi0|spi_fir|Add9~7_cout\);

-- Location: LCCOMB_X23_Y23_N22
\spi0|spi_fir|Add9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~9_cout\ = CARRY((\spi0|spi_fir|Add5~8_combout\ & ((\spi0|spi_fir|Add6~8_combout\) # (!\spi0|spi_fir|Add9~7_cout\))) # (!\spi0|spi_fir|Add5~8_combout\ & (\spi0|spi_fir|Add6~8_combout\ & !\spi0|spi_fir|Add9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~8_combout\,
	datab => \spi0|spi_fir|Add6~8_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~7_cout\,
	cout => \spi0|spi_fir|Add9~9_cout\);

-- Location: LCCOMB_X23_Y23_N24
\spi0|spi_fir|Add9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~11_cout\ = CARRY((\spi0|spi_fir|Add5~10_combout\ & (!\spi0|spi_fir|Add6~10_combout\ & !\spi0|spi_fir|Add9~9_cout\)) # (!\spi0|spi_fir|Add5~10_combout\ & ((!\spi0|spi_fir|Add9~9_cout\) # (!\spi0|spi_fir|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~10_combout\,
	datab => \spi0|spi_fir|Add6~10_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~9_cout\,
	cout => \spi0|spi_fir|Add9~11_cout\);

-- Location: LCCOMB_X23_Y23_N26
\spi0|spi_fir|Add9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~13_cout\ = CARRY((\spi0|spi_fir|Add5~12_combout\ & ((\spi0|spi_fir|Add6~12_combout\) # (!\spi0|spi_fir|Add9~11_cout\))) # (!\spi0|spi_fir|Add5~12_combout\ & (\spi0|spi_fir|Add6~12_combout\ & !\spi0|spi_fir|Add9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~12_combout\,
	datab => \spi0|spi_fir|Add6~12_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~11_cout\,
	cout => \spi0|spi_fir|Add9~13_cout\);

-- Location: LCCOMB_X23_Y23_N28
\spi0|spi_fir|Add9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~15_cout\ = CARRY((\spi0|spi_fir|Add5~14_combout\ & (!\spi0|spi_fir|Add6~14_combout\ & !\spi0|spi_fir|Add9~13_cout\)) # (!\spi0|spi_fir|Add5~14_combout\ & ((!\spi0|spi_fir|Add9~13_cout\) # (!\spi0|spi_fir|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~14_combout\,
	datab => \spi0|spi_fir|Add6~14_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~13_cout\,
	cout => \spi0|spi_fir|Add9~15_cout\);

-- Location: LCCOMB_X23_Y23_N30
\spi0|spi_fir|Add9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~17_cout\ = CARRY((\spi0|spi_fir|Add6~16_combout\ & ((\spi0|spi_fir|Add5~16_combout\) # (!\spi0|spi_fir|Add9~15_cout\))) # (!\spi0|spi_fir|Add6~16_combout\ & (\spi0|spi_fir|Add5~16_combout\ & !\spi0|spi_fir|Add9~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~16_combout\,
	datab => \spi0|spi_fir|Add5~16_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~15_cout\,
	cout => \spi0|spi_fir|Add9~17_cout\);

-- Location: LCCOMB_X23_Y22_N0
\spi0|spi_fir|Add9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~19_cout\ = CARRY((\spi0|spi_fir|Add5~18_combout\ & (!\spi0|spi_fir|Add6~18_combout\ & !\spi0|spi_fir|Add9~17_cout\)) # (!\spi0|spi_fir|Add5~18_combout\ & ((!\spi0|spi_fir|Add9~17_cout\) # (!\spi0|spi_fir|Add6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~18_combout\,
	datab => \spi0|spi_fir|Add6~18_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~17_cout\,
	cout => \spi0|spi_fir|Add9~19_cout\);

-- Location: LCCOMB_X23_Y22_N2
\spi0|spi_fir|Add9~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~21_cout\ = CARRY((\spi0|spi_fir|Add6~20_combout\ & ((\spi0|spi_fir|Add5~20_combout\) # (!\spi0|spi_fir|Add9~19_cout\))) # (!\spi0|spi_fir|Add6~20_combout\ & (\spi0|spi_fir|Add5~20_combout\ & !\spi0|spi_fir|Add9~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~20_combout\,
	datab => \spi0|spi_fir|Add5~20_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~19_cout\,
	cout => \spi0|spi_fir|Add9~21_cout\);

-- Location: LCCOMB_X23_Y22_N4
\spi0|spi_fir|Add9~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~23_cout\ = CARRY((\spi0|spi_fir|Add6~22_combout\ & (!\spi0|spi_fir|Add5~22_combout\ & !\spi0|spi_fir|Add9~21_cout\)) # (!\spi0|spi_fir|Add6~22_combout\ & ((!\spi0|spi_fir|Add9~21_cout\) # (!\spi0|spi_fir|Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~22_combout\,
	datab => \spi0|spi_fir|Add5~22_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~21_cout\,
	cout => \spi0|spi_fir|Add9~23_cout\);

-- Location: LCCOMB_X23_Y22_N6
\spi0|spi_fir|Add9~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~25_cout\ = CARRY((\spi0|spi_fir|Add6~24_combout\ & ((\spi0|spi_fir|Add5~24_combout\) # (!\spi0|spi_fir|Add9~23_cout\))) # (!\spi0|spi_fir|Add6~24_combout\ & (\spi0|spi_fir|Add5~24_combout\ & !\spi0|spi_fir|Add9~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add6~24_combout\,
	datab => \spi0|spi_fir|Add5~24_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~23_cout\,
	cout => \spi0|spi_fir|Add9~25_cout\);

-- Location: LCCOMB_X23_Y22_N8
\spi0|spi_fir|Add9~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~27_cout\ = CARRY((\spi0|spi_fir|Add5~26_combout\ & (!\spi0|spi_fir|Add6~26_combout\ & !\spi0|spi_fir|Add9~25_cout\)) # (!\spi0|spi_fir|Add5~26_combout\ & ((!\spi0|spi_fir|Add9~25_cout\) # (!\spi0|spi_fir|Add6~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~26_combout\,
	datab => \spi0|spi_fir|Add6~26_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~25_cout\,
	cout => \spi0|spi_fir|Add9~27_cout\);

-- Location: LCCOMB_X23_Y22_N10
\spi0|spi_fir|Add9~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~29_cout\ = CARRY((\spi0|spi_fir|Add5~28_combout\ & ((\spi0|spi_fir|Add6~28_combout\) # (!\spi0|spi_fir|Add9~27_cout\))) # (!\spi0|spi_fir|Add5~28_combout\ & (\spi0|spi_fir|Add6~28_combout\ & !\spi0|spi_fir|Add9~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~28_combout\,
	datab => \spi0|spi_fir|Add6~28_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~27_cout\,
	cout => \spi0|spi_fir|Add9~29_cout\);

-- Location: LCCOMB_X23_Y22_N12
\spi0|spi_fir|Add9~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~31_cout\ = CARRY((\spi0|spi_fir|Add5~30_combout\ & (!\spi0|spi_fir|Add6~30_combout\ & !\spi0|spi_fir|Add9~29_cout\)) # (!\spi0|spi_fir|Add5~30_combout\ & ((!\spi0|spi_fir|Add9~29_cout\) # (!\spi0|spi_fir|Add6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~30_combout\,
	datab => \spi0|spi_fir|Add6~30_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~29_cout\,
	cout => \spi0|spi_fir|Add9~31_cout\);

-- Location: LCCOMB_X23_Y22_N14
\spi0|spi_fir|Add9~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~33_cout\ = CARRY((\spi0|spi_fir|Add5~32_combout\ & ((\spi0|spi_fir|Add6~32_combout\) # (!\spi0|spi_fir|Add9~31_cout\))) # (!\spi0|spi_fir|Add5~32_combout\ & (\spi0|spi_fir|Add6~32_combout\ & !\spi0|spi_fir|Add9~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~32_combout\,
	datab => \spi0|spi_fir|Add6~32_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~31_cout\,
	cout => \spi0|spi_fir|Add9~33_cout\);

-- Location: LCCOMB_X23_Y22_N16
\spi0|spi_fir|Add9~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~35_cout\ = CARRY((\spi0|spi_fir|Add5~34_combout\ & (!\spi0|spi_fir|Add6~34_combout\ & !\spi0|spi_fir|Add9~33_cout\)) # (!\spi0|spi_fir|Add5~34_combout\ & ((!\spi0|spi_fir|Add9~33_cout\) # (!\spi0|spi_fir|Add6~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~34_combout\,
	datab => \spi0|spi_fir|Add6~34_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~33_cout\,
	cout => \spi0|spi_fir|Add9~35_cout\);

-- Location: LCCOMB_X23_Y21_N10
\spi0|spi_fir|Add9~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~60_combout\ = ((\spi0|spi_fir|Add5~60_combout\ $ (\spi0|spi_fir|Add6~60_combout\ $ (!\spi0|spi_fir|Add9~59\)))) # (GND)
-- \spi0|spi_fir|Add9~61\ = CARRY((\spi0|spi_fir|Add5~60_combout\ & ((\spi0|spi_fir|Add6~60_combout\) # (!\spi0|spi_fir|Add9~59\))) # (!\spi0|spi_fir|Add5~60_combout\ & (\spi0|spi_fir|Add6~60_combout\ & !\spi0|spi_fir|Add9~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~60_combout\,
	datab => \spi0|spi_fir|Add6~60_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~59\,
	combout => \spi0|spi_fir|Add9~60_combout\,
	cout => \spi0|spi_fir|Add9~61\);

-- Location: LCCOMB_X23_Y21_N12
\spi0|spi_fir|Add9~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~62_combout\ = (\spi0|spi_fir|Add5~62_combout\ & ((\spi0|spi_fir|Add6~62_combout\ & (\spi0|spi_fir|Add9~61\ & VCC)) # (!\spi0|spi_fir|Add6~62_combout\ & (!\spi0|spi_fir|Add9~61\)))) # (!\spi0|spi_fir|Add5~62_combout\ & 
-- ((\spi0|spi_fir|Add6~62_combout\ & (!\spi0|spi_fir|Add9~61\)) # (!\spi0|spi_fir|Add6~62_combout\ & ((\spi0|spi_fir|Add9~61\) # (GND)))))
-- \spi0|spi_fir|Add9~63\ = CARRY((\spi0|spi_fir|Add5~62_combout\ & (!\spi0|spi_fir|Add6~62_combout\ & !\spi0|spi_fir|Add9~61\)) # (!\spi0|spi_fir|Add5~62_combout\ & ((!\spi0|spi_fir|Add9~61\) # (!\spi0|spi_fir|Add6~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~62_combout\,
	datab => \spi0|spi_fir|Add6~62_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~61\,
	combout => \spi0|spi_fir|Add9~62_combout\,
	cout => \spi0|spi_fir|Add9~63\);

-- Location: LCCOMB_X23_Y21_N14
\spi0|spi_fir|Add9~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~64_combout\ = ((\spi0|spi_fir|Add5~64_combout\ $ (\spi0|spi_fir|Add6~64_combout\ $ (!\spi0|spi_fir|Add9~63\)))) # (GND)
-- \spi0|spi_fir|Add9~65\ = CARRY((\spi0|spi_fir|Add5~64_combout\ & ((\spi0|spi_fir|Add6~64_combout\) # (!\spi0|spi_fir|Add9~63\))) # (!\spi0|spi_fir|Add5~64_combout\ & (\spi0|spi_fir|Add6~64_combout\ & !\spi0|spi_fir|Add9~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add5~64_combout\,
	datab => \spi0|spi_fir|Add6~64_combout\,
	datad => VCC,
	cin => \spi0|spi_fir|Add9~63\,
	combout => \spi0|spi_fir|Add9~64_combout\,
	cout => \spi0|spi_fir|Add9~65\);

-- Location: LCCOMB_X22_Y22_N20
\spi0|spi|wrcnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~2_combout\ = (!\spi0|spi|wrcnt\(0) & !\spi0|reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|wrcnt\(0),
	datad => \spi0|reset~q\,
	combout => \spi0|spi|wrcnt~2_combout\);

-- Location: LCCOMB_X22_Y22_N4
\spi0|spi|spi_value[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[14]~1_combout\ = (\spi0|reset~q\) # ((\spi0|spi|sck_synchronizer\(1) & !\spi0|spi|sck_synchronizer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|sck_synchronizer\(1),
	datac => \spi0|spi|sck_synchronizer\(2),
	datad => \spi0|reset~q\,
	combout => \spi0|spi|spi_value[14]~1_combout\);

-- Location: FF_X22_Y22_N21
\spi0|spi|wrcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|wrcnt~2_combout\,
	ena => \spi0|spi|spi_value[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(0));

-- Location: LCCOMB_X22_Y22_N26
\spi0|spi|wrcnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~3_combout\ = (!\spi0|reset~q\ & (!\spi0|spi|Equal1~0_combout\ & (\spi0|spi|wrcnt\(1) $ (\spi0|spi|wrcnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datab => \spi0|spi|Equal1~0_combout\,
	datac => \spi0|spi|wrcnt\(1),
	datad => \spi0|spi|wrcnt\(0),
	combout => \spi0|spi|wrcnt~3_combout\);

-- Location: FF_X22_Y22_N27
\spi0|spi|wrcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|wrcnt~3_combout\,
	ena => \spi0|spi|spi_value[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(1));

-- Location: LCCOMB_X22_Y22_N18
\spi0|spi|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|Add0~0_combout\ = (\spi0|spi|wrcnt\(1) & \spi0|spi|wrcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|wrcnt\(1),
	datad => \spi0|spi|wrcnt\(0),
	combout => \spi0|spi|Add0~0_combout\);

-- Location: LCCOMB_X22_Y22_N28
\spi0|spi|wrcnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~0_combout\ = (!\spi0|reset~q\ & (\spi0|spi|wrcnt\(3) $ (((\spi0|spi|wrcnt\(2) & \spi0|spi|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|wrcnt\(2),
	datab => \spi0|reset~q\,
	datac => \spi0|spi|wrcnt\(3),
	datad => \spi0|spi|Add0~0_combout\,
	combout => \spi0|spi|wrcnt~0_combout\);

-- Location: FF_X22_Y22_N29
\spi0|spi|wrcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|wrcnt~0_combout\,
	ena => \spi0|spi|spi_value[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(3));

-- Location: LCCOMB_X22_Y22_N8
\spi0|spi|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|Equal1~0_combout\ = (\spi0|spi|wrcnt\(2) & (\spi0|spi|wrcnt\(3) & (\spi0|spi|wrcnt\(1) & \spi0|spi|wrcnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|wrcnt\(2),
	datab => \spi0|spi|wrcnt\(3),
	datac => \spi0|spi|wrcnt\(1),
	datad => \spi0|spi|wrcnt\(0),
	combout => \spi0|spi|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y22_N12
\spi0|spi|feed_me~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|feed_me~0_combout\ = (\spi0|spi|feed_me~q\) # ((\spi0|spi|sck_synchronizer\(1) & (!\spi0|spi|sck_synchronizer\(2) & \spi0|spi|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|sck_synchronizer\(1),
	datab => \spi0|spi|sck_synchronizer\(2),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi|Equal1~0_combout\,
	combout => \spi0|spi|feed_me~0_combout\);

-- Location: FF_X26_Y22_N13
\spi0|spi|feed_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|feed_me~0_combout\,
	asdata => \~GND~combout\,
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|feed_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|feed_me~q\);

-- Location: LCCOMB_X23_Y21_N20
\spi0|spi_fir|Add9~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~71_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~60_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|spi_value\(11),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~60_combout\,
	combout => \spi0|spi_fir|Add9~71_combout\);

-- Location: LCCOMB_X24_Y21_N22
\spi0|spi|spi_value[14]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[14]~0_combout\ = (\spi0|spi|feed_me~q\) # ((\spi0|reset~q\) # ((!\spi0|spi|sck_synchronizer\(2) & \spi0|spi|sck_synchronizer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datab => \spi0|spi|sck_synchronizer\(2),
	datac => \spi0|reset~q\,
	datad => \spi0|spi|sck_synchronizer\(1),
	combout => \spi0|spi|spi_value[14]~0_combout\);

-- Location: FF_X23_Y21_N21
\spi0|spi|spi_value[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~71_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(12));

-- Location: LCCOMB_X23_Y21_N18
\spi0|spi_fir|Add9~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~70_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~62_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|spi_value\(12),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~62_combout\,
	combout => \spi0|spi_fir|Add9~70_combout\);

-- Location: FF_X23_Y21_N19
\spi0|spi|spi_value[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~70_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(13));

-- Location: LCCOMB_X23_Y21_N28
\spi0|spi_fir|Add9~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~69_combout\ = (\spi0|spi|feed_me~q\ & (\spi0|spi_fir|Add9~64_combout\)) # (!\spi0|spi|feed_me~q\ & ((\spi0|spi|spi_value\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|feed_me~q\,
	datac => \spi0|spi_fir|Add9~64_combout\,
	datad => \spi0|spi|spi_value\(13),
	combout => \spi0|spi_fir|Add9~69_combout\);

-- Location: FF_X23_Y21_N29
\spi0|spi|spi_value[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~69_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(14));

-- Location: LCCOMB_X33_Y21_N16
\spi0|spi_fir|Add5~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add5~66_combout\ = \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\ $ (\spi0|spi_fir|Add5~65\ $ (\spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi_fir|Mult6|auto_generated|mac_out2~DATAOUT31\,
	datad => \spi0|spi_fir|Mult7|auto_generated|mac_out2~DATAOUT30\,
	cin => \spi0|spi_fir|Add5~65\,
	combout => \spi0|spi_fir|Add5~66_combout\);

-- Location: LCCOMB_X23_Y19_N28
\spi0|spi_fir|Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add4~58_combout\ = \spi0|spi_fir|Add3~64_combout\ $ (\spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\ $ (\spi0|spi_fir|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add3~64_combout\,
	datab => \spi0|spi_fir|Mult5|auto_generated|mac_out2~DATAOUT31\,
	cin => \spi0|spi_fir|Add4~57\,
	combout => \spi0|spi_fir|Add4~58_combout\);

-- Location: LCCOMB_X24_Y21_N16
\spi0|spi_fir|Add6~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add6~66_combout\ = \spi0|spi_fir|Add7~58_combout\ $ (\spi0|spi_fir|Add6~65\ $ (\spi0|spi_fir|Add4~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi_fir|Add7~58_combout\,
	datad => \spi0|spi_fir|Add4~58_combout\,
	cin => \spi0|spi_fir|Add6~65\,
	combout => \spi0|spi_fir|Add6~66_combout\);

-- Location: LCCOMB_X23_Y21_N16
\spi0|spi_fir|Add9~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~66_combout\ = \spi0|spi_fir|Add5~66_combout\ $ (\spi0|spi_fir|Add9~65\ $ (\spi0|spi_fir|Add6~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi_fir|Add5~66_combout\,
	datad => \spi0|spi_fir|Add6~66_combout\,
	cin => \spi0|spi_fir|Add9~65\,
	combout => \spi0|spi_fir|Add9~66_combout\);

-- Location: LCCOMB_X23_Y21_N26
\spi0|spi_fir|Add9~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi_fir|Add9~68_combout\ = (\spi0|spi|feed_me~q\ & ((\spi0|spi_fir|Add9~66_combout\))) # (!\spi0|spi|feed_me~q\ & (\spi0|spi|spi_value\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|spi_value\(14),
	datac => \spi0|spi|feed_me~q\,
	datad => \spi0|spi_fir|Add9~66_combout\,
	combout => \spi0|spi_fir|Add9~68_combout\);

-- Location: FF_X23_Y21_N27
\spi0|spi|spi_value[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi_fir|Add9~68_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_value[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(15));

-- Location: LCCOMB_X27_Y21_N4
\spi0|spi|MISO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|spi|MISO~0_combout\ = (\spi0|spi|sck_synchronizer\(1) & ((\spi0|spi|sck_synchronizer\(2) & (\spi0|spi|MISO~q\)) # (!\spi0|spi|sck_synchronizer\(2) & ((\spi0|spi|spi_value\(15)))))) # (!\spi0|spi|sck_synchronizer\(1) & (((\spi0|spi|MISO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|sck_synchronizer\(1),
	datab => \spi0|spi|sck_synchronizer\(2),
	datac => \spi0|spi|MISO~q\,
	datad => \spi0|spi|spi_value\(15),
	combout => \spi0|spi|MISO~0_combout\);

-- Location: FF_X27_Y21_N5
\spi0|spi|MISO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|spi|MISO~0_combout\,
	sclr => \spi0|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO~q\);

-- Location: LCCOMB_X1_Y21_N8
\spi0|blink_hb|counter_output[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[1]~24_combout\ = (\spi0|blink_hb|counter_output\(0) & (\spi0|blink_hb|counter_output\(1) $ (VCC))) # (!\spi0|blink_hb|counter_output\(0) & (\spi0|blink_hb|counter_output\(1) & VCC))
-- \spi0|blink_hb|counter_output[1]~25\ = CARRY((\spi0|blink_hb|counter_output\(0) & \spi0|blink_hb|counter_output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(0),
	datab => \spi0|blink_hb|counter_output\(1),
	datad => VCC,
	combout => \spi0|blink_hb|counter_output[1]~24_combout\,
	cout => \spi0|blink_hb|counter_output[1]~25\);

-- Location: FF_X1_Y21_N9
\spi0|blink_hb|counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(1));

-- Location: LCCOMB_X1_Y21_N14
\spi0|blink_hb|counter_output[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[4]~30_combout\ = (\spi0|blink_hb|counter_output\(4) & (!\spi0|blink_hb|counter_output[3]~29\)) # (!\spi0|blink_hb|counter_output\(4) & ((\spi0|blink_hb|counter_output[3]~29\) # (GND)))
-- \spi0|blink_hb|counter_output[4]~31\ = CARRY((!\spi0|blink_hb|counter_output[3]~29\) # (!\spi0|blink_hb|counter_output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(4),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[3]~29\,
	combout => \spi0|blink_hb|counter_output[4]~30_combout\,
	cout => \spi0|blink_hb|counter_output[4]~31\);

-- Location: FF_X1_Y21_N15
\spi0|blink_hb|counter_output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(4));

-- Location: LCCOMB_X1_Y21_N16
\spi0|blink_hb|counter_output[5]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[5]~32_combout\ = (\spi0|blink_hb|counter_output\(5) & (\spi0|blink_hb|counter_output[4]~31\ $ (GND))) # (!\spi0|blink_hb|counter_output\(5) & (!\spi0|blink_hb|counter_output[4]~31\ & VCC))
-- \spi0|blink_hb|counter_output[5]~33\ = CARRY((\spi0|blink_hb|counter_output\(5) & !\spi0|blink_hb|counter_output[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(5),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[4]~31\,
	combout => \spi0|blink_hb|counter_output[5]~32_combout\,
	cout => \spi0|blink_hb|counter_output[5]~33\);

-- Location: FF_X1_Y21_N17
\spi0|blink_hb|counter_output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(5));

-- Location: LCCOMB_X1_Y21_N18
\spi0|blink_hb|counter_output[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[6]~34_combout\ = (\spi0|blink_hb|counter_output\(6) & (!\spi0|blink_hb|counter_output[5]~33\)) # (!\spi0|blink_hb|counter_output\(6) & ((\spi0|blink_hb|counter_output[5]~33\) # (GND)))
-- \spi0|blink_hb|counter_output[6]~35\ = CARRY((!\spi0|blink_hb|counter_output[5]~33\) # (!\spi0|blink_hb|counter_output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(6),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[5]~33\,
	combout => \spi0|blink_hb|counter_output[6]~34_combout\,
	cout => \spi0|blink_hb|counter_output[6]~35\);

-- Location: FF_X1_Y21_N19
\spi0|blink_hb|counter_output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(6));

-- Location: LCCOMB_X1_Y21_N20
\spi0|blink_hb|counter_output[7]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[7]~36_combout\ = (\spi0|blink_hb|counter_output\(7) & (\spi0|blink_hb|counter_output[6]~35\ $ (GND))) # (!\spi0|blink_hb|counter_output\(7) & (!\spi0|blink_hb|counter_output[6]~35\ & VCC))
-- \spi0|blink_hb|counter_output[7]~37\ = CARRY((\spi0|blink_hb|counter_output\(7) & !\spi0|blink_hb|counter_output[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(7),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[6]~35\,
	combout => \spi0|blink_hb|counter_output[7]~36_combout\,
	cout => \spi0|blink_hb|counter_output[7]~37\);

-- Location: FF_X1_Y21_N21
\spi0|blink_hb|counter_output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(7));

-- Location: LCCOMB_X1_Y21_N24
\spi0|blink_hb|counter_output[9]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[9]~40_combout\ = (\spi0|blink_hb|counter_output\(9) & (\spi0|blink_hb|counter_output[8]~39\ $ (GND))) # (!\spi0|blink_hb|counter_output\(9) & (!\spi0|blink_hb|counter_output[8]~39\ & VCC))
-- \spi0|blink_hb|counter_output[9]~41\ = CARRY((\spi0|blink_hb|counter_output\(9) & !\spi0|blink_hb|counter_output[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(9),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[8]~39\,
	combout => \spi0|blink_hb|counter_output[9]~40_combout\,
	cout => \spi0|blink_hb|counter_output[9]~41\);

-- Location: FF_X1_Y21_N25
\spi0|blink_hb|counter_output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(9));

-- Location: LCCOMB_X1_Y21_N28
\spi0|blink_hb|counter_output[11]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[11]~44_combout\ = (\spi0|blink_hb|counter_output\(11) & (\spi0|blink_hb|counter_output[10]~43\ $ (GND))) # (!\spi0|blink_hb|counter_output\(11) & (!\spi0|blink_hb|counter_output[10]~43\ & VCC))
-- \spi0|blink_hb|counter_output[11]~45\ = CARRY((\spi0|blink_hb|counter_output\(11) & !\spi0|blink_hb|counter_output[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(11),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[10]~43\,
	combout => \spi0|blink_hb|counter_output[11]~44_combout\,
	cout => \spi0|blink_hb|counter_output[11]~45\);

-- Location: FF_X1_Y21_N29
\spi0|blink_hb|counter_output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(11));

-- Location: LCCOMB_X1_Y20_N0
\spi0|blink_hb|counter_output[13]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[13]~48_combout\ = (\spi0|blink_hb|counter_output\(13) & (\spi0|blink_hb|counter_output[12]~47\ $ (GND))) # (!\spi0|blink_hb|counter_output\(13) & (!\spi0|blink_hb|counter_output[12]~47\ & VCC))
-- \spi0|blink_hb|counter_output[13]~49\ = CARRY((\spi0|blink_hb|counter_output\(13) & !\spi0|blink_hb|counter_output[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(13),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[12]~47\,
	combout => \spi0|blink_hb|counter_output[13]~48_combout\,
	cout => \spi0|blink_hb|counter_output[13]~49\);

-- Location: FF_X1_Y20_N1
\spi0|blink_hb|counter_output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(13));

-- Location: LCCOMB_X1_Y20_N2
\spi0|blink_hb|counter_output[14]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[14]~50_combout\ = (\spi0|blink_hb|counter_output\(14) & (!\spi0|blink_hb|counter_output[13]~49\)) # (!\spi0|blink_hb|counter_output\(14) & ((\spi0|blink_hb|counter_output[13]~49\) # (GND)))
-- \spi0|blink_hb|counter_output[14]~51\ = CARRY((!\spi0|blink_hb|counter_output[13]~49\) # (!\spi0|blink_hb|counter_output\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(14),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[13]~49\,
	combout => \spi0|blink_hb|counter_output[14]~50_combout\,
	cout => \spi0|blink_hb|counter_output[14]~51\);

-- Location: FF_X1_Y20_N3
\spi0|blink_hb|counter_output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(14));

-- Location: LCCOMB_X1_Y20_N4
\spi0|blink_hb|counter_output[15]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[15]~52_combout\ = (\spi0|blink_hb|counter_output\(15) & (\spi0|blink_hb|counter_output[14]~51\ $ (GND))) # (!\spi0|blink_hb|counter_output\(15) & (!\spi0|blink_hb|counter_output[14]~51\ & VCC))
-- \spi0|blink_hb|counter_output[15]~53\ = CARRY((\spi0|blink_hb|counter_output\(15) & !\spi0|blink_hb|counter_output[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(15),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[14]~51\,
	combout => \spi0|blink_hb|counter_output[15]~52_combout\,
	cout => \spi0|blink_hb|counter_output[15]~53\);

-- Location: FF_X1_Y20_N5
\spi0|blink_hb|counter_output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(15));

-- Location: LCCOMB_X1_Y20_N8
\spi0|blink_hb|counter_output[17]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[17]~56_combout\ = (\spi0|blink_hb|counter_output\(17) & (\spi0|blink_hb|counter_output[16]~55\ $ (GND))) # (!\spi0|blink_hb|counter_output\(17) & (!\spi0|blink_hb|counter_output[16]~55\ & VCC))
-- \spi0|blink_hb|counter_output[17]~57\ = CARRY((\spi0|blink_hb|counter_output\(17) & !\spi0|blink_hb|counter_output[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(17),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[16]~55\,
	combout => \spi0|blink_hb|counter_output[17]~56_combout\,
	cout => \spi0|blink_hb|counter_output[17]~57\);

-- Location: FF_X1_Y20_N9
\spi0|blink_hb|counter_output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(17));

-- Location: LCCOMB_X1_Y20_N14
\spi0|blink_hb|counter_output[20]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[20]~62_combout\ = (\spi0|blink_hb|counter_output\(20) & (!\spi0|blink_hb|counter_output[19]~61\)) # (!\spi0|blink_hb|counter_output\(20) & ((\spi0|blink_hb|counter_output[19]~61\) # (GND)))
-- \spi0|blink_hb|counter_output[20]~63\ = CARRY((!\spi0|blink_hb|counter_output[19]~61\) # (!\spi0|blink_hb|counter_output\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(20),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[19]~61\,
	combout => \spi0|blink_hb|counter_output[20]~62_combout\,
	cout => \spi0|blink_hb|counter_output[20]~63\);

-- Location: FF_X1_Y20_N15
\spi0|blink_hb|counter_output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(20));

-- Location: LCCOMB_X1_Y20_N16
\spi0|blink_hb|counter_output[21]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[21]~64_combout\ = (\spi0|blink_hb|counter_output\(21) & (\spi0|blink_hb|counter_output[20]~63\ $ (GND))) # (!\spi0|blink_hb|counter_output\(21) & (!\spi0|blink_hb|counter_output[20]~63\ & VCC))
-- \spi0|blink_hb|counter_output[21]~65\ = CARRY((\spi0|blink_hb|counter_output\(21) & !\spi0|blink_hb|counter_output[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(21),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[20]~63\,
	combout => \spi0|blink_hb|counter_output[21]~64_combout\,
	cout => \spi0|blink_hb|counter_output[21]~65\);

-- Location: FF_X1_Y20_N17
\spi0|blink_hb|counter_output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(21));

-- Location: LCCOMB_X1_Y20_N18
\spi0|blink_hb|counter_output[22]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[22]~66_combout\ = (\spi0|blink_hb|counter_output\(22) & (!\spi0|blink_hb|counter_output[21]~65\)) # (!\spi0|blink_hb|counter_output\(22) & ((\spi0|blink_hb|counter_output[21]~65\) # (GND)))
-- \spi0|blink_hb|counter_output[22]~67\ = CARRY((!\spi0|blink_hb|counter_output[21]~65\) # (!\spi0|blink_hb|counter_output\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(22),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[21]~65\,
	combout => \spi0|blink_hb|counter_output[22]~66_combout\,
	cout => \spi0|blink_hb|counter_output[22]~67\);

-- Location: FF_X1_Y20_N19
\spi0|blink_hb|counter_output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(22));

-- Location: LCCOMB_X1_Y20_N20
\spi0|blink_hb|counter_output[23]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[23]~68_combout\ = (\spi0|blink_hb|counter_output\(23) & (\spi0|blink_hb|counter_output[22]~67\ $ (GND))) # (!\spi0|blink_hb|counter_output\(23) & (!\spi0|blink_hb|counter_output[22]~67\ & VCC))
-- \spi0|blink_hb|counter_output[23]~69\ = CARRY((\spi0|blink_hb|counter_output\(23) & !\spi0|blink_hb|counter_output[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|counter_output\(23),
	datad => VCC,
	cin => \spi0|blink_hb|counter_output[22]~67\,
	combout => \spi0|blink_hb|counter_output[23]~68_combout\,
	cout => \spi0|blink_hb|counter_output[23]~69\);

-- Location: FF_X1_Y20_N21
\spi0|blink_hb|counter_output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(23));

-- Location: LCCOMB_X1_Y20_N22
\spi0|blink_hb|counter_output[24]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[24]~70_combout\ = \spi0|blink_hb|counter_output\(24) $ (\spi0|blink_hb|counter_output[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|counter_output\(24),
	cin => \spi0|blink_hb|counter_output[23]~69\,
	combout => \spi0|blink_hb|counter_output[24]~70_combout\);

-- Location: FF_X1_Y20_N23
\spi0|blink_hb|counter_output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|blink_hb|counter_output[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(24));

-- Location: LCCOMB_X21_Y22_N26
\spi0|LED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi0|LED~0_combout\ = (\spi0|reset~q\ & (((\spi0|pb0_synchronizer\(2))) # (!\spi0|pb0_synchronizer\(1)))) # (!\spi0|reset~q\ & (\spi0|LED\(1) & ((\spi0|pb0_synchronizer\(2)) # (!\spi0|pb0_synchronizer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|reset~q\,
	datab => \spi0|pb0_synchronizer\(1),
	datac => \spi0|LED\(1),
	datad => \spi0|pb0_synchronizer\(2),
	combout => \spi0|LED~0_combout\);

-- Location: FF_X21_Y22_N27
\spi0|LED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \spi0|LED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|LED\(1));

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\GPIO_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(0),
	o => \GPIO_1[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\GPIO_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(1),
	o => \GPIO_1[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\GPIO_1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(2),
	o => \GPIO_1[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\GPIO_1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(4),
	o => \GPIO_1[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\GPIO_1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(6),
	o => \GPIO_1[6]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\GPIO_1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(8),
	o => \GPIO_1[8]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\GPIO_1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(10),
	o => \GPIO_1[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\GPIO_1[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(12),
	o => \GPIO_1[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\GPIO_1[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(14),
	o => \GPIO_1[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\GPIO_1[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(15),
	o => \GPIO_1[15]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\GPIO_1[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(16),
	o => \GPIO_1[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\GPIO_1[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(17),
	o => \GPIO_1[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\GPIO_1[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(18),
	o => \GPIO_1[18]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\GPIO_1[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(19),
	o => \GPIO_1[19]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\GPIO_1[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(20),
	o => \GPIO_1[20]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\GPIO_1[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(21),
	o => \GPIO_1[21]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\GPIO_1[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(22),
	o => \GPIO_1[22]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\GPIO_1[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(23),
	o => \GPIO_1[23]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\GPIO_1[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(24),
	o => \GPIO_1[24]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\GPIO_1[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(25),
	o => \GPIO_1[25]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\GPIO_1[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(26),
	o => \GPIO_1[26]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\GPIO_1[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(27),
	o => \GPIO_1[27]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\GPIO_1[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(28),
	o => \GPIO_1[28]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\GPIO_1[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(29),
	o => \GPIO_1[29]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\GPIO_1[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(30),
	o => \GPIO_1[30]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\GPIO_1[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(31),
	o => \GPIO_1[31]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\GPIO_1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(3),
	o => \GPIO_1[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\GPIO_1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(9),
	o => \GPIO_1[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\GPIO_1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(11),
	o => \GPIO_1[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\GPIO_1[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(13),
	o => \GPIO_1[13]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDG(9) <= \LEDG[9]~output_o\;

GPIO_1(0) <= \GPIO_1[0]~output_o\;

GPIO_1(1) <= \GPIO_1[1]~output_o\;

GPIO_1(2) <= \GPIO_1[2]~output_o\;

GPIO_1(4) <= \GPIO_1[4]~output_o\;

GPIO_1(6) <= \GPIO_1[6]~output_o\;

GPIO_1(8) <= \GPIO_1[8]~output_o\;

GPIO_1(10) <= \GPIO_1[10]~output_o\;

GPIO_1(12) <= \GPIO_1[12]~output_o\;

GPIO_1(14) <= \GPIO_1[14]~output_o\;

GPIO_1(15) <= \GPIO_1[15]~output_o\;

GPIO_1(16) <= \GPIO_1[16]~output_o\;

GPIO_1(17) <= \GPIO_1[17]~output_o\;

GPIO_1(18) <= \GPIO_1[18]~output_o\;

GPIO_1(19) <= \GPIO_1[19]~output_o\;

GPIO_1(20) <= \GPIO_1[20]~output_o\;

GPIO_1(21) <= \GPIO_1[21]~output_o\;

GPIO_1(22) <= \GPIO_1[22]~output_o\;

GPIO_1(23) <= \GPIO_1[23]~output_o\;

GPIO_1(24) <= \GPIO_1[24]~output_o\;

GPIO_1(25) <= \GPIO_1[25]~output_o\;

GPIO_1(26) <= \GPIO_1[26]~output_o\;

GPIO_1(27) <= \GPIO_1[27]~output_o\;

GPIO_1(28) <= \GPIO_1[28]~output_o\;

GPIO_1(29) <= \GPIO_1[29]~output_o\;

GPIO_1(30) <= \GPIO_1[30]~output_o\;

GPIO_1(31) <= \GPIO_1[31]~output_o\;

GPIO_1(3) <= \GPIO_1[3]~output_o\;

GPIO_1(5) <= \GPIO_1[5]~output_o\;

GPIO_1(7) <= \GPIO_1[7]~output_o\;

GPIO_1(9) <= \GPIO_1[9]~output_o\;

GPIO_1(11) <= \GPIO_1[11]~output_o\;

GPIO_1(13) <= \GPIO_1[13]~output_o\;
END structure;


