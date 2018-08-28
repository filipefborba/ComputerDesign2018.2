-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

-- DATE "08/16/2018 12:32:56"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	m : IN std_logic_vector(2 DOWNTO 0);
	result : OUT std_logic_vector(7 DOWNTO 0);
	z : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- result[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_z : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux7~combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_m <= m;
result <= ww_result;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y0_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOIBUF_X13_Y0_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: LCCOMB_X21_Y1_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\m[2]~input_o\) # ((\m[0]~input_o\ & \m[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datac => \m[0]~input_o\,
	datad => \m[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X21_Y1_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\m[1]~input_o\ & ((!\m[0]~input_o\) # (!\m[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datac => \m[0]~input_o\,
	datad => \m[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X27_Y0_N8
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X20_Y1_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \m[0]~input_o\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X20_Y1_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X20_Y1_N14
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\a[0]~input_o\ & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\a[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\a[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\a[0]~input_o\ & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X20_Y1_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux0~1_combout\ & (!\a[0]~input_o\ & (\Mux0~0_combout\))) # (!\Mux0~1_combout\ & (((\Add0~3_combout\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \Add0~3_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y1_N28
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\m[2]~input_o\ & \m[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datad => \m[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X20_Y1_N4
Mux7 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~combout\ = (\Mux7~0_combout\ & (((\a[0]~input_o\ & \b[0]~input_o\)) # (!\Mux0~2_combout\))) # (!\Mux7~0_combout\ & (\Mux0~2_combout\ & ((\a[0]~input_o\) # (\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mux7~combout\);

-- Location: IOIBUF_X31_Y0_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X20_Y1_N30
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \b[1]~input_o\ $ (\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[1]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X20_Y1_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\a[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\a[1]~input_o\) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\a[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X20_Y1_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~1_combout\ & (!\a[1]~input_o\ & (\Mux0~0_combout\))) # (!\Mux0~1_combout\ & (((\Add0~6_combout\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X20_Y1_N2
Mux6 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~combout\ = (\Mux0~2_combout\ & ((\a[1]~input_o\ & ((\b[1]~input_o\) # (!\Mux6~0_combout\))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & !\Mux6~0_combout\)))) # (!\Mux0~2_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \b[1]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~combout\);

-- Location: IOIBUF_X16_Y0_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \b[2]~input_o\ $ (\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[2]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X20_Y1_N18
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\a[2]~input_o\ & (\Add0~7\ & VCC)) # (!\a[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\a[2]~input_o\ & (!\Add0~7\)) # (!\a[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\a[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X19_Y1_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux0~1_combout\ & (((!\a[2]~input_o\ & \Mux0~0_combout\)))) # (!\Mux0~1_combout\ & ((\Add0~9_combout\) # ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Add0~9_combout\,
	datac => \a[2]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X19_Y1_N28
Mux5 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~combout\ = (\Mux5~0_combout\ & (((\a[2]~input_o\ & \b[2]~input_o\)) # (!\Mux0~2_combout\))) # (!\Mux5~0_combout\ & (\Mux0~2_combout\ & ((\a[2]~input_o\) # (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux5~combout\);

-- Location: IOIBUF_X11_Y0_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \b[3]~input_o\ $ (\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X20_Y1_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\a[3]~input_o\ $ (\Add0~11_combout\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\a[3]~input_o\ & ((\Add0~11_combout\) # (!\Add0~10\))) # (!\a[3]~input_o\ & (\Add0~11_combout\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y1_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux0~1_combout\ & (!\a[3]~input_o\ & ((\Mux0~0_combout\)))) # (!\Mux0~1_combout\ & (((\Add0~12_combout\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \a[3]~input_o\,
	datac => \Add0~12_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X19_Y1_N18
Mux4 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~combout\ = (\Mux4~0_combout\ & (((\b[3]~input_o\ & \a[3]~input_o\)) # (!\Mux0~2_combout\))) # (!\Mux4~0_combout\ & (\Mux0~2_combout\ & ((\b[3]~input_o\) # (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \a[3]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux4~combout\);

-- Location: IOIBUF_X31_Y0_N1
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X21_Y1_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \m[0]~input_o\ $ (\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[0]~input_o\,
	datac => \b[4]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X20_Y1_N22
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\a[4]~input_o\ & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\a[4]~input_o\ & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\a[4]~input_o\ & (!\Add0~14_combout\ & !\Add0~13\)) # (!\a[4]~input_o\ & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X21_Y1_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux0~1_combout\ & (((\Mux0~0_combout\ & !\a[4]~input_o\)))) # (!\Mux0~1_combout\ & ((\Add0~15_combout\) # ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Add0~15_combout\,
	datac => \Mux0~0_combout\,
	datad => \a[4]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X21_Y1_N2
Mux3 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~combout\ = (\Mux3~0_combout\ & (((\a[4]~input_o\ & \b[4]~input_o\)) # (!\Mux0~2_combout\))) # (!\Mux3~0_combout\ & (\Mux0~2_combout\ & ((\a[4]~input_o\) # (\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \b[4]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux3~combout\);

-- Location: IOIBUF_X23_Y0_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X21_Y1_N12
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \m[0]~input_o\ $ (\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[0]~input_o\,
	datad => \b[5]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X20_Y1_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\a[5]~input_o\ $ (\Add0~17_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\a[5]~input_o\ & ((\Add0~17_combout\) # (!\Add0~16\))) # (!\a[5]~input_o\ & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X21_Y1_N6
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~1_combout\ & (((!\a[5]~input_o\ & \Mux0~0_combout\)))) # (!\Mux0~1_combout\ & ((\Add0~18_combout\) # ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Add0~18_combout\,
	datac => \a[5]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X21_Y1_N24
Mux2 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~combout\ = (\Mux2~0_combout\ & (((\a[5]~input_o\ & \b[5]~input_o\)) # (!\Mux0~2_combout\))) # (!\Mux2~0_combout\ & (\Mux0~2_combout\ & ((\a[5]~input_o\) # (\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \a[5]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \b[5]~input_o\,
	combout => \Mux2~combout\);

-- Location: IOIBUF_X20_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X19_Y1_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \b[6]~input_o\ $ (\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[6]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X20_Y1_N26
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\a[6]~input_o\ & ((\Add0~20_combout\ & (\Add0~19\ & VCC)) # (!\Add0~20_combout\ & (!\Add0~19\)))) # (!\a[6]~input_o\ & ((\Add0~20_combout\ & (!\Add0~19\)) # (!\Add0~20_combout\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\a[6]~input_o\ & (!\Add0~20_combout\ & !\Add0~19\)) # (!\a[6]~input_o\ & ((!\Add0~19\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X20_Y1_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux0~1_combout\ & (((\Mux0~0_combout\ & !\a[6]~input_o\)))) # (!\Mux0~1_combout\ & ((\Add0~21_combout\) # ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \a[6]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y1_N22
Mux1 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~combout\ = (\Mux0~2_combout\ & ((\a[6]~input_o\ & ((\b[6]~input_o\) # (!\Mux1~0_combout\))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & !\Mux1~0_combout\)))) # (!\Mux0~2_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \b[6]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~combout\);

-- Location: IOIBUF_X18_Y0_N1
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X19_Y1_N8
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \b[7]~input_o\ $ (\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[7]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Add0~23_combout\);

-- Location: IOIBUF_X20_Y0_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X20_Y1_N28
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \Add0~23_combout\ $ (\Add0~22\ $ (!\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datad => \a[7]~input_o\,
	cin => \Add0~22\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X19_Y1_N10
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\ & (((!\a[7]~input_o\ & \Mux0~0_combout\)))) # (!\Mux0~1_combout\ & ((\Add0~24_combout\) # ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Add0~24_combout\,
	datac => \a[7]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X19_Y1_N12
Mux0 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~combout\ = (\Mux0~3_combout\ & (((\a[7]~input_o\ & \b[7]~input_o\)) # (!\Mux0~2_combout\))) # (!\Mux0~3_combout\ & (\Mux0~2_combout\ & ((\a[7]~input_o\) # (\b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \a[7]~input_o\,
	datac => \b[7]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~combout\);

-- Location: LCCOMB_X19_Y1_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux6~combout\ & (!\Mux5~combout\ & (!\Mux7~combout\ & !\Mux4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~combout\,
	datab => \Mux5~combout\,
	datac => \Mux7~combout\,
	datad => \Mux4~combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y1_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux3~combout\ & !\Mux2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~combout\,
	datac => \Mux2~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y1_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Mux1~combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & !\Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux0~combout\,
	combout => \Equal0~2_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_z <= \z~output_o\;
END structure;


