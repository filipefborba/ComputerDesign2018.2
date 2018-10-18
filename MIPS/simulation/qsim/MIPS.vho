-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/18/2018 13:58:04"

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
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	CIn : IN std_logic_vector(31 DOWNTO 0);
	selector : IN std_logic_vector(1 DOWNTO 0);
	overflow : OUT std_logic;
	r : OUT std_logic_vector(31 DOWNTO 0);
	COut : OUT std_logic_vector(31 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- CIn[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[2]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[3]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[6]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[8]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[9]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[10]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[11]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[15]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[16]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[17]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[18]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[19]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[20]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[21]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[22]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[23]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[24]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[26]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[27]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[28]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[29]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[30]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[31]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[8]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[11]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[14]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[17]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[18]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[19]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[20]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[21]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[22]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[23]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[24]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[25]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[27]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[28]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[29]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[30]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[31]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[8]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[9]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[10]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[11]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[15]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[16]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[17]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[18]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[19]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[20]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[22]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[23]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[24]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[25]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[26]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[27]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[28]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[29]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[30]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[31]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CIn : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_selector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_r : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_COut : std_logic_vector(31 DOWNTO 0);
SIGNAL \CIn[0]~input_o\ : std_logic;
SIGNAL \CIn[1]~input_o\ : std_logic;
SIGNAL \CIn[2]~input_o\ : std_logic;
SIGNAL \CIn[3]~input_o\ : std_logic;
SIGNAL \CIn[4]~input_o\ : std_logic;
SIGNAL \CIn[5]~input_o\ : std_logic;
SIGNAL \CIn[6]~input_o\ : std_logic;
SIGNAL \CIn[7]~input_o\ : std_logic;
SIGNAL \CIn[8]~input_o\ : std_logic;
SIGNAL \CIn[9]~input_o\ : std_logic;
SIGNAL \CIn[10]~input_o\ : std_logic;
SIGNAL \CIn[11]~input_o\ : std_logic;
SIGNAL \CIn[12]~input_o\ : std_logic;
SIGNAL \CIn[13]~input_o\ : std_logic;
SIGNAL \CIn[14]~input_o\ : std_logic;
SIGNAL \CIn[15]~input_o\ : std_logic;
SIGNAL \CIn[16]~input_o\ : std_logic;
SIGNAL \CIn[17]~input_o\ : std_logic;
SIGNAL \CIn[18]~input_o\ : std_logic;
SIGNAL \CIn[19]~input_o\ : std_logic;
SIGNAL \CIn[20]~input_o\ : std_logic;
SIGNAL \CIn[21]~input_o\ : std_logic;
SIGNAL \CIn[22]~input_o\ : std_logic;
SIGNAL \CIn[23]~input_o\ : std_logic;
SIGNAL \CIn[24]~input_o\ : std_logic;
SIGNAL \CIn[25]~input_o\ : std_logic;
SIGNAL \CIn[26]~input_o\ : std_logic;
SIGNAL \CIn[27]~input_o\ : std_logic;
SIGNAL \CIn[28]~input_o\ : std_logic;
SIGNAL \CIn[29]~input_o\ : std_logic;
SIGNAL \CIn[30]~input_o\ : std_logic;
SIGNAL \CIn[31]~input_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \r[7]~output_o\ : std_logic;
SIGNAL \r[8]~output_o\ : std_logic;
SIGNAL \r[9]~output_o\ : std_logic;
SIGNAL \r[10]~output_o\ : std_logic;
SIGNAL \r[11]~output_o\ : std_logic;
SIGNAL \r[12]~output_o\ : std_logic;
SIGNAL \r[13]~output_o\ : std_logic;
SIGNAL \r[14]~output_o\ : std_logic;
SIGNAL \r[15]~output_o\ : std_logic;
SIGNAL \r[16]~output_o\ : std_logic;
SIGNAL \r[17]~output_o\ : std_logic;
SIGNAL \r[18]~output_o\ : std_logic;
SIGNAL \r[19]~output_o\ : std_logic;
SIGNAL \r[20]~output_o\ : std_logic;
SIGNAL \r[21]~output_o\ : std_logic;
SIGNAL \r[22]~output_o\ : std_logic;
SIGNAL \r[23]~output_o\ : std_logic;
SIGNAL \r[24]~output_o\ : std_logic;
SIGNAL \r[25]~output_o\ : std_logic;
SIGNAL \r[26]~output_o\ : std_logic;
SIGNAL \r[27]~output_o\ : std_logic;
SIGNAL \r[28]~output_o\ : std_logic;
SIGNAL \r[29]~output_o\ : std_logic;
SIGNAL \r[30]~output_o\ : std_logic;
SIGNAL \r[31]~output_o\ : std_logic;
SIGNAL \COut[0]~output_o\ : std_logic;
SIGNAL \COut[1]~output_o\ : std_logic;
SIGNAL \COut[2]~output_o\ : std_logic;
SIGNAL \COut[3]~output_o\ : std_logic;
SIGNAL \COut[4]~output_o\ : std_logic;
SIGNAL \COut[5]~output_o\ : std_logic;
SIGNAL \COut[6]~output_o\ : std_logic;
SIGNAL \COut[7]~output_o\ : std_logic;
SIGNAL \COut[8]~output_o\ : std_logic;
SIGNAL \COut[9]~output_o\ : std_logic;
SIGNAL \COut[10]~output_o\ : std_logic;
SIGNAL \COut[11]~output_o\ : std_logic;
SIGNAL \COut[12]~output_o\ : std_logic;
SIGNAL \COut[13]~output_o\ : std_logic;
SIGNAL \COut[14]~output_o\ : std_logic;
SIGNAL \COut[15]~output_o\ : std_logic;
SIGNAL \COut[16]~output_o\ : std_logic;
SIGNAL \COut[17]~output_o\ : std_logic;
SIGNAL \COut[18]~output_o\ : std_logic;
SIGNAL \COut[19]~output_o\ : std_logic;
SIGNAL \COut[20]~output_o\ : std_logic;
SIGNAL \COut[21]~output_o\ : std_logic;
SIGNAL \COut[22]~output_o\ : std_logic;
SIGNAL \COut[23]~output_o\ : std_logic;
SIGNAL \COut[24]~output_o\ : std_logic;
SIGNAL \COut[25]~output_o\ : std_logic;
SIGNAL \COut[26]~output_o\ : std_logic;
SIGNAL \COut[27]~output_o\ : std_logic;
SIGNAL \COut[28]~output_o\ : std_logic;
SIGNAL \COut[29]~output_o\ : std_logic;
SIGNAL \COut[30]~output_o\ : std_logic;
SIGNAL \COut[31]~output_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[28]~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[26]~1_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[20]~4_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[16]~6_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[10]~9_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[8]~10_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[1]~14_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[2]~15_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[2]~13_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[3]~16_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[4]~17_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[4]~12_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[5]~18_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[6]~19_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[6]~11_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[7]~20_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[8]~21_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[9]~22_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[10]~23_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[11]~24_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[12]~25_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[12]~8_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[13]~26_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[14]~27_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[14]~7_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[15]~28_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[16]~29_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[17]~30_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[18]~31_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[18]~5_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[19]~32_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[20]~33_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[21]~34_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[22]~35_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[22]~3_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[23]~36_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[24]~37_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[24]~2_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[25]~38_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[26]~39_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[27]~40_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[28]~41_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[29]~42_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[31]~43_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[31]~44_combout\ : std_logic;
SIGNAL \selector[1]~input_o\ : std_logic;
SIGNAL \selector[0]~input_o\ : std_logic;
SIGNAL \MUX|Mux31~0_combout\ : std_logic;
SIGNAL \MUX|Mux30~0_combout\ : std_logic;
SIGNAL \MUX|Mux30~1_combout\ : std_logic;
SIGNAL \MUX|Mux29~0_combout\ : std_logic;
SIGNAL \MUX|Mux29~1_combout\ : std_logic;
SIGNAL \MUX|Mux28~0_combout\ : std_logic;
SIGNAL \MUX|Mux28~1_combout\ : std_logic;
SIGNAL \MUX|Mux27~0_combout\ : std_logic;
SIGNAL \MUX|Mux27~1_combout\ : std_logic;
SIGNAL \MUX|Mux26~0_combout\ : std_logic;
SIGNAL \MUX|Mux26~1_combout\ : std_logic;
SIGNAL \MUX|Mux25~0_combout\ : std_logic;
SIGNAL \MUX|Mux25~1_combout\ : std_logic;
SIGNAL \MUX|Mux24~0_combout\ : std_logic;
SIGNAL \MUX|Mux24~1_combout\ : std_logic;
SIGNAL \MUX|Mux23~0_combout\ : std_logic;
SIGNAL \MUX|Mux23~1_combout\ : std_logic;
SIGNAL \MUX|Mux22~0_combout\ : std_logic;
SIGNAL \MUX|Mux22~1_combout\ : std_logic;
SIGNAL \MUX|Mux21~0_combout\ : std_logic;
SIGNAL \MUX|Mux21~1_combout\ : std_logic;
SIGNAL \MUX|Mux20~0_combout\ : std_logic;
SIGNAL \MUX|Mux20~1_combout\ : std_logic;
SIGNAL \MUX|Mux19~0_combout\ : std_logic;
SIGNAL \MUX|Mux19~1_combout\ : std_logic;
SIGNAL \MUX|Mux18~0_combout\ : std_logic;
SIGNAL \MUX|Mux18~1_combout\ : std_logic;
SIGNAL \MUX|Mux17~0_combout\ : std_logic;
SIGNAL \MUX|Mux17~1_combout\ : std_logic;
SIGNAL \MUX|Mux16~0_combout\ : std_logic;
SIGNAL \MUX|Mux16~1_combout\ : std_logic;
SIGNAL \MUX|Mux15~0_combout\ : std_logic;
SIGNAL \MUX|Mux15~1_combout\ : std_logic;
SIGNAL \MUX|Mux14~0_combout\ : std_logic;
SIGNAL \MUX|Mux14~1_combout\ : std_logic;
SIGNAL \MUX|Mux13~0_combout\ : std_logic;
SIGNAL \MUX|Mux13~1_combout\ : std_logic;
SIGNAL \MUX|Mux12~0_combout\ : std_logic;
SIGNAL \MUX|Mux12~1_combout\ : std_logic;
SIGNAL \MUX|Mux11~0_combout\ : std_logic;
SIGNAL \MUX|Mux11~1_combout\ : std_logic;
SIGNAL \MUX|Mux10~0_combout\ : std_logic;
SIGNAL \MUX|Mux10~1_combout\ : std_logic;
SIGNAL \MUX|Mux9~0_combout\ : std_logic;
SIGNAL \MUX|Mux9~1_combout\ : std_logic;
SIGNAL \MUX|Mux8~0_combout\ : std_logic;
SIGNAL \MUX|Mux8~1_combout\ : std_logic;
SIGNAL \MUX|Mux7~0_combout\ : std_logic;
SIGNAL \MUX|Mux7~1_combout\ : std_logic;
SIGNAL \MUX|Mux6~0_combout\ : std_logic;
SIGNAL \MUX|Mux6~1_combout\ : std_logic;
SIGNAL \MUX|Mux5~0_combout\ : std_logic;
SIGNAL \MUX|Mux5~1_combout\ : std_logic;
SIGNAL \MUX|Mux4~0_combout\ : std_logic;
SIGNAL \MUX|Mux4~1_combout\ : std_logic;
SIGNAL \MUX|Mux3~0_combout\ : std_logic;
SIGNAL \MUX|Mux3~1_combout\ : std_logic;
SIGNAL \MUX|Mux2~0_combout\ : std_logic;
SIGNAL \MUX|Mux2~1_combout\ : std_logic;
SIGNAL \MUX|Mux1~0_combout\ : std_logic;
SIGNAL \MUX|Mux1~1_combout\ : std_logic;
SIGNAL \MUX|Mux0~0_combout\ : std_logic;
SIGNAL \MUX|Mux0~1_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[2]~45_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[4]~46_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[6]~47_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[8]~48_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[10]~49_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[12]~50_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[14]~51_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[16]~52_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[18]~53_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[20]~54_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[22]~55_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[24]~56_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[26]~57_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[28]~58_combout\ : std_logic;
SIGNAL OUT_AND : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_CIn <= CIn;
ww_selector <= selector;
overflow <= ww_overflow;
r <= ww_r;
COut <= ww_COut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y0_N2
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[31]~44_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \r[5]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \r[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\r[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \r[8]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\r[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \r[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\r[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \r[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\r[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \r[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\r[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \r[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\r[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \r[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\r[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \r[14]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\r[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \r[15]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\r[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \r[16]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\r[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \r[17]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\r[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \r[18]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\r[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \r[19]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\r[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \r[20]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\r[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \r[21]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\r[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \r[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\r[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \r[23]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\r[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \r[24]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\r[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \r[25]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\r[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \r[26]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\r[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \r[27]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\r[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \r[28]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\r[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \r[29]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\r[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \r[30]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\r[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \r[31]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\COut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => OUT_AND(0),
	devoe => ww_devoe,
	o => \COut[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\COut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[1]~14_combout\,
	devoe => ww_devoe,
	o => \COut[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\COut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[2]~45_combout\,
	devoe => ww_devoe,
	o => \COut[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\COut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[3]~16_combout\,
	devoe => ww_devoe,
	o => \COut[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\COut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[4]~46_combout\,
	devoe => ww_devoe,
	o => \COut[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\COut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[5]~18_combout\,
	devoe => ww_devoe,
	o => \COut[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\COut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[6]~47_combout\,
	devoe => ww_devoe,
	o => \COut[6]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\COut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[7]~20_combout\,
	devoe => ww_devoe,
	o => \COut[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\COut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[8]~48_combout\,
	devoe => ww_devoe,
	o => \COut[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\COut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[9]~22_combout\,
	devoe => ww_devoe,
	o => \COut[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\COut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[10]~49_combout\,
	devoe => ww_devoe,
	o => \COut[10]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\COut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[11]~24_combout\,
	devoe => ww_devoe,
	o => \COut[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\COut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[12]~50_combout\,
	devoe => ww_devoe,
	o => \COut[12]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\COut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[13]~26_combout\,
	devoe => ww_devoe,
	o => \COut[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\COut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[14]~51_combout\,
	devoe => ww_devoe,
	o => \COut[14]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\COut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[15]~28_combout\,
	devoe => ww_devoe,
	o => \COut[15]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\COut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[16]~52_combout\,
	devoe => ww_devoe,
	o => \COut[16]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\COut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[17]~30_combout\,
	devoe => ww_devoe,
	o => \COut[17]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\COut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[18]~53_combout\,
	devoe => ww_devoe,
	o => \COut[18]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\COut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[19]~32_combout\,
	devoe => ww_devoe,
	o => \COut[19]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\COut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[20]~54_combout\,
	devoe => ww_devoe,
	o => \COut[20]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\COut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[21]~34_combout\,
	devoe => ww_devoe,
	o => \COut[21]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\COut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[22]~55_combout\,
	devoe => ww_devoe,
	o => \COut[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\COut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[23]~36_combout\,
	devoe => ww_devoe,
	o => \COut[23]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\COut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[24]~56_combout\,
	devoe => ww_devoe,
	o => \COut[24]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\COut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[25]~38_combout\,
	devoe => ww_devoe,
	o => \COut[25]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\COut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[26]~57_combout\,
	devoe => ww_devoe,
	o => \COut[26]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\COut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[27]~40_combout\,
	devoe => ww_devoe,
	o => \COut[27]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\COut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[28]~58_combout\,
	devoe => ww_devoe,
	o => \COut[28]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\COut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[29]~42_combout\,
	devoe => ww_devoe,
	o => \COut[29]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\COut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[31]~43_combout\,
	devoe => ww_devoe,
	o => \COut[30]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\COut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[31]~44_combout\,
	devoe => ww_devoe,
	o => \COut[31]~output_o\);

-- Location: IOIBUF_X35_Y0_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X38_Y72_N0
\SOMA|CarryOut[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[28]~0_combout\ = (\B[28]~input_o\ & \A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \SOMA|CarryOut[28]~0_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X38_Y72_N18
\SOMA|CarryOut[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[26]~1_combout\ = (\B[26]~input_o\ & \A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \SOMA|CarryOut[26]~1_combout\);

-- Location: IOIBUF_X45_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X52_Y1_N26
\SOMA|CarryOut[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[20]~4_combout\ = (\A[20]~input_o\ & \B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \SOMA|CarryOut[20]~4_combout\);

-- Location: IOIBUF_X52_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X1_Y44_N10
\SOMA|CarryOut[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[16]~6_combout\ = (\A[16]~input_o\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \SOMA|CarryOut[16]~6_combout\);

-- Location: IOIBUF_X0_Y44_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X84_Y72_N16
\SOMA|CarryOut[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[10]~9_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \SOMA|CarryOut[10]~9_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X84_Y72_N18
\SOMA|CarryOut[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[8]~10_combout\ = (\B[8]~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SOMA|CarryOut[8]~10_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X66_Y1_N18
\SOMA|CarryOut[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[1]~14_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \SOMA|CarryOut[1]~14_combout\);

-- Location: IOIBUF_X67_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X66_Y1_N12
\SOMA|CarryOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[2]~15_combout\ = (\SOMA|CarryOut[1]~14_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SOMA|CarryOut[1]~14_combout\,
	datad => \A[2]~input_o\,
	combout => \SOMA|CarryOut[2]~15_combout\);

-- Location: LCCOMB_X66_Y1_N8
\SOMA|CarryOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[2]~13_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \SOMA|CarryOut[2]~13_combout\);

-- Location: IOIBUF_X69_Y0_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X66_Y1_N14
\SOMA|CarryOut[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[3]~16_combout\ = (\B[3]~input_o\ & ((\SOMA|CarryOut[2]~15_combout\) # ((\SOMA|CarryOut[2]~13_combout\) # (\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\SOMA|CarryOut[2]~15_combout\) # (\SOMA|CarryOut[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[2]~15_combout\,
	datab => \SOMA|CarryOut[2]~13_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \SOMA|CarryOut[3]~16_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X68_Y69_N12
\SOMA|CarryOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[4]~17_combout\ = (\SOMA|CarryOut[3]~16_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \SOMA|CarryOut[3]~16_combout\,
	datad => \A[4]~input_o\,
	combout => \SOMA|CarryOut[4]~17_combout\);

-- Location: LCCOMB_X68_Y69_N18
\SOMA|CarryOut[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[4]~12_combout\ = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SOMA|CarryOut[4]~12_combout\);

-- Location: IOIBUF_X69_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X68_Y69_N30
\SOMA|CarryOut[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[5]~18_combout\ = (\B[5]~input_o\ & ((\SOMA|CarryOut[4]~17_combout\) # ((\SOMA|CarryOut[4]~12_combout\) # (\A[5]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\SOMA|CarryOut[4]~17_combout\) # (\SOMA|CarryOut[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[4]~17_combout\,
	datab => \SOMA|CarryOut[4]~12_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \SOMA|CarryOut[5]~18_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X68_Y69_N16
\SOMA|CarryOut[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[6]~19_combout\ = (\SOMA|CarryOut[5]~18_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[5]~18_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \SOMA|CarryOut[6]~19_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X68_Y69_N24
\SOMA|CarryOut[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[6]~11_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \SOMA|CarryOut[6]~11_combout\);

-- Location: LCCOMB_X68_Y69_N10
\SOMA|CarryOut[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[7]~20_combout\ = (\B[7]~input_o\ & ((\SOMA|CarryOut[6]~19_combout\) # ((\A[7]~input_o\) # (\SOMA|CarryOut[6]~11_combout\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\SOMA|CarryOut[6]~19_combout\) # (\SOMA|CarryOut[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \SOMA|CarryOut[6]~19_combout\,
	datac => \A[7]~input_o\,
	datad => \SOMA|CarryOut[6]~11_combout\,
	combout => \SOMA|CarryOut[7]~20_combout\);

-- Location: LCCOMB_X84_Y72_N4
\SOMA|CarryOut[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[8]~21_combout\ = (\SOMA|CarryOut[7]~20_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[7]~20_combout\,
	datab => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SOMA|CarryOut[8]~21_combout\);

-- Location: IOIBUF_X87_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X84_Y72_N14
\SOMA|CarryOut[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[9]~22_combout\ = (\A[9]~input_o\ & ((\SOMA|CarryOut[8]~10_combout\) # ((\SOMA|CarryOut[8]~21_combout\) # (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\SOMA|CarryOut[8]~10_combout\) # (\SOMA|CarryOut[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \SOMA|CarryOut[8]~10_combout\,
	datac => \SOMA|CarryOut[8]~21_combout\,
	datad => \B[9]~input_o\,
	combout => \SOMA|CarryOut[9]~22_combout\);

-- Location: LCCOMB_X84_Y72_N24
\SOMA|CarryOut[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[10]~23_combout\ = (\SOMA|CarryOut[9]~22_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOMA|CarryOut[9]~22_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \SOMA|CarryOut[10]~23_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X84_Y72_N10
\SOMA|CarryOut[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[11]~24_combout\ = (\A[11]~input_o\ & ((\SOMA|CarryOut[10]~9_combout\) # ((\SOMA|CarryOut[10]~23_combout\) # (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\SOMA|CarryOut[10]~9_combout\) # (\SOMA|CarryOut[10]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[10]~9_combout\,
	datab => \SOMA|CarryOut[10]~23_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \SOMA|CarryOut[11]~24_combout\);

-- Location: LCCOMB_X59_Y72_N4
\SOMA|CarryOut[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[12]~25_combout\ = (\SOMA|CarryOut[11]~24_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \SOMA|CarryOut[11]~24_combout\,
	combout => \SOMA|CarryOut[12]~25_combout\);

-- Location: LCCOMB_X59_Y72_N10
\SOMA|CarryOut[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[12]~8_combout\ = (\A[12]~input_o\ & \B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \SOMA|CarryOut[12]~8_combout\);

-- Location: LCCOMB_X59_Y72_N6
\SOMA|CarryOut[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[13]~26_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\SOMA|CarryOut[12]~25_combout\) # (\SOMA|CarryOut[12]~8_combout\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\SOMA|CarryOut[12]~25_combout\) # (\SOMA|CarryOut[12]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \SOMA|CarryOut[12]~25_combout\,
	datad => \SOMA|CarryOut[12]~8_combout\,
	combout => \SOMA|CarryOut[13]~26_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X59_Y72_N8
\SOMA|CarryOut[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[14]~27_combout\ = (\SOMA|CarryOut[13]~26_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[13]~26_combout\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \SOMA|CarryOut[14]~27_combout\);

-- Location: LCCOMB_X59_Y72_N24
\SOMA|CarryOut[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[14]~7_combout\ = (\A[14]~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \SOMA|CarryOut[14]~7_combout\);

-- Location: LCCOMB_X59_Y72_N18
\SOMA|CarryOut[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[15]~28_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\SOMA|CarryOut[14]~27_combout\) # (\SOMA|CarryOut[14]~7_combout\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\SOMA|CarryOut[14]~27_combout\) # (\SOMA|CarryOut[14]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \SOMA|CarryOut[14]~27_combout\,
	datad => \SOMA|CarryOut[14]~7_combout\,
	combout => \SOMA|CarryOut[15]~28_combout\);

-- Location: LCCOMB_X1_Y44_N20
\SOMA|CarryOut[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[16]~29_combout\ = (\SOMA|CarryOut[15]~28_combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \SOMA|CarryOut[15]~28_combout\,
	combout => \SOMA|CarryOut[16]~29_combout\);

-- Location: LCCOMB_X1_Y44_N22
\SOMA|CarryOut[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[17]~30_combout\ = (\B[17]~input_o\ & ((\SOMA|CarryOut[16]~6_combout\) # ((\A[17]~input_o\) # (\SOMA|CarryOut[16]~29_combout\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\SOMA|CarryOut[16]~6_combout\) # (\SOMA|CarryOut[16]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[16]~6_combout\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \SOMA|CarryOut[16]~29_combout\,
	combout => \SOMA|CarryOut[17]~30_combout\);

-- Location: LCCOMB_X1_Y44_N0
\SOMA|CarryOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[18]~31_combout\ = (\SOMA|CarryOut[17]~30_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \SOMA|CarryOut[17]~30_combout\,
	combout => \SOMA|CarryOut[18]~31_combout\);

-- Location: IOIBUF_X0_Y45_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X1_Y44_N24
\SOMA|CarryOut[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[18]~5_combout\ = (\A[18]~input_o\ & \B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \SOMA|CarryOut[18]~5_combout\);

-- Location: LCCOMB_X1_Y44_N2
\SOMA|CarryOut[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[19]~32_combout\ = (\B[19]~input_o\ & ((\SOMA|CarryOut[18]~31_combout\) # ((\A[19]~input_o\) # (\SOMA|CarryOut[18]~5_combout\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & ((\SOMA|CarryOut[18]~31_combout\) # (\SOMA|CarryOut[18]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \SOMA|CarryOut[18]~31_combout\,
	datac => \A[19]~input_o\,
	datad => \SOMA|CarryOut[18]~5_combout\,
	combout => \SOMA|CarryOut[19]~32_combout\);

-- Location: LCCOMB_X52_Y1_N20
\SOMA|CarryOut[20]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[20]~33_combout\ = (\SOMA|CarryOut[19]~32_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[19]~32_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \SOMA|CarryOut[20]~33_combout\);

-- Location: LCCOMB_X52_Y1_N30
\SOMA|CarryOut[21]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[21]~34_combout\ = (\B[21]~input_o\ & ((\SOMA|CarryOut[20]~4_combout\) # ((\A[21]~input_o\) # (\SOMA|CarryOut[20]~33_combout\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\SOMA|CarryOut[20]~4_combout\) # (\SOMA|CarryOut[20]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[20]~4_combout\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \SOMA|CarryOut[20]~33_combout\,
	combout => \SOMA|CarryOut[21]~34_combout\);

-- Location: LCCOMB_X52_Y1_N8
\SOMA|CarryOut[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[22]~35_combout\ = (\SOMA|CarryOut[21]~34_combout\ & ((\B[22]~input_o\) # (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \SOMA|CarryOut[21]~34_combout\,
	combout => \SOMA|CarryOut[22]~35_combout\);

-- Location: IOIBUF_X52_Y0_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X52_Y1_N0
\SOMA|CarryOut[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[22]~3_combout\ = (\B[22]~input_o\ & \A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	combout => \SOMA|CarryOut[22]~3_combout\);

-- Location: LCCOMB_X52_Y1_N18
\SOMA|CarryOut[23]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[23]~36_combout\ = (\A[23]~input_o\ & ((\SOMA|CarryOut[22]~35_combout\) # ((\B[23]~input_o\) # (\SOMA|CarryOut[22]~3_combout\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & ((\SOMA|CarryOut[22]~35_combout\) # (\SOMA|CarryOut[22]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \SOMA|CarryOut[22]~35_combout\,
	datac => \B[23]~input_o\,
	datad => \SOMA|CarryOut[22]~3_combout\,
	combout => \SOMA|CarryOut[23]~36_combout\);

-- Location: LCCOMB_X39_Y1_N26
\SOMA|CarryOut[24]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[24]~37_combout\ = (\SOMA|CarryOut[23]~36_combout\ & ((\B[24]~input_o\) # (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \SOMA|CarryOut[23]~36_combout\,
	combout => \SOMA|CarryOut[24]~37_combout\);

-- Location: LCCOMB_X39_Y1_N8
\SOMA|CarryOut[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[24]~2_combout\ = (\B[24]~input_o\ & \A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	combout => \SOMA|CarryOut[24]~2_combout\);

-- Location: IOIBUF_X40_Y0_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X39_Y1_N12
\SOMA|CarryOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[25]~38_combout\ = (\A[25]~input_o\ & ((\SOMA|CarryOut[24]~37_combout\) # ((\SOMA|CarryOut[24]~2_combout\) # (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & ((\SOMA|CarryOut[24]~37_combout\) # (\SOMA|CarryOut[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[24]~37_combout\,
	datab => \SOMA|CarryOut[24]~2_combout\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \SOMA|CarryOut[25]~38_combout\);

-- Location: LCCOMB_X38_Y72_N4
\SOMA|CarryOut[26]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[26]~39_combout\ = (\SOMA|CarryOut[25]~38_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => \SOMA|CarryOut[25]~38_combout\,
	combout => \SOMA|CarryOut[26]~39_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X38_Y72_N22
\SOMA|CarryOut[27]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[27]~40_combout\ = (\A[27]~input_o\ & ((\SOMA|CarryOut[26]~1_combout\) # ((\SOMA|CarryOut[26]~39_combout\) # (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\SOMA|CarryOut[26]~1_combout\) # (\SOMA|CarryOut[26]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \SOMA|CarryOut[26]~1_combout\,
	datac => \SOMA|CarryOut[26]~39_combout\,
	datad => \B[27]~input_o\,
	combout => \SOMA|CarryOut[27]~40_combout\);

-- Location: LCCOMB_X38_Y72_N8
\SOMA|CarryOut[28]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[28]~41_combout\ = (\SOMA|CarryOut[27]~40_combout\ & ((\B[28]~input_o\) # (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \SOMA|CarryOut[27]~40_combout\,
	datad => \A[28]~input_o\,
	combout => \SOMA|CarryOut[28]~41_combout\);

-- Location: IOIBUF_X45_Y73_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X38_Y72_N2
\SOMA|CarryOut[29]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[29]~42_combout\ = (\A[29]~input_o\ & ((\SOMA|CarryOut[28]~0_combout\) # ((\SOMA|CarryOut[28]~41_combout\) # (\B[29]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & ((\SOMA|CarryOut[28]~0_combout\) # (\SOMA|CarryOut[28]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \SOMA|CarryOut[28]~0_combout\,
	datac => \SOMA|CarryOut[28]~41_combout\,
	datad => \B[29]~input_o\,
	combout => \SOMA|CarryOut[29]~42_combout\);

-- Location: LCCOMB_X39_Y1_N30
\SOMA|CarryOut[31]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[31]~43_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # (\SOMA|CarryOut[29]~42_combout\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & \SOMA|CarryOut[29]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \SOMA|CarryOut[29]~42_combout\,
	combout => \SOMA|CarryOut[31]~43_combout\);

-- Location: IOIBUF_X40_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X39_Y1_N24
\SOMA|CarryOut[31]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[31]~44_combout\ = (\A[31]~input_o\ & ((\SOMA|CarryOut[31]~43_combout\) # (\B[31]~input_o\))) # (!\A[31]~input_o\ & (\SOMA|CarryOut[31]~43_combout\ & \B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \SOMA|CarryOut[31]~43_combout\,
	datad => \B[31]~input_o\,
	combout => \SOMA|CarryOut[31]~44_combout\);

-- Location: IOIBUF_X23_Y73_N8
\selector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(1),
	o => \selector[1]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\selector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(0),
	o => \selector[0]~input_o\);

-- Location: LCCOMB_X66_Y1_N16
\MUX|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux31~0_combout\ = (\B[0]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\A[0]~input_o\))))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \MUX|Mux31~0_combout\);

-- Location: LCCOMB_X66_Y1_N26
\MUX|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux30~0_combout\ = \A[1]~input_o\ $ (((\B[0]~input_o\ & (\selector[1]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \MUX|Mux30~0_combout\);

-- Location: LCCOMB_X66_Y1_N4
\MUX|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux30~1_combout\ = (\MUX|Mux30~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[1]~input_o\))))) # (!\MUX|Mux30~0_combout\ & (\B[1]~input_o\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux30~0_combout\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \MUX|Mux30~1_combout\);

-- Location: LCCOMB_X66_Y1_N22
\MUX|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux29~0_combout\ = \B[2]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[1]~14_combout\,
	combout => \MUX|Mux29~0_combout\);

-- Location: LCCOMB_X66_Y1_N0
\MUX|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux29~1_combout\ = (\A[2]~input_o\ & (\selector[1]~input_o\ $ (((\MUX|Mux29~0_combout\) # (\selector[0]~input_o\))))) # (!\A[2]~input_o\ & (\MUX|Mux29~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \MUX|Mux29~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux29~1_combout\);

-- Location: LCCOMB_X66_Y1_N10
\MUX|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux28~0_combout\ = \A[3]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[2]~15_combout\) # (\SOMA|CarryOut[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[2]~15_combout\,
	datab => \A[3]~input_o\,
	datac => \SOMA|CarryOut[2]~13_combout\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux28~0_combout\);

-- Location: LCCOMB_X66_Y1_N20
\MUX|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux28~1_combout\ = (\MUX|Mux28~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[3]~input_o\))))) # (!\MUX|Mux28~0_combout\ & (\B[3]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux28~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux28~1_combout\);

-- Location: LCCOMB_X68_Y69_N28
\MUX|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux27~0_combout\ = \B[4]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[3]~16_combout\,
	datac => \B[4]~input_o\,
	combout => \MUX|Mux27~0_combout\);

-- Location: LCCOMB_X68_Y69_N14
\MUX|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux27~1_combout\ = (\A[4]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux27~0_combout\))))) # (!\A[4]~input_o\ & (\MUX|Mux27~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux27~0_combout\,
	combout => \MUX|Mux27~1_combout\);

-- Location: LCCOMB_X68_Y69_N8
\MUX|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux26~0_combout\ = \A[5]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[4]~17_combout\) # (\SOMA|CarryOut[4]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[4]~17_combout\,
	datab => \SOMA|CarryOut[4]~12_combout\,
	datac => \selector[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \MUX|Mux26~0_combout\);

-- Location: LCCOMB_X68_Y69_N26
\MUX|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux26~1_combout\ = (\B[5]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux26~0_combout\))))) # (!\B[5]~input_o\ & (\MUX|Mux26~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \MUX|Mux26~0_combout\,
	combout => \MUX|Mux26~1_combout\);

-- Location: LCCOMB_X68_Y69_N20
\MUX|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux25~0_combout\ = \B[6]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[5]~18_combout\,
	datad => \B[6]~input_o\,
	combout => \MUX|Mux25~0_combout\);

-- Location: LCCOMB_X68_Y69_N6
\MUX|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux25~1_combout\ = (\A[6]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux25~0_combout\))))) # (!\A[6]~input_o\ & (\MUX|Mux25~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \MUX|Mux25~0_combout\,
	combout => \MUX|Mux25~1_combout\);

-- Location: LCCOMB_X68_Y69_N0
\MUX|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux24~0_combout\ = \A[7]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[6]~19_combout\) # (\SOMA|CarryOut[6]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[6]~19_combout\,
	datac => \A[7]~input_o\,
	datad => \SOMA|CarryOut[6]~11_combout\,
	combout => \MUX|Mux24~0_combout\);

-- Location: LCCOMB_X68_Y69_N2
\MUX|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux24~1_combout\ = (\B[7]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux24~0_combout\))))) # (!\B[7]~input_o\ & (\MUX|Mux24~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux24~0_combout\,
	combout => \MUX|Mux24~1_combout\);

-- Location: LCCOMB_X84_Y72_N28
\MUX|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux23~0_combout\ = \B[8]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[7]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \B[8]~input_o\,
	datad => \SOMA|CarryOut[7]~20_combout\,
	combout => \MUX|Mux23~0_combout\);

-- Location: LCCOMB_X84_Y72_N6
\MUX|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux23~1_combout\ = (\A[8]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux23~0_combout\))))) # (!\A[8]~input_o\ & (\MUX|Mux23~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \A[8]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux23~0_combout\,
	combout => \MUX|Mux23~1_combout\);

-- Location: LCCOMB_X84_Y72_N8
\MUX|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux22~0_combout\ = \A[9]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[8]~10_combout\) # (\SOMA|CarryOut[8]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[8]~10_combout\,
	datac => \SOMA|CarryOut[8]~21_combout\,
	datad => \A[9]~input_o\,
	combout => \MUX|Mux22~0_combout\);

-- Location: LCCOMB_X84_Y72_N2
\MUX|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux22~1_combout\ = (\MUX|Mux22~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[9]~input_o\))))) # (!\MUX|Mux22~0_combout\ & (\B[9]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \MUX|Mux22~0_combout\,
	datac => \selector[1]~input_o\,
	datad => \B[9]~input_o\,
	combout => \MUX|Mux22~1_combout\);

-- Location: LCCOMB_X84_Y72_N20
\MUX|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux21~0_combout\ = \B[10]~input_o\ $ (((\SOMA|CarryOut[9]~22_combout\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \SOMA|CarryOut[9]~22_combout\,
	datac => \selector[1]~input_o\,
	combout => \MUX|Mux21~0_combout\);

-- Location: LCCOMB_X84_Y72_N22
\MUX|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux21~1_combout\ = (\MUX|Mux21~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\A[10]~input_o\))))) # (!\MUX|Mux21~0_combout\ & (\A[10]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \MUX|Mux21~0_combout\,
	datac => \selector[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \MUX|Mux21~1_combout\);

-- Location: LCCOMB_X84_Y72_N0
\MUX|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux20~0_combout\ = \A[11]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[10]~9_combout\) # (\SOMA|CarryOut[10]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \SOMA|CarryOut[10]~9_combout\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[10]~23_combout\,
	combout => \MUX|Mux20~0_combout\);

-- Location: LCCOMB_X84_Y72_N26
\MUX|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux20~1_combout\ = (\MUX|Mux20~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[11]~input_o\))))) # (!\MUX|Mux20~0_combout\ & (\B[11]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \MUX|Mux20~0_combout\,
	datac => \selector[1]~input_o\,
	datad => \B[11]~input_o\,
	combout => \MUX|Mux20~1_combout\);

-- Location: LCCOMB_X59_Y72_N28
\MUX|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux19~0_combout\ = \B[12]~input_o\ $ (((\SOMA|CarryOut[11]~24_combout\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[11]~24_combout\,
	datab => \selector[1]~input_o\,
	datad => \B[12]~input_o\,
	combout => \MUX|Mux19~0_combout\);

-- Location: LCCOMB_X59_Y72_N22
\MUX|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux19~1_combout\ = (\A[12]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux19~0_combout\))))) # (!\A[12]~input_o\ & (\MUX|Mux19~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux19~0_combout\,
	combout => \MUX|Mux19~1_combout\);

-- Location: LCCOMB_X59_Y72_N0
\MUX|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux18~0_combout\ = \A[13]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[12]~25_combout\) # (\SOMA|CarryOut[12]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[12]~25_combout\,
	datad => \SOMA|CarryOut[12]~8_combout\,
	combout => \MUX|Mux18~0_combout\);

-- Location: LCCOMB_X59_Y72_N2
\MUX|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux18~1_combout\ = (\MUX|Mux18~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[13]~input_o\))))) # (!\MUX|Mux18~0_combout\ & (\B[13]~input_o\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \MUX|Mux18~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \B[13]~input_o\,
	combout => \MUX|Mux18~1_combout\);

-- Location: LCCOMB_X59_Y72_N20
\MUX|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux17~0_combout\ = \B[14]~input_o\ $ (((\SOMA|CarryOut[13]~26_combout\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[13]~26_combout\,
	datab => \selector[1]~input_o\,
	datac => \B[14]~input_o\,
	combout => \MUX|Mux17~0_combout\);

-- Location: LCCOMB_X59_Y72_N30
\MUX|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux17~1_combout\ = (\A[14]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux17~0_combout\))))) # (!\A[14]~input_o\ & (\MUX|Mux17~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux17~0_combout\,
	combout => \MUX|Mux17~1_combout\);

-- Location: LCCOMB_X59_Y72_N16
\MUX|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux16~0_combout\ = \A[15]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[14]~27_combout\) # (\SOMA|CarryOut[14]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[14]~27_combout\,
	datad => \SOMA|CarryOut[14]~7_combout\,
	combout => \MUX|Mux16~0_combout\);

-- Location: LCCOMB_X59_Y72_N26
\MUX|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux16~1_combout\ = (\B[15]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux16~0_combout\))))) # (!\B[15]~input_o\ & (\MUX|Mux16~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \B[15]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux16~0_combout\,
	combout => \MUX|Mux16~1_combout\);

-- Location: LCCOMB_X1_Y44_N12
\MUX|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux15~0_combout\ = \B[16]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[15]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \B[16]~input_o\,
	datac => \SOMA|CarryOut[15]~28_combout\,
	combout => \MUX|Mux15~0_combout\);

-- Location: LCCOMB_X1_Y44_N6
\MUX|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux15~1_combout\ = (\A[16]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux15~0_combout\))))) # (!\A[16]~input_o\ & (\MUX|Mux15~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux15~0_combout\,
	combout => \MUX|Mux15~1_combout\);

-- Location: LCCOMB_X1_Y44_N16
\MUX|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux14~0_combout\ = \A[17]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[16]~29_combout\) # (\SOMA|CarryOut[16]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \SOMA|CarryOut[16]~29_combout\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[16]~6_combout\,
	combout => \MUX|Mux14~0_combout\);

-- Location: LCCOMB_X1_Y44_N26
\MUX|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux14~1_combout\ = (\B[17]~input_o\ & (\selector[1]~input_o\ $ (((\MUX|Mux14~0_combout\) # (\selector[0]~input_o\))))) # (!\B[17]~input_o\ & (\MUX|Mux14~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \MUX|Mux14~0_combout\,
	datac => \selector[1]~input_o\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux14~1_combout\);

-- Location: LCCOMB_X1_Y44_N4
\MUX|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux13~0_combout\ = \B[18]~input_o\ $ (((\SOMA|CarryOut[17]~30_combout\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[17]~30_combout\,
	datab => \B[18]~input_o\,
	datac => \selector[1]~input_o\,
	combout => \MUX|Mux13~0_combout\);

-- Location: LCCOMB_X1_Y44_N30
\MUX|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux13~1_combout\ = (\A[18]~input_o\ & (\selector[1]~input_o\ $ (((\MUX|Mux13~0_combout\) # (\selector[0]~input_o\))))) # (!\A[18]~input_o\ & (\MUX|Mux13~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \MUX|Mux13~0_combout\,
	datac => \selector[1]~input_o\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux13~1_combout\);

-- Location: LCCOMB_X1_Y44_N8
\MUX|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux12~0_combout\ = \A[19]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[18]~31_combout\) # (\SOMA|CarryOut[18]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[18]~31_combout\,
	datac => \A[19]~input_o\,
	datad => \SOMA|CarryOut[18]~5_combout\,
	combout => \MUX|Mux12~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\MUX|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux12~1_combout\ = (\B[19]~input_o\ & (\selector[1]~input_o\ $ (((\MUX|Mux12~0_combout\) # (\selector[0]~input_o\))))) # (!\B[19]~input_o\ & (\MUX|Mux12~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \MUX|Mux12~0_combout\,
	datac => \selector[1]~input_o\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux12~1_combout\);

-- Location: LCCOMB_X52_Y1_N28
\MUX|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux11~0_combout\ = \B[20]~input_o\ $ (((\SOMA|CarryOut[19]~32_combout\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[19]~32_combout\,
	datab => \selector[1]~input_o\,
	datad => \B[20]~input_o\,
	combout => \MUX|Mux11~0_combout\);

-- Location: LCCOMB_X52_Y1_N6
\MUX|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux11~1_combout\ = (\A[20]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux11~0_combout\))))) # (!\A[20]~input_o\ & (\MUX|Mux11~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \A[20]~input_o\,
	datad => \MUX|Mux11~0_combout\,
	combout => \MUX|Mux11~1_combout\);

-- Location: LCCOMB_X52_Y1_N16
\MUX|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux10~0_combout\ = \A[21]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[20]~4_combout\) # (\SOMA|CarryOut[20]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[20]~4_combout\,
	datab => \selector[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \SOMA|CarryOut[20]~33_combout\,
	combout => \MUX|Mux10~0_combout\);

-- Location: LCCOMB_X52_Y1_N2
\MUX|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux10~1_combout\ = (\B[21]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux10~0_combout\))))) # (!\B[21]~input_o\ & (\MUX|Mux10~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux10~0_combout\,
	combout => \MUX|Mux10~1_combout\);

-- Location: LCCOMB_X52_Y1_N12
\MUX|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux9~0_combout\ = \B[22]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[21]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[21]~34_combout\,
	combout => \MUX|Mux9~0_combout\);

-- Location: LCCOMB_X52_Y1_N22
\MUX|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux9~1_combout\ = (\A[22]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux9~0_combout\))))) # (!\A[22]~input_o\ & (\MUX|Mux9~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \A[22]~input_o\,
	datad => \MUX|Mux9~0_combout\,
	combout => \MUX|Mux9~1_combout\);

