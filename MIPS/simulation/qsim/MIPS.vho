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

-- DATE "10/18/2018 14:23:03"

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
	invA : IN std_logic;
	invB : IN std_logic;
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
-- CIn[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[3]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[5]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[6]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[7]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[8]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[9]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[10]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[11]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[13]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[14]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[15]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[16]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[17]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[18]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[19]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[20]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[21]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[22]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[23]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[24]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[25]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[26]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[27]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[28]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[29]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[30]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIn[31]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[9]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[12]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[16]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[17]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[18]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[19]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[20]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[21]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[22]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[23]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[24]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[25]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[26]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[27]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[28]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[29]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[30]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[31]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[9]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[10]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[13]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[14]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[15]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[16]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[18]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[19]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[20]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[21]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[22]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[23]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[24]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[25]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[26]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[27]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[28]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[29]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[30]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COut[31]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- invB	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- invA	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_invA : std_logic;
SIGNAL ww_invB : std_logic;
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
SIGNAL \invB~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \invA~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[31]~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[28]~3_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[25]~6_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[24]~7_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[21]~10_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[20]~11_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[19]~12_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[18]~13_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[16]~15_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[15]~16_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[13]~18_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[12]~19_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[11]~20_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[10]~21_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[9]~22_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[8]~23_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[6]~25_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[5]~26_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[4]~27_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[3]~28_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[2]~29_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[1]~30_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[1]~0_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[2]~1_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[3]~2_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[4]~3_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[5]~4_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[6]~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[7]~24_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[7]~6_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[8]~7_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[9]~8_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[10]~9_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[11]~10_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[12]~11_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[13]~12_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[14]~17_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[14]~13_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[15]~14_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[16]~15_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[17]~14_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[17]~16_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[18]~17_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[19]~18_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[20]~19_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[21]~20_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[22]~9_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[22]~21_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[23]~8_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[23]~22_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[24]~23_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[25]~24_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[26]~5_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[26]~25_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[27]~4_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \SOMA|CarryOut[27]~26_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[28]~27_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[29]~2_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[29]~28_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[30]~1_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[30]~29_combout\ : std_logic;
SIGNAL \SOMA|CarryOut[31]~30_combout\ : std_logic;
SIGNAL \INVERTE_B|q[0]~0_combout\ : std_logic;
SIGNAL \selector[0]~input_o\ : std_logic;
SIGNAL \INVERTE_A|q[0]~31_combout\ : std_logic;
SIGNAL \selector[1]~input_o\ : std_logic;
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
SIGNAL \INVERTE_B|q[28]~1_combout\ : std_logic;
SIGNAL \MUX|Mux3~0_combout\ : std_logic;
SIGNAL \SOMA|SOMAOUT[28]~0_combout\ : std_logic;
SIGNAL \MUX|Mux30~2_combout\ : std_logic;
SIGNAL \MUX|Mux3~1_combout\ : std_logic;
SIGNAL \INVERTE_B|q[29]~2_combout\ : std_logic;
SIGNAL \MUX|Mux2~0_combout\ : std_logic;
SIGNAL \SOMA|SOMAOUT[29]~1_combout\ : std_logic;
SIGNAL \MUX|Mux2~1_combout\ : std_logic;
SIGNAL \MUX|Mux1~2_combout\ : std_logic;
SIGNAL \MUX|Mux1~0_combout\ : std_logic;
SIGNAL \MUX|Mux1~1_combout\ : std_logic;
SIGNAL \MUX|Mux1~3_combout\ : std_logic;
SIGNAL \MUX|Mux0~0_combout\ : std_logic;
SIGNAL \MUX|Mux0~1_combout\ : std_logic;
SIGNAL \MUX|Mux0~2_combout\ : std_logic;
SIGNAL \MUX|Mux0~3_combout\ : std_logic;
SIGNAL \SOMA|OUT_AND1\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_invA <= invA;
ww_invB <= invB;
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

-- Location: IOOBUF_X11_Y0_N2
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[31]~30_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X49_Y73_N23
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X38_Y73_N2
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

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X38_Y73_N9
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X5_Y73_N2
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

-- Location: IOOBUF_X0_Y66_N23
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

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N2
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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X31_Y73_N2
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

-- Location: IOOBUF_X25_Y73_N23
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

-- Location: IOOBUF_X20_Y73_N9
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

-- Location: IOOBUF_X23_Y73_N2
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

-- Location: IOOBUF_X0_Y67_N16
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

-- Location: IOOBUF_X1_Y73_N2
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X0_Y64_N2
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

-- Location: IOOBUF_X0_Y47_N23
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

-- Location: IOOBUF_X0_Y47_N2
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

-- Location: IOOBUF_X0_Y47_N16
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

-- Location: IOOBUF_X0_Y44_N2
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X9_Y0_N23
\r[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \r[30]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\r[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \r[31]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\COut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|OUT_AND1\(0),
	devoe => ww_devoe,
	o => \COut[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\COut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[1]~0_combout\,
	devoe => ww_devoe,
	o => \COut[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\COut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[2]~1_combout\,
	devoe => ww_devoe,
	o => \COut[2]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\COut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[3]~2_combout\,
	devoe => ww_devoe,
	o => \COut[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\COut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[4]~3_combout\,
	devoe => ww_devoe,
	o => \COut[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\COut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[5]~4_combout\,
	devoe => ww_devoe,
	o => \COut[5]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\COut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[6]~5_combout\,
	devoe => ww_devoe,
	o => \COut[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\COut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[7]~6_combout\,
	devoe => ww_devoe,
	o => \COut[7]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\COut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[8]~7_combout\,
	devoe => ww_devoe,
	o => \COut[8]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\COut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[9]~8_combout\,
	devoe => ww_devoe,
	o => \COut[9]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\COut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[10]~9_combout\,
	devoe => ww_devoe,
	o => \COut[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\COut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[11]~10_combout\,
	devoe => ww_devoe,
	o => \COut[11]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\COut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[12]~11_combout\,
	devoe => ww_devoe,
	o => \COut[12]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\COut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[13]~12_combout\,
	devoe => ww_devoe,
	o => \COut[13]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\COut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[14]~13_combout\,
	devoe => ww_devoe,
	o => \COut[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\COut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[15]~14_combout\,
	devoe => ww_devoe,
	o => \COut[15]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\COut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[16]~15_combout\,
	devoe => ww_devoe,
	o => \COut[16]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\COut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[17]~16_combout\,
	devoe => ww_devoe,
	o => \COut[17]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\COut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[18]~17_combout\,
	devoe => ww_devoe,
	o => \COut[18]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\COut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[19]~18_combout\,
	devoe => ww_devoe,
	o => \COut[19]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\COut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[20]~19_combout\,
	devoe => ww_devoe,
	o => \COut[20]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\COut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[21]~20_combout\,
	devoe => ww_devoe,
	o => \COut[21]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\COut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[22]~21_combout\,
	devoe => ww_devoe,
	o => \COut[22]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\COut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[23]~22_combout\,
	devoe => ww_devoe,
	o => \COut[23]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\COut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[24]~23_combout\,
	devoe => ww_devoe,
	o => \COut[24]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\COut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[25]~24_combout\,
	devoe => ww_devoe,
	o => \COut[25]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\COut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[26]~25_combout\,
	devoe => ww_devoe,
	o => \COut[26]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\COut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[27]~26_combout\,
	devoe => ww_devoe,
	o => \COut[27]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\COut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[28]~27_combout\,
	devoe => ww_devoe,
	o => \COut[28]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\COut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[29]~28_combout\,
	devoe => ww_devoe,
	o => \COut[29]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\COut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[30]~29_combout\,
	devoe => ww_devoe,
	o => \COut[30]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\COut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA|CarryOut[31]~30_combout\,
	devoe => ww_devoe,
	o => \COut[31]~output_o\);

-- Location: IOIBUF_X0_Y13_N1
\invB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_invB,
	o => \invB~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\invA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_invA,
	o => \invA~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X11_Y4_N8
\INVERTE_A|q[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[31]~0_combout\ = \invA~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[31]~input_o\,
	combout => \INVERTE_A|q[31]~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X21_Y4_N18
\INVERTE_A|q[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[28]~3_combout\ = \invA~input_o\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[28]~input_o\,
	combout => \INVERTE_A|q[28]~3_combout\);

-- Location: IOIBUF_X0_Y43_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X1_Y46_N26
\INVERTE_A|q[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[25]~6_combout\ = \A[25]~input_o\ $ (\invA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datad => \invA~input_o\,
	combout => \INVERTE_A|q[25]~6_combout\);

-- Location: IOIBUF_X0_Y49_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X1_Y46_N4
\INVERTE_A|q[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[24]~7_combout\ = \invA~input_o\ $ (\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[24]~input_o\,
	combout => \INVERTE_A|q[24]~7_combout\);

-- Location: IOIBUF_X7_Y73_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X2_Y69_N24
\INVERTE_A|q[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[21]~10_combout\ = \invA~input_o\ $ (\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datac => \A[21]~input_o\,
	combout => \INVERTE_A|q[21]~10_combout\);

-- Location: IOIBUF_X0_Y66_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X2_Y69_N10
\INVERTE_A|q[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[20]~11_combout\ = \invA~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datad => \A[20]~input_o\,
	combout => \INVERTE_A|q[20]~11_combout\);

-- Location: IOIBUF_X0_Y63_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X2_Y69_N4
\INVERTE_A|q[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[19]~12_combout\ = \invA~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datad => \A[19]~input_o\,
	combout => \INVERTE_A|q[19]~12_combout\);

-- Location: IOIBUF_X1_Y73_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X2_Y69_N22
\INVERTE_A|q[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[18]~13_combout\ = \invA~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datad => \A[18]~input_o\,
	combout => \INVERTE_A|q[18]~13_combout\);

-- Location: IOIBUF_X29_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X24_Y70_N10
\INVERTE_A|q[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[16]~15_combout\ = \invA~input_o\ $ (\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[16]~input_o\,
	combout => \INVERTE_A|q[16]~15_combout\);

-- Location: IOIBUF_X27_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X24_Y70_N28
\INVERTE_A|q[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[15]~16_combout\ = \A[15]~input_o\ $ (\invA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \invA~input_o\,
	combout => \INVERTE_A|q[15]~16_combout\);

-- Location: IOIBUF_X23_Y73_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X13_Y70_N0
\INVERTE_A|q[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[13]~18_combout\ = \invA~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[13]~input_o\,
	combout => \INVERTE_A|q[13]~18_combout\);

-- Location: IOIBUF_X16_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X13_Y70_N26
\INVERTE_A|q[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[12]~19_combout\ = \invA~input_o\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datac => \A[12]~input_o\,
	combout => \INVERTE_A|q[12]~19_combout\);

-- Location: IOIBUF_X11_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X13_Y70_N4
\INVERTE_A|q[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[11]~20_combout\ = \invA~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[11]~input_o\,
	combout => \INVERTE_A|q[11]~20_combout\);

-- Location: IOIBUF_X0_Y62_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X13_Y70_N6
\INVERTE_A|q[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[10]~21_combout\ = \invA~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[10]~input_o\,
	combout => \INVERTE_A|q[10]~21_combout\);

-- Location: IOIBUF_X5_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X6_Y69_N26
\INVERTE_A|q[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[9]~22_combout\ = \invA~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datac => \A[9]~input_o\,
	combout => \INVERTE_A|q[9]~22_combout\);

-- Location: IOIBUF_X9_Y73_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X6_Y69_N20
\INVERTE_A|q[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[8]~23_combout\ = \invA~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datac => \A[8]~input_o\,
	combout => \INVERTE_A|q[8]~23_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X39_Y69_N10
\INVERTE_A|q[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[6]~25_combout\ = \invA~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[6]~input_o\,
	combout => \INVERTE_A|q[6]~25_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X39_Y69_N12
\INVERTE_A|q[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[5]~26_combout\ = \A[5]~input_o\ $ (\invA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \invA~input_o\,
	combout => \INVERTE_A|q[5]~26_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X39_Y69_N6
\INVERTE_A|q[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[4]~27_combout\ = \invA~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[4]~input_o\,
	combout => \INVERTE_A|q[4]~27_combout\);

-- Location: IOIBUF_X38_Y0_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X52_Y69_N24
\INVERTE_A|q[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[3]~28_combout\ = \invA~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[3]~input_o\,
	combout => \INVERTE_A|q[3]~28_combout\);

-- Location: IOIBUF_X58_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X52_Y69_N18
\INVERTE_A|q[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[2]~29_combout\ = \invA~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[2]~input_o\,
	combout => \INVERTE_A|q[2]~29_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X52_Y69_N6
\SOMA|OUT_AND1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|OUT_AND1\(0) = (\invA~input_o\ & (!\A[0]~input_o\ & (\B[0]~input_o\ $ (\invB~input_o\)))) # (!\invA~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datab => \B[0]~input_o\,
	datac => \invB~input_o\,
	datad => \A[0]~input_o\,
	combout => \SOMA|OUT_AND1\(0));

-- Location: IOIBUF_X60_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X52_Y69_N4
\INVERTE_A|q[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[1]~30_combout\ = \invA~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datac => \A[1]~input_o\,
	combout => \INVERTE_A|q[1]~30_combout\);

-- Location: IOIBUF_X58_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X52_Y69_N0
\SOMA|CarryOut[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[1]~0_combout\ = (\SOMA|OUT_AND1\(0) & ((\INVERTE_A|q[1]~30_combout\) # (\invB~input_o\ $ (\B[1]~input_o\)))) # (!\SOMA|OUT_AND1\(0) & (\INVERTE_A|q[1]~30_combout\ & (\invB~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|OUT_AND1\(0),
	datab => \INVERTE_A|q[1]~30_combout\,
	datac => \invB~input_o\,
	datad => \B[1]~input_o\,
	combout => \SOMA|CarryOut[1]~0_combout\);

-- Location: LCCOMB_X52_Y69_N2
\SOMA|CarryOut[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[2]~1_combout\ = (\INVERTE_A|q[2]~29_combout\ & ((\SOMA|CarryOut[1]~0_combout\) # (\B[2]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[2]~29_combout\ & (\SOMA|CarryOut[1]~0_combout\ & (\B[2]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \INVERTE_A|q[2]~29_combout\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[1]~0_combout\,
	combout => \SOMA|CarryOut[2]~1_combout\);

-- Location: LCCOMB_X52_Y69_N20
\SOMA|CarryOut[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[3]~2_combout\ = (\INVERTE_A|q[3]~28_combout\ & ((\SOMA|CarryOut[2]~1_combout\) # (\B[3]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[3]~28_combout\ & (\SOMA|CarryOut[2]~1_combout\ & (\B[3]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \INVERTE_A|q[3]~28_combout\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[2]~1_combout\,
	combout => \SOMA|CarryOut[3]~2_combout\);

-- Location: LCCOMB_X39_Y69_N0
\SOMA|CarryOut[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[4]~3_combout\ = (\INVERTE_A|q[4]~27_combout\ & ((\SOMA|CarryOut[3]~2_combout\) # (\invB~input_o\ $ (\B[4]~input_o\)))) # (!\INVERTE_A|q[4]~27_combout\ & (\SOMA|CarryOut[3]~2_combout\ & (\invB~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[4]~27_combout\,
	datab => \invB~input_o\,
	datac => \B[4]~input_o\,
	datad => \SOMA|CarryOut[3]~2_combout\,
	combout => \SOMA|CarryOut[4]~3_combout\);

-- Location: LCCOMB_X39_Y69_N18
\SOMA|CarryOut[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[5]~4_combout\ = (\INVERTE_A|q[5]~26_combout\ & ((\SOMA|CarryOut[4]~3_combout\) # (\invB~input_o\ $ (\B[5]~input_o\)))) # (!\INVERTE_A|q[5]~26_combout\ & (\SOMA|CarryOut[4]~3_combout\ & (\invB~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[5]~26_combout\,
	datab => \invB~input_o\,
	datac => \B[5]~input_o\,
	datad => \SOMA|CarryOut[4]~3_combout\,
	combout => \SOMA|CarryOut[5]~4_combout\);

-- Location: IOIBUF_X42_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X39_Y69_N28
\SOMA|CarryOut[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[6]~5_combout\ = (\INVERTE_A|q[6]~25_combout\ & ((\SOMA|CarryOut[5]~4_combout\) # (\invB~input_o\ $ (\B[6]~input_o\)))) # (!\INVERTE_A|q[6]~25_combout\ & (\SOMA|CarryOut[5]~4_combout\ & (\invB~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[6]~25_combout\,
	datab => \SOMA|CarryOut[5]~4_combout\,
	datac => \invB~input_o\,
	datad => \B[6]~input_o\,
	combout => \SOMA|CarryOut[6]~5_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X39_Y69_N24
\INVERTE_A|q[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[7]~24_combout\ = \invA~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[7]~input_o\,
	combout => \INVERTE_A|q[7]~24_combout\);

-- Location: LCCOMB_X39_Y69_N22
\SOMA|CarryOut[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[7]~6_combout\ = (\SOMA|CarryOut[6]~5_combout\ & ((\INVERTE_A|q[7]~24_combout\) # (\B[7]~input_o\ $ (\invB~input_o\)))) # (!\SOMA|CarryOut[6]~5_combout\ & (\INVERTE_A|q[7]~24_combout\ & (\B[7]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[6]~5_combout\,
	datad => \INVERTE_A|q[7]~24_combout\,
	combout => \SOMA|CarryOut[7]~6_combout\);

-- Location: LCCOMB_X6_Y69_N6
\SOMA|CarryOut[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[8]~7_combout\ = (\INVERTE_A|q[8]~23_combout\ & ((\SOMA|CarryOut[7]~6_combout\) # (\B[8]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[8]~23_combout\ & (\SOMA|CarryOut[7]~6_combout\ & (\B[8]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \INVERTE_A|q[8]~23_combout\,
	datac => \SOMA|CarryOut[7]~6_combout\,
	datad => \invB~input_o\,
	combout => \SOMA|CarryOut[8]~7_combout\);

-- Location: LCCOMB_X6_Y69_N0
\SOMA|CarryOut[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[9]~8_combout\ = (\INVERTE_A|q[9]~22_combout\ & ((\SOMA|CarryOut[8]~7_combout\) # (\B[9]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[9]~22_combout\ & (\SOMA|CarryOut[8]~7_combout\ & (\B[9]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \invB~input_o\,
	datac => \INVERTE_A|q[9]~22_combout\,
	datad => \SOMA|CarryOut[8]~7_combout\,
	combout => \SOMA|CarryOut[9]~8_combout\);

-- Location: IOIBUF_X33_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X13_Y70_N16
\SOMA|CarryOut[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[10]~9_combout\ = (\INVERTE_A|q[10]~21_combout\ & ((\SOMA|CarryOut[9]~8_combout\) # (\invB~input_o\ $ (\B[10]~input_o\)))) # (!\INVERTE_A|q[10]~21_combout\ & (\SOMA|CarryOut[9]~8_combout\ & (\invB~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[10]~21_combout\,
	datab => \SOMA|CarryOut[9]~8_combout\,
	datac => \invB~input_o\,
	datad => \B[10]~input_o\,
	combout => \SOMA|CarryOut[10]~9_combout\);

-- Location: LCCOMB_X13_Y70_N10
\SOMA|CarryOut[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[11]~10_combout\ = (\INVERTE_A|q[11]~20_combout\ & ((\SOMA|CarryOut[10]~9_combout\) # (\B[11]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[11]~20_combout\ & (\SOMA|CarryOut[10]~9_combout\ & (\B[11]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \INVERTE_A|q[11]~20_combout\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[10]~9_combout\,
	combout => \SOMA|CarryOut[11]~10_combout\);

-- Location: LCCOMB_X13_Y70_N12
\SOMA|CarryOut[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[12]~11_combout\ = (\INVERTE_A|q[12]~19_combout\ & ((\SOMA|CarryOut[11]~10_combout\) # (\B[12]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[12]~19_combout\ & (\SOMA|CarryOut[11]~10_combout\ & (\B[12]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[12]~19_combout\,
	datab => \B[12]~input_o\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[11]~10_combout\,
	combout => \SOMA|CarryOut[12]~11_combout\);

-- Location: LCCOMB_X13_Y70_N22
\SOMA|CarryOut[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[13]~12_combout\ = (\INVERTE_A|q[13]~18_combout\ & ((\SOMA|CarryOut[12]~11_combout\) # (\invB~input_o\ $ (\B[13]~input_o\)))) # (!\INVERTE_A|q[13]~18_combout\ & (\SOMA|CarryOut[12]~11_combout\ & (\invB~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invB~input_o\,
	datab => \INVERTE_A|q[13]~18_combout\,
	datac => \B[13]~input_o\,
	datad => \SOMA|CarryOut[12]~11_combout\,
	combout => \SOMA|CarryOut[13]~12_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X24_Y70_N14
\INVERTE_A|q[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[14]~17_combout\ = \invA~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[14]~input_o\,
	combout => \INVERTE_A|q[14]~17_combout\);

-- Location: IOIBUF_X29_Y73_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X24_Y70_N0
\SOMA|CarryOut[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[14]~13_combout\ = (\SOMA|CarryOut[13]~12_combout\ & ((\INVERTE_A|q[14]~17_combout\) # (\invB~input_o\ $ (\B[14]~input_o\)))) # (!\SOMA|CarryOut[13]~12_combout\ & (\INVERTE_A|q[14]~17_combout\ & (\invB~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[13]~12_combout\,
	datab => \invB~input_o\,
	datac => \INVERTE_A|q[14]~17_combout\,
	datad => \B[14]~input_o\,
	combout => \SOMA|CarryOut[14]~13_combout\);

-- Location: LCCOMB_X24_Y70_N2
\SOMA|CarryOut[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[15]~14_combout\ = (\INVERTE_A|q[15]~16_combout\ & ((\SOMA|CarryOut[14]~13_combout\) # (\invB~input_o\ $ (\B[15]~input_o\)))) # (!\INVERTE_A|q[15]~16_combout\ & (\SOMA|CarryOut[14]~13_combout\ & (\invB~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invB~input_o\,
	datab => \INVERTE_A|q[15]~16_combout\,
	datac => \B[15]~input_o\,
	datad => \SOMA|CarryOut[14]~13_combout\,
	combout => \SOMA|CarryOut[15]~14_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X24_Y70_N12
\SOMA|CarryOut[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[16]~15_combout\ = (\INVERTE_A|q[16]~15_combout\ & ((\SOMA|CarryOut[15]~14_combout\) # (\invB~input_o\ $ (\B[16]~input_o\)))) # (!\INVERTE_A|q[16]~15_combout\ & (\SOMA|CarryOut[15]~14_combout\ & (\invB~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[16]~15_combout\,
	datab => \SOMA|CarryOut[15]~14_combout\,
	datac => \invB~input_o\,
	datad => \B[16]~input_o\,
	combout => \SOMA|CarryOut[16]~15_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X24_Y70_N8
\INVERTE_A|q[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[17]~14_combout\ = \invA~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[17]~input_o\,
	combout => \INVERTE_A|q[17]~14_combout\);

-- Location: IOIBUF_X27_Y73_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X24_Y70_N30
\SOMA|CarryOut[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[17]~16_combout\ = (\SOMA|CarryOut[16]~15_combout\ & ((\INVERTE_A|q[17]~14_combout\) # (\B[17]~input_o\ $ (\invB~input_o\)))) # (!\SOMA|CarryOut[16]~15_combout\ & (\INVERTE_A|q[17]~14_combout\ & (\B[17]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[16]~15_combout\,
	datab => \INVERTE_A|q[17]~14_combout\,
	datac => \B[17]~input_o\,
	datad => \invB~input_o\,
	combout => \SOMA|CarryOut[17]~16_combout\);

-- Location: IOIBUF_X0_Y69_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X2_Y69_N0
\SOMA|CarryOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[18]~17_combout\ = (\INVERTE_A|q[18]~13_combout\ & ((\SOMA|CarryOut[17]~16_combout\) # (\invB~input_o\ $ (\B[18]~input_o\)))) # (!\INVERTE_A|q[18]~13_combout\ & (\SOMA|CarryOut[17]~16_combout\ & (\invB~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[18]~13_combout\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[17]~16_combout\,
	datad => \B[18]~input_o\,
	combout => \SOMA|CarryOut[18]~17_combout\);

-- Location: LCCOMB_X2_Y69_N26
\SOMA|CarryOut[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[19]~18_combout\ = (\INVERTE_A|q[19]~12_combout\ & ((\SOMA|CarryOut[18]~17_combout\) # (\B[19]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[19]~12_combout\ & (\SOMA|CarryOut[18]~17_combout\ & (\B[19]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \invB~input_o\,
	datac => \INVERTE_A|q[19]~12_combout\,
	datad => \SOMA|CarryOut[18]~17_combout\,
	combout => \SOMA|CarryOut[19]~18_combout\);

-- Location: IOIBUF_X0_Y62_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X2_Y69_N20
\SOMA|CarryOut[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[20]~19_combout\ = (\INVERTE_A|q[20]~11_combout\ & ((\SOMA|CarryOut[19]~18_combout\) # (\invB~input_o\ $ (\B[20]~input_o\)))) # (!\INVERTE_A|q[20]~11_combout\ & (\SOMA|CarryOut[19]~18_combout\ & (\invB~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[20]~11_combout\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[19]~18_combout\,
	datad => \B[20]~input_o\,
	combout => \SOMA|CarryOut[20]~19_combout\);

-- Location: LCCOMB_X2_Y69_N6
\SOMA|CarryOut[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[21]~20_combout\ = (\INVERTE_A|q[21]~10_combout\ & ((\SOMA|CarryOut[20]~19_combout\) # (\invB~input_o\ $ (\B[21]~input_o\)))) # (!\INVERTE_A|q[21]~10_combout\ & (\SOMA|CarryOut[20]~19_combout\ & (\invB~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invB~input_o\,
	datab => \INVERTE_A|q[21]~10_combout\,
	datac => \B[21]~input_o\,
	datad => \SOMA|CarryOut[20]~19_combout\,
	combout => \SOMA|CarryOut[21]~20_combout\);

-- Location: IOIBUF_X9_Y73_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X6_Y69_N24
\INVERTE_A|q[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[22]~9_combout\ = \invA~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[22]~input_o\,
	combout => \INVERTE_A|q[22]~9_combout\);

-- Location: LCCOMB_X6_Y69_N2
\SOMA|CarryOut[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[22]~21_combout\ = (\SOMA|CarryOut[21]~20_combout\ & ((\INVERTE_A|q[22]~9_combout\) # (\B[22]~input_o\ $ (\invB~input_o\)))) # (!\SOMA|CarryOut[21]~20_combout\ & (\INVERTE_A|q[22]~9_combout\ & (\B[22]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[21]~20_combout\,
	datad => \INVERTE_A|q[22]~9_combout\,
	combout => \SOMA|CarryOut[22]~21_combout\);

-- Location: IOIBUF_X0_Y49_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X1_Y46_N14
\INVERTE_A|q[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[23]~8_combout\ = \invA~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datad => \A[23]~input_o\,
	combout => \INVERTE_A|q[23]~8_combout\);

-- Location: LCCOMB_X1_Y46_N16
\SOMA|CarryOut[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[23]~22_combout\ = (\SOMA|CarryOut[22]~21_combout\ & ((\INVERTE_A|q[23]~8_combout\) # (\B[23]~input_o\ $ (\invB~input_o\)))) # (!\SOMA|CarryOut[22]~21_combout\ & (\INVERTE_A|q[23]~8_combout\ & (\B[23]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[22]~21_combout\,
	datab => \B[23]~input_o\,
	datac => \INVERTE_A|q[23]~8_combout\,
	datad => \invB~input_o\,
	combout => \SOMA|CarryOut[23]~22_combout\);

-- Location: LCCOMB_X1_Y46_N2
\SOMA|CarryOut[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[24]~23_combout\ = (\INVERTE_A|q[24]~7_combout\ & ((\SOMA|CarryOut[23]~22_combout\) # (\B[24]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[24]~7_combout\ & (\SOMA|CarryOut[23]~22_combout\ & (\B[24]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \invB~input_o\,
	datac => \INVERTE_A|q[24]~7_combout\,
	datad => \SOMA|CarryOut[23]~22_combout\,
	combout => \SOMA|CarryOut[24]~23_combout\);

-- Location: LCCOMB_X1_Y46_N12
\SOMA|CarryOut[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[25]~24_combout\ = (\INVERTE_A|q[25]~6_combout\ & ((\SOMA|CarryOut[24]~23_combout\) # (\invB~input_o\ $ (\B[25]~input_o\)))) # (!\INVERTE_A|q[25]~6_combout\ & (\SOMA|CarryOut[24]~23_combout\ & (\invB~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[25]~6_combout\,
	datab => \invB~input_o\,
	datac => \B[25]~input_o\,
	datad => \SOMA|CarryOut[24]~23_combout\,
	combout => \SOMA|CarryOut[25]~24_combout\);

-- Location: IOIBUF_X0_Y44_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X1_Y46_N24
\INVERTE_A|q[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[26]~5_combout\ = \A[26]~input_o\ $ (\invA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datad => \invA~input_o\,
	combout => \INVERTE_A|q[26]~5_combout\);

-- Location: IOIBUF_X0_Y44_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X1_Y46_N22
\SOMA|CarryOut[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[26]~25_combout\ = (\SOMA|CarryOut[25]~24_combout\ & ((\INVERTE_A|q[26]~5_combout\) # (\invB~input_o\ $ (\B[26]~input_o\)))) # (!\SOMA|CarryOut[25]~24_combout\ & (\INVERTE_A|q[26]~5_combout\ & (\invB~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[25]~24_combout\,
	datab => \INVERTE_A|q[26]~5_combout\,
	datac => \invB~input_o\,
	datad => \B[26]~input_o\,
	combout => \SOMA|CarryOut[26]~25_combout\);

-- Location: IOIBUF_X23_Y0_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X21_Y4_N28
\INVERTE_A|q[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[27]~4_combout\ = \invA~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[27]~input_o\,
	combout => \INVERTE_A|q[27]~4_combout\);

-- Location: IOIBUF_X29_Y0_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X21_Y4_N6
\SOMA|CarryOut[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[27]~26_combout\ = (\SOMA|CarryOut[26]~25_combout\ & ((\INVERTE_A|q[27]~4_combout\) # (\invB~input_o\ $ (\B[27]~input_o\)))) # (!\SOMA|CarryOut[26]~25_combout\ & (\INVERTE_A|q[27]~4_combout\ & (\invB~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[26]~25_combout\,
	datab => \INVERTE_A|q[27]~4_combout\,
	datac => \invB~input_o\,
	datad => \B[27]~input_o\,
	combout => \SOMA|CarryOut[27]~26_combout\);

-- Location: LCCOMB_X21_Y4_N16
\SOMA|CarryOut[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[28]~27_combout\ = (\INVERTE_A|q[28]~3_combout\ & ((\SOMA|CarryOut[27]~26_combout\) # (\B[28]~input_o\ $ (\invB~input_o\)))) # (!\INVERTE_A|q[28]~3_combout\ & (\SOMA|CarryOut[27]~26_combout\ & (\B[28]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \INVERTE_A|q[28]~3_combout\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[27]~26_combout\,
	combout => \SOMA|CarryOut[28]~27_combout\);

-- Location: IOIBUF_X20_Y0_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X21_Y4_N0
\INVERTE_A|q[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[29]~2_combout\ = \invA~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[29]~input_o\,
	combout => \INVERTE_A|q[29]~2_combout\);

-- Location: LCCOMB_X21_Y4_N10
\SOMA|CarryOut[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[29]~28_combout\ = (\SOMA|CarryOut[28]~27_combout\ & ((\INVERTE_A|q[29]~2_combout\) # (\B[29]~input_o\ $ (\invB~input_o\)))) # (!\SOMA|CarryOut[28]~27_combout\ & (\INVERTE_A|q[29]~2_combout\ & (\B[29]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[28]~27_combout\,
	datab => \B[29]~input_o\,
	datac => \invB~input_o\,
	datad => \INVERTE_A|q[29]~2_combout\,
	combout => \SOMA|CarryOut[29]~28_combout\);

-- Location: IOIBUF_X9_Y0_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X11_Y4_N10
\INVERTE_A|q[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[30]~1_combout\ = \invA~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \invA~input_o\,
	datac => \A[30]~input_o\,
	combout => \INVERTE_A|q[30]~1_combout\);

-- Location: LCCOMB_X11_Y4_N28
\SOMA|CarryOut[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[30]~29_combout\ = (\SOMA|CarryOut[29]~28_combout\ & ((\INVERTE_A|q[30]~1_combout\) # (\B[30]~input_o\ $ (\invB~input_o\)))) # (!\SOMA|CarryOut[29]~28_combout\ & (\INVERTE_A|q[30]~1_combout\ & (\B[30]~input_o\ $ (\invB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \SOMA|CarryOut[29]~28_combout\,
	datac => \invB~input_o\,
	datad => \INVERTE_A|q[30]~1_combout\,
	combout => \SOMA|CarryOut[30]~29_combout\);

-- Location: LCCOMB_X11_Y4_N22
\SOMA|CarryOut[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|CarryOut[31]~30_combout\ = (\INVERTE_A|q[31]~0_combout\ & ((\SOMA|CarryOut[30]~29_combout\) # (\invB~input_o\ $ (\B[31]~input_o\)))) # (!\INVERTE_A|q[31]~0_combout\ & (\SOMA|CarryOut[30]~29_combout\ & (\invB~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invB~input_o\,
	datab => \B[31]~input_o\,
	datac => \INVERTE_A|q[31]~0_combout\,
	datad => \SOMA|CarryOut[30]~29_combout\,
	combout => \SOMA|CarryOut[31]~30_combout\);

-- Location: LCCOMB_X52_Y69_N30
\INVERTE_B|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_B|q[0]~0_combout\ = \invB~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invB~input_o\,
	datad => \B[0]~input_o\,
	combout => \INVERTE_B|q[0]~0_combout\);

-- Location: IOIBUF_X0_Y61_N22
\selector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(0),
	o => \selector[0]~input_o\);

-- Location: LCCOMB_X52_Y69_N8
\INVERTE_A|q[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_A|q[0]~31_combout\ = \invA~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invA~input_o\,
	datad => \A[0]~input_o\,
	combout => \INVERTE_A|q[0]~31_combout\);

-- Location: IOIBUF_X0_Y24_N8
\selector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(1),
	o => \selector[1]~input_o\);

-- Location: LCCOMB_X52_Y69_N10
\MUX|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux31~0_combout\ = (\INVERTE_B|q[0]~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[0]~31_combout\))))) # (!\INVERTE_B|q[0]~0_combout\ & (\INVERTE_A|q[0]~31_combout\ & (\selector[0]~input_o\ $ 
-- (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_B|q[0]~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \INVERTE_A|q[0]~31_combout\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux31~0_combout\);

-- Location: LCCOMB_X52_Y69_N28
\MUX|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux30~0_combout\ = \invB~input_o\ $ (\B[1]~input_o\ $ (((\SOMA|OUT_AND1\(0) & \selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|OUT_AND1\(0),
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \MUX|Mux30~0_combout\);

-- Location: LCCOMB_X52_Y69_N22
\MUX|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux30~1_combout\ = (\INVERTE_A|q[1]~30_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux30~0_combout\))))) # (!\INVERTE_A|q[1]~30_combout\ & (\MUX|Mux30~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \INVERTE_A|q[1]~30_combout\,
	datad => \MUX|Mux30~0_combout\,
	combout => \MUX|Mux30~1_combout\);

-- Location: LCCOMB_X52_Y69_N16
\MUX|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux29~0_combout\ = \B[2]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[1]~0_combout\,
	combout => \MUX|Mux29~0_combout\);

-- Location: LCCOMB_X52_Y69_N26
\MUX|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux29~1_combout\ = (\INVERTE_A|q[2]~29_combout\ & (\selector[1]~input_o\ $ (((\MUX|Mux29~0_combout\) # (\selector[0]~input_o\))))) # (!\INVERTE_A|q[2]~29_combout\ & (\MUX|Mux29~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[2]~29_combout\,
	datab => \MUX|Mux29~0_combout\,
	datac => \selector[1]~input_o\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux29~1_combout\);

-- Location: LCCOMB_X52_Y69_N12
\MUX|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux28~0_combout\ = \B[3]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[2]~1_combout\,
	combout => \MUX|Mux28~0_combout\);

-- Location: LCCOMB_X52_Y69_N14
\MUX|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux28~1_combout\ = (\MUX|Mux28~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[3]~28_combout\))))) # (!\MUX|Mux28~0_combout\ & (\INVERTE_A|q[3]~28_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux28~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \INVERTE_A|q[3]~28_combout\,
	combout => \MUX|Mux28~1_combout\);

-- Location: LCCOMB_X39_Y69_N8
\MUX|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux27~0_combout\ = \B[4]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[3]~2_combout\,
	combout => \MUX|Mux27~0_combout\);

-- Location: LCCOMB_X39_Y69_N2
\MUX|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux27~1_combout\ = (\INVERTE_A|q[4]~27_combout\ & (\selector[1]~input_o\ $ (((\MUX|Mux27~0_combout\) # (\selector[0]~input_o\))))) # (!\INVERTE_A|q[4]~27_combout\ & (\MUX|Mux27~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[4]~27_combout\,
	datab => \selector[1]~input_o\,
	datac => \MUX|Mux27~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux27~1_combout\);

-- Location: LCCOMB_X39_Y69_N20
\MUX|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux26~0_combout\ = \B[5]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[4]~3_combout\,
	combout => \MUX|Mux26~0_combout\);

-- Location: LCCOMB_X39_Y69_N30
\MUX|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux26~1_combout\ = (\INVERTE_A|q[5]~26_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux26~0_combout\))))) # (!\INVERTE_A|q[5]~26_combout\ & (\MUX|Mux26~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[5]~26_combout\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux26~0_combout\,
	combout => \MUX|Mux26~1_combout\);

-- Location: LCCOMB_X39_Y69_N16
\MUX|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux25~0_combout\ = \B[6]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[5]~4_combout\,
	combout => \MUX|Mux25~0_combout\);

-- Location: LCCOMB_X39_Y69_N26
\MUX|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux25~1_combout\ = (\INVERTE_A|q[6]~25_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux25~0_combout\))))) # (!\INVERTE_A|q[6]~25_combout\ & (\MUX|Mux25~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[6]~25_combout\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux25~0_combout\,
	combout => \MUX|Mux25~1_combout\);

-- Location: LCCOMB_X39_Y69_N4
\MUX|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux24~0_combout\ = \B[7]~input_o\ $ (\invB~input_o\ $ (((\SOMA|CarryOut[6]~5_combout\ & \selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[6]~5_combout\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux24~0_combout\);

-- Location: LCCOMB_X39_Y69_N14
\MUX|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux24~1_combout\ = (\MUX|Mux24~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[7]~24_combout\))))) # (!\MUX|Mux24~0_combout\ & (\INVERTE_A|q[7]~24_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \MUX|Mux24~0_combout\,
	datad => \INVERTE_A|q[7]~24_combout\,
	combout => \MUX|Mux24~1_combout\);

-- Location: LCCOMB_X6_Y69_N12
\MUX|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux23~0_combout\ = \B[8]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[7]~6_combout\,
	datad => \invB~input_o\,
	combout => \MUX|Mux23~0_combout\);

-- Location: LCCOMB_X6_Y69_N14
\MUX|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux23~1_combout\ = (\MUX|Mux23~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[8]~23_combout\))))) # (!\MUX|Mux23~0_combout\ & (\INVERTE_A|q[8]~23_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux23~0_combout\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \INVERTE_A|q[8]~23_combout\,
	combout => \MUX|Mux23~1_combout\);

-- Location: LCCOMB_X6_Y69_N16
\MUX|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux22~0_combout\ = \B[9]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[8]~7_combout\,
	combout => \MUX|Mux22~0_combout\);

-- Location: LCCOMB_X6_Y69_N10
\MUX|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux22~1_combout\ = (\INVERTE_A|q[9]~22_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux22~0_combout\))))) # (!\INVERTE_A|q[9]~22_combout\ & (\MUX|Mux22~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[9]~22_combout\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux22~0_combout\,
	combout => \MUX|Mux22~1_combout\);

-- Location: LCCOMB_X13_Y70_N24
\MUX|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux21~0_combout\ = \invB~input_o\ $ (\B[10]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[9]~8_combout\,
	datac => \invB~input_o\,
	datad => \B[10]~input_o\,
	combout => \MUX|Mux21~0_combout\);

-- Location: LCCOMB_X13_Y70_N18
\MUX|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux21~1_combout\ = (\INVERTE_A|q[10]~21_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux21~0_combout\))))) # (!\INVERTE_A|q[10]~21_combout\ & (\MUX|Mux21~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[10]~21_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux21~0_combout\,
	combout => \MUX|Mux21~1_combout\);

-- Location: LCCOMB_X13_Y70_N28
\MUX|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux20~0_combout\ = \invB~input_o\ $ (\B[11]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[10]~9_combout\,
	datac => \invB~input_o\,
	datad => \B[11]~input_o\,
	combout => \MUX|Mux20~0_combout\);

-- Location: LCCOMB_X13_Y70_N30
\MUX|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux20~1_combout\ = (\INVERTE_A|q[11]~20_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux20~0_combout\))))) # (!\INVERTE_A|q[11]~20_combout\ & (\MUX|Mux20~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \INVERTE_A|q[11]~20_combout\,
	datad => \MUX|Mux20~0_combout\,
	combout => \MUX|Mux20~1_combout\);

-- Location: LCCOMB_X13_Y70_N8
\MUX|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux19~0_combout\ = \B[12]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \B[12]~input_o\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[11]~10_combout\,
	combout => \MUX|Mux19~0_combout\);

-- Location: LCCOMB_X13_Y70_N2
\MUX|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux19~1_combout\ = (\INVERTE_A|q[12]~19_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux19~0_combout\))))) # (!\INVERTE_A|q[12]~19_combout\ & (\MUX|Mux19~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[12]~19_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux19~0_combout\,
	combout => \MUX|Mux19~1_combout\);

-- Location: LCCOMB_X13_Y70_N20
\MUX|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux18~0_combout\ = \B[13]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[12]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \B[13]~input_o\,
	datac => \invB~input_o\,
	datad => \SOMA|CarryOut[12]~11_combout\,
	combout => \MUX|Mux18~0_combout\);

-- Location: LCCOMB_X13_Y70_N14
\MUX|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux18~1_combout\ = (\MUX|Mux18~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[13]~18_combout\))))) # (!\MUX|Mux18~0_combout\ & (\INVERTE_A|q[13]~18_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \MUX|Mux18~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \INVERTE_A|q[13]~18_combout\,
	combout => \MUX|Mux18~1_combout\);

-- Location: LCCOMB_X24_Y70_N16
\MUX|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux17~0_combout\ = \invB~input_o\ $ (\B[14]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[13]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[13]~12_combout\,
	datad => \B[14]~input_o\,
	combout => \MUX|Mux17~0_combout\);

-- Location: LCCOMB_X24_Y70_N26
\MUX|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux17~1_combout\ = (\INVERTE_A|q[14]~17_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux17~0_combout\))))) # (!\INVERTE_A|q[14]~17_combout\ & (\MUX|Mux17~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \INVERTE_A|q[14]~17_combout\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux17~0_combout\,
	combout => \MUX|Mux17~1_combout\);

-- Location: LCCOMB_X24_Y70_N20
\MUX|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux16~0_combout\ = \invB~input_o\ $ (\B[15]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[14]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \invB~input_o\,
	datac => \B[15]~input_o\,
	datad => \SOMA|CarryOut[14]~13_combout\,
	combout => \MUX|Mux16~0_combout\);

-- Location: LCCOMB_X24_Y70_N6
\MUX|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux16~1_combout\ = (\INVERTE_A|q[15]~16_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux16~0_combout\))))) # (!\INVERTE_A|q[15]~16_combout\ & (\MUX|Mux16~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \INVERTE_A|q[15]~16_combout\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux16~0_combout\,
	combout => \MUX|Mux16~1_combout\);

-- Location: LCCOMB_X24_Y70_N24
\MUX|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux15~0_combout\ = \invB~input_o\ $ (\B[16]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[15]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[15]~14_combout\,
	datac => \invB~input_o\,
	datad => \B[16]~input_o\,
	combout => \MUX|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y70_N18
\MUX|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux15~1_combout\ = (\MUX|Mux15~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[16]~15_combout\))))) # (!\MUX|Mux15~0_combout\ & (\INVERTE_A|q[16]~15_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \MUX|Mux15~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \INVERTE_A|q[16]~15_combout\,
	combout => \MUX|Mux15~1_combout\);

-- Location: LCCOMB_X24_Y70_N4
\MUX|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux14~0_combout\ = \invB~input_o\ $ (\B[17]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[16]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \invB~input_o\,
	datac => \B[17]~input_o\,
	datad => \SOMA|CarryOut[16]~15_combout\,
	combout => \MUX|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y70_N22
\MUX|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux14~1_combout\ = (\INVERTE_A|q[17]~14_combout\ & (\selector[1]~input_o\ $ (((\MUX|Mux14~0_combout\) # (\selector[0]~input_o\))))) # (!\INVERTE_A|q[17]~14_combout\ & (\MUX|Mux14~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \INVERTE_A|q[17]~14_combout\,
	datac => \MUX|Mux14~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux14~1_combout\);

-- Location: LCCOMB_X2_Y69_N16
\MUX|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux13~0_combout\ = \invB~input_o\ $ (\B[18]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[17]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[17]~16_combout\,
	datad => \B[18]~input_o\,
	combout => \MUX|Mux13~0_combout\);

-- Location: LCCOMB_X2_Y69_N18
\MUX|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux13~1_combout\ = (\INVERTE_A|q[18]~13_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux13~0_combout\))))) # (!\INVERTE_A|q[18]~13_combout\ & (\MUX|Mux13~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[18]~13_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux13~0_combout\,
	combout => \MUX|Mux13~1_combout\);

-- Location: LCCOMB_X2_Y69_N28
\MUX|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux12~0_combout\ = \B[19]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[18]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[18]~17_combout\,
	combout => \MUX|Mux12~0_combout\);

-- Location: LCCOMB_X2_Y69_N14
\MUX|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux12~1_combout\ = (\INVERTE_A|q[19]~12_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux12~0_combout\))))) # (!\INVERTE_A|q[19]~12_combout\ & (\MUX|Mux12~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \INVERTE_A|q[19]~12_combout\,
	datad => \MUX|Mux12~0_combout\,
	combout => \MUX|Mux12~1_combout\);

-- Location: LCCOMB_X2_Y69_N8
\MUX|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux11~0_combout\ = \invB~input_o\ $ (\B[20]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[19]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \invB~input_o\,
	datac => \SOMA|CarryOut[19]~18_combout\,
	datad => \B[20]~input_o\,
	combout => \MUX|Mux11~0_combout\);

-- Location: LCCOMB_X2_Y69_N2
\MUX|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux11~1_combout\ = (\MUX|Mux11~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[20]~11_combout\))))) # (!\MUX|Mux11~0_combout\ & (\INVERTE_A|q[20]~11_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \MUX|Mux11~0_combout\,
	datad => \INVERTE_A|q[20]~11_combout\,
	combout => \MUX|Mux11~1_combout\);

