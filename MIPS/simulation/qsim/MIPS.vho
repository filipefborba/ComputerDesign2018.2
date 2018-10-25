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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/23/2018 10:29:00"

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

ENTITY 	UCFD IS
    PORT (
	OP : IN std_logic_vector(5 DOWNTO 0);
	ULA_OP : BUFFER std_logic_vector(1 DOWNTO 0);
	HAB_ESC_MEM : BUFFER std_logic;
	HAB_LE_MEM : BUFFER std_logic;
	BEQ : BUFFER std_logic;
	MUX4 : BUFFER std_logic;
	MUX3 : BUFFER std_logic;
	MUX2 : BUFFER std_logic;
	MUX1 : BUFFER std_logic;
	HAB_ESC_REG : BUFFER std_logic
	);
END UCFD;

-- Design Ports Information
-- OP[4]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OP[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OP[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HAB_ESC_MEM	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HAB_LE_MEM	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BEQ	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX4	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX3	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX2	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX1	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HAB_ESC_REG	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UCFD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OP : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ULA_OP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HAB_ESC_MEM : std_logic;
SIGNAL ww_HAB_LE_MEM : std_logic;
SIGNAL ww_BEQ : std_logic;
SIGNAL ww_MUX4 : std_logic;
SIGNAL ww_MUX3 : std_logic;
SIGNAL ww_MUX2 : std_logic;
SIGNAL ww_MUX1 : std_logic;
SIGNAL ww_HAB_ESC_REG : std_logic;
SIGNAL \OP[4]~input_o\ : std_logic;
SIGNAL \OP[5]~input_o\ : std_logic;
SIGNAL \ULA_OP[0]~output_o\ : std_logic;
SIGNAL \ULA_OP[1]~output_o\ : std_logic;
SIGNAL \HAB_ESC_MEM~output_o\ : std_logic;
SIGNAL \HAB_LE_MEM~output_o\ : std_logic;
SIGNAL \BEQ~output_o\ : std_logic;
SIGNAL \MUX4~output_o\ : std_logic;
SIGNAL \MUX3~output_o\ : std_logic;
SIGNAL \MUX2~output_o\ : std_logic;
SIGNAL \MUX1~output_o\ : std_logic;
SIGNAL \HAB_ESC_REG~output_o\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \ULA_OP~0_combout\ : std_logic;
SIGNAL \OP[3]~input_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \HAB_LE_MEM~0_combout\ : std_logic;
SIGNAL \HAB_LE_MEM~1_combout\ : std_logic;
SIGNAL \MUX1~0_combout\ : std_logic;
SIGNAL \HAB_ESC_REG~0_combout\ : std_logic;
SIGNAL \ALT_INV_ULA_OP~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OP <= OP;
ULA_OP <= ww_ULA_OP;
HAB_ESC_MEM <= ww_HAB_ESC_MEM;
HAB_LE_MEM <= ww_HAB_LE_MEM;
BEQ <= ww_BEQ;
MUX4 <= ww_MUX4;
MUX3 <= ww_MUX3;
MUX2 <= ww_MUX2;
MUX1 <= ww_MUX1;
HAB_ESC_REG <= ww_HAB_ESC_REG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ULA_OP~0_combout\ <= NOT \ULA_OP~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y44_N23
\ULA_OP[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OP[2]~input_o\,
	devoe => ww_devoe,
	o => \ULA_OP[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\ULA_OP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ULA_OP~0_combout\,
	devoe => ww_devoe,
	o => \ULA_OP[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\HAB_ESC_MEM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OP[3]~input_o\,
	devoe => ww_devoe,
	o => \HAB_ESC_MEM~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\HAB_LE_MEM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HAB_LE_MEM~0_combout\,
	devoe => ww_devoe,
	o => \HAB_LE_MEM~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\BEQ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OP[2]~input_o\,
	devoe => ww_devoe,
	o => \BEQ~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\MUX4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HAB_LE_MEM~0_combout\,
	devoe => ww_devoe,
	o => \MUX4~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\MUX3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HAB_LE_MEM~1_combout\,
	devoe => ww_devoe,
	o => \MUX3~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\MUX2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ULA_OP~0_combout\,
	devoe => ww_devoe,
	o => \MUX2~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\MUX1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1~0_combout\,
	devoe => ww_devoe,
	o => \MUX1~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\HAB_ESC_REG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HAB_ESC_REG~0_combout\,
	devoe => ww_devoe,
	o => \HAB_ESC_REG~output_o\);

-- Location: IOIBUF_X0_Y44_N1
\OP[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\OP[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: LCCOMB_X1_Y47_N24
\ULA_OP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_OP~0_combout\ = (\OP[2]~input_o\) # (\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \ULA_OP~0_combout\);

-- Location: IOIBUF_X0_Y43_N15
\OP[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(3),
	o => \OP[3]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\OP[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: LCCOMB_X1_Y47_N26
\HAB_LE_MEM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAB_LE_MEM~0_combout\ = (\OP[0]~input_o\ & (!\OP[3]~input_o\ & \OP[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[3]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \HAB_LE_MEM~0_combout\);

-- Location: LCCOMB_X1_Y47_N20
\HAB_LE_MEM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAB_LE_MEM~1_combout\ = (\OP[0]~input_o\ & \OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \HAB_LE_MEM~1_combout\);

-- Location: LCCOMB_X1_Y47_N14
\MUX1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX1~0_combout\ = \OP[0]~input_o\ $ (\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \MUX1~0_combout\);

-- Location: LCCOMB_X1_Y47_N16
\HAB_ESC_REG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HAB_ESC_REG~0_combout\ = (\OP[1]~input_o\ & (\OP[0]~input_o\ & (!\OP[3]~input_o\))) # (!\OP[1]~input_o\ & (((!\OP[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[3]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \HAB_ESC_REG~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\OP[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(4),
	o => \OP[4]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\OP[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(5),
	o => \OP[5]~input_o\);

ww_ULA_OP(0) <= \ULA_OP[0]~output_o\;

ww_ULA_OP(1) <= \ULA_OP[1]~output_o\;

ww_HAB_ESC_MEM <= \HAB_ESC_MEM~output_o\;

ww_HAB_LE_MEM <= \HAB_LE_MEM~output_o\;

ww_BEQ <= \BEQ~output_o\;

ww_MUX4 <= \MUX4~output_o\;

ww_MUX3 <= \MUX3~output_o\;

ww_MUX2 <= \MUX2~output_o\;

ww_MUX1 <= \MUX1~output_o\;

ww_HAB_ESC_REG <= \HAB_ESC_REG~output_o\;
END structure;


