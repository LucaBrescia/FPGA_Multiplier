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

-- DATE "06/11/2023 10:02:28"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	basic_mult IS
    PORT (
	CLOCK_50 : IN std_logic;
	RST : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	GPIO_1 : INOUT std_logic_vector(31 DOWNTO 0)
	);
END basic_mult;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[9]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[5]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[8]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[22]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[23]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[24]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[25]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[26]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[27]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[28]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[30]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[31]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF basic_mult IS
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \GPIO_1[0]~input_o\ : std_logic;
SIGNAL \GPIO_1[1]~input_o\ : std_logic;
SIGNAL \GPIO_1[2]~input_o\ : std_logic;
SIGNAL \GPIO_1[3]~input_o\ : std_logic;
SIGNAL \GPIO_1[4]~input_o\ : std_logic;
SIGNAL \GPIO_1[5]~input_o\ : std_logic;
SIGNAL \GPIO_1[6]~input_o\ : std_logic;
SIGNAL \GPIO_1[7]~input_o\ : std_logic;
SIGNAL \GPIO_1[8]~input_o\ : std_logic;
SIGNAL \GPIO_1[9]~input_o\ : std_logic;
SIGNAL \GPIO_1[10]~input_o\ : std_logic;
SIGNAL \GPIO_1[11]~input_o\ : std_logic;
SIGNAL \GPIO_1[12]~input_o\ : std_logic;
SIGNAL \GPIO_1[13]~input_o\ : std_logic;
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
SIGNAL \GPIO_1[0]~output_o\ : std_logic;
SIGNAL \GPIO_1[1]~output_o\ : std_logic;
SIGNAL \GPIO_1[2]~output_o\ : std_logic;
SIGNAL \GPIO_1[3]~output_o\ : std_logic;
SIGNAL \GPIO_1[4]~output_o\ : std_logic;
SIGNAL \GPIO_1[5]~output_o\ : std_logic;
SIGNAL \GPIO_1[6]~output_o\ : std_logic;
SIGNAL \GPIO_1[7]~output_o\ : std_logic;
SIGNAL \GPIO_1[8]~output_o\ : std_logic;
SIGNAL \GPIO_1[9]~output_o\ : std_logic;
SIGNAL \GPIO_1[10]~output_o\ : std_logic;
SIGNAL \GPIO_1[11]~output_o\ : std_logic;
SIGNAL \GPIO_1[12]~output_o\ : std_logic;
SIGNAL \GPIO_1[13]~output_o\ : std_logic;
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

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_RST <= RST;
ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X9_Y29_N16
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X32_Y0_N30
\GPIO_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[3]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
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

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X19_Y0_N30
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N30
\GPIO_1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
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

-- Location: IOOBUF_X5_Y29_N30
\GPIO_1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X35_Y0_N30
\GPIO_1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
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

-- Location: IOOBUF_X41_Y18_N9
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X35_Y29_N9
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X35_Y0_N9
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

-- Location: IOOBUF_X35_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X30_Y29_N2
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

-- Location: IOOBUF_X0_Y10_N2
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X28_Y0_N16
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

-- Location: IOOBUF_X37_Y0_N9
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

-- Location: IOOBUF_X32_Y29_N2
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

-- Location: IOOBUF_X41_Y5_N9
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

-- Location: IOOBUF_X3_Y29_N30
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X0_Y23_N16
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X0_Y11_N9
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

-- Location: IOOBUF_X41_Y3_N16
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

-- Location: IOOBUF_X0_Y9_N16
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X0_Y8_N2
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

-- Location: IOIBUF_X30_Y29_N29
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X9_Y29_N15
\GPIO_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(0),
	o => \GPIO_1[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\GPIO_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(1),
	o => \GPIO_1[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\GPIO_1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(2),
	o => \GPIO_1[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\GPIO_1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(3),
	o => \GPIO_1[3]~input_o\);

-- Location: IOIBUF_X35_Y29_N15
\GPIO_1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(4),
	o => \GPIO_1[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\GPIO_1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(5),
	o => \GPIO_1[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\GPIO_1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(6),
	o => \GPIO_1[6]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\GPIO_1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(7),
	o => \GPIO_1[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\GPIO_1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(8),
	o => \GPIO_1[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\GPIO_1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(9),
	o => \GPIO_1[9]~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\GPIO_1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(10),
	o => \GPIO_1[10]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\GPIO_1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(11),
	o => \GPIO_1[11]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\GPIO_1[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(12),
	o => \GPIO_1[12]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\GPIO_1[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(13),
	o => \GPIO_1[13]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\GPIO_1[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(14),
	o => \GPIO_1[14]~input_o\);

-- Location: IOIBUF_X41_Y18_N8
\GPIO_1[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(15),
	o => \GPIO_1[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\GPIO_1[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(16),
	o => \GPIO_1[16]~input_o\);

-- Location: IOIBUF_X35_Y29_N8
\GPIO_1[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(17),
	o => \GPIO_1[17]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\GPIO_1[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(18),
	o => \GPIO_1[18]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
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

-- Location: IOIBUF_X35_Y0_N1
\GPIO_1[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(21),
	o => \GPIO_1[21]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\GPIO_1[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(22),
	o => \GPIO_1[22]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\GPIO_1[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(23),
	o => \GPIO_1[23]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\GPIO_1[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(24),
	o => \GPIO_1[24]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\GPIO_1[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(25),
	o => \GPIO_1[25]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\GPIO_1[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(26),
	o => \GPIO_1[26]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\GPIO_1[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(27),
	o => \GPIO_1[27]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\GPIO_1[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(28),
	o => \GPIO_1[28]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\GPIO_1[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(29),
	o => \GPIO_1[29]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\GPIO_1[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(30),
	o => \GPIO_1[30]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\GPIO_1[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(31),
	o => \GPIO_1[31]~input_o\);

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

GPIO_1(3) <= \GPIO_1[3]~output_o\;

GPIO_1(4) <= \GPIO_1[4]~output_o\;

GPIO_1(5) <= \GPIO_1[5]~output_o\;

GPIO_1(6) <= \GPIO_1[6]~output_o\;

GPIO_1(7) <= \GPIO_1[7]~output_o\;

GPIO_1(8) <= \GPIO_1[8]~output_o\;

GPIO_1(9) <= \GPIO_1[9]~output_o\;

GPIO_1(10) <= \GPIO_1[10]~output_o\;

GPIO_1(11) <= \GPIO_1[11]~output_o\;

GPIO_1(12) <= \GPIO_1[12]~output_o\;

GPIO_1(13) <= \GPIO_1[13]~output_o\;

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
END structure;