-- Location: LCCOMB_X2_Y69_N12
\MUX|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux10~0_combout\ = \B[21]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[20]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[20]~19_combout\,
	combout => \MUX|Mux10~0_combout\);

-- Location: LCCOMB_X2_Y69_N30
\MUX|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux10~1_combout\ = (\MUX|Mux10~0_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\INVERTE_A|q[21]~10_combout\))))) # (!\MUX|Mux10~0_combout\ & (\INVERTE_A|q[21]~10_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux10~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \INVERTE_A|q[21]~10_combout\,
	combout => \MUX|Mux10~1_combout\);

-- Location: LCCOMB_X6_Y69_N28
\MUX|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux9~0_combout\ = \B[22]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[21]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \SOMA|CarryOut[21]~20_combout\,
	datad => \invB~input_o\,
	combout => \MUX|Mux9~0_combout\);

-- Location: LCCOMB_X6_Y69_N30
\MUX|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux9~1_combout\ = (\INVERTE_A|q[22]~9_combout\ & (\selector[1]~input_o\ $ (((\MUX|Mux9~0_combout\) # (\selector[0]~input_o\))))) # (!\INVERTE_A|q[22]~9_combout\ & (\MUX|Mux9~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[22]~9_combout\,
	datab => \MUX|Mux9~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \MUX|Mux9~1_combout\);

-- Location: LCCOMB_X1_Y46_N8
\MUX|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux8~0_combout\ = \B[23]~input_o\ $ (\invB~input_o\ $ (((\SOMA|CarryOut[22]~21_combout\ & \selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[22]~21_combout\,
	datab => \selector[1]~input_o\,
	datac => \B[23]~input_o\,
	datad => \invB~input_o\,
	combout => \MUX|Mux8~0_combout\);

-- Location: LCCOMB_X1_Y46_N10
\MUX|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux8~1_combout\ = (\INVERTE_A|q[23]~8_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux8~0_combout\))))) # (!\INVERTE_A|q[23]~8_combout\ & (\MUX|Mux8~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \selector[1]~input_o\,
	datac => \INVERTE_A|q[23]~8_combout\,
	datad => \MUX|Mux8~0_combout\,
	combout => \MUX|Mux8~1_combout\);

-- Location: LCCOMB_X1_Y46_N28
\MUX|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux7~0_combout\ = \B[24]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[23]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[23]~22_combout\,
	combout => \MUX|Mux7~0_combout\);

