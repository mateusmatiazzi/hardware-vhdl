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

-- DATE "10/24/2018 15:37:19"

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

ENTITY 	semaforo IS
    PORT (
	SW : IN std_logic;
	clk : IN std_logic;
	LEDR : OUT STD.STANDARD.bit_vector(1 DOWNTO 0);
	LEDG : OUT STD.STANDARD.bit_vector(1 DOWNTO 0)
	);
END semaforo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semaforo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \e_atual.YY~feeder_combout\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
SIGNAL \e_atual.YY~q\ : std_logic;
SIGNAL \count[0]~31_combout\ : std_logic;
SIGNAL \count[7]~46\ : std_logic;
SIGNAL \count[8]~47_combout\ : std_logic;
SIGNAL \count[8]~48\ : std_logic;
SIGNAL \count[9]~49_combout\ : std_logic;
SIGNAL \count[9]~50\ : std_logic;
SIGNAL \count[10]~51_combout\ : std_logic;
SIGNAL \count[10]~52\ : std_logic;
SIGNAL \count[11]~53_combout\ : std_logic;
SIGNAL \count[11]~54\ : std_logic;
SIGNAL \count[12]~55_combout\ : std_logic;
SIGNAL \count[12]~56\ : std_logic;
SIGNAL \count[13]~57_combout\ : std_logic;
SIGNAL \count[13]~58\ : std_logic;
SIGNAL \count[14]~59_combout\ : std_logic;
SIGNAL \count[14]~60\ : std_logic;
SIGNAL \count[15]~61_combout\ : std_logic;
SIGNAL \count[15]~62\ : std_logic;
SIGNAL \count[16]~63_combout\ : std_logic;
SIGNAL \count[16]~64\ : std_logic;
SIGNAL \count[17]~65_combout\ : std_logic;
SIGNAL \count[17]~66\ : std_logic;
SIGNAL \count[18]~67_combout\ : std_logic;
SIGNAL \count[18]~68\ : std_logic;
SIGNAL \count[19]~69_combout\ : std_logic;
SIGNAL \count[19]~70\ : std_logic;
SIGNAL \count[20]~71_combout\ : std_logic;
SIGNAL \count[20]~72\ : std_logic;
SIGNAL \count[21]~73_combout\ : std_logic;
SIGNAL \count[21]~74\ : std_logic;
SIGNAL \count[22]~75_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \count[22]~76\ : std_logic;
SIGNAL \count[23]~77_combout\ : std_logic;
SIGNAL \count[23]~78\ : std_logic;
SIGNAL \count[24]~79_combout\ : std_logic;
SIGNAL \count[24]~80\ : std_logic;
SIGNAL \count[25]~81_combout\ : std_logic;
SIGNAL \count[25]~82\ : std_logic;
SIGNAL \count[26]~83_combout\ : std_logic;
SIGNAL \count[26]~84\ : std_logic;
SIGNAL \count[27]~85_combout\ : std_logic;
SIGNAL \count[27]~86\ : std_logic;
SIGNAL \count[28]~87_combout\ : std_logic;
SIGNAL \count[28]~88\ : std_logic;
SIGNAL \count[29]~89_combout\ : std_logic;
SIGNAL \count[29]~90\ : std_logic;
SIGNAL \count[30]~91_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \e_atual.RY~q\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \e_atual.GR~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \e_atual.YR~q\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \count[0]~32\ : std_logic;
SIGNAL \count[1]~33_combout\ : std_logic;
SIGNAL \count[1]~34\ : std_logic;
SIGNAL \count[2]~35_combout\ : std_logic;
SIGNAL \count[2]~36\ : std_logic;
SIGNAL \count[3]~37_combout\ : std_logic;
SIGNAL \count[3]~38\ : std_logic;
SIGNAL \count[4]~39_combout\ : std_logic;
SIGNAL \count[4]~40\ : std_logic;
SIGNAL \count[5]~41_combout\ : std_logic;
SIGNAL \count[5]~42\ : std_logic;
SIGNAL \count[6]~43_combout\ : std_logic;
SIGNAL \count[6]~44\ : std_logic;
SIGNAL \count[7]~45_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \e_atual.RG~q\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \LEDG~1_combout\ : std_logic;
SIGNAL count : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW~input_o\ : std_logic;
SIGNAL \ALT_INV_LEDG~1_combout\ : std_logic;
SIGNAL \ALT_INV_LEDG~0_combout\ : std_logic;
SIGNAL \ALT_INV_e_atual.GR~q\ : std_logic;
SIGNAL \ALT_INV_e_atual.RG~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_clk <= clk;
LEDR <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LEDR);
LEDG <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LEDG);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_SW~input_o\ <= NOT \SW~input_o\;
\ALT_INV_LEDG~1_combout\ <= NOT \LEDG~1_combout\;
\ALT_INV_LEDG~0_combout\ <= NOT \LEDG~0_combout\;
\ALT_INV_e_atual.GR~q\ <= NOT \e_atual.GR~q\;
\ALT_INV_e_atual.RG~q\ <= NOT \e_atual.RG~q\;