-- Location: LCCOMB_X52_Y1_N24
\MUX|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux8~0_combout\ = \A[23]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[22]~35_combout\) # (\SOMA|CarryOut[22]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[22]~35_combout\,
	datad => \SOMA|CarryOut[22]~3_combout\,
	combout => \MUX|Mux8~0_combout\);

-- Location: LCCOMB_X52_Y1_N10
\MUX|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux8~1_combout\ = (\B[23]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux8~0_combout\))))) # (!\B[23]~input_o\ & (\MUX|Mux8~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \B[23]~input_o\,
	datad => \MUX|Mux8~0_combout\,
	combout => \MUX|Mux8~1_combout\);

-- Location: LCCOMB_X39_Y1_N10
\MUX|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux7~0_combout\ = \B[24]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[23]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[23]~36_combout\,
	combout => \MUX|Mux7~0_combout\);

-- Location: LCCOMB_X39_Y1_N28
\MUX|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux7~1_combout\ = (\A[24]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux7~0_combout\))))) # (!\A[24]~input_o\ & (\MUX|Mux7~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \A[24]~input_o\,
	datad => \MUX|Mux7~0_combout\,
	combout => \MUX|Mux7~1_combout\);

-- Location: LCCOMB_X39_Y1_N22
\MUX|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux6~0_combout\ = \A[25]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[24]~37_combout\) # (\SOMA|CarryOut[24]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[24]~37_combout\,
	datab => \SOMA|CarryOut[24]~2_combout\,
	datac => \A[25]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y1_N0