-- Location: LCCOMB_X1_Y46_N6
\MUX|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux7~1_combout\ = (\INVERTE_A|q[24]~7_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux7~0_combout\))))) # (!\INVERTE_A|q[24]~7_combout\ & (\MUX|Mux7~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[24]~7_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux7~0_combout\,
	combout => \MUX|Mux7~1_combout\);

-- Location: LCCOMB_X1_Y46_N0
\MUX|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux6~0_combout\ = \B[25]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[24]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[24]~23_combout\,
	combout => \MUX|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y46_N18
\MUX|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux6~1_combout\ = (\INVERTE_A|q[25]~6_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux6~0_combout\))))) # (!\INVERTE_A|q[25]~6_combout\ & (\MUX|Mux6~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[25]~6_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux6~0_combout\,
	combout => \MUX|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y46_N20
\MUX|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux5~0_combout\ = \B[26]~input_o\ $ (\invB~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[25]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \invB~input_o\,
	datac => \selector[1]~input_o\,
	datad => \SOMA|CarryOut[25]~24_combout\,
	combout => \MUX|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y46_N30
\MUX|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux5~1_combout\ = (\INVERTE_A|q[26]~5_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux5~0_combout\))))) # (!\INVERTE_A|q[26]~5_combout\ & (\MUX|Mux5~0_combout\ & (\selector[0]~input_o\ $ (\selector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \INVERTE_A|q[26]~5_combout\,
	datac => \selector[1]~input_o\,
	datad => \MUX|Mux5~0_combout\,
	combout => \MUX|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y4_N12