-- Location: IOOBUF_X0_Y21_N23
\LEDR[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_e_atual.RG~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDR[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_e_atual.GR~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDG~0_combout\,
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
	i => \ALT_INV_LEDG~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

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

-- Location: LCCOMB_X30_Y25_N12
\e_atual.YY~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \e_atual.YY~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \e_atual.YY~feeder_combout\);

-- Location: IOIBUF_X0_Y24_N1
\SW~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW,
	o => \SW~input_o\);

-- Location: FF_X30_Y25_N13
\e_atual.YY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \e_atual.YY~feeder_combout\,
	clrn => \ALT_INV_SW~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_atual.YY~q\);

-- Location: LCCOMB_X32_Y26_N2
\count[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~31_combout\ = count(0) $ (VCC)
-- \count[0]~32\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~31_combout\,
	cout => \count[0]~32\);

-- Location: LCCOMB_X32_Y26_N16
\count[7]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~45_combout\ = (count(7) & (!\count[6]~44\)) # (!count(7) & ((\count[6]~44\) # (GND)))
-- \count[7]~46\ = CARRY((!\count[6]~44\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~44\,
	combout => \count[7]~45_combout\,
	cout => \count[7]~46\);

-- Location: LCCOMB_X32_Y26_N18
\count[8]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~47_combout\ = (count(8) & (\count[7]~46\ $ (GND))) # (!count(8) & (!\count[7]~46\ & VCC))
-- \count[8]~48\ = CARRY((count(8) & !\count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~46\,
	combout => \count[8]~47_combout\,
	cout => \count[8]~48\);

-- Location: FF_X32_Y26_N19
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~47_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X32_Y26_N20
\count[9]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~49_combout\ = (count(9) & (!\count[8]~48\)) # (!count(9) & ((\count[8]~48\) # (GND)))
-- \count[9]~50\ = CARRY((!\count[8]~48\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~48\,
	combout => \count[9]~49_combout\,
	cout => \count[9]~50\);

-- Location: FF_X32_Y26_N21
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~49_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X32_Y26_N22
\count[10]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~51_combout\ = (count(10) & (\count[9]~50\ $ (GND))) # (!count(10) & (!\count[9]~50\ & VCC))
-- \count[10]~52\ = CARRY((count(10) & !\count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~50\,
	combout => \count[10]~51_combout\,
	cout => \count[10]~52\);

-- Location: FF_X32_Y26_N23
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~51_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X32_Y26_N24
\count[11]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~53_combout\ = (count(11) & (!\count[10]~52\)) # (!count(11) & ((\count[10]~52\) # (GND)))
-- \count[11]~54\ = CARRY((!\count[10]~52\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~52\,
	combout => \count[11]~53_combout\,
	cout => \count[11]~54\);

-- Location: FF_X32_Y26_N25
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~53_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X32_Y26_N26
\count[12]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~55_combout\ = (count(12) & (\count[11]~54\ $ (GND))) # (!count(12) & (!\count[11]~54\ & VCC))
-- \count[12]~56\ = CARRY((count(12) & !\count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~54\,
	combout => \count[12]~55_combout\,
	cout => \count[12]~56\);

-- Location: FF_X32_Y26_N27
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~55_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X32_Y26_N28
\count[13]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~57_combout\ = (count(13) & (!\count[12]~56\)) # (!count(13) & ((\count[12]~56\) # (GND)))
-- \count[13]~58\ = CARRY((!\count[12]~56\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~56\,
	combout => \count[13]~57_combout\,
	cout => \count[13]~58\);

-- Location: FF_X32_Y26_N29
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~57_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X32_Y26_N30
\count[14]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~59_combout\ = (count(14) & (\count[13]~58\ $ (GND))) # (!count(14) & (!\count[13]~58\ & VCC))
-- \count[14]~60\ = CARRY((count(14) & !\count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \count[13]~58\,
	combout => \count[14]~59_combout\,
	cout => \count[14]~60\);

-- Location: FF_X32_Y26_N31
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~59_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X32_Y25_N0
\count[15]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~61_combout\ = (count(15) & (!\count[14]~60\)) # (!count(15) & ((\count[14]~60\) # (GND)))
-- \count[15]~62\ = CARRY((!\count[14]~60\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~60\,
	combout => \count[15]~61_combout\,
	cout => \count[15]~62\);

-- Location: FF_X32_Y25_N1
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~61_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X32_Y25_N2
\count[16]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~63_combout\ = (count(16) & (\count[15]~62\ $ (GND))) # (!count(16) & (!\count[15]~62\ & VCC))
-- \count[16]~64\ = CARRY((count(16) & !\count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~62\,
	combout => \count[16]~63_combout\,
	cout => \count[16]~64\);

-- Location: FF_X31_Y26_N29
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count[16]~63_combout\,
	sclr => \process_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X32_Y25_N4
\count[17]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[17]~65_combout\ = (count(17) & (!\count[16]~64\)) # (!count(17) & ((\count[16]~64\) # (GND)))
-- \count[17]~66\ = CARRY((!\count[16]~64\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~64\,
	combout => \count[17]~65_combout\,
	cout => \count[17]~66\);

-- Location: FF_X33_Y26_N13
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count[17]~65_combout\,
	sclr => \process_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X32_Y25_N6
\count[18]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[18]~67_combout\ = (count(18) & (\count[17]~66\ $ (GND))) # (!count(18) & (!\count[17]~66\ & VCC))
-- \count[18]~68\ = CARRY((count(18) & !\count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~66\,
	combout => \count[18]~67_combout\,
	cout => \count[18]~68\);

-- Location: FF_X32_Y25_N7
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~67_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X32_Y25_N8
\count[19]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[19]~69_combout\ = (count(19) & (!\count[18]~68\)) # (!count(19) & ((\count[18]~68\) # (GND)))
-- \count[19]~70\ = CARRY((!\count[18]~68\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~68\,
	combout => \count[19]~69_combout\,
	cout => \count[19]~70\);

-- Location: FF_X32_Y25_N9
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~69_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X32_Y25_N10
\count[20]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[20]~71_combout\ = (count(20) & (\count[19]~70\ $ (GND))) # (!count(20) & (!\count[19]~70\ & VCC))
-- \count[20]~72\ = CARRY((count(20) & !\count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~70\,
	combout => \count[20]~71_combout\,
	cout => \count[20]~72\);

-- Location: FF_X33_Y26_N5
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count[20]~71_combout\,
	sclr => \process_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X32_Y25_N12
\count[21]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[21]~73_combout\ = (count(21) & (!\count[20]~72\)) # (!count(21) & ((\count[20]~72\) # (GND)))
-- \count[21]~74\ = CARRY((!\count[20]~72\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~72\,
	combout => \count[21]~73_combout\,
	cout => \count[21]~74\);

-- Location: FF_X33_Y26_N7
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count[21]~73_combout\,
	sclr => \process_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X32_Y25_N14
\count[22]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[22]~75_combout\ = (count(22) & (\count[21]~74\ $ (GND))) # (!count(22) & (!\count[21]~74\ & VCC))
-- \count[22]~76\ = CARRY((count(22) & !\count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~74\,
	combout => \count[22]~75_combout\,
	cout => \count[22]~76\);

-- Location: FF_X32_Y25_N15
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~75_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X31_Y26_N22
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!count(19)) # (!count(21))) # (!count(22))) # (!count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(22),
	datac => count(21),
	datad => count(19),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y25_N16
\count[23]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[23]~77_combout\ = (count(23) & (!\count[22]~76\)) # (!count(23) & ((\count[22]~76\) # (GND)))
-- \count[23]~78\ = CARRY((!\count[22]~76\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~76\,
	combout => \count[23]~77_combout\,
	cout => \count[23]~78\);

-- Location: FF_X32_Y25_N17
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~77_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X32_Y25_N18
\count[24]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[24]~79_combout\ = (count(24) & (\count[23]~78\ $ (GND))) # (!count(24) & (!\count[23]~78\ & VCC))
-- \count[24]~80\ = CARRY((count(24) & !\count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~78\,
	combout => \count[24]~79_combout\,
	cout => \count[24]~80\);

-- Location: FF_X32_Y25_N19
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~79_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X32_Y25_N20
\count[25]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[25]~81_combout\ = (count(25) & (!\count[24]~80\)) # (!count(25) & ((\count[24]~80\) # (GND)))
-- \count[25]~82\ = CARRY((!\count[24]~80\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~80\,
	combout => \count[25]~81_combout\,
	cout => \count[25]~82\);

-- Location: FF_X32_Y25_N21
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~81_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X32_Y25_N22
\count[26]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[26]~83_combout\ = (count(26) & (\count[25]~82\ $ (GND))) # (!count(26) & (!\count[25]~82\ & VCC))
-- \count[26]~84\ = CARRY((count(26) & !\count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \count[25]~82\,
	combout => \count[26]~83_combout\,
	cout => \count[26]~84\);

-- Location: FF_X32_Y25_N23
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~83_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X32_Y25_N24
\count[27]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[27]~85_combout\ = (count(27) & (!\count[26]~84\)) # (!count(27) & ((\count[26]~84\) # (GND)))
-- \count[27]~86\ = CARRY((!\count[26]~84\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	datad => VCC,
	cin => \count[26]~84\,
	combout => \count[27]~85_combout\,
	cout => \count[27]~86\);

-- Location: FF_X32_Y25_N25
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~85_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X32_Y25_N26
\count[28]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[28]~87_combout\ = (count(28) & (\count[27]~86\ $ (GND))) # (!count(28) & (!\count[27]~86\ & VCC))
-- \count[28]~88\ = CARRY((count(28) & !\count[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \count[27]~86\,
	combout => \count[28]~87_combout\,
	cout => \count[28]~88\);

-- Location: FF_X32_Y25_N27
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[28]~87_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X32_Y25_N28
\count[29]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[29]~89_combout\ = (count(29) & (!\count[28]~88\)) # (!count(29) & ((\count[28]~88\) # (GND)))
-- \count[29]~90\ = CARRY((!\count[28]~88\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \count[28]~88\,
	combout => \count[29]~89_combout\,
	cout => \count[29]~90\);

-- Location: FF_X32_Y25_N29
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[29]~89_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X32_Y25_N30
\count[30]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[30]~91_combout\ = count(30) $ (!\count[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	cin => \count[29]~90\,
	combout => \count[30]~91_combout\);

-- Location: FF_X32_Y25_N31
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[30]~91_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X31_Y25_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!count(30) & (!count(29) & (!count(27) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(29),
	datac => count(27),
	datad => count(28),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y26_N4
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!count(23) & (!count(25) & !count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datac => count(25),
	datad => count(24),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y26_N12
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!count(9) & (!count(10) & ((!count(6)) # (!count(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(7),
	datac => count(6),
	datad => count(10),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X31_Y26_N18
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!count(12) & !count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => count(8),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X31_Y26_N26
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (((!count(11) & !count(12))) # (!count(13))) # (!count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(13),
	datac => count(11),
	datad => count(12),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X31_Y26_N16
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!count(17) & (!count(16) & (!count(18) & !count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(16),
	datac => count(18),
	datad => count(15),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X31_Y26_N10
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\LessThan1~4_combout\ & ((\LessThan1~5_combout\) # ((\LessThan1~6_combout\ & \Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~6_combout\,
	datab => \Equal2~1_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X31_Y26_N0
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\LessThan1~0_combout\ & (\LessThan1~2_combout\ & ((\LessThan1~3_combout\) # (\LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X31_Y26_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(2) & (!count(3) & (!count(9) & !count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(9),
	datad => count(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y25_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(30) & (!count(29) & (!count(0) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(29),
	datac => count(0),
	datad => count(28),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X33_Y25_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(1) & (count(22) & (count(21) & count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(22),
	datac => count(21),
	datad => count(20),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y25_N10
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(18) & (count(14) & (!count(5) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(14),
	datac => count(5),
	datad => count(4),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y25_N24
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X31_Y25_N26
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(11) & (!count(15) & (count(6) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(15),
	datac => count(6),
	datad => count(23),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X31_Y25_N12
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(27) & (\Equal0~5_combout\ & count(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datac => \Equal0~5_combout\,
	datad => count(26),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y26_N8
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!count(17) & (!count(16) & (count(7) & count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(16),
	datac => count(7),
	datad => count(13),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~1_combout\ & (!count(25) & (!count(24) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => count(25),
	datac => count(24),
	datad => \Equal2~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X30_Y25_N18
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (count(19) & (\Equal0~4_combout\ & (\Equal0~6_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => \Equal0~4_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X31_Y25_N6
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal0~10_combout\ & ((\e_atual.RG~q\) # ((\e_atual.RY~q\ & !\Equal2~3_combout\)))) # (!\Equal0~10_combout\ & (((\e_atual.RY~q\ & !\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \e_atual.RG~q\,
	datac => \e_atual.RY~q\,
	datad => \Equal2~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X31_Y25_N7
\e_atual.RY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_SW~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_atual.RY~q\);

-- Location: LCCOMB_X31_Y26_N24
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(19) & (!count(13) & (count(8) & count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(13),
	datac => count(8),
	datad => count(12),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X33_Y25_N2
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count(17) & (count(7) & (!count(16) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(7),
	datac => count(16),
	datad => count(11),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X33_Y25_N12
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (count(15) & (count(27) & (count(23) & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(27),
	datac => count(23),
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X31_Y25_N14
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(25) & (!count(24) & (!count(6) & !count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(24),
	datac => count(6),
	datad => count(26),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y25_N30
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal0~7_combout\ & (\Equal1~2_combout\ & (\Equal1~0_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X30_Y25_N26
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal1~3_combout\ & (\Equal2~3_combout\ & ((\e_atual.RY~q\)))) # (!\Equal1~3_combout\ & ((\e_atual.GR~q\) # ((\Equal2~3_combout\ & \e_atual.RY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal2~3_combout\,
	datac => \e_atual.GR~q\,
	datad => \e_atual.RY~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X30_Y25_N27
\e_atual.GR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_SW~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_atual.GR~q\);

-- Location: LCCOMB_X31_Y25_N4
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\e_atual.GR~q\ & ((\Equal1~3_combout\) # ((\e_atual.YR~q\ & !\Equal2~3_combout\)))) # (!\e_atual.GR~q\ & (((\e_atual.YR~q\ & !\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_atual.GR~q\,
	datab => \Equal1~3_combout\,
	datac => \e_atual.YR~q\,
	datad => \Equal2~3_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X31_Y25_N5
\e_atual.YR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_SW~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_atual.YR~q\);

-- Location: LCCOMB_X31_Y25_N22
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (\e_atual.RY~q\ & ((count(26)) # ((!\LessThan1~0_combout\)))) # (!\e_atual.RY~q\ & (\e_atual.YR~q\ & ((count(26)) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_atual.RY~q\,
	datab => count(26),
	datac => \e_atual.YR~q\,
	datad => \LessThan1~0_combout\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X33_Y25_N10
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!count(30) & (!count(28) & !count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datac => count(28),
	datad => count(29),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X33_Y26_N14
\LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!count(26) & (!count(24) & (!count(25) & \LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(24),
	datac => count(25),
	datad => \LessThan1~1_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X33_Y26_N10
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!count(22)) # (!count(23))) # (!count(21))) # (!count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(21),
	datac => count(23),
	datad => count(22),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y26_N0
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!count(18) & (!count(17) & (!count(19) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(17),
	datac => count(19),
	datad => count(16),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y26_N6
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((!count(12) & !count(13))) # (!count(15))) # (!count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(12),
	datac => count(13),
	datad => count(15),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X32_Y26_N0
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!count(10) & (!count(9) & ((!count(7)) # (!count(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(8),
	datac => count(9),
	datad => count(7),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X33_Y26_N18
\LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!count(11) & (\LessThan2~3_combout\ & !count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datac => \LessThan2~3_combout\,
	datad => count(13),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X33_Y26_N20
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\LessThan2~0_combout\) # ((\LessThan2~1_combout\ & ((\LessThan2~2_combout\) # (\LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X33_Y26_N8
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\e_atual.GR~q\ & (!\LessThan1~0_combout\ & ((!\LessThan2~5_combout\) # (!\LessThan2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_atual.GR~q\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan2~6_combout\,
	datad => \LessThan2~5_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X33_Y26_N12
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!count(15) & !count(14))) # (!count(17))) # (!count(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(16),
	datac => count(17),
	datad => count(14),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y26_N16
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!count(15) & (!count(13) & ((!count(12)) # (!count(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(11),
	datac => count(12),
	datad => count(13),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y26_N28
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(15) & (!count(10) & (!count(9) & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(10),
	datac => count(9),
	datad => count(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y26_N26
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\ & (((!count(6) & !count(7))) # (!count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(8),
	datac => count(7),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y26_N6
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(23) & (!count(19) & !count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(19),
	datad => count(18),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y26_N2
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~4_combout\) # ((\LessThan0~3_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y26_N4
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (count(23)) # ((count(21) & (count(20) & count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(21),
	datac => count(20),
	datad => count(22),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X33_Y26_N22
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (count(26) & (count(24) & (\process_1~2_combout\ & count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(24),
	datac => \process_1~2_combout\,
	datad => count(25),
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X33_Y26_N24
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\e_atual.RG~q\ & (((!\LessThan0~5_combout\ & \process_1~3_combout\)) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_atual.RG~q\,
	datab => \LessThan0~5_combout\,
	datac => \process_1~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X33_Y26_N30
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (\process_1~5_combout\) # ((\process_1~4_combout\) # ((!\LessThan1~8_combout\ & \process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \process_1~6_combout\,
	datac => \process_1~5_combout\,
	datad => \process_1~4_combout\,
	combout => \process_1~7_combout\);

-- Location: FF_X32_Y26_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~31_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X32_Y26_N4
\count[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~33_combout\ = (count(1) & (!\count[0]~32\)) # (!count(1) & ((\count[0]~32\) # (GND)))
-- \count[1]~34\ = CARRY((!\count[0]~32\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~32\,
	combout => \count[1]~33_combout\,
	cout => \count[1]~34\);

-- Location: FF_X32_Y26_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~33_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X32_Y26_N6
\count[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~35_combout\ = (count(2) & (\count[1]~34\ $ (GND))) # (!count(2) & (!\count[1]~34\ & VCC))
-- \count[2]~36\ = CARRY((count(2) & !\count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~34\,
	combout => \count[2]~35_combout\,
	cout => \count[2]~36\);

-- Location: FF_X32_Y26_N7
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~35_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X32_Y26_N8
\count[3]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~37_combout\ = (count(3) & (!\count[2]~36\)) # (!count(3) & ((\count[2]~36\) # (GND)))
-- \count[3]~38\ = CARRY((!\count[2]~36\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~36\,
	combout => \count[3]~37_combout\,
	cout => \count[3]~38\);

-- Location: FF_X32_Y26_N9
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~37_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X32_Y26_N10
\count[4]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~39_combout\ = (count(4) & (\count[3]~38\ $ (GND))) # (!count(4) & (!\count[3]~38\ & VCC))
-- \count[4]~40\ = CARRY((count(4) & !\count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~38\,
	combout => \count[4]~39_combout\,
	cout => \count[4]~40\);

-- Location: FF_X32_Y26_N11
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~39_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X32_Y26_N12
\count[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~41_combout\ = (count(5) & (!\count[4]~40\)) # (!count(5) & ((\count[4]~40\) # (GND)))
-- \count[5]~42\ = CARRY((!\count[4]~40\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~40\,
	combout => \count[5]~41_combout\,
	cout => \count[5]~42\);

-- Location: FF_X32_Y26_N13
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~41_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X32_Y26_N14
\count[6]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~43_combout\ = (count(6) & (\count[5]~42\ $ (GND))) # (!count(6) & (!\count[5]~42\ & VCC))
-- \count[6]~44\ = CARRY((count(6) & !\count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~42\,
	combout => \count[6]~43_combout\,
	cout => \count[6]~44\);

-- Location: FF_X32_Y26_N15
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~43_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X32_Y26_N17
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~45_combout\,
	sclr => \process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X31_Y25_N18
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (count(16) & (count(24) & (count(25) & count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(24),
	datac => count(25),
	datad => count(17),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X31_Y25_N20
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(7) & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(7),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X30_Y25_N14
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~4_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X30_Y25_N24
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\e_atual.YR~q\ & \Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e_atual.YR~q\,
	datad => \Equal2~3_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ((\Selector0~0_combout\) # ((!\Equal0~10_combout\ & \e_atual.RG~q\))) # (!\e_atual.YY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_atual.YY~q\,
	datab => \Equal0~10_combout\,
	datac => \e_atual.RG~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X30_Y25_N1
\e_atual.RG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_SW~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_atual.RG~q\);

-- Location: LCCOMB_X30_Y25_N20
\LEDG~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\e_atual.YR~q\) # (\e_atual.GR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e_atual.YR~q\,
	datac => \e_atual.GR~q\,
	combout => \LEDG~0_combout\);

-- Location: LCCOMB_X30_Y25_N22
\LEDG~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG~1_combout\ = (\e_atual.RG~q\) # (\e_atual.RY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e_atual.RG~q\,
	datad => \e_atual.RY~q\,
	combout => \LEDG~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;
END structure;


