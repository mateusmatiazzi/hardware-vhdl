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

-- DATE "09/05/2018 14:16:52"

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

ENTITY 	paridade IS
    PORT (
	entrada : IN std_logic_vector(3 DOWNTO 0);
	saida : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END paridade;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF paridade IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(4 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[0]~input_o\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[1]~input_o\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[2]~input_o\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\saida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[3]~input_o\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\entrada[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\entrada[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\entrada[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\entrada[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X3_Y22_N24
\s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s~0_combout\ = \entrada[0]~input_o\ $ (\entrada[3]~input_o\ $ (\entrada[2]~input_o\ $ (\entrada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \entrada[1]~input_o\,
	combout => \s~0_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;
END structure;