\MUX|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux4~0_combout\ = \invB~input_o\ $ (\B[27]~input_o\ $ (((\selector[1]~input_o\ & \SOMA|CarryOut[26]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \SOMA|CarryOut[26]~25_combout\,
	datac => \invB~input_o\,
	datad => \B[27]~input_o\,
	combout => \MUX|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y4_N14
\MUX|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux4~1_combout\ = (\INVERTE_A|q[27]~4_combout\ & (\selector[1]~input_o\ $ (((\selector[0]~input_o\) # (\MUX|Mux4~0_combout\))))) # (!\INVERTE_A|q[27]~4_combout\ & (\MUX|Mux4~0_combout\ & (\selector[1]~input_o\ $ (\selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \INVERTE_A|q[27]~4_combout\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux4~0_combout\,
	combout => \MUX|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y4_N24
\INVERTE_B|q[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_B|q[28]~1_combout\ = \invB~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invB~input_o\,
	datad => \B[28]~input_o\,
	combout => \INVERTE_B|q[28]~1_combout\);

-- Location: LCCOMB_X21_Y4_N2
\MUX|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux3~0_combout\ = (!\selector[1]~input_o\ & ((\INVERTE_A|q[28]~3_combout\ & ((\selector[0]~input_o\) # (\INVERTE_B|q[28]~1_combout\))) # (!\INVERTE_A|q[28]~3_combout\ & (\selector[0]~input_o\ & \INVERTE_B|q[28]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \INVERTE_A|q[28]~3_combout\,
	datac => \selector[0]~input_o\,
	datad => \INVERTE_B|q[28]~1_combout\,
	combout => \MUX|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y4_N4
\SOMA|SOMAOUT[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|SOMAOUT[28]~0_combout\ = \invA~input_o\ $ (\A[28]~input_o\ $ (\invB~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datab => \A[28]~input_o\,
	datac => \invB~input_o\,
	datad => \B[28]~input_o\,
	combout => \SOMA|SOMAOUT[28]~0_combout\);

-- Location: LCCOMB_X11_Y4_N24
\MUX|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux30~2_combout\ = (\selector[1]~input_o\ & !\selector[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	combout => \MUX|Mux30~2_combout\);

-- Location: LCCOMB_X21_Y4_N22
\MUX|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux3~1_combout\ = (\MUX|Mux3~0_combout\) # ((\MUX|Mux30~2_combout\ & (\SOMA|CarryOut[27]~26_combout\ $ (\SOMA|SOMAOUT[28]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[27]~26_combout\,
	datab => \MUX|Mux3~0_combout\,
	datac => \SOMA|SOMAOUT[28]~0_combout\,
	datad => \MUX|Mux30~2_combout\,
	combout => \MUX|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y4_N8
\INVERTE_B|q[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INVERTE_B|q[29]~2_combout\ = \invB~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invB~input_o\,
	datad => \B[29]~input_o\,
	combout => \INVERTE_B|q[29]~2_combout\);

-- Location: LCCOMB_X21_Y4_N26
\MUX|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux2~0_combout\ = (!\selector[1]~input_o\ & ((\INVERTE_A|q[29]~2_combout\ & ((\INVERTE_B|q[29]~2_combout\) # (\selector[0]~input_o\))) # (!\INVERTE_A|q[29]~2_combout\ & (\INVERTE_B|q[29]~2_combout\ & \selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \INVERTE_A|q[29]~2_combout\,
	datac => \INVERTE_B|q[29]~2_combout\,
	datad => \selector[0]~input_o\,
	combout => \MUX|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y4_N20
\SOMA|SOMAOUT[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMA|SOMAOUT[29]~1_combout\ = \invA~input_o\ $ (\A[29]~input_o\ $ (\invB~input_o\ $ (\B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invA~input_o\,
	datab => \A[29]~input_o\,
	datac => \invB~input_o\,
	datad => \B[29]~input_o\,
	combout => \SOMA|SOMAOUT[29]~1_combout\);

-- Location: LCCOMB_X21_Y4_N30
\MUX|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux2~1_combout\ = (\MUX|Mux2~0_combout\) # ((\MUX|Mux30~2_combout\ & (\SOMA|CarryOut[28]~27_combout\ $ (\SOMA|SOMAOUT[29]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMA|CarryOut[28]~27_combout\,
	datab => \MUX|Mux30~2_combout\,
	datac => \MUX|Mux2~0_combout\,
	datad => \SOMA|SOMAOUT[29]~1_combout\,
	combout => \MUX|Mux2~1_combout\);

-- Location: LCCOMB_X11_Y4_N6
\MUX|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux1~2_combout\ = \A[30]~input_o\ $ (\invA~input_o\ $ (\invB~input_o\ $ (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \invA~input_o\,
	datac => \invB~input_o\,
	datad => \B[30]~input_o\,
	combout => \MUX|Mux1~2_combout\);

-- Location: LCCOMB_X11_Y4_N18
\MUX|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux1~0_combout\ = \invB~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invB~input_o\,
	datad => \B[30]~input_o\,
	combout => \MUX|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y4_N12
\MUX|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux1~1_combout\ = (!\selector[1]~input_o\ & ((\INVERTE_A|q[30]~1_combout\ & ((\selector[0]~input_o\) # (\MUX|Mux1~0_combout\))) # (!\INVERTE_A|q[30]~1_combout\ & (\selector[0]~input_o\ & \MUX|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVERTE_A|q[30]~1_combout\,
	datab => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \MUX|Mux1~0_combout\,
	combout => \MUX|Mux1~1_combout\);

-- Location: LCCOMB_X11_Y4_N0
\MUX|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux1~3_combout\ = (\MUX|Mux1~1_combout\) # ((\MUX|Mux30~2_combout\ & (\MUX|Mux1~2_combout\ $ (\SOMA|CarryOut[29]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux1~2_combout\,
	datab => \MUX|Mux30~2_combout\,
	datac => \SOMA|CarryOut[29]~28_combout\,
	datad => \MUX|Mux1~1_combout\,
	combout => \MUX|Mux1~3_combout\);

-- Location: LCCOMB_X11_Y4_N26
\MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux0~0_combout\ = \invB~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \invB~input_o\,
	datad => \B[31]~input_o\,
	combout => \MUX|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y4_N20
\MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux0~1_combout\ = (!\selector[1]~input_o\ & ((\MUX|Mux0~0_combout\ & ((\selector[0]~input_o\) # (\INVERTE_A|q[31]~0_combout\))) # (!\MUX|Mux0~0_combout\ & (\selector[0]~input_o\ & \INVERTE_A|q[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux0~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \INVERTE_A|q[31]~0_combout\,
	combout => \MUX|Mux0~1_combout\);

-- Location: LCCOMB_X11_Y4_N30
\MUX|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux0~2_combout\ = \B[31]~input_o\ $ (\invA~input_o\ $ (\invB~input_o\ $ (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \invA~input_o\,
	datac => \invB~input_o\,
	datad => \A[31]~input_o\,
	combout => \MUX|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y4_N16
\MUX|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX|Mux0~3_combout\ = (\MUX|Mux0~1_combout\) # ((\MUX|Mux30~2_combout\ & (\MUX|Mux0~2_combout\ $ (\SOMA|CarryOut[30]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|Mux30~2_combout\,
	datab => \MUX|Mux0~1_combout\,
	datac => \MUX|Mux0~2_combout\,
	datad => \SOMA|CarryOut[30]~29_combout\,
	combout => \MUX|Mux0~3_combout\);

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

-- Location: IOIBUF_X60_Y73_N15
\CIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(2),
	o => \CIn[2]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\CIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(3),
	o => \CIn[3]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\CIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(4),
	o => \CIn[4]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\CIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(5),
	o => \CIn[5]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\CIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(6),
	o => \CIn[6]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\CIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(7),
	o => \CIn[7]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\CIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(8),
	o => \CIn[8]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\CIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(9),
	o => \CIn[9]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\CIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(10),
	o => \CIn[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\CIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(11),
	o => \CIn[11]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\CIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(12),
	o => \CIn[12]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\CIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(13),
	o => \CIn[13]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\CIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(14),
	o => \CIn[14]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\CIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(15),
	o => \CIn[15]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\CIn[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(16),
	o => \CIn[16]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\CIn[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(17),
	o => \CIn[17]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\CIn[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(18),
	o => \CIn[18]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\CIn[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(19),
	o => \CIn[19]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\CIn[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(20),
	o => \CIn[20]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\CIn[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(21),
	o => \CIn[21]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\CIn[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(22),
	o => \CIn[22]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\CIn[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(23),
	o => \CIn[23]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\CIn[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(24),
	o => \CIn[24]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\CIn[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(25),
	o => \CIn[25]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\CIn[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(26),
	o => \CIn[26]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\CIn[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(27),
	o => \CIn[27]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\CIn[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(28),
	o => \CIn[28]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\CIn[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(29),
	o => \CIn[29]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\CIn[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIn(30),
	o => \CIn[30]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
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