\MUX|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux6~1_combout\ = (\MUX|Mux6~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[25]~input_o\))))) # (!\MUX|Mux6~0_combout\ & (\B[25]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux6~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \B[25]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux6~1_combout\);

-- Location: LCCOMB_X38_Y72_N20
\MUX|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux5~0_combout\ = \B[26]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[25]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[25]~38_combout\,
	combout => \MUX|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y72_N6
\MUX|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux5~1_combout\ = (\MUX|Mux5~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\A[26]~input_o\))))) # (!\MUX|Mux5~0_combout\ & (\A[26]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \MUX|Mux5~0_combout\,
	datac => \A[26]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux5~1_combout\);

-- Location: LCCOMB_X38_Y72_N24
\MUX|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux4~0_combout\ = \A[27]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[26]~39_combout\) # (\SOMA|CarryOut[26]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[26]~39_combout\,
	datad => \SOMA|CarryOut[26]~1_combout\,
	combout => \MUX|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y72_N26
\MUX|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux4~1_combout\ = (\MUX|Mux4~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[27]~input_o\))))) # (!\MUX|Mux4~0_combout\ & (\B[27]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \MUX|Mux4~0_combout\,
	datac => \B[27]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux4~1_combout\);

-- Location: LCCOMB_X38_Y72_N28
\MUX|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux3~0_combout\ = \B[28]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[27]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[27]~40_combout\,
	datad => \B[28]~input_o\,
	combout => \MUX|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y72_N30
