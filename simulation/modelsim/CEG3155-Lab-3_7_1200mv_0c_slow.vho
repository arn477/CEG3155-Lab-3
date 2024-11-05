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

-- DATE "11/05/2024 08:18:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	nBitTimer IS
    PORT (
	i_clk : IN std_logic;
	i_reset : IN std_logic;
	i_targetCount : IN std_logic_vector(3 DOWNTO 0);
	o_done : OUT std_logic
	);
END nBitTimer;

-- Design Ports Information
-- o_done	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_targetCount[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_targetCount[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_targetCount[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_targetCount[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nBitTimer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_targetCount : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_done : std_logic;
SIGNAL \i_reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \incrementer|reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \incrementer|reg|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \comparator|o_AeqB~1_combout\ : std_logic;
SIGNAL \incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ : std_logic;
SIGNAL \incrementer|reg|reg_n_bits:3:b|int_q~0_combout\ : std_logic;
SIGNAL \i_targetCount[1]~input_o\ : std_logic;
SIGNAL \i_targetCount[2]~input_o\ : std_logic;
SIGNAL \i_targetCount[3]~input_o\ : std_logic;
SIGNAL \o_done~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_targetCount[0]~input_o\ : std_logic;
SIGNAL \incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ : std_logic;
SIGNAL \i_reset~input_o\ : std_logic;
SIGNAL \i_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \incrementer|reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ : std_logic;
SIGNAL \incrementer|reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \comparator|o_AeqB~0_combout\ : std_logic;
SIGNAL \doneFF|int_q~0_combout\ : std_logic;
SIGNAL \doneFF|int_q~q\ : std_logic;
SIGNAL \ALT_INV_i_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_reset <= i_reset;
ww_i_targetCount <= i_targetCount;
o_done <= ww_o_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_reset~input_o\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_reset~inputclkctrl_outclk\ <= NOT \i_reset~inputclkctrl_outclk\;

-- Location: FF_X1_Y12_N21
\incrementer|reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \incrementer|reg|reg_n_bits:2:b|int_q~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incrementer|reg|reg_n_bits:2:b|int_q~q\);

-- Location: FF_X1_Y12_N15
\incrementer|reg|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \incrementer|reg|reg_n_bits:3:b|int_q~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incrementer|reg|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X1_Y12_N12
\comparator|o_AeqB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparator|o_AeqB~1_combout\ = (\i_targetCount[3]~input_o\ & ((\i_targetCount[2]~input_o\ $ (\incrementer|reg|reg_n_bits:2:b|int_q~q\)) # (!\incrementer|reg|reg_n_bits:3:b|int_q~q\))) # (!\i_targetCount[3]~input_o\ & 
-- ((\incrementer|reg|reg_n_bits:3:b|int_q~q\) # (\i_targetCount[2]~input_o\ $ (\incrementer|reg|reg_n_bits:2:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_targetCount[3]~input_o\,
	datab => \i_targetCount[2]~input_o\,
	datac => \incrementer|reg|reg_n_bits:3:b|int_q~q\,
	datad => \incrementer|reg|reg_n_bits:2:b|int_q~q\,
	combout => \comparator|o_AeqB~1_combout\);

-- Location: LCCOMB_X1_Y12_N20
\incrementer|reg|reg_n_bits:2:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ = \incrementer|reg|reg_n_bits:2:b|int_q~q\ $ (((\incrementer|reg|reg_n_bits:0:b|int_q~q\ & \incrementer|reg|reg_n_bits:1:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datac => \incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datad => \incrementer|reg|reg_n_bits:1:b|int_q~q\,
	combout => \incrementer|reg|reg_n_bits:2:b|int_q~0_combout\);

-- Location: LCCOMB_X1_Y12_N14
\incrementer|reg|reg_n_bits:3:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incrementer|reg|reg_n_bits:3:b|int_q~0_combout\ = \incrementer|reg|reg_n_bits:3:b|int_q~q\ $ (((\incrementer|reg|reg_n_bits:0:b|int_q~q\ & (\incrementer|reg|reg_n_bits:2:b|int_q~q\ & \incrementer|reg|reg_n_bits:1:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datab => \incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datac => \incrementer|reg|reg_n_bits:3:b|int_q~q\,
	datad => \incrementer|reg|reg_n_bits:1:b|int_q~q\,
	combout => \incrementer|reg|reg_n_bits:3:b|int_q~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\i_targetCount[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_targetCount(1),
	o => \i_targetCount[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\i_targetCount[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_targetCount(2),
	o => \i_targetCount[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\i_targetCount[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_targetCount(3),
	o => \i_targetCount[3]~input_o\);

-- Location: IOOBUF_X0_Y13_N2
\o_done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \doneFF|int_q~q\,
	devoe => ww_devoe,
	o => \o_done~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G2
\i_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y13_N8
\i_targetCount[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_targetCount(0),
	o => \i_targetCount[0]~input_o\);

-- Location: LCCOMB_X1_Y12_N30
\incrementer|reg|reg_n_bits:0:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ = !\incrementer|reg|reg_n_bits:0:b|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \incrementer|reg|reg_n_bits:0:b|int_q~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\i_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_reset,
	o => \i_reset~input_o\);

-- Location: CLKCTRL_G4
\i_reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y12_N31
\incrementer|reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \incrementer|reg|reg_n_bits:0:b|int_q~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incrementer|reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X1_Y12_N16
\incrementer|reg|reg_n_bits:1:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ = \incrementer|reg|reg_n_bits:1:b|int_q~q\ $ (\incrementer|reg|reg_n_bits:0:b|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \incrementer|reg|reg_n_bits:1:b|int_q~0_combout\);

-- Location: FF_X1_Y12_N17
\incrementer|reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \incrementer|reg|reg_n_bits:1:b|int_q~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incrementer|reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X1_Y12_N18
\comparator|o_AeqB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparator|o_AeqB~0_combout\ = (\i_targetCount[1]~input_o\ & ((\i_targetCount[0]~input_o\ $ (\incrementer|reg|reg_n_bits:0:b|int_q~q\)) # (!\incrementer|reg|reg_n_bits:1:b|int_q~q\))) # (!\i_targetCount[1]~input_o\ & 
-- ((\incrementer|reg|reg_n_bits:1:b|int_q~q\) # (\i_targetCount[0]~input_o\ $ (\incrementer|reg|reg_n_bits:0:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_targetCount[1]~input_o\,
	datab => \i_targetCount[0]~input_o\,
	datac => \incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datad => \incrementer|reg|reg_n_bits:1:b|int_q~q\,
	combout => \comparator|o_AeqB~0_combout\);

-- Location: LCCOMB_X1_Y12_N24
\doneFF|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doneFF|int_q~0_combout\ = (\doneFF|int_q~q\) # ((!\comparator|o_AeqB~1_combout\ & !\comparator|o_AeqB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator|o_AeqB~1_combout\,
	datac => \doneFF|int_q~q\,
	datad => \comparator|o_AeqB~0_combout\,
	combout => \doneFF|int_q~0_combout\);

-- Location: FF_X1_Y12_N25
\doneFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \doneFF|int_q~0_combout\,
	clrn => \ALT_INV_i_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doneFF|int_q~q\);

ww_o_done <= \o_done~output_o\;
END structure;


