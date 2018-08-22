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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/15/2018 14:43:36"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux4 IS
    PORT (
	d0 : IN std_logic;
	d1 : IN std_logic;
	d2 : IN std_logic;
	d3 : IN std_logic;
	c0 : IN std_logic;
	c1 : IN std_logic;
	r : BUFFER std_logic
	);
END mux4;

-- Design Ports Information
-- r	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL \r~output_o\ : std_logic;
SIGNAL \d3~input_o\ : std_logic;
SIGNAL \d2~input_o\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \d0~input_o\ : std_logic;
SIGNAL \d1~input_o\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_c0 <= c0;
ww_c1 <= c1;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N2
\r~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r~1_combout\,
	devoe => ww_devoe,
	o => \r~output_o\);

-- Location: IOIBUF_X0_Y10_N15
\d3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3,
	o => \d3~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\d2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2,
	o => \d2~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\c1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\c0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\d0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0,
	o => \d0~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\d1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1,
	o => \d1~input_o\);

-- Location: LCCOMB_X1_Y10_N0
\r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\c0~input_o\ & (((\c1~input_o\) # (\d1~input_o\)))) # (!\c0~input_o\ & (\d0~input_o\ & (!\c1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~input_o\,
	datab => \d0~input_o\,
	datac => \c1~input_o\,
	datad => \d1~input_o\,
	combout => \r~0_combout\);

-- Location: LCCOMB_X1_Y10_N18
\r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (\c1~input_o\ & ((\r~0_combout\ & (\d3~input_o\)) # (!\r~0_combout\ & ((\d2~input_o\))))) # (!\c1~input_o\ & (((\r~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d3~input_o\,
	datab => \d2~input_o\,
	datac => \c1~input_o\,
	datad => \r~0_combout\,
	combout => \r~1_combout\);

ww_r <= \r~output_o\;
END structure;