\MUX|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux3~1_combout\ = (\MUX|Mux3~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\A[28]~input_o\))))) # (!\MUX|Mux3~0_combout\ & (\A[28]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \MUX|Mux3~0_combout\,
	datac => \A[28]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux3~1_combout\);

-- Location: LCCOMB_X38_Y72_N16
\MUX|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux2~0_combout\ = \A[29]~input_o\ $ (((\selector[1]~input_o\ & ((\SOMA|CarryOut[28]~41_combout\) # (\SOMA|CarryOut[28]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[28]~41_combout\,
	datad => \SOMA|CarryOut[28]~0_combout\,
	combout => \MUX|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y72_N10
\MUX|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux2~1_combout\ = (\MUX|Mux2~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\B[29]~input_o\))))) # (!\MUX|Mux2~0_combout\ & (\B[29]~input_o\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \MUX|Mux2~0_combout\,
	datac => \B[29]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux2~1_combout\);

-- Location: LCCOMB_X39_Y1_N2
\MUX|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux1~0_combout\ = \B[30]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[29]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datac => \B[30]~input_o\,
	datad => \SOMA|CarryOut[29]~42_combout\,
	combout => \MUX|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y1_N4
\MUX|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux1~1_combout\ = (\A[30]~input_o\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux1~0_combout\))))) # (!\A[30]~input_o\ & (\MUX|Mux1~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux1~0_combout\,
	combout => \MUX|Mux1~1_combout\);

