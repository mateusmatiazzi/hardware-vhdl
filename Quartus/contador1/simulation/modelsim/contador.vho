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

-- DATE "09/24/2018 14:36:10"

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

ENTITY 	contador IS
    PORT (
	clk : IN std_logic;
	saida : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
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
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sel:aux[0]~0_combout\ : std_logic;
SIGNAL \sel:aux[0]~q\ : std_logic;
SIGNAL \aux~1_combout\ : std_logic;
SIGNAL \sel:aux[1]~q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sel:aux[2]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \sel:aux[4]~feeder_combout\ : std_logic;
SIGNAL \sel:aux[4]~q\ : std_logic;
SIGNAL \aux~0_combout\ : std_logic;
SIGNAL \sel:aux[3]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sel:auxSaida[0]~0_combout\ : std_logic;
SIGNAL \sel:auxSaida[0]~q\ : std_logic;
SIGNAL \sel:auxSaida[1]~0_combout\ : std_logic;
SIGNAL \sel:auxSaida[1]~q\ : std_logic;
SIGNAL \sel:auxSaida[2]~0_combout\ : std_logic;
SIGNAL \sel:auxSaida[2]~1_combout\ : std_logic;
SIGNAL \sel:auxSaida[2]~q\ : std_logic;
SIGNAL \sel:auxSaida[2]~2_combout\ : std_logic;
SIGNAL \sel:auxSaida[3]~0_combout\ : std_logic;
SIGNAL \sel:auxSaida[3]~q\ : std_logic;

BEGIN

ww_clk <= clk;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y2_N2
\saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel:auxSaida[0]~q\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel:auxSaida[1]~q\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel:auxSaida[2]~q\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel:auxSaida[3]~q\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X1_Y2_N26
\sel:aux[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:aux[0]~0_combout\ = !\sel:aux[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel:aux[0]~q\,
	combout => \sel:aux[0]~0_combout\);

-- Location: FF_X1_Y2_N27
\sel:aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel:aux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[0]~q\);

-- Location: LCCOMB_X1_Y2_N12
\aux~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~1_combout\ = (\Equal0~0_combout\ & (\Add0~1_combout\ & (\sel:aux[0]~q\ $ (\sel:aux[1]~q\)))) # (!\Equal0~0_combout\ & (\sel:aux[0]~q\ $ ((\sel:aux[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \sel:aux[0]~q\,
	datac => \sel:aux[1]~q\,
	datad => \Add0~1_combout\,
	combout => \aux~1_combout\);

-- Location: FF_X1_Y2_N13
\sel:aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[1]~q\);

-- Location: LCCOMB_X1_Y2_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \sel:aux[2]~q\ $ (((\sel:aux[0]~q\ & \sel:aux[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[0]~q\,
	datac => \sel:aux[2]~q\,
	datad => \sel:aux[1]~q\,
	combout => \Add0~2_combout\);

-- Location: FF_X1_Y2_N9
\sel:aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[2]~q\);

-- Location: LCCOMB_X1_Y2_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\sel:aux[0]~q\ & (\sel:aux[2]~q\ & \sel:aux[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[0]~q\,
	datac => \sel:aux[2]~q\,
	datad => \sel:aux[1]~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y2_N0
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \sel:aux[4]~q\ $ (((\sel:aux[3]~q\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[3]~q\,
	datac => \sel:aux[4]~q\,
	datad => \Add0~0_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y2_N28
\sel:aux[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:aux[4]~feeder_combout\ = \Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~1_combout\,
	combout => \sel:aux[4]~feeder_combout\);

-- Location: FF_X1_Y2_N29
\sel:aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel:aux[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[4]~q\);

-- Location: LCCOMB_X1_Y2_N22
\aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~0_combout\ = (\Equal0~0_combout\ & (\sel:aux[4]~q\ & (\sel:aux[3]~q\ $ (\Add0~0_combout\)))) # (!\Equal0~0_combout\ & ((\sel:aux[3]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \sel:aux[4]~q\,
	datac => \sel:aux[3]~q\,
	datad => \Add0~0_combout\,
	combout => \aux~0_combout\);

-- Location: FF_X1_Y2_N23
\sel:aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[3]~q\);

-- Location: LCCOMB_X1_Y2_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\sel:aux[3]~q\ & (!\sel:aux[2]~q\ & (!\sel:aux[1]~q\ & \sel:aux[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[3]~q\,
	datab => \sel:aux[2]~q\,
	datac => \sel:aux[1]~q\,
	datad => \sel:aux[0]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y2_N24
\sel:auxSaida[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:auxSaida[0]~0_combout\ = \sel:auxSaida[0]~q\ $ (((\Equal0~0_combout\ & !\Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \sel:auxSaida[0]~q\,
	datad => \Add0~1_combout\,
	combout => \sel:auxSaida[0]~0_combout\);

-- Location: FF_X1_Y2_N25
\sel:auxSaida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel:auxSaida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[0]~q\);

-- Location: LCCOMB_X1_Y2_N14
\sel:auxSaida[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:auxSaida[1]~0_combout\ = \sel:auxSaida[1]~q\ $ (((\sel:auxSaida[0]~q\ & (\Equal0~0_combout\ & !\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[0]~q\,
	datab => \Equal0~0_combout\,
	datac => \sel:auxSaida[1]~q\,
	datad => \Add0~1_combout\,
	combout => \sel:auxSaida[1]~0_combout\);

-- Location: FF_X1_Y2_N15
\sel:auxSaida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel:auxSaida[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[1]~q\);

-- Location: LCCOMB_X1_Y2_N16
\sel:auxSaida[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:auxSaida[2]~0_combout\ = (!\sel:auxSaida[0]~q\) # (!\sel:auxSaida[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel:auxSaida[1]~q\,
	datad => \sel:auxSaida[0]~q\,
	combout => \sel:auxSaida[2]~0_combout\);

-- Location: LCCOMB_X1_Y2_N20
\sel:auxSaida[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:auxSaida[2]~1_combout\ = \sel:auxSaida[2]~q\ $ (((\Equal0~0_combout\ & (!\sel:auxSaida[2]~0_combout\ & !\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \sel:auxSaida[2]~0_combout\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Add0~1_combout\,
	combout => \sel:auxSaida[2]~1_combout\);

-- Location: FF_X1_Y2_N21
\sel:auxSaida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel:auxSaida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[2]~q\);

-- Location: LCCOMB_X1_Y2_N10
\sel:auxSaida[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:auxSaida[2]~2_combout\ = (\sel:auxSaida[1]~q\ & (\sel:auxSaida[0]~q\ & (\Equal0~0_combout\ & !\Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \Equal0~0_combout\,
	datad => \Add0~1_combout\,
	combout => \sel:auxSaida[2]~2_combout\);

-- Location: LCCOMB_X1_Y2_N18
\sel:auxSaida[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sel:auxSaida[3]~0_combout\ = \sel:auxSaida[3]~q\ $ (((\sel:auxSaida[2]~q\ & \sel:auxSaida[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[2]~q\,
	datac => \sel:auxSaida[3]~q\,
	datad => \sel:auxSaida[2]~2_combout\,
	combout => \sel:auxSaida[3]~0_combout\);

-- Location: FF_X1_Y2_N19
\sel:auxSaida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel:auxSaida[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[3]~q\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;
END structure;


