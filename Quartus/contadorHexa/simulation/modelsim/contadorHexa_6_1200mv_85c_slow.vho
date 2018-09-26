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

-- DATE "09/26/2018 14:43:07"

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

ENTITY 	contadorHexa IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	contador : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END contadorHexa;

-- Design Ports Information
-- contador[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contadorHexa IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_contador : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador[0]~output_o\ : std_logic;
SIGNAL \contador[1]~output_o\ : std_logic;
SIGNAL \contador[2]~output_o\ : std_logic;
SIGNAL \contador[3]~output_o\ : std_logic;
SIGNAL \contador[4]~output_o\ : std_logic;
SIGNAL \contador[5]~output_o\ : std_logic;
SIGNAL \contador[6]~output_o\ : std_logic;
SIGNAL \contador[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sel:aux[28]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \sel:aux[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sel:aux[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \sel:aux[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \sel:aux[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \sel:aux[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \sel:aux[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \sel:aux[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \aux~11_combout\ : std_logic;
SIGNAL \sel:aux[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \sel:aux[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \sel:aux[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \sel:aux[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \sel:aux[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \aux~10_combout\ : std_logic;
SIGNAL \sel:aux[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \aux~9_combout\ : std_logic;
SIGNAL \sel:aux[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \aux~8_combout\ : std_logic;
SIGNAL \sel:aux[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \aux~7_combout\ : std_logic;
SIGNAL \sel:aux[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \sel:aux[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \aux~6_combout\ : std_logic;
SIGNAL \sel:aux[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \sel:aux[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \aux~5_combout\ : std_logic;
SIGNAL \sel:aux[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \aux~4_combout\ : std_logic;
SIGNAL \sel:aux[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \aux~3_combout\ : std_logic;
SIGNAL \sel:aux[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \aux~2_combout\ : std_logic;
SIGNAL \sel:aux[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \aux~1_combout\ : std_logic;
SIGNAL \sel:aux[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \sel:aux[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \aux~0_combout\ : std_logic;
SIGNAL \sel:aux[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \sel:aux[26]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \sel:aux[27]~q\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \sel:aux[30]~q\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \sel:aux[29]~q\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \sel:auxSaida[0]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \sel:auxSaida[1]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \sel:auxSaida[2]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \sel:auxSaida[3]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \sel:auxSaida[14]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \sel:auxSaida[5]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \sel:auxSaida[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \sel:auxSaida[7]~q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \sel:auxSaida[8]~q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \sel:auxSaida[9]~q\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \sel:auxSaida[10]~q\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \sel:auxSaida[11]~q\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \sel:auxSaida[12]~q\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \sel:auxSaida[13]~q\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \auxSaida~0_combout\ : std_logic;
SIGNAL \auxSaida~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sel:auxSaida[29]~q\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \sel:auxSaida[15]~q\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \sel:auxSaida[16]~q\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \sel:auxSaida[17]~q\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \sel:auxSaida[18]~q\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \sel:auxSaida[19]~q\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \sel:auxSaida[20]~q\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \sel:auxSaida[21]~q\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \sel:auxSaida[22]~q\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \sel:auxSaida[23]~q\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \sel:auxSaida[24]~q\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \sel:auxSaida[25]~q\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \sel:auxSaida[26]~q\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \sel:auxSaida[27]~q\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \sel:auxSaida[28]~q\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \sel:auxSaida[30]~q\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \auxSaida~2_combout\ : std_logic;
SIGNAL \sel:auxSaida[4]~q\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \contador~7_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \contador~6_combout\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \contador~2_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \contador~4_combout\ : std_logic;
SIGNAL \contador~3_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \contador~5_combout\ : std_logic;
SIGNAL \contador~8_combout\ : std_logic;
SIGNAL \contador~9_combout\ : std_logic;
SIGNAL \contador~10_combout\ : std_logic;
SIGNAL \contador~11_combout\ : std_logic;
SIGNAL \contador~12_combout\ : std_logic;
SIGNAL \contador~13_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \contador~14_combout\ : std_logic;
SIGNAL \contador~15_combout\ : std_logic;
SIGNAL \contador~16_combout\ : std_logic;
SIGNAL \contador~17_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
contador <= ww_contador;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X23_Y29_N9
\contador[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \contador[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\contador[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador~0_combout\,
	devoe => ww_devoe,
	o => \contador[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\contador[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador~8_combout\,
	devoe => ww_devoe,
	o => \contador[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\contador[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador~9_combout\,
	devoe => ww_devoe,
	o => \contador[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\contador[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador~12_combout\,
	devoe => ww_devoe,
	o => \contador[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\contador[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador~14_combout\,
	devoe => ww_devoe,
	o => \contador[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\contador[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador~15_combout\,
	devoe => ww_devoe,
	o => \contador[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\contador[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador~17_combout\,
	devoe => ww_devoe,
	o => \contador[7]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X24_Y25_N2
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \sel:auxSaida[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\sel:auxSaida[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X22_Y24_N27
\sel:aux[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[28]~q\);

-- Location: LCCOMB_X22_Y25_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \sel:aux[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\sel:aux[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X22_Y25_N3
\sel:aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[0]~q\);

-- Location: LCCOMB_X22_Y25_N4
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\sel:aux[1]~q\ & (!\Add0~1\)) # (!\sel:aux[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\sel:aux[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X22_Y25_N5
\sel:aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[1]~q\);

-- Location: LCCOMB_X22_Y25_N6
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\sel:aux[2]~q\ & (\Add0~3\ $ (GND))) # (!\sel:aux[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\sel:aux[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X22_Y25_N7
\sel:aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[2]~q\);

-- Location: LCCOMB_X22_Y25_N8
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\sel:aux[3]~q\ & (!\Add0~5\)) # (!\sel:aux[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\sel:aux[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X22_Y25_N9
\sel:aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[3]~q\);

-- Location: LCCOMB_X22_Y25_N10
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\sel:aux[4]~q\ & (\Add0~7\ $ (GND))) # (!\sel:aux[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\sel:aux[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X22_Y25_N11
\sel:aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[4]~q\);

-- Location: LCCOMB_X22_Y25_N12
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\sel:aux[5]~q\ & (!\Add0~9\)) # (!\sel:aux[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\sel:aux[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X22_Y25_N13
\sel:aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[5]~q\);

-- Location: LCCOMB_X22_Y25_N14
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\sel:aux[6]~q\ & (\Add0~11\ $ (GND))) # (!\sel:aux[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\sel:aux[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X22_Y25_N15
\sel:aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[6]~q\);

-- Location: LCCOMB_X22_Y25_N16
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\sel:aux[7]~q\ & (!\Add0~13\)) # (!\sel:aux[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\sel:aux[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X23_Y24_N14
\aux~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~11_combout\ = (\Add0~14_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~11_combout\);

-- Location: FF_X23_Y24_N15
\sel:aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[7]~q\);

-- Location: LCCOMB_X22_Y25_N18
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\sel:aux[8]~q\ & (\Add0~15\ $ (GND))) # (!\sel:aux[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\sel:aux[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X22_Y25_N19
\sel:aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[8]~q\);

-- Location: LCCOMB_X22_Y25_N20
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\sel:aux[9]~q\ & (!\Add0~17\)) # (!\sel:aux[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\sel:aux[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X22_Y25_N21
\sel:aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[9]~q\);

-- Location: LCCOMB_X22_Y25_N22
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\sel:aux[10]~q\ & (\Add0~19\ $ (GND))) # (!\sel:aux[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\sel:aux[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X22_Y25_N23
\sel:aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[10]~q\);

-- Location: LCCOMB_X22_Y25_N24
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\sel:aux[11]~q\ & (!\Add0~21\)) # (!\sel:aux[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\sel:aux[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X22_Y25_N25
\sel:aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[11]~q\);

-- Location: LCCOMB_X22_Y25_N26
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\sel:aux[12]~q\ & (\Add0~23\ $ (GND))) # (!\sel:aux[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\sel:aux[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X23_Y25_N4
\aux~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~10_combout\ = (\Add0~24_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~10_combout\);

-- Location: FF_X23_Y25_N5
\sel:aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[12]~q\);

-- Location: LCCOMB_X22_Y25_N28
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\sel:aux[13]~q\ & (!\Add0~25\)) # (!\sel:aux[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\sel:aux[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X23_Y24_N0
\aux~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~9_combout\ = (\Add0~26_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~9_combout\);

-- Location: FF_X23_Y24_N1
\sel:aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[13]~q\);

-- Location: LCCOMB_X22_Y25_N30
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\sel:aux[14]~q\ & (\Add0~27\ $ (GND))) # (!\sel:aux[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\sel:aux[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X23_Y24_N22
\aux~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~8_combout\ = (\Add0~28_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~8_combout\);

-- Location: FF_X23_Y24_N23
\sel:aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[14]~q\);

-- Location: LCCOMB_X22_Y24_N0
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\sel:aux[15]~q\ & (!\Add0~29\)) # (!\sel:aux[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\sel:aux[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X21_Y24_N4
\aux~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~7_combout\ = (\Add0~30_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~7_combout\);

-- Location: FF_X21_Y24_N5
\sel:aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[15]~q\);

-- Location: LCCOMB_X22_Y24_N2
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\sel:aux[16]~q\ & (\Add0~31\ $ (GND))) # (!\sel:aux[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\sel:aux[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X22_Y24_N3
\sel:aux[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[16]~q\);

-- Location: LCCOMB_X22_Y24_N4
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\sel:aux[17]~q\ & (!\Add0~33\)) # (!\sel:aux[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\sel:aux[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X21_Y24_N6
\aux~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~6_combout\ = (\Add0~34_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~6_combout\);

-- Location: FF_X21_Y24_N7
\sel:aux[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[17]~q\);

-- Location: LCCOMB_X22_Y24_N6
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\sel:aux[18]~q\ & (\Add0~35\ $ (GND))) # (!\sel:aux[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\sel:aux[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X22_Y24_N7
\sel:aux[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[18]~q\);

-- Location: LCCOMB_X22_Y24_N8
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\sel:aux[19]~q\ & (!\Add0~37\)) # (!\sel:aux[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\sel:aux[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X23_Y24_N20
\aux~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~5_combout\ = (\Add0~38_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~5_combout\);

-- Location: FF_X23_Y24_N21
\sel:aux[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[19]~q\);

-- Location: LCCOMB_X22_Y24_N10
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\sel:aux[20]~q\ & (\Add0~39\ $ (GND))) # (!\sel:aux[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\sel:aux[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X23_Y24_N26
\aux~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~4_combout\ = (\Add0~40_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~4_combout\);

-- Location: FF_X23_Y24_N27
\sel:aux[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[20]~q\);

-- Location: LCCOMB_X22_Y24_N12
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\sel:aux[21]~q\ & (!\Add0~41\)) # (!\sel:aux[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\sel:aux[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X23_Y24_N28
\aux~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~3_combout\ = (\Add0~42_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~3_combout\);

-- Location: FF_X23_Y24_N29
\sel:aux[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[21]~q\);

-- Location: LCCOMB_X22_Y24_N14
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\sel:aux[22]~q\ & (\Add0~43\ $ (GND))) # (!\sel:aux[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\sel:aux[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X23_Y24_N30
\aux~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~2_combout\ = (\Add0~44_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~2_combout\);

-- Location: FF_X23_Y24_N31
\sel:aux[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[22]~q\);

-- Location: LCCOMB_X22_Y24_N16
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\sel:aux[23]~q\ & (!\Add0~45\)) # (!\sel:aux[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\sel:aux[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X23_Y24_N4
\aux~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~1_combout\ = (\Add0~46_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~1_combout\);

-- Location: FF_X23_Y24_N5
\sel:aux[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[23]~q\);

-- Location: LCCOMB_X22_Y24_N18
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\sel:aux[24]~q\ & (\Add0~47\ $ (GND))) # (!\sel:aux[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\sel:aux[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X22_Y24_N19
\sel:aux[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[24]~q\);

-- Location: LCCOMB_X22_Y24_N20
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\sel:aux[25]~q\ & (!\Add0~49\)) # (!\sel:aux[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\sel:aux[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X21_Y24_N16
\aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux~0_combout\ = (\Add0~50_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~50_combout\,
	datad => \Equal0~9_combout\,
	combout => \aux~0_combout\);

-- Location: FF_X21_Y24_N17
\sel:aux[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[25]~q\);

-- Location: LCCOMB_X22_Y24_N22
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\sel:aux[26]~q\ & (\Add0~51\ $ (GND))) # (!\sel:aux[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\sel:aux[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X22_Y24_N23
\sel:aux[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[26]~q\);

-- Location: LCCOMB_X22_Y24_N24
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\sel:aux[27]~q\ & (!\Add0~53\)) # (!\sel:aux[27]~q\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\sel:aux[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[27]~q\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X22_Y24_N25
\sel:aux[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[27]~q\);

-- Location: LCCOMB_X22_Y24_N26
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\sel:aux[28]~q\ & (\Add0~55\ $ (GND))) # (!\sel:aux[28]~q\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\sel:aux[28]~q\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[28]~q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X22_Y24_N31
\sel:aux[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[30]~q\);

-- Location: LCCOMB_X22_Y24_N28
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\sel:aux[29]~q\ & (!\Add0~57\)) # (!\sel:aux[29]~q\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\sel:aux[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:aux[29]~q\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X22_Y24_N29
\sel:aux[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:aux[29]~q\);

-- Location: LCCOMB_X22_Y24_N30
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = \sel:aux[30]~q\ $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:aux[30]~q\,
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X23_Y24_N12
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~12_combout\ & (!\Add0~10_combout\ & (!\Add0~8_combout\ & \Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~14_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y25_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~0_combout\ & (!\Add0~2_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~20_combout\ & (!\Add0~16_combout\ & (!\Add0~18_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add0~28_combout\ & (\Add0~26_combout\ & (\Add0~30_combout\ & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X23_Y24_N8
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X23_Y24_N10
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~32_combout\ & (\Add0~34_combout\ & (!\Add0~36_combout\ & \Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~34_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~38_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X23_Y24_N24
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~40_combout\ & (\Add0~42_combout\ & (\Add0~44_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~42_combout\,
	datac => \Add0~44_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X23_Y24_N18
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~46_combout\ & (!\Add0~48_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~48_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X23_Y24_N16
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Add0~50_combout\ & (!\Add0~54_combout\ & (!\Add0~52_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~54_combout\,
	datac => \Add0~52_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X23_Y24_N6
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Add0~56_combout\ & (!\Add0~60_combout\ & (!\Add0~58_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~58_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: FF_X24_Y25_N3
\sel:auxSaida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[0]~q\);

-- Location: LCCOMB_X24_Y25_N4
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\sel:auxSaida[1]~q\ & (!\Add1~1\)) # (!\sel:auxSaida[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\sel:auxSaida[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X24_Y25_N5
\sel:auxSaida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[1]~q\);

-- Location: LCCOMB_X24_Y25_N6
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\sel:auxSaida[2]~q\ & (\Add1~3\ $ (GND))) # (!\sel:auxSaida[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\sel:auxSaida[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X24_Y25_N1
\sel:auxSaida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add1~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[2]~q\);

-- Location: LCCOMB_X24_Y25_N8
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\sel:auxSaida[3]~q\ & (!\Add1~5\)) # (!\sel:auxSaida[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\sel:auxSaida[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X24_Y25_N9
\sel:auxSaida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[3]~q\);

-- Location: LCCOMB_X24_Y25_N10
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\sel:auxSaida[4]~q\ & (\Add1~7\ $ (GND))) # (!\sel:auxSaida[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\sel:auxSaida[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X24_Y25_N31
\sel:auxSaida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[14]~q\);

-- Location: LCCOMB_X24_Y25_N12
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\sel:auxSaida[5]~q\ & (!\Add1~9\)) # (!\sel:auxSaida[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\sel:auxSaida[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X24_Y25_N13
\sel:auxSaida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[5]~q\);

-- Location: LCCOMB_X24_Y25_N14
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\sel:auxSaida[6]~q\ & (\Add1~11\ $ (GND))) # (!\sel:auxSaida[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\sel:auxSaida[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X24_Y25_N15
\sel:auxSaida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[6]~q\);

-- Location: LCCOMB_X24_Y25_N16
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\sel:auxSaida[7]~q\ & (!\Add1~13\)) # (!\sel:auxSaida[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\sel:auxSaida[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X24_Y25_N17
\sel:auxSaida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[7]~q\);

-- Location: LCCOMB_X24_Y25_N18
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\sel:auxSaida[8]~q\ & (\Add1~15\ $ (GND))) # (!\sel:auxSaida[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\sel:auxSaida[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X24_Y25_N19
\sel:auxSaida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[8]~q\);

-- Location: LCCOMB_X24_Y25_N20
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\sel:auxSaida[9]~q\ & (!\Add1~17\)) # (!\sel:auxSaida[9]~q\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\sel:auxSaida[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[9]~q\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X24_Y25_N21
\sel:auxSaida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[9]~q\);