-- Location: LCCOMB_X39_Y1_N14
\MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux0~0_combout\ = \B[31]~input_o\ $ (((\SOMA|CarryOut[31]~43_combout\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[31]~43_combout\,
	datac => \selector[1]~input_o\,
	datad => \B[31]~input_o\,
	combout => \MUX|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y1_N16
\MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux0~1_combout\ = (\MUX|Mux0~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\A[31]~input_o\))))) # (!\MUX|Mux0~0_combout\ & (\A[31]~input_o\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \MUX|Mux0~0_combout\,
	datad => \A[31]~input_o\,
	combout => \MUX|Mux0~1_combout\);

-- Location: LCCOMB_X66_Y1_N30
\OUT_AND[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- OUT_AND(0) = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => OUT_AND(0));

-- Location: LCCOMB_X66_Y1_N24
\SOMA|CarryOut[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[2]~45_combout\ = (\B[2]~input_o\ & ((\SOMA|CarryOut[1]~14_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\SOMA|CarryOut[1]~14_combout\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SOMA|CarryOut[1]~14_combout\,
	datad => \A[2]~input_o\,
	combout => \SOMA|CarryOut[2]~45_combout\);

-- Location: LCCOMB_X68_Y69_N4
\SOMA|CarryOut[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[4]~46_combout\ = (\B[4]~input_o\ & ((\SOMA|CarryOut[3]~16_combout\) # (\A[4]~input_o\))) # (!\B[4]~input_o\ & (\SOMA|CarryOut[3]~16_combout\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \SOMA|CarryOut[3]~16_combout\,
	datad => \A[4]~input_o\,
	combout => \SOMA|CarryOut[4]~46_combout\);

-- Location: LCCOMB_X68_Y69_N22
\SOMA|CarryOut[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[6]~47_combout\ = (\SOMA|CarryOut[5]~18_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) # (!\SOMA|CarryOut[5]~18_combout\ & (\A[6]~input_o\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[5]~18_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \SOMA|CarryOut[6]~47_combout\);

-- Location: LCCOMB_X84_Y72_N12
\SOMA|CarryOut[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[8]~48_combout\ = (\SOMA|CarryOut[7]~20_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\))) # (!\SOMA|CarryOut[7]~20_combout\ & (\B[8]~input_o\ & \A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[7]~20_combout\,
	datab => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SOMA|CarryOut[8]~48_combout\);

-- Location: LCCOMB_X84_Y72_N30
\SOMA|CarryOut[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[10]~49_combout\ = (\SOMA|CarryOut[9]~22_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # (!\SOMA|CarryOut[9]~22_combout\ & (\B[10]~input_o\ & \A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOMA|CarryOut[9]~22_combout\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \SOMA|CarryOut[10]~49_combout\);

-- Location: LCCOMB_X59_Y72_N12
\SOMA|CarryOut[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[12]~50_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # (\SOMA|CarryOut[11]~24_combout\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & \SOMA|CarryOut[11]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \SOMA|CarryOut[11]~24_combout\,
	combout => \SOMA|CarryOut[12]~50_combout\);

-- Location: LCCOMB_X59_Y72_N14
\SOMA|CarryOut[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[14]~51_combout\ = (\SOMA|CarryOut[13]~26_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\))) # (!\SOMA|CarryOut[13]~26_combout\ & (\A[14]~input_o\ & \B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[13]~26_combout\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \SOMA|CarryOut[14]~51_combout\);

-- Location: LCCOMB_X1_Y44_N28
\SOMA|CarryOut[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[16]~52_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # (\SOMA|CarryOut[15]~28_combout\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & \SOMA|CarryOut[15]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \SOMA|CarryOut[15]~28_combout\,
	combout => \SOMA|CarryOut[16]~52_combout\);

-- Location: LCCOMB_X1_Y44_N14
\SOMA|CarryOut[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[18]~53_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # (\SOMA|CarryOut[17]~30_combout\))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & \SOMA|CarryOut[17]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \SOMA|CarryOut[17]~30_combout\,
	combout => \SOMA|CarryOut[18]~53_combout\);

-- Location: LCCOMB_X52_Y1_N4
\SOMA|CarryOut[20]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[20]~54_combout\ = (\SOMA|CarryOut[19]~32_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\))) # (!\SOMA|CarryOut[19]~32_combout\ & (\A[20]~input_o\ & \B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[19]~32_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \SOMA|CarryOut[20]~54_combout\);

-- Location: LCCOMB_X52_Y1_N14
\SOMA|CarryOut[22]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[22]~55_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # (\SOMA|CarryOut[21]~34_combout\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & \SOMA|CarryOut[21]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \SOMA|CarryOut[21]~34_combout\,
	combout => \SOMA|CarryOut[22]~55_combout\);

-- Location: LCCOMB_X39_Y1_N18
\SOMA|CarryOut[24]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[24]~56_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # (\SOMA|CarryOut[23]~36_combout\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & \SOMA|CarryOut[23]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \SOMA|CarryOut[23]~36_combout\,
	combout => \SOMA|CarryOut[24]~56_combout\);

-- Location: LCCOMB_X38_Y72_N12
\SOMA|CarryOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[26]~57_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\) # (\SOMA|CarryOut[25]~38_combout\))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & \SOMA|CarryOut[25]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => \SOMA|CarryOut[25]~38_combout\,
	combout => \SOMA|CarryOut[26]~57_combout\);

