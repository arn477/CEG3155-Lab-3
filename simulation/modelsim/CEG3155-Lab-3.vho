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

-- DATE "11/05/2024 07:11:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nbitcomparator IS
    PORT (
	i_A : IN std_logic_vector(3 DOWNTO 0);
	i_B : IN std_logic_vector(3 DOWNTO 0);
	o_AeqB : OUT std_logic;
	o_AgtB : OUT std_logic;
	o_AltB : OUT std_logic
	);
END nbitcomparator;

-- Design Ports Information
-- o_AeqB	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_AgtB	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_AltB	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nbitcomparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_AeqB : std_logic;
SIGNAL ww_o_AgtB : std_logic;
SIGNAL ww_o_AltB : std_logic;
SIGNAL \comparatorLoop:2:comparator_n|o_LT~0_combout\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \o_AeqB~output_o\ : std_logic;
SIGNAL \o_AgtB~output_o\ : std_logic;
SIGNAL \o_AltB~output_o\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \comparatorLoop:2:comparator_n|o_GT~0_combout\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \comparatorLoop:1:comparator_n|o_GT~0_combout\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \comparatorLoop:1:comparator_n|o_LT~0_combout\ : std_logic;
SIGNAL \o_AeqB~0_combout\ : std_logic;
SIGNAL \comparatorLoop:0:comparator_n|o_GT~0_combout\ : std_logic;
SIGNAL \comparatorLoop:0:comparator_n|o_LT~0_combout\ : std_logic;
SIGNAL \ALT_INV_o_AeqB~0_combout\ : std_logic;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
o_AeqB <= ww_o_AeqB;
o_AgtB <= ww_o_AgtB;
o_AltB <= ww_o_AltB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o_AeqB~0_combout\ <= NOT \o_AeqB~0_combout\;

-- Location: LCCOMB_X1_Y69_N26
\comparatorLoop:2:comparator_n|o_LT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparatorLoop:2:comparator_n|o_LT~0_combout\ = (\i_A[3]~input_o\ & (!\i_A[2]~input_o\ & (\i_B[2]~input_o\ & \i_B[3]~input_o\))) # (!\i_A[3]~input_o\ & ((\i_B[3]~input_o\) # ((!\i_A[2]~input_o\ & \i_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[2]~input_o\,
	datab => \i_A[3]~input_o\,
	datac => \i_B[2]~input_o\,
	datad => \i_B[3]~input_o\,
	combout => \comparatorLoop:2:comparator_n|o_LT~0_combout\);

-- Location: IOIBUF_X1_Y73_N1
\i_A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: IOOBUF_X0_Y67_N16
\o_AeqB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_AeqB~0_combout\,
	devoe => ww_devoe,
	o => \o_AeqB~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\o_AgtB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparatorLoop:0:comparator_n|o_GT~0_combout\,
	devoe => ww_devoe,
	o => \o_AgtB~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\o_AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparatorLoop:0:comparator_n|o_LT~0_combout\,
	devoe => ww_devoe,
	o => \o_AltB~output_o\);