-- Location: LCCOMB_X24_Y25_N22
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\sel:auxSaida[10]~q\ & (\Add1~19\ $ (GND))) # (!\sel:auxSaida[10]~q\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\sel:auxSaida[10]~q\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[10]~q\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X24_Y25_N23
\sel:auxSaida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[10]~q\);

-- Location: LCCOMB_X24_Y25_N24
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\sel:auxSaida[11]~q\ & (!\Add1~21\)) # (!\sel:auxSaida[11]~q\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\sel:auxSaida[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[11]~q\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X24_Y25_N25
\sel:auxSaida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[11]~q\);

-- Location: LCCOMB_X24_Y25_N26
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\sel:auxSaida[12]~q\ & (\Add1~23\ $ (GND))) # (!\sel:auxSaida[12]~q\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\sel:auxSaida[12]~q\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[12]~q\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X24_Y25_N27
\sel:auxSaida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[12]~q\);

-- Location: LCCOMB_X24_Y25_N28
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\sel:auxSaida[13]~q\ & (!\Add1~25\)) # (!\sel:auxSaida[13]~q\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\sel:auxSaida[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[13]~q\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X24_Y25_N29
\sel:auxSaida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[13]~q\);

-- Location: LCCOMB_X24_Y25_N30
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\sel:auxSaida[14]~q\ & (\Add1~27\ $ (GND))) # (!\sel:auxSaida[14]~q\ & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((\sel:auxSaida[14]~q\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[14]~q\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X26_Y25_N28
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\Add1~2_combout\ & (!\Add1~0_combout\ & (!\Add1~10_combout\ & !\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~12_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X24_Y25_N0
\auxSaida~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \auxSaida~0_combout\ = (\Add1~26_combout\) # ((\Add1~6_combout\) # ((\Add1~4_combout\) # (\Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~6_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~24_combout\,
	combout => \auxSaida~0_combout\);

-- Location: LCCOMB_X26_Y24_N28
\auxSaida~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \auxSaida~1_combout\ = (!\Add1~28_combout\ & (\Equal1~6_combout\ & (!\auxSaida~0_combout\ & !\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Equal1~6_combout\,
	datac => \auxSaida~0_combout\,
	datad => \Add1~22_combout\,
	combout => \auxSaida~1_combout\);

-- Location: LCCOMB_X23_Y25_N20
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add1~20_combout\ & (!\Add1~16_combout\ & (!\Add1~18_combout\ & !\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add1~16_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~14_combout\,
	combout => \Equal1~0_combout\);

-- Location: FF_X24_Y24_N29
\sel:auxSaida[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[29]~q\);

-- Location: LCCOMB_X24_Y24_N0
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\sel:auxSaida[15]~q\ & (!\Add1~29\)) # (!\sel:auxSaida[15]~q\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\sel:auxSaida[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[15]~q\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X24_Y24_N1
\sel:auxSaida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[15]~q\);

-- Location: LCCOMB_X24_Y24_N2
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\sel:auxSaida[16]~q\ & (\Add1~31\ $ (GND))) # (!\sel:auxSaida[16]~q\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\sel:auxSaida[16]~q\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[16]~q\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X24_Y24_N3
\sel:auxSaida[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[16]~q\);

-- Location: LCCOMB_X24_Y24_N4
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\sel:auxSaida[17]~q\ & (!\Add1~33\)) # (!\sel:auxSaida[17]~q\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\sel:auxSaida[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[17]~q\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X24_Y24_N5
\sel:auxSaida[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[17]~q\);