-- Location: LCCOMB_X38_Y72_N14
\SOMA|CarryOut[28]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[28]~58_combout\ = (\B[28]~input_o\ & ((\SOMA|CarryOut[27]~40_combout\) # (\A[28]~input_o\))) # (!\B[28]~input_o\ & (\SOMA|CarryOut[27]~40_combout\ & \A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \SOMA|CarryOut[27]~40_combout\,
	datad => \A[28]~input_o\,
	combout => \SOMA|CarryOut[28]~58_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(0),
	o => \CIn[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\CIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(1),
	o => \CIn[1]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\CIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(2),
	o => \CIn[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\CIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(3),
	o => \CIn[3]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\CIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(4),
	o => \CIn[4]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\CIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(5),
	o => \CIn[5]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\CIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(6),
	o => \CIn[6]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\CIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(7),
	o => \CIn[7]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\CIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(8),
	o => \CIn[8]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\CIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(9),
	o => \CIn[9]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\CIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(10),
	o => \CIn[10]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\CIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(11),
	o => \CIn[11]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\CIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(12),
	o => \CIn[12]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\CIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(13),
	o => \CIn[13]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\CIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(14),
	o => \CIn[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\CIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(15),
	o => \CIn[15]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\CIn[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(16),
	o => \CIn[16]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\CIn[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(17),
	o => \CIn[17]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\CIn[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(18),
	o => \CIn[18]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\CIn[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(19),
	o => \CIn[19]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\CIn[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(20),
	o => \CIn[20]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\CIn[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(21),
	o => \CIn[21]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\CIn[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(22),
	o => \CIn[22]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\CIn[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(23),
	o => \CIn[23]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\CIn[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(24),
	o => \CIn[24]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\CIn[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(25),
	o => \CIn[25]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\CIn[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(26),
	o => \CIn[26]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\CIn[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(27),
	o => \CIn[27]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\CIn[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(28),
	o => \CIn[28]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\CIn[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(29),
	o => \CIn[29]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\CIn[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(30),
	o => \CIn[30]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\CIn[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(31),
	o => \CIn[31]~input_o\);

ww_overflow <= \overflow~output_o\;

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(6) <= \r[6]~output_o\;

ww_r(7) <= \r[7]~output_o\;

ww_r(8) <= \r[8]~output_o\;

ww_r(9) <= \r[9]~output_o\;

ww_r(10) <= \r[10]~output_o\;

ww_r(11) <= \r[11]~output_o\;

ww_r(12) <= \r[12]~output_o\;

ww_r(13) <= \r[13]~output_o\;

ww_r(14) <= \r[14]~output_o\;

ww_r(15) <= \r[15]~output_o\;

ww_r(16) <= \r[16]~output_o\;

ww_r(17) <= \r[17]~output_o\;

ww_r(18) <= \r[18]~output_o\;

ww_r(19) <= \r[19]~output_o\;

ww_r(20) <= \r[20]~output_o\;

ww_r(21) <= \r[21]~output_o\;

ww_r(22) <= \r[22]~output_o\;

ww_r(23) <= \r[23]~output_o\;

ww_r(24) <= \r[24]~output_o\;

ww_r(25) <= \r[25]~output_o\;

ww_r(26) <= \r[26]~output_o\;

ww_r(27) <= \r[27]~output_o\;

ww_r(28) <= \r[28]~output_o\;

ww_r(29) <= \r[29]~output_o\;

ww_r(30) <= \r[30]~output_o\;

ww_r(31) <= \r[31]~output_o\;

ww_COut(0) <= \COut[0]~output_o\;

ww_COut(1) <= \COut[1]~output_o\;

ww_COut(2) <= \COut[2]~output_o\;

ww_COut(3) <= \COut[3]~output_o\;

ww_COut(4) <= \COut[4]~output_o\;

ww_COut(5) <= \COut[5]~output_o\;

ww_COut(6) <= \COut[6]~output_o\;

ww_COut(7) <= \COut[7]~output_o\;

ww_COut(8) <= \COut[8]~output_o\;

ww_COut(9) <= \COut[9]~output_o\;

ww_COut(10) <= \COut[10]~output_o\;

ww_COut(11) <= \COut[11]~output_o\;

ww_COut(12) <= \COut[12]~output_o\;

ww_COut(13) <= \COut[13]~output_o\;

ww_COut(14) <= \COut[14]~output_o\;

ww_COut(15) <= \COut[15]~output_o\;

ww_COut(16) <= \COut[16]~output_o\;

ww_COut(17) <= \COut[17]~output_o\;

ww_COut(18) <= \COut[18]~output_o\;

ww_COut(19) <= \COut[19]~output_o\;

ww_COut(20) <= \COut[20]~output_o\;

ww_COut(21) <= \COut[21]~output_o\;

ww_COut(22) <= \COut[22]~output_o\;

ww_COut(23) <= \COut[23]~output_o\;

ww_COut(24) <= \COut[24]~output_o\;

ww_COut(25) <= \COut[25]~output_o\;

ww_COut(26) <= \COut[26]~output_o\;

ww_COut(27) <= \COut[27]~output_o\;

ww_COut(28) <= \COut[28]~output_o\;

ww_COut(29) <= \COut[29]~output_o\;

ww_COut(30) <= \COut[30]~output_o\;

ww_COut(31) <= \COut[31]~output_o\;
END structure;