-- Location: IOIBUF_X1_Y73_N22
\i_A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\i_B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\i_B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: LCCOMB_X1_Y69_N0
\comparatorLoop:2:comparator_n|o_GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparatorLoop:2:comparator_n|o_GT~0_combout\ = (\i_A[3]~input_o\ & (((\i_A[2]~input_o\ & !\i_B[2]~input_o\)) # (!\i_B[3]~input_o\))) # (!\i_A[3]~input_o\ & (\i_A[2]~input_o\ & (!\i_B[2]~input_o\ & !\i_B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[2]~input_o\,
	datab => \i_A[3]~input_o\,
	datac => \i_B[2]~input_o\,
	datad => \i_B[3]~input_o\,
	combout => \comparatorLoop:2:comparator_n|o_GT~0_combout\);

-- Location: IOIBUF_X0_Y68_N8
\i_A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\i_B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: LCCOMB_X1_Y69_N12
\comparatorLoop:1:comparator_n|o_GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparatorLoop:1:comparator_n|o_GT~0_combout\ = (!\comparatorLoop:2:comparator_n|o_LT~0_combout\ & ((\comparatorLoop:2:comparator_n|o_GT~0_combout\) # ((\i_A[1]~input_o\ & !\i_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparatorLoop:2:comparator_n|o_LT~0_combout\,
	datab => \comparatorLoop:2:comparator_n|o_GT~0_combout\,
	datac => \i_A[1]~input_o\,
	datad => \i_B[1]~input_o\,
	combout => \comparatorLoop:1:comparator_n|o_GT~0_combout\);

-- Location: IOIBUF_X0_Y68_N15
\i_A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\i_B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: LCCOMB_X1_Y69_N6
\comparatorLoop:1:comparator_n|o_LT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparatorLoop:1:comparator_n|o_LT~0_combout\ = (!\comparatorLoop:2:comparator_n|o_GT~0_combout\ & ((\comparatorLoop:2:comparator_n|o_LT~0_combout\) # ((!\i_A[1]~input_o\ & \i_B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparatorLoop:2:comparator_n|o_LT~0_combout\,
	datab => \comparatorLoop:2:comparator_n|o_GT~0_combout\,
	datac => \i_A[1]~input_o\,
	datad => \i_B[1]~input_o\,
	combout => \comparatorLoop:1:comparator_n|o_LT~0_combout\);

-- Location: LCCOMB_X1_Y69_N16
\o_AeqB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_AeqB~0_combout\ = (\comparatorLoop:1:comparator_n|o_GT~0_combout\ & (((!\comparatorLoop:1:comparator_n|o_LT~0_combout\)))) # (!\comparatorLoop:1:comparator_n|o_GT~0_combout\ & ((\comparatorLoop:1:comparator_n|o_LT~0_combout\) # (\i_A[0]~input_o\ $ 
-- (\i_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparatorLoop:1:comparator_n|o_GT~0_combout\,
	datab => \i_A[0]~input_o\,
	datac => \i_B[0]~input_o\,
	datad => \comparatorLoop:1:comparator_n|o_LT~0_combout\,
	combout => \o_AeqB~0_combout\);

-- Location: LCCOMB_X1_Y69_N2
\comparatorLoop:0:comparator_n|o_GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparatorLoop:0:comparator_n|o_GT~0_combout\ = (!\comparatorLoop:1:comparator_n|o_LT~0_combout\ & ((\comparatorLoop:1:comparator_n|o_GT~0_combout\) # ((\i_A[0]~input_o\ & !\i_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparatorLoop:1:comparator_n|o_GT~0_combout\,
	datab => \i_A[0]~input_o\,
	datac => \i_B[0]~input_o\,
	datad => \comparatorLoop:1:comparator_n|o_LT~0_combout\,
	combout => \comparatorLoop:0:comparator_n|o_GT~0_combout\);

-- Location: LCCOMB_X1_Y69_N4
\comparatorLoop:0:comparator_n|o_LT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparatorLoop:0:comparator_n|o_LT~0_combout\ = (!\comparatorLoop:1:comparator_n|o_GT~0_combout\ & ((\comparatorLoop:1:comparator_n|o_LT~0_combout\) # ((!\i_A[0]~input_o\ & \i_B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparatorLoop:1:comparator_n|o_GT~0_combout\,
	datab => \i_A[0]~input_o\,
	datac => \i_B[0]~input_o\,
	datad => \comparatorLoop:1:comparator_n|o_LT~0_combout\,
	combout => \comparatorLoop:0:comparator_n|o_LT~0_combout\);

ww_o_AeqB <= \o_AeqB~output_o\;

ww_o_AgtB <= \o_AgtB~output_o\;

ww_o_AltB <= \o_AltB~output_o\;
END structure;