-- Location: LCCOMB_X24_Y24_N6
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\sel:auxSaida[18]~q\ & (\Add1~35\ $ (GND))) # (!\sel:auxSaida[18]~q\ & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((\sel:auxSaida[18]~q\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[18]~q\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X24_Y24_N7
\sel:auxSaida[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[18]~q\);

-- Location: LCCOMB_X24_Y24_N8
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\sel:auxSaida[19]~q\ & (!\Add1~37\)) # (!\sel:auxSaida[19]~q\ & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!\sel:auxSaida[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[19]~q\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X24_Y24_N9
\sel:auxSaida[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[19]~q\);

-- Location: LCCOMB_X24_Y24_N10
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\sel:auxSaida[20]~q\ & (\Add1~39\ $ (GND))) # (!\sel:auxSaida[20]~q\ & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((\sel:auxSaida[20]~q\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[20]~q\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X24_Y24_N11
\sel:auxSaida[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[20]~q\);

-- Location: LCCOMB_X24_Y24_N12
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\sel:auxSaida[21]~q\ & (!\Add1~41\)) # (!\sel:auxSaida[21]~q\ & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!\sel:auxSaida[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[21]~q\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X24_Y24_N13
\sel:auxSaida[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[21]~q\);

-- Location: LCCOMB_X24_Y24_N14
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\sel:auxSaida[22]~q\ & (\Add1~43\ $ (GND))) # (!\sel:auxSaida[22]~q\ & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((\sel:auxSaida[22]~q\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[22]~q\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X24_Y24_N15
\sel:auxSaida[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[22]~q\);

