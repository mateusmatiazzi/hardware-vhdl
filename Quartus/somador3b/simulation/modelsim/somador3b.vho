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

-- DATE "09/10/2018 14:31:43"

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

ENTITY 	somador3b IS
    PORT (
	a : IN std_logic_vector(2 DOWNTO 0);
	b : IN std_logic_vector(2 DOWNTO 0);
	opA : BUFFER std_logic_vector(0 TO 7);
	opB : BUFFER std_logic_vector(0 TO 7);
	cin : IN std_logic;
	cout : BUFFER std_logic;
	sum : BUFFER std_logic_vector(0 TO 7)
	);
END somador3b;

-- Design Ports Information
-- opA[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opA[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opA[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opA[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opA[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opA[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opA[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opA[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opB[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador3b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_opA : std_logic_vector(0 TO 7);
SIGNAL ww_opB : std_logic_vector(0 TO 7);
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_sum : std_logic_vector(0 TO 7);
SIGNAL \opA[7]~output_o\ : std_logic;
SIGNAL \opA[6]~output_o\ : std_logic;
SIGNAL \opA[5]~output_o\ : std_logic;
SIGNAL \opA[4]~output_o\ : std_logic;
SIGNAL \opA[3]~output_o\ : std_logic;
SIGNAL \opA[2]~output_o\ : std_logic;
SIGNAL \opA[1]~output_o\ : std_logic;
SIGNAL \opA[0]~output_o\ : std_logic;
SIGNAL \opB[7]~output_o\ : std_logic;
SIGNAL \opB[6]~output_o\ : std_logic;
SIGNAL \opB[5]~output_o\ : std_logic;
SIGNAL \opB[4]~output_o\ : std_logic;
SIGNAL \opB[3]~output_o\ : std_logic;
SIGNAL \opB[2]~output_o\ : std_logic;
SIGNAL \opB[1]~output_o\ : std_logic;
SIGNAL \opB[0]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \opA~0_combout\ : std_logic;
SIGNAL \opA~1_combout\ : std_logic;
SIGNAL \opA~2_combout\ : std_logic;
SIGNAL \opA~3_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \opA~4_combout\ : std_logic;
SIGNAL \opA~5_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \opB~0_combout\ : std_logic;
SIGNAL \opB~1_combout\ : std_logic;
SIGNAL \opB~2_combout\ : std_logic;
SIGNAL \opB~3_combout\ : std_logic;
SIGNAL \Equal28~0_combout\ : std_logic;
SIGNAL \opB~4_combout\ : std_logic;
SIGNAL \opB~5_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \m0|sum~0_combout\ : std_logic;
SIGNAL \m0|cout~0_combout\ : std_logic;
SIGNAL \sum~0_combout\ : std_logic;
SIGNAL \m1|cout~0_combout\ : std_logic;
SIGNAL \m2|sum~combout\ : std_logic;
SIGNAL \sum~1_combout\ : std_logic;
SIGNAL \m2|cout~0_combout\ : std_logic;
SIGNAL \sum~2_combout\ : std_logic;
SIGNAL \sum~3_combout\ : std_logic;
SIGNAL \m1|sum~combout\ : std_logic;
SIGNAL \sum~4_combout\ : std_logic;
SIGNAL \sum~5_combout\ : std_logic;
SIGNAL \sum~6_combout\ : std_logic;
SIGNAL \sum~7_combout\ : std_logic;
SIGNAL \sum~8_combout\ : std_logic;
SIGNAL \sum~9_combout\ : std_logic;
SIGNAL \ALT_INV_opB~0_combout\ : std_logic;
SIGNAL \ALT_INV_opA~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
opA <= ww_opA;
opB <= ww_opB;
ww_cin <= cin;
cout <= ww_cout;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_opB~0_combout\ <= NOT \opB~0_combout\;
\ALT_INV_opA~0_combout\ <= NOT \opA~0_combout\;

-- Location: IOOBUF_X26_Y29_N30
\opA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \opA[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\opA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_opA~0_combout\,
	devoe => ww_devoe,
	o => \opA[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\opA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opA~1_combout\,
	devoe => ww_devoe,
	o => \opA[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\opA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opA~2_combout\,
	devoe => ww_devoe,
	o => \opA[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\opA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opA~3_combout\,
	devoe => ww_devoe,
	o => \opA[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\opA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal21~0_combout\,
	devoe => ww_devoe,
	o => \opA[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\opA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opA~4_combout\,
	devoe => ww_devoe,
	o => \opA[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\opA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opA~5_combout\,
	devoe => ww_devoe,
	o => \opA[0]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\opB[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \opB[7]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\opB[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_opB~0_combout\,
	devoe => ww_devoe,
	o => \opB[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\opB[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opB~1_combout\,
	devoe => ww_devoe,
	o => \opB[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\opB[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opB~2_combout\,
	devoe => ww_devoe,
	o => \opB[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\opB[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opB~3_combout\,
	devoe => ww_devoe,
	o => \opB[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\opB[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal28~0_combout\,
	devoe => ww_devoe,
	o => \opB[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\opB[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opB~4_combout\,
	devoe => ww_devoe,
	o => \opB[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\opB[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \opB~5_combout\,
	devoe => ww_devoe,
	o => \opB[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\sum[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\sum[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~3_combout\,
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\sum[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~4_combout\,
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\sum[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~5_combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\sum[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~6_combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\sum[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~7_combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\sum[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~8_combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\sum[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~9_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X23_Y28_N24
\opA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opA~0_combout\ = (\a[2]~input_o\ & ((!\a[1]~input_o\) # (!\a[0]~input_o\))) # (!\a[2]~input_o\ & ((\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \opA~0_combout\);

-- Location: LCCOMB_X23_Y28_N18
\opA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opA~1_combout\ = (\a[0]~input_o\ & ((\a[1]~input_o\) # (!\a[2]~input_o\))) # (!\a[0]~input_o\ & (!\a[2]~input_o\ & \a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \opA~1_combout\);

-- Location: LCCOMB_X23_Y28_N4
\opA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opA~2_combout\ = (\a[0]~input_o\) # ((\a[2]~input_o\ & !\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \opA~2_combout\);

-- Location: LCCOMB_X23_Y28_N6
\opA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opA~3_combout\ = (\a[0]~input_o\ & (\a[2]~input_o\ $ (!\a[1]~input_o\))) # (!\a[0]~input_o\ & (\a[2]~input_o\ & !\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \opA~3_combout\);

-- Location: LCCOMB_X23_Y28_N0
\Equal21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (!\a[0]~input_o\ & (!\a[2]~input_o\ & \a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X23_Y28_N10
\opA~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opA~4_combout\ = (\a[2]~input_o\ & (\a[0]~input_o\ $ (\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \opA~4_combout\);

-- Location: LCCOMB_X23_Y28_N28
\opA~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opA~5_combout\ = (\a[0]~input_o\ & (!\a[2]~input_o\ & !\a[1]~input_o\)) # (!\a[0]~input_o\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \opA~5_combout\);

-- Location: IOIBUF_X0_Y22_N15
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X23_Y28_N30
\opB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opB~0_combout\ = (\b[2]~input_o\ & ((!\b[1]~input_o\) # (!\b[0]~input_o\))) # (!\b[2]~input_o\ & ((\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \opB~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\opB~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opB~1_combout\ = (\b[2]~input_o\ & (\b[0]~input_o\ & \b[1]~input_o\)) # (!\b[2]~input_o\ & ((\b[0]~input_o\) # (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \opB~1_combout\);

-- Location: LCCOMB_X23_Y28_N2
\opB~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opB~2_combout\ = (\b[0]~input_o\) # ((\b[2]~input_o\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \opB~2_combout\);

-- Location: LCCOMB_X23_Y28_N20
\opB~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opB~3_combout\ = (\b[2]~input_o\ & (\b[0]~input_o\ $ (!\b[1]~input_o\))) # (!\b[2]~input_o\ & (\b[0]~input_o\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \opB~3_combout\);

-- Location: LCCOMB_X23_Y28_N14
\Equal28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal28~0_combout\ = (!\b[2]~input_o\ & (!\b[0]~input_o\ & \b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Equal28~0_combout\);

-- Location: LCCOMB_X23_Y28_N16
\opB~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opB~4_combout\ = (\b[2]~input_o\ & (\b[0]~input_o\ $ (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \opB~4_combout\);

-- Location: LCCOMB_X23_Y28_N26
\opB~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opB~5_combout\ = (\b[2]~input_o\ & (!\b[0]~input_o\)) # (!\b[2]~input_o\ & (\b[0]~input_o\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \opB~5_combout\);

-- Location: IOIBUF_X0_Y26_N1
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X24_Y28_N26
\m0|sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m0|sum~0_combout\ = \b[0]~input_o\ $ (\a[0]~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \cin~input_o\,
	combout => \m0|sum~0_combout\);

-- Location: LCCOMB_X24_Y28_N16
\m0|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m0|cout~0_combout\ = (\b[0]~input_o\ & ((\a[0]~input_o\) # (\cin~input_o\))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & \cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \cin~input_o\,
	combout => \m0|cout~0_combout\);

-- Location: LCCOMB_X24_Y28_N12
\sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~0_combout\ = (\m0|sum~0_combout\ & ((\a[1]~input_o\ & (!\b[1]~input_o\ & !\m0|cout~0_combout\)) # (!\a[1]~input_o\ & (\b[1]~input_o\ $ (\m0|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \m0|sum~0_combout\,
	datad => \m0|cout~0_combout\,
	combout => \sum~0_combout\);

-- Location: LCCOMB_X24_Y28_N14
\m1|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|cout~0_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\) # (\m0|cout~0_combout\))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & \m0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => \m0|cout~0_combout\,
	combout => \m1|cout~0_combout\);

-- Location: LCCOMB_X24_Y28_N0
\m2|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m2|sum~combout\ = \b[2]~input_o\ $ (\a[2]~input_o\ $ (\m1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \m1|cout~0_combout\,
	combout => \m2|sum~combout\);

-- Location: LCCOMB_X24_Y28_N4
\sum~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~1_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\ $ (\m0|cout~0_combout\)) # (!\m0|sum~0_combout\))) # (!\b[1]~input_o\ & ((\a[1]~input_o\) # ((!\m0|sum~0_combout\ & \m0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \m0|sum~0_combout\,
	datad => \m0|cout~0_combout\,
	combout => \sum~1_combout\);

-- Location: LCCOMB_X24_Y28_N2
\m2|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m2|cout~0_combout\ = (\b[2]~input_o\ & ((\a[2]~input_o\) # (\m1|cout~0_combout\))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & \m1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \m1|cout~0_combout\,
	combout => \m2|cout~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\sum~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~2_combout\ = (\sum~1_combout\ & (((\m2|cout~0_combout\) # (!\m2|sum~combout\)) # (!\sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~0_combout\,
	datab => \m2|sum~combout\,
	datac => \sum~1_combout\,
	datad => \m2|cout~0_combout\,
	combout => \sum~2_combout\);

-- Location: LCCOMB_X24_Y28_N8
\sum~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~3_combout\ = (\b[2]~input_o\ & (\sum~0_combout\ & (!\a[2]~input_o\))) # (!\b[2]~input_o\ & (!\sum~2_combout\ & (\sum~0_combout\ $ (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~0_combout\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \sum~2_combout\,
	combout => \sum~3_combout\);

-- Location: LCCOMB_X24_Y28_N18
\m1|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m1|sum~combout\ = \a[1]~input_o\ $ (\b[1]~input_o\ $ (\m0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => \m0|cout~0_combout\,
	combout => \m1|sum~combout\);

-- Location: LCCOMB_X24_Y28_N20
\sum~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~4_combout\ = (\m2|sum~combout\ & ((\m1|sum~combout\ & (\m0|sum~0_combout\ & !\m2|cout~0_combout\)) # (!\m1|sum~combout\ & ((\m2|cout~0_combout\))))) # (!\m2|sum~combout\ & (!\m2|cout~0_combout\ & ((\m1|sum~combout\) # (\m0|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|sum~combout\,
	datab => \m1|sum~combout\,
	datac => \m0|sum~0_combout\,
	datad => \m2|cout~0_combout\,
	combout => \sum~4_combout\);

-- Location: LCCOMB_X24_Y28_N22
\sum~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~5_combout\ = (\m1|sum~combout\ & (((\m0|sum~0_combout\ & !\m2|cout~0_combout\)))) # (!\m1|sum~combout\ & ((\m2|sum~combout\ & ((!\m2|cout~0_combout\))) # (!\m2|sum~combout\ & (\m0|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|sum~combout\,
	datab => \m1|sum~combout\,
	datac => \m0|sum~0_combout\,
	datad => \m2|cout~0_combout\,
	combout => \sum~5_combout\);

-- Location: LCCOMB_X24_Y28_N24
\sum~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~6_combout\ = (\m0|sum~0_combout\ & (\m2|sum~combout\ $ ((!\m1|sum~combout\)))) # (!\m0|sum~0_combout\ & ((\m2|sum~combout\ & (!\m1|sum~combout\ & !\m2|cout~0_combout\)) # (!\m2|sum~combout\ & (\m1|sum~combout\ & \m2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|sum~combout\,
	datab => \m1|sum~combout\,
	datac => \m0|sum~0_combout\,
	datad => \m2|cout~0_combout\,
	combout => \sum~6_combout\);

-- Location: LCCOMB_X24_Y28_N10
\sum~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~7_combout\ = (\m2|sum~combout\ & (\m2|cout~0_combout\ & ((\m1|sum~combout\) # (!\m0|sum~0_combout\)))) # (!\m2|sum~combout\ & (\m1|sum~combout\ & (!\m0|sum~0_combout\ & !\m2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|sum~combout\,
	datab => \m1|sum~combout\,
	datac => \m0|sum~0_combout\,
	datad => \m2|cout~0_combout\,
	combout => \sum~7_combout\);

-- Location: LCCOMB_X24_Y28_N28
\sum~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~8_combout\ = (\m1|sum~combout\ & ((\m0|sum~0_combout\ & ((\m2|cout~0_combout\))) # (!\m0|sum~0_combout\ & (\m2|sum~combout\)))) # (!\m1|sum~combout\ & (\m2|sum~combout\ & (\m0|sum~0_combout\ $ (\m2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|sum~combout\,
	datab => \m1|sum~combout\,
	datac => \m0|sum~0_combout\,
	datad => \m2|cout~0_combout\,
	combout => \sum~8_combout\);

-- Location: LCCOMB_X24_Y28_N30
\sum~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~9_combout\ = (\m2|sum~combout\ & ((\m2|cout~0_combout\ & (!\m1|sum~combout\)) # (!\m2|cout~0_combout\ & ((!\m0|sum~0_combout\))))) # (!\m2|sum~combout\ & (\m0|sum~0_combout\ & (\m1|sum~combout\ $ (!\m2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|sum~combout\,
	datab => \m1|sum~combout\,
	datac => \m0|sum~0_combout\,
	datad => \m2|cout~0_combout\,
	combout => \sum~9_combout\);

ww_opA(7) <= \opA[7]~output_o\;

ww_opA(6) <= \opA[6]~output_o\;

ww_opA(5) <= \opA[5]~output_o\;

ww_opA(4) <= \opA[4]~output_o\;

ww_opA(3) <= \opA[3]~output_o\;

ww_opA(2) <= \opA[2]~output_o\;

ww_opA(1) <= \opA[1]~output_o\;

ww_opA(0) <= \opA[0]~output_o\;

ww_opB(7) <= \opB[7]~output_o\;

ww_opB(6) <= \opB[6]~output_o\;

ww_opB(5) <= \opB[5]~output_o\;

ww_opB(4) <= \opB[4]~output_o\;

ww_opB(3) <= \opB[3]~output_o\;

ww_opB(2) <= \opB[2]~output_o\;

ww_opB(1) <= \opB[1]~output_o\;

ww_opB(0) <= \opB[0]~output_o\;

ww_cout <= \cout~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(0) <= \sum[0]~output_o\;
END structure;