-- Location: LCCOMB_X24_Y24_N16
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\sel:auxSaida[23]~q\ & (!\Add1~45\)) # (!\sel:auxSaida[23]~q\ & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!\sel:auxSaida[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[23]~q\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X24_Y24_N17
\sel:auxSaida[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[23]~q\);

-- Location: LCCOMB_X24_Y24_N18
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\sel:auxSaida[24]~q\ & (\Add1~47\ $ (GND))) # (!\sel:auxSaida[24]~q\ & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((\sel:auxSaida[24]~q\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[24]~q\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X24_Y24_N19
\sel:auxSaida[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[24]~q\);

-- Location: LCCOMB_X24_Y24_N20
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\sel:auxSaida[25]~q\ & (!\Add1~49\)) # (!\sel:auxSaida[25]~q\ & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!\sel:auxSaida[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[25]~q\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X24_Y24_N21
\sel:auxSaida[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[25]~q\);

-- Location: LCCOMB_X24_Y24_N22
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\sel:auxSaida[26]~q\ & (\Add1~51\ $ (GND))) # (!\sel:auxSaida[26]~q\ & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((\sel:auxSaida[26]~q\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[26]~q\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X24_Y24_N23
\sel:auxSaida[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[26]~q\);

-- Location: LCCOMB_X24_Y24_N24
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\sel:auxSaida[27]~q\ & (!\Add1~53\)) # (!\sel:auxSaida[27]~q\ & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!\sel:auxSaida[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[27]~q\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X24_Y24_N25
\sel:auxSaida[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[27]~q\);

-- Location: LCCOMB_X24_Y24_N26
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\sel:auxSaida[28]~q\ & (\Add1~55\ $ (GND))) # (!\sel:auxSaida[28]~q\ & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((\sel:auxSaida[28]~q\ & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[28]~q\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X24_Y24_N27
\sel:auxSaida[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[28]~q\);

-- Location: LCCOMB_X24_Y24_N28
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\sel:auxSaida[29]~q\ & (!\Add1~57\)) # (!\sel:auxSaida[29]~q\ & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!\sel:auxSaida[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[29]~q\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X26_Y24_N22
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add1~30_combout\ & (!\Add1~34_combout\ & (!\Add1~32_combout\ & !\Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add1~34_combout\,
	datac => \Add1~32_combout\,
	datad => \Add1~36_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X26_Y24_N12
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Add1~38_combout\ & (!\Add1~40_combout\ & (!\Add1~42_combout\ & !\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add1~40_combout\,
	datac => \Add1~42_combout\,
	datad => \Add1~46_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X26_Y24_N18
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\Add1~48_combout\ & (!\Add1~44_combout\ & (\Equal1~1_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Add1~44_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X26_Y24_N8
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!\Add1~52_combout\ & (!\Add1~54_combout\ & (!\Add1~50_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \Add1~54_combout\,
	datac => \Add1~50_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: FF_X24_Y24_N31
\sel:auxSaida[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[30]~q\);

-- Location: LCCOMB_X24_Y24_N30
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = \sel:auxSaida[30]~q\ $ (!\Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[30]~q\,
	cin => \Add1~59\,
	combout => \Add1~60_combout\);

-- Location: LCCOMB_X26_Y24_N10
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\Add1~58_combout\ & (!\Add1~56_combout\ & (\Equal1~4_combout\ & !\Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add1~56_combout\,
	datac => \Equal1~4_combout\,
	datad => \Add1~60_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X26_Y24_N0
\auxSaida~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \auxSaida~2_combout\ = (\Add1~8_combout\ & (((!\Equal1~5_combout\) # (!\Equal1~0_combout\)) # (!\auxSaida~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \auxSaida~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~5_combout\,
	combout => \auxSaida~2_combout\);

-- Location: FF_X26_Y24_N1
\sel:auxSaida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \auxSaida~2_combout\,
	clrn => \reset~input_o\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel:auxSaida[4]~q\);

-- Location: LCCOMB_X23_Y22_N0
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!\sel:auxSaida[8]~q\ & (!\sel:auxSaida[7]~q\ & (!\sel:auxSaida[9]~q\ & !\sel:auxSaida[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[8]~q\,
	datab => \sel:auxSaida[7]~q\,
	datac => \sel:auxSaida[9]~q\,
	datad => \sel:auxSaida[10]~q\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X23_Y22_N18
\Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!\sel:auxSaida[4]~q\ & (!\sel:auxSaida[6]~q\ & (!\sel:auxSaida[5]~q\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[4]~q\,
	datab => \sel:auxSaida[6]~q\,
	datac => \sel:auxSaida[5]~q\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X24_Y23_N26
\Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!\sel:auxSaida[13]~q\ & (!\sel:auxSaida[14]~q\ & (!\sel:auxSaida[11]~q\ & !\sel:auxSaida[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[13]~q\,
	datab => \sel:auxSaida[14]~q\,
	datac => \sel:auxSaida[11]~q\,
	datad => \sel:auxSaida[12]~q\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X24_Y26_N10
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\sel:auxSaida[18]~q\ & (!\sel:auxSaida[17]~q\ & (!\sel:auxSaida[15]~q\ & !\sel:auxSaida[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[18]~q\,
	datab => \sel:auxSaida[17]~q\,
	datac => \sel:auxSaida[15]~q\,
	datad => \sel:auxSaida[16]~q\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X23_Y26_N24
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\sel:auxSaida[29]~q\ & (!\sel:auxSaida[28]~q\ & (!\sel:auxSaida[30]~q\ & !\sel:auxSaida[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[29]~q\,
	datab => \sel:auxSaida[28]~q\,
	datac => \sel:auxSaida[30]~q\,
	datad => \sel:auxSaida[27]~q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\sel:auxSaida[21]~q\ & (!\sel:auxSaida[19]~q\ & (!\sel:auxSaida[20]~q\ & !\sel:auxSaida[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[21]~q\,
	datab => \sel:auxSaida[19]~q\,
	datac => \sel:auxSaida[20]~q\,
	datad => \sel:auxSaida[22]~q\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X24_Y26_N24
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\sel:auxSaida[25]~q\ & (!\sel:auxSaida[24]~q\ & (!\sel:auxSaida[26]~q\ & !\sel:auxSaida[23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[25]~q\,
	datab => \sel:auxSaida[24]~q\,
	datac => \sel:auxSaida[26]~q\,
	datad => \sel:auxSaida[23]~q\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X24_Y26_N16
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~0_combout\ & (\Equal2~2_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X24_Y26_N14
\Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\Equal2~7_combout\ & (\Equal2~5_combout\ & (!\sel:auxSaida[3]~q\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~7_combout\,
	datab => \Equal2~5_combout\,
	datac => \sel:auxSaida[3]~q\,
	datad => \Equal2~4_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X24_Y27_N0
\contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~0_combout\ = (\Equal9~0_combout\ & ((\sel:auxSaida[1]~q\ & (\sel:auxSaida[0]~q\ & \sel:auxSaida[2]~q\)) # (!\sel:auxSaida[1]~q\ & ((!\sel:auxSaida[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal9~0_combout\,
	combout => \contador~0_combout\);

-- Location: LCCOMB_X24_Y26_N0
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\Equal2~7_combout\ & (\Equal2~5_combout\ & (\sel:auxSaida[3]~q\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~7_combout\,
	datab => \Equal2~5_combout\,
	datac => \sel:auxSaida[3]~q\,
	datad => \Equal2~4_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X24_Y27_N24
\contador~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~7_combout\ = (\sel:auxSaida[1]~q\) # ((!\Equal3~0_combout\) # (!\sel:auxSaida[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal3~0_combout\,
	combout => \contador~7_combout\);

-- Location: LCCOMB_X24_Y26_N22
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\sel:auxSaida[0]~q\ & \sel:auxSaida[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[0]~q\,
	datad => \sel:auxSaida[1]~q\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X24_Y26_N28
\Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (\Equal2~5_combout\ & (\Equal2~7_combout\ & \Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~5_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X24_Y26_N18
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\sel:auxSaida[2]~q\ & (\sel:auxSaida[3]~q\ & \Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[2]~q\,
	datac => \sel:auxSaida[3]~q\,
	datad => \Equal2~8_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X24_Y27_N30
\Equal11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!\sel:auxSaida[1]~q\ & (\sel:auxSaida[0]~q\ & (\sel:auxSaida[2]~q\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal9~0_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X24_Y26_N12
\Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\sel:auxSaida[0]~q\ & (\sel:auxSaida[2]~q\ & (\Equal9~0_combout\ & \sel:auxSaida[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[0]~q\,
	datab => \sel:auxSaida[2]~q\,
	datac => \Equal9~0_combout\,
	datad => \sel:auxSaida[1]~q\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X24_Y26_N2
\contador~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~6_combout\ = (!\Equal11~0_combout\ & (!\Equal10~0_combout\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal11~0_combout\,
	datad => \Equal10~0_combout\,
	combout => \contador~6_combout\);

-- Location: LCCOMB_X24_Y27_N26
\contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = (\Equal9~0_combout\ & ((\sel:auxSaida[1]~q\ & ((\sel:auxSaida[0]~q\) # (!\sel:auxSaida[2]~q\))) # (!\sel:auxSaida[1]~q\ & (\sel:auxSaida[0]~q\ & !\sel:auxSaida[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal9~0_combout\,
	combout => \contador~1_combout\);

-- Location: LCCOMB_X24_Y27_N12
\contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~2_combout\ = (\sel:auxSaida[1]~q\) # ((\sel:auxSaida[0]~q\ $ (!\sel:auxSaida[2]~q\)) # (!\Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal9~0_combout\,
	combout => \contador~2_combout\);

-- Location: LCCOMB_X24_Y26_N8
\Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (!\sel:auxSaida[2]~q\ & (!\sel:auxSaida[3]~q\ & \Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel:auxSaida[2]~q\,
	datac => \sel:auxSaida[3]~q\,
	datad => \Equal2~8_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X24_Y26_N20
\contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~4_combout\ = (\sel:auxSaida[0]~q\) # ((!\Equal13~0_combout\ & !\Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[0]~q\,
	datac => \Equal13~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \contador~4_combout\);

-- Location: LCCOMB_X24_Y26_N26
\contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~3_combout\ = ((\sel:auxSaida[1]~q\ & ((!\Equal13~0_combout\))) # (!\sel:auxSaida[1]~q\ & (!\Equal5~0_combout\))) # (!\sel:auxSaida[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[0]~q\,
	datab => \Equal5~0_combout\,
	datac => \Equal13~0_combout\,
	datad => \sel:auxSaida[1]~q\,
	combout => \contador~3_combout\);

-- Location: LCCOMB_X24_Y27_N2
\Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (\sel:auxSaida[1]~q\ & (\sel:auxSaida[0]~q\ & (\sel:auxSaida[2]~q\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal9~0_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X24_Y27_N16
\contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~5_combout\ = (\contador~2_combout\ & (\contador~4_combout\ & (\contador~3_combout\ & !\Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~2_combout\,
	datab => \contador~4_combout\,
	datac => \contador~3_combout\,
	datad => \Equal9~1_combout\,
	combout => \contador~5_combout\);

-- Location: LCCOMB_X24_Y27_N6
\contador~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~8_combout\ = (\contador~6_combout\ & ((\contador~5_combout\ & (!\contador~7_combout\)) # (!\contador~5_combout\ & ((\contador~1_combout\))))) # (!\contador~6_combout\ & (((\contador~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~7_combout\,
	datab => \contador~6_combout\,
	datac => \contador~1_combout\,
	datad => \contador~5_combout\,
	combout => \contador~8_combout\);

-- Location: LCCOMB_X24_Y27_N20
\contador~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~9_combout\ = (((\Equal11~0_combout\) # (\Equal9~1_combout\)) # (!\contador~3_combout\)) # (!\contador~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~2_combout\,
	datab => \contador~3_combout\,
	datac => \Equal11~0_combout\,
	datad => \Equal9~1_combout\,
	combout => \contador~9_combout\);

-- Location: LCCOMB_X24_Y26_N6
\contador~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~10_combout\ = (\Equal3~0_combout\ & ((\sel:auxSaida[1]~q\ & (\sel:auxSaida[2]~q\ & !\sel:auxSaida[0]~q\)) # (!\sel:auxSaida[1]~q\ & ((\sel:auxSaida[2]~q\) # (!\sel:auxSaida[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[2]~q\,
	datac => \Equal3~0_combout\,
	datad => \sel:auxSaida[0]~q\,
	combout => \contador~10_combout\);

-- Location: LCCOMB_X24_Y26_N4
\contador~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~11_combout\ = (\contador~10_combout\) # (((\Equal13~0_combout\ & \Equal5~1_combout\)) # (!\contador~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~10_combout\,
	datab => \Equal13~0_combout\,
	datac => \Equal5~1_combout\,
	datad => \contador~6_combout\,
	combout => \contador~11_combout\);

-- Location: LCCOMB_X24_Y26_N30
\contador~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~12_combout\ = (\Equal13~0_combout\ & (\sel:auxSaida[0]~q\ $ (((\contador~11_combout\ & \sel:auxSaida[1]~q\))))) # (!\Equal13~0_combout\ & (((!\contador~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[0]~q\,
	datab => \Equal13~0_combout\,
	datac => \contador~11_combout\,
	datad => \sel:auxSaida[1]~q\,
	combout => \contador~12_combout\);

-- Location: LCCOMB_X24_Y27_N10
\contador~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~13_combout\ = (\sel:auxSaida[1]~q\ & (!\sel:auxSaida[0]~q\ & (!\sel:auxSaida[2]~q\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal9~0_combout\,
	combout => \contador~13_combout\);

-- Location: LCCOMB_X24_Y27_N4
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\sel:auxSaida[1]~q\ & (\sel:auxSaida[0]~q\ & (\sel:auxSaida[2]~q\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel:auxSaida[1]~q\,
	datab => \sel:auxSaida[0]~q\,
	datac => \sel:auxSaida[2]~q\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X24_Y27_N14
\contador~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~14_combout\ = (\contador~13_combout\) # ((\contador~6_combout\ & (!\Equal3~1_combout\ & \contador~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~13_combout\,
	datab => \contador~6_combout\,
	datac => \Equal3~1_combout\,
	datad => \contador~5_combout\,
	combout => \contador~14_combout\);

-- Location: LCCOMB_X24_Y27_N28
\contador~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~15_combout\ = (\contador~5_combout\ & ((!\Equal3~1_combout\) # (!\contador~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador~6_combout\,
	datac => \Equal3~1_combout\,
	datad => \contador~5_combout\,
	combout => \contador~15_combout\);

-- Location: LCCOMB_X24_Y27_N22
\contador~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~16_combout\ = (!\Equal11~0_combout\ & (\contador~4_combout\ & (\contador~3_combout\ & !\Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \contador~4_combout\,
	datac => \contador~3_combout\,
	datad => \Equal9~1_combout\,
	combout => \contador~16_combout\);

-- Location: LCCOMB_X24_Y27_N8
\contador~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~17_combout\ = (\contador~6_combout\ & ((\contador~5_combout\ & (!\contador~7_combout\)) # (!\contador~5_combout\ & ((\contador~16_combout\))))) # (!\contador~6_combout\ & (((\contador~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~7_combout\,
	datab => \contador~6_combout\,
	datac => \contador~16_combout\,
	datad => \contador~5_combout\,
	combout => \contador~17_combout\);

ww_contador(0) <= \contador[0]~output_o\;

ww_contador(1) <= \contador[1]~output_o\;

ww_contador(2) <= \contador[2]~output_o\;

ww_contador(3) <= \contador[3]~output_o\;

ww_contador(4) <= \contador[4]~output_o\;

ww_contador(5) <= \contador[5]~output_o\;

ww_contador(6) <= \contador[6]~output_o\;

ww_contador(7) <= \contador[7]~output_o\;
END structure;


