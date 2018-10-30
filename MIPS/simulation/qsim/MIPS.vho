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

-- DATE "10/30/2018 11:21:10"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	op : BUFFER std_logic_vector(5 DOWNTO 0);
	ula_op : BUFFER std_logic_vector(1 DOWNTO 0);
	hab_esc_mem : BUFFER std_logic;
	hab_le_mem : BUFFER std_logic;
	beq : BUFFER std_logic;
	sel_mux_ula_mem : BUFFER std_logic;
	sel_mux_rt_imm : BUFFER std_logic;
	sel_MUX_rt_rd : BUFFER std_logic;
	sel_mux_jump : BUFFER std_logic;
	hab_esc_reg : BUFFER std_logic;
	saidaROM : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaULA : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaRAM : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaPC : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaTeste1 : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaTeste2 : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaTeste3 : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaTeste4 : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaTeste5 : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaTeste6 : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaTeste7 : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- op[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[0]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_esc_mem	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_le_mem	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beq	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_ula_mem	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_rt_imm	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_MUX_rt_rd	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_jump	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_esc_reg	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[0]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[5]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[6]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[7]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[8]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[9]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[10]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[11]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[12]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[13]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[14]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[15]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[16]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[17]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[18]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[19]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[20]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[21]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[23]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[24]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[25]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[26]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[27]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[28]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[29]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[30]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[31]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[8]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[11]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[12]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[14]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[15]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[16]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[17]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[18]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[19]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[20]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[21]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[22]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[23]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[24]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[25]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[26]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[27]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[28]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[29]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[30]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[31]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[3]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[5]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[7]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[9]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[10]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[11]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[13]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[14]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[15]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[16]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[17]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[18]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[19]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[20]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[21]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[22]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[23]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[24]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[25]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[26]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[27]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[28]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[29]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[30]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[31]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[3]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[6]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[8]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[10]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[11]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[12]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[13]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[14]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[15]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[16]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[17]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[18]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[19]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[20]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[21]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[22]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[23]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[24]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[25]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[26]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[27]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[28]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[29]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[30]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[31]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[3]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[7]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[9]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[11]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[12]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[13]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[15]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[16]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[17]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[18]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[19]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[20]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[21]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[22]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[23]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[24]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[25]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[26]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[27]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[28]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[29]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[30]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[31]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[1]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[2]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[8]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[10]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[11]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[12]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[15]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[16]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[17]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[18]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[19]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[20]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[21]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[22]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[23]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[24]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[25]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[26]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[27]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[28]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[29]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[30]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[31]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[7]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[9]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[10]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[12]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[13]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[16]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[17]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[18]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[19]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[20]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[21]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[22]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[23]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[24]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[25]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[26]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[27]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[28]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[29]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[30]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste3[31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[7]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[8]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[9]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[10]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[11]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[12]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[13]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[14]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[15]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[16]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[17]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[18]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[19]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[20]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[21]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[22]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[23]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[24]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[25]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[26]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[27]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[28]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[29]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[30]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste4[31]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[2]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[3]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[5]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[7]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[8]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[10]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[12]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[13]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[14]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[17]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[18]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[19]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[20]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[21]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[22]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[23]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[24]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[25]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[26]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[27]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[28]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[29]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[30]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste5[31]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[5]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[8]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[11]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[13]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[14]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[16]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[17]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[18]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[19]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[20]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[21]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[22]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[23]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[25]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[26]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[27]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[28]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[29]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[30]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste6[31]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[4]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[7]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[10]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[11]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[12]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[13]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[15]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[16]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[17]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[18]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[19]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[20]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[21]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[22]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[23]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[24]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[25]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[26]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[27]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[29]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[30]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste7[31]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ula_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_hab_esc_mem : std_logic;
SIGNAL ww_hab_le_mem : std_logic;
SIGNAL ww_beq : std_logic;
SIGNAL ww_sel_mux_ula_mem : std_logic;
SIGNAL ww_sel_mux_rt_imm : std_logic;
SIGNAL ww_sel_MUX_rt_rd : std_logic;
SIGNAL ww_sel_mux_jump : std_logic;
SIGNAL ww_hab_esc_reg : std_logic;
SIGNAL ww_saidaROM : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaRAM : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaPC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaTeste1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaTeste2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaTeste3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaTeste4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaTeste5 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaTeste6 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaTeste7 : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \op[0]~output_o\ : std_logic;
SIGNAL \op[1]~output_o\ : std_logic;
SIGNAL \op[2]~output_o\ : std_logic;
SIGNAL \op[3]~output_o\ : std_logic;
SIGNAL \op[4]~output_o\ : std_logic;
SIGNAL \op[5]~output_o\ : std_logic;
SIGNAL \ula_op[0]~output_o\ : std_logic;
SIGNAL \ula_op[1]~output_o\ : std_logic;
SIGNAL \hab_esc_mem~output_o\ : std_logic;
SIGNAL \hab_le_mem~output_o\ : std_logic;
SIGNAL \beq~output_o\ : std_logic;
SIGNAL \sel_mux_ula_mem~output_o\ : std_logic;
SIGNAL \sel_mux_rt_imm~output_o\ : std_logic;
SIGNAL \sel_MUX_rt_rd~output_o\ : std_logic;
SIGNAL \sel_mux_jump~output_o\ : std_logic;
SIGNAL \hab_esc_reg~output_o\ : std_logic;
SIGNAL \saidaROM[0]~output_o\ : std_logic;
SIGNAL \saidaROM[1]~output_o\ : std_logic;
SIGNAL \saidaROM[2]~output_o\ : std_logic;
SIGNAL \saidaROM[3]~output_o\ : std_logic;
SIGNAL \saidaROM[4]~output_o\ : std_logic;
SIGNAL \saidaROM[5]~output_o\ : std_logic;
SIGNAL \saidaROM[6]~output_o\ : std_logic;
SIGNAL \saidaROM[7]~output_o\ : std_logic;
SIGNAL \saidaROM[8]~output_o\ : std_logic;
SIGNAL \saidaROM[9]~output_o\ : std_logic;
SIGNAL \saidaROM[10]~output_o\ : std_logic;
SIGNAL \saidaROM[11]~output_o\ : std_logic;
SIGNAL \saidaROM[12]~output_o\ : std_logic;
SIGNAL \saidaROM[13]~output_o\ : std_logic;
SIGNAL \saidaROM[14]~output_o\ : std_logic;
SIGNAL \saidaROM[15]~output_o\ : std_logic;
SIGNAL \saidaROM[16]~output_o\ : std_logic;
SIGNAL \saidaROM[17]~output_o\ : std_logic;
SIGNAL \saidaROM[18]~output_o\ : std_logic;
SIGNAL \saidaROM[19]~output_o\ : std_logic;
SIGNAL \saidaROM[20]~output_o\ : std_logic;
SIGNAL \saidaROM[21]~output_o\ : std_logic;
SIGNAL \saidaROM[22]~output_o\ : std_logic;
SIGNAL \saidaROM[23]~output_o\ : std_logic;
SIGNAL \saidaROM[24]~output_o\ : std_logic;
SIGNAL \saidaROM[25]~output_o\ : std_logic;
SIGNAL \saidaROM[26]~output_o\ : std_logic;
SIGNAL \saidaROM[27]~output_o\ : std_logic;
SIGNAL \saidaROM[28]~output_o\ : std_logic;
SIGNAL \saidaROM[29]~output_o\ : std_logic;
SIGNAL \saidaROM[30]~output_o\ : std_logic;
SIGNAL \saidaROM[31]~output_o\ : std_logic;
SIGNAL \saidaULA[0]~output_o\ : std_logic;
SIGNAL \saidaULA[1]~output_o\ : std_logic;
SIGNAL \saidaULA[2]~output_o\ : std_logic;
SIGNAL \saidaULA[3]~output_o\ : std_logic;
SIGNAL \saidaULA[4]~output_o\ : std_logic;
SIGNAL \saidaULA[5]~output_o\ : std_logic;
SIGNAL \saidaULA[6]~output_o\ : std_logic;
SIGNAL \saidaULA[7]~output_o\ : std_logic;
SIGNAL \saidaULA[8]~output_o\ : std_logic;
SIGNAL \saidaULA[9]~output_o\ : std_logic;
SIGNAL \saidaULA[10]~output_o\ : std_logic;
SIGNAL \saidaULA[11]~output_o\ : std_logic;
SIGNAL \saidaULA[12]~output_o\ : std_logic;
SIGNAL \saidaULA[13]~output_o\ : std_logic;
SIGNAL \saidaULA[14]~output_o\ : std_logic;
SIGNAL \saidaULA[15]~output_o\ : std_logic;
SIGNAL \saidaULA[16]~output_o\ : std_logic;
SIGNAL \saidaULA[17]~output_o\ : std_logic;
SIGNAL \saidaULA[18]~output_o\ : std_logic;
SIGNAL \saidaULA[19]~output_o\ : std_logic;
SIGNAL \saidaULA[20]~output_o\ : std_logic;
SIGNAL \saidaULA[21]~output_o\ : std_logic;
SIGNAL \saidaULA[22]~output_o\ : std_logic;
SIGNAL \saidaULA[23]~output_o\ : std_logic;
SIGNAL \saidaULA[24]~output_o\ : std_logic;
SIGNAL \saidaULA[25]~output_o\ : std_logic;
SIGNAL \saidaULA[26]~output_o\ : std_logic;
SIGNAL \saidaULA[27]~output_o\ : std_logic;
SIGNAL \saidaULA[28]~output_o\ : std_logic;
SIGNAL \saidaULA[29]~output_o\ : std_logic;
SIGNAL \saidaULA[30]~output_o\ : std_logic;
SIGNAL \saidaULA[31]~output_o\ : std_logic;
SIGNAL \saidaRAM[0]~output_o\ : std_logic;
SIGNAL \saidaRAM[1]~output_o\ : std_logic;
SIGNAL \saidaRAM[2]~output_o\ : std_logic;
SIGNAL \saidaRAM[3]~output_o\ : std_logic;
SIGNAL \saidaRAM[4]~output_o\ : std_logic;
SIGNAL \saidaRAM[5]~output_o\ : std_logic;
SIGNAL \saidaRAM[6]~output_o\ : std_logic;
SIGNAL \saidaRAM[7]~output_o\ : std_logic;
SIGNAL \saidaRAM[8]~output_o\ : std_logic;
SIGNAL \saidaRAM[9]~output_o\ : std_logic;
SIGNAL \saidaRAM[10]~output_o\ : std_logic;
SIGNAL \saidaRAM[11]~output_o\ : std_logic;
SIGNAL \saidaRAM[12]~output_o\ : std_logic;
SIGNAL \saidaRAM[13]~output_o\ : std_logic;
SIGNAL \saidaRAM[14]~output_o\ : std_logic;
SIGNAL \saidaRAM[15]~output_o\ : std_logic;
SIGNAL \saidaRAM[16]~output_o\ : std_logic;
SIGNAL \saidaRAM[17]~output_o\ : std_logic;
SIGNAL \saidaRAM[18]~output_o\ : std_logic;
SIGNAL \saidaRAM[19]~output_o\ : std_logic;
SIGNAL \saidaRAM[20]~output_o\ : std_logic;
SIGNAL \saidaRAM[21]~output_o\ : std_logic;
SIGNAL \saidaRAM[22]~output_o\ : std_logic;
SIGNAL \saidaRAM[23]~output_o\ : std_logic;
SIGNAL \saidaRAM[24]~output_o\ : std_logic;
SIGNAL \saidaRAM[25]~output_o\ : std_logic;
SIGNAL \saidaRAM[26]~output_o\ : std_logic;
SIGNAL \saidaRAM[27]~output_o\ : std_logic;
SIGNAL \saidaRAM[28]~output_o\ : std_logic;
SIGNAL \saidaRAM[29]~output_o\ : std_logic;
SIGNAL \saidaRAM[30]~output_o\ : std_logic;
SIGNAL \saidaRAM[31]~output_o\ : std_logic;
SIGNAL \saidaPC[0]~output_o\ : std_logic;
SIGNAL \saidaPC[1]~output_o\ : std_logic;
SIGNAL \saidaPC[2]~output_o\ : std_logic;
SIGNAL \saidaPC[3]~output_o\ : std_logic;
SIGNAL \saidaPC[4]~output_o\ : std_logic;
SIGNAL \saidaPC[5]~output_o\ : std_logic;
SIGNAL \saidaPC[6]~output_o\ : std_logic;
SIGNAL \saidaPC[7]~output_o\ : std_logic;
SIGNAL \saidaPC[8]~output_o\ : std_logic;
SIGNAL \saidaPC[9]~output_o\ : std_logic;
SIGNAL \saidaPC[10]~output_o\ : std_logic;
SIGNAL \saidaPC[11]~output_o\ : std_logic;
SIGNAL \saidaPC[12]~output_o\ : std_logic;
SIGNAL \saidaPC[13]~output_o\ : std_logic;
SIGNAL \saidaPC[14]~output_o\ : std_logic;
SIGNAL \saidaPC[15]~output_o\ : std_logic;
SIGNAL \saidaPC[16]~output_o\ : std_logic;
SIGNAL \saidaPC[17]~output_o\ : std_logic;
SIGNAL \saidaPC[18]~output_o\ : std_logic;
SIGNAL \saidaPC[19]~output_o\ : std_logic;
SIGNAL \saidaPC[20]~output_o\ : std_logic;
SIGNAL \saidaPC[21]~output_o\ : std_logic;
SIGNAL \saidaPC[22]~output_o\ : std_logic;
SIGNAL \saidaPC[23]~output_o\ : std_logic;
SIGNAL \saidaPC[24]~output_o\ : std_logic;
SIGNAL \saidaPC[25]~output_o\ : std_logic;
SIGNAL \saidaPC[26]~output_o\ : std_logic;
SIGNAL \saidaPC[27]~output_o\ : std_logic;
SIGNAL \saidaPC[28]~output_o\ : std_logic;
SIGNAL \saidaPC[29]~output_o\ : std_logic;
SIGNAL \saidaPC[30]~output_o\ : std_logic;
SIGNAL \saidaPC[31]~output_o\ : std_logic;
SIGNAL \saidaTeste1[0]~output_o\ : std_logic;
SIGNAL \saidaTeste1[1]~output_o\ : std_logic;
SIGNAL \saidaTeste1[2]~output_o\ : std_logic;
SIGNAL \saidaTeste1[3]~output_o\ : std_logic;
SIGNAL \saidaTeste1[4]~output_o\ : std_logic;
SIGNAL \saidaTeste1[5]~output_o\ : std_logic;
SIGNAL \saidaTeste1[6]~output_o\ : std_logic;
SIGNAL \saidaTeste1[7]~output_o\ : std_logic;
SIGNAL \saidaTeste1[8]~output_o\ : std_logic;
SIGNAL \saidaTeste1[9]~output_o\ : std_logic;
SIGNAL \saidaTeste1[10]~output_o\ : std_logic;
SIGNAL \saidaTeste1[11]~output_o\ : std_logic;
SIGNAL \saidaTeste1[12]~output_o\ : std_logic;
SIGNAL \saidaTeste1[13]~output_o\ : std_logic;
SIGNAL \saidaTeste1[14]~output_o\ : std_logic;
SIGNAL \saidaTeste1[15]~output_o\ : std_logic;
SIGNAL \saidaTeste1[16]~output_o\ : std_logic;
SIGNAL \saidaTeste1[17]~output_o\ : std_logic;
SIGNAL \saidaTeste1[18]~output_o\ : std_logic;
SIGNAL \saidaTeste1[19]~output_o\ : std_logic;
SIGNAL \saidaTeste1[20]~output_o\ : std_logic;
SIGNAL \saidaTeste1[21]~output_o\ : std_logic;
SIGNAL \saidaTeste1[22]~output_o\ : std_logic;
SIGNAL \saidaTeste1[23]~output_o\ : std_logic;
SIGNAL \saidaTeste1[24]~output_o\ : std_logic;
SIGNAL \saidaTeste1[25]~output_o\ : std_logic;
SIGNAL \saidaTeste1[26]~output_o\ : std_logic;
SIGNAL \saidaTeste1[27]~output_o\ : std_logic;
SIGNAL \saidaTeste1[28]~output_o\ : std_logic;
SIGNAL \saidaTeste1[29]~output_o\ : std_logic;
SIGNAL \saidaTeste1[30]~output_o\ : std_logic;
SIGNAL \saidaTeste1[31]~output_o\ : std_logic;
SIGNAL \saidaTeste2[0]~output_o\ : std_logic;
SIGNAL \saidaTeste2[1]~output_o\ : std_logic;
SIGNAL \saidaTeste2[2]~output_o\ : std_logic;
SIGNAL \saidaTeste2[3]~output_o\ : std_logic;
SIGNAL \saidaTeste2[4]~output_o\ : std_logic;
SIGNAL \saidaTeste2[5]~output_o\ : std_logic;
SIGNAL \saidaTeste2[6]~output_o\ : std_logic;
SIGNAL \saidaTeste2[7]~output_o\ : std_logic;
SIGNAL \saidaTeste2[8]~output_o\ : std_logic;
SIGNAL \saidaTeste2[9]~output_o\ : std_logic;
SIGNAL \saidaTeste2[10]~output_o\ : std_logic;
SIGNAL \saidaTeste2[11]~output_o\ : std_logic;
SIGNAL \saidaTeste2[12]~output_o\ : std_logic;
SIGNAL \saidaTeste2[13]~output_o\ : std_logic;
SIGNAL \saidaTeste2[14]~output_o\ : std_logic;
SIGNAL \saidaTeste2[15]~output_o\ : std_logic;
SIGNAL \saidaTeste2[16]~output_o\ : std_logic;
SIGNAL \saidaTeste2[17]~output_o\ : std_logic;
SIGNAL \saidaTeste2[18]~output_o\ : std_logic;
SIGNAL \saidaTeste2[19]~output_o\ : std_logic;
SIGNAL \saidaTeste2[20]~output_o\ : std_logic;
SIGNAL \saidaTeste2[21]~output_o\ : std_logic;
SIGNAL \saidaTeste2[22]~output_o\ : std_logic;
SIGNAL \saidaTeste2[23]~output_o\ : std_logic;
SIGNAL \saidaTeste2[24]~output_o\ : std_logic;
SIGNAL \saidaTeste2[25]~output_o\ : std_logic;
SIGNAL \saidaTeste2[26]~output_o\ : std_logic;
SIGNAL \saidaTeste2[27]~output_o\ : std_logic;
SIGNAL \saidaTeste2[28]~output_o\ : std_logic;
SIGNAL \saidaTeste2[29]~output_o\ : std_logic;
SIGNAL \saidaTeste2[30]~output_o\ : std_logic;
SIGNAL \saidaTeste2[31]~output_o\ : std_logic;
SIGNAL \saidaTeste3[0]~output_o\ : std_logic;
SIGNAL \saidaTeste3[1]~output_o\ : std_logic;
SIGNAL \saidaTeste3[2]~output_o\ : std_logic;
SIGNAL \saidaTeste3[3]~output_o\ : std_logic;
SIGNAL \saidaTeste3[4]~output_o\ : std_logic;
SIGNAL \saidaTeste3[5]~output_o\ : std_logic;
SIGNAL \saidaTeste3[6]~output_o\ : std_logic;
SIGNAL \saidaTeste3[7]~output_o\ : std_logic;
SIGNAL \saidaTeste3[8]~output_o\ : std_logic;
SIGNAL \saidaTeste3[9]~output_o\ : std_logic;
SIGNAL \saidaTeste3[10]~output_o\ : std_logic;
SIGNAL \saidaTeste3[11]~output_o\ : std_logic;
SIGNAL \saidaTeste3[12]~output_o\ : std_logic;
SIGNAL \saidaTeste3[13]~output_o\ : std_logic;
SIGNAL \saidaTeste3[14]~output_o\ : std_logic;
SIGNAL \saidaTeste3[15]~output_o\ : std_logic;
SIGNAL \saidaTeste3[16]~output_o\ : std_logic;
SIGNAL \saidaTeste3[17]~output_o\ : std_logic;
SIGNAL \saidaTeste3[18]~output_o\ : std_logic;
SIGNAL \saidaTeste3[19]~output_o\ : std_logic;
SIGNAL \saidaTeste3[20]~output_o\ : std_logic;
SIGNAL \saidaTeste3[21]~output_o\ : std_logic;
SIGNAL \saidaTeste3[22]~output_o\ : std_logic;
SIGNAL \saidaTeste3[23]~output_o\ : std_logic;
SIGNAL \saidaTeste3[24]~output_o\ : std_logic;
SIGNAL \saidaTeste3[25]~output_o\ : std_logic;
SIGNAL \saidaTeste3[26]~output_o\ : std_logic;
SIGNAL \saidaTeste3[27]~output_o\ : std_logic;
SIGNAL \saidaTeste3[28]~output_o\ : std_logic;
SIGNAL \saidaTeste3[29]~output_o\ : std_logic;
SIGNAL \saidaTeste3[30]~output_o\ : std_logic;
SIGNAL \saidaTeste3[31]~output_o\ : std_logic;
SIGNAL \saidaTeste4[0]~output_o\ : std_logic;
SIGNAL \saidaTeste4[1]~output_o\ : std_logic;
SIGNAL \saidaTeste4[2]~output_o\ : std_logic;
SIGNAL \saidaTeste4[3]~output_o\ : std_logic;
SIGNAL \saidaTeste4[4]~output_o\ : std_logic;
SIGNAL \saidaTeste4[5]~output_o\ : std_logic;
SIGNAL \saidaTeste4[6]~output_o\ : std_logic;
SIGNAL \saidaTeste4[7]~output_o\ : std_logic;
SIGNAL \saidaTeste4[8]~output_o\ : std_logic;
SIGNAL \saidaTeste4[9]~output_o\ : std_logic;
SIGNAL \saidaTeste4[10]~output_o\ : std_logic;
SIGNAL \saidaTeste4[11]~output_o\ : std_logic;
SIGNAL \saidaTeste4[12]~output_o\ : std_logic;
SIGNAL \saidaTeste4[13]~output_o\ : std_logic;
SIGNAL \saidaTeste4[14]~output_o\ : std_logic;
SIGNAL \saidaTeste4[15]~output_o\ : std_logic;
SIGNAL \saidaTeste4[16]~output_o\ : std_logic;
SIGNAL \saidaTeste4[17]~output_o\ : std_logic;
SIGNAL \saidaTeste4[18]~output_o\ : std_logic;
SIGNAL \saidaTeste4[19]~output_o\ : std_logic;
SIGNAL \saidaTeste4[20]~output_o\ : std_logic;
SIGNAL \saidaTeste4[21]~output_o\ : std_logic;
SIGNAL \saidaTeste4[22]~output_o\ : std_logic;
SIGNAL \saidaTeste4[23]~output_o\ : std_logic;
SIGNAL \saidaTeste4[24]~output_o\ : std_logic;
SIGNAL \saidaTeste4[25]~output_o\ : std_logic;
SIGNAL \saidaTeste4[26]~output_o\ : std_logic;
SIGNAL \saidaTeste4[27]~output_o\ : std_logic;
SIGNAL \saidaTeste4[28]~output_o\ : std_logic;
SIGNAL \saidaTeste4[29]~output_o\ : std_logic;
SIGNAL \saidaTeste4[30]~output_o\ : std_logic;
SIGNAL \saidaTeste4[31]~output_o\ : std_logic;
SIGNAL \saidaTeste5[0]~output_o\ : std_logic;
SIGNAL \saidaTeste5[1]~output_o\ : std_logic;
SIGNAL \saidaTeste5[2]~output_o\ : std_logic;
SIGNAL \saidaTeste5[3]~output_o\ : std_logic;
SIGNAL \saidaTeste5[4]~output_o\ : std_logic;
SIGNAL \saidaTeste5[5]~output_o\ : std_logic;
SIGNAL \saidaTeste5[6]~output_o\ : std_logic;
SIGNAL \saidaTeste5[7]~output_o\ : std_logic;
SIGNAL \saidaTeste5[8]~output_o\ : std_logic;
SIGNAL \saidaTeste5[9]~output_o\ : std_logic;
SIGNAL \saidaTeste5[10]~output_o\ : std_logic;
SIGNAL \saidaTeste5[11]~output_o\ : std_logic;
SIGNAL \saidaTeste5[12]~output_o\ : std_logic;
SIGNAL \saidaTeste5[13]~output_o\ : std_logic;
SIGNAL \saidaTeste5[14]~output_o\ : std_logic;
SIGNAL \saidaTeste5[15]~output_o\ : std_logic;
SIGNAL \saidaTeste5[16]~output_o\ : std_logic;
SIGNAL \saidaTeste5[17]~output_o\ : std_logic;
SIGNAL \saidaTeste5[18]~output_o\ : std_logic;
SIGNAL \saidaTeste5[19]~output_o\ : std_logic;
SIGNAL \saidaTeste5[20]~output_o\ : std_logic;
SIGNAL \saidaTeste5[21]~output_o\ : std_logic;
SIGNAL \saidaTeste5[22]~output_o\ : std_logic;
SIGNAL \saidaTeste5[23]~output_o\ : std_logic;
SIGNAL \saidaTeste5[24]~output_o\ : std_logic;
SIGNAL \saidaTeste5[25]~output_o\ : std_logic;
SIGNAL \saidaTeste5[26]~output_o\ : std_logic;
SIGNAL \saidaTeste5[27]~output_o\ : std_logic;
SIGNAL \saidaTeste5[28]~output_o\ : std_logic;
SIGNAL \saidaTeste5[29]~output_o\ : std_logic;
SIGNAL \saidaTeste5[30]~output_o\ : std_logic;
SIGNAL \saidaTeste5[31]~output_o\ : std_logic;
SIGNAL \saidaTeste6[0]~output_o\ : std_logic;
SIGNAL \saidaTeste6[1]~output_o\ : std_logic;
SIGNAL \saidaTeste6[2]~output_o\ : std_logic;
SIGNAL \saidaTeste6[3]~output_o\ : std_logic;
SIGNAL \saidaTeste6[4]~output_o\ : std_logic;
SIGNAL \saidaTeste6[5]~output_o\ : std_logic;
SIGNAL \saidaTeste6[6]~output_o\ : std_logic;
SIGNAL \saidaTeste6[7]~output_o\ : std_logic;
SIGNAL \saidaTeste6[8]~output_o\ : std_logic;
SIGNAL \saidaTeste6[9]~output_o\ : std_logic;
SIGNAL \saidaTeste6[10]~output_o\ : std_logic;
SIGNAL \saidaTeste6[11]~output_o\ : std_logic;
SIGNAL \saidaTeste6[12]~output_o\ : std_logic;
SIGNAL \saidaTeste6[13]~output_o\ : std_logic;
SIGNAL \saidaTeste6[14]~output_o\ : std_logic;
SIGNAL \saidaTeste6[15]~output_o\ : std_logic;
SIGNAL \saidaTeste6[16]~output_o\ : std_logic;
SIGNAL \saidaTeste6[17]~output_o\ : std_logic;
SIGNAL \saidaTeste6[18]~output_o\ : std_logic;
SIGNAL \saidaTeste6[19]~output_o\ : std_logic;
SIGNAL \saidaTeste6[20]~output_o\ : std_logic;
SIGNAL \saidaTeste6[21]~output_o\ : std_logic;
SIGNAL \saidaTeste6[22]~output_o\ : std_logic;
SIGNAL \saidaTeste6[23]~output_o\ : std_logic;
SIGNAL \saidaTeste6[24]~output_o\ : std_logic;
SIGNAL \saidaTeste6[25]~output_o\ : std_logic;
SIGNAL \saidaTeste6[26]~output_o\ : std_logic;
SIGNAL \saidaTeste6[27]~output_o\ : std_logic;
SIGNAL \saidaTeste6[28]~output_o\ : std_logic;
SIGNAL \saidaTeste6[29]~output_o\ : std_logic;
SIGNAL \saidaTeste6[30]~output_o\ : std_logic;
SIGNAL \saidaTeste6[31]~output_o\ : std_logic;
SIGNAL \saidaTeste7[0]~output_o\ : std_logic;
SIGNAL \saidaTeste7[1]~output_o\ : std_logic;
SIGNAL \saidaTeste7[2]~output_o\ : std_logic;
SIGNAL \saidaTeste7[3]~output_o\ : std_logic;
SIGNAL \saidaTeste7[4]~output_o\ : std_logic;
SIGNAL \saidaTeste7[5]~output_o\ : std_logic;
SIGNAL \saidaTeste7[6]~output_o\ : std_logic;
SIGNAL \saidaTeste7[7]~output_o\ : std_logic;
SIGNAL \saidaTeste7[8]~output_o\ : std_logic;
SIGNAL \saidaTeste7[9]~output_o\ : std_logic;
SIGNAL \saidaTeste7[10]~output_o\ : std_logic;
SIGNAL \saidaTeste7[11]~output_o\ : std_logic;
SIGNAL \saidaTeste7[12]~output_o\ : std_logic;
SIGNAL \saidaTeste7[13]~output_o\ : std_logic;
SIGNAL \saidaTeste7[14]~output_o\ : std_logic;
SIGNAL \saidaTeste7[15]~output_o\ : std_logic;
SIGNAL \saidaTeste7[16]~output_o\ : std_logic;
SIGNAL \saidaTeste7[17]~output_o\ : std_logic;
SIGNAL \saidaTeste7[18]~output_o\ : std_logic;
SIGNAL \saidaTeste7[19]~output_o\ : std_logic;
SIGNAL \saidaTeste7[20]~output_o\ : std_logic;
SIGNAL \saidaTeste7[21]~output_o\ : std_logic;
SIGNAL \saidaTeste7[22]~output_o\ : std_logic;
SIGNAL \saidaTeste7[23]~output_o\ : std_logic;
SIGNAL \saidaTeste7[24]~output_o\ : std_logic;
SIGNAL \saidaTeste7[25]~output_o\ : std_logic;
SIGNAL \saidaTeste7[26]~output_o\ : std_logic;
SIGNAL \saidaTeste7[27]~output_o\ : std_logic;
SIGNAL \saidaTeste7[28]~output_o\ : std_logic;
SIGNAL \saidaTeste7[29]~output_o\ : std_logic;
SIGNAL \saidaTeste7[30]~output_o\ : std_logic;
SIGNAL \saidaTeste7[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|MEM_INST|content~7_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~8_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~9_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~10_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|SOMAOUT[3]~4_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~5_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~6_combout\ : std_logic;
SIGNAL \UCFD|HAB_ESC_REG~0_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~15_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~16_combout\ : std_logic;
SIGNAL \FD|MUX_RT_RD|q[2]~2_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~17_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~18_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~21_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~22_combout\ : std_logic;
SIGNAL \FD|MUX_RT_RD|q[0]~0_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~19_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~20_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~23_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~24_combout\ : std_logic;
SIGNAL \FD|MUX_RT_RD|q[1]~1_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Mux63~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Mux63~1_combout\ : std_logic;
SIGNAL \UCFD|MUX3~combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[0]~15_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~27_combout\ : std_logic;
SIGNAL \FD|MEM_INST|q[22]~feeder_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~25_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~26_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~28_combout\ : std_logic;
SIGNAL \FD|MEM_INST|q[23]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Equal0~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Mux31~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Mux31~1_combout\ : std_logic;
SIGNAL \FD|UC_ULA|q[1]~1_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~13_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~14_combout\ : std_logic;
SIGNAL \FD|UC_ULA|q[0]~0_combout\ : std_logic;
SIGNAL \FD|UC_ULA|q[2]~2_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[1]~17_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[1]~48_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[0]~14_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux30~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[1]~1_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux30~1_combout\ : std_logic;
SIGNAL \FD|comb~0_combout\ : std_logic;
SIGNAL \FD|RAM|q[2]~0_combout\ : std_logic;
SIGNAL \FD|RAM|q[1]~2_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[1]~64_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[2]~18_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[2]~49_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[1]~1_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux29~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[2]~2_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux29~1_combout\ : std_logic;
SIGNAL \FD|RAM|q[2]~3_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[2]~65_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[3]~3_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[3]~19_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[3]~50_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[2]~2_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux28~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux28~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[3]~66_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[4]~20_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[3]~3_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux27~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[4]~4_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux27~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[4]~67_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[5]~5_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[4]~4_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[5]~21_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[5]~51_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux26~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux26~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[5]~68_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[6]~6_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[6]~22_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[5]~5_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux25~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux25~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[6]~69_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[7]~7_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[7]~23_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[6]~6_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux24~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux24~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[7]~70_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[8]~8_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[7]~7_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[8]~24_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux23~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux23~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[8]~71_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[9]~9_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[9]~25_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[8]~8_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux22~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux22~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[9]~72_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[10]~26_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[9]~9_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux21~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[10]~10_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux21~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[10]~73_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[11]~11_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[11]~27_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[11]~52_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[10]~10_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux20~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux20~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[11]~74_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[12]~28_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[12]~53_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[11]~11_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux19~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[12]~12_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux19~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[12]~75_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[13]~13_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[13]~29_combout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[13]~54_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[12]~12_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux18~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux18~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[13]~76_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[14]~14_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[14]~30_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[13]~13_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux17~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux17~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[14]~77_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[15]~15_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[15]~31_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[14]~14_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux16~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux16~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[15]~78_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[16]~16_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[15]~15_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux15~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux15~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[16]~79_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[16]~16_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[17]~33_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux14~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[17]~17_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux14~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[17]~80_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[18]~18_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[18]~34_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[17]~17_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux13~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux13~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[18]~81_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[19]~19_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[19]~35_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[18]~18_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux12~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux12~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[19]~82_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[20]~20_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[20]~36_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[19]~19_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux11~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux11~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[20]~83_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[21]~21_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[21]~37_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[20]~20_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux10~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux10~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[21]~84_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[22]~22_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[22]~38_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[21]~21_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux9~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux9~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[22]~85_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[23]~23_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[23]~39_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[22]~22_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux8~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux8~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[23]~86_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[24]~24_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[24]~40_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[23]~23_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux7~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux7~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[24]~87_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[25]~25_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[25]~41_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[24]~24_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux6~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux6~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[25]~88_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[26]~26_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[26]~42_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[25]~25_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux5~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux5~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[26]~89_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[27]~27_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[27]~43_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[26]~26_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux4~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux4~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[27]~90_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[28]~28_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[28]~44_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[27]~27_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux3~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux3~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[28]~91_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[29]~29_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[29]~45_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[28]~28_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux2~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux2~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[29]~92_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[30]~30_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux1~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[30]~62_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaA[31]~31_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux31~2_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[31]~47_combout\ : std_logic;
SIGNAL \FD|ULA|INVERTE_B|q[31]~5_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[29]~29_combout\ : std_logic;
SIGNAL \FD|ULA|SOMA|CarryOut[30]~30_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux0~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux0~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[31]~93_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[0]~16_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux31~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux31~1_combout\ : std_logic;
SIGNAL \FD|RAM|q[0]~1_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[0]~63_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|MUX_RT_IMM|q[30]~46_combout\ : std_logic;
SIGNAL \FD|ULA|INVERTE_B|q[30]~4_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux1~0_combout\ : std_logic;
SIGNAL \FD|comb~1_combout\ : std_logic;
SIGNAL \FD|comb~2_combout\ : std_logic;
SIGNAL \FD|comb~3_combout\ : std_logic;
SIGNAL \FD|comb~4_combout\ : std_logic;
SIGNAL \FD|comb~5_combout\ : std_logic;
SIGNAL \FD|comb~7_combout\ : std_logic;
SIGNAL \FD|comb~8_combout\ : std_logic;
SIGNAL \FD|comb~9_combout\ : std_logic;
SIGNAL \FD|comb~6_combout\ : std_logic;
SIGNAL \FD|comb~10_combout\ : std_logic;
SIGNAL \FD|comb~11_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~0_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~3_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~4_combout\ : std_logic;
SIGNAL \UCFD|MUX1~combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[2]~0_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[3]~0_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[4]~1_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~2_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[6]~3_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[7]~4_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[8]~2_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[8]~5_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[9]~3_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[9]~6_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[10]~4_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~0_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~11_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~12_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~1_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[5]~2_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[6]~1_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[7]~3_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~1_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~2_combout\ : std_logic;
SIGNAL \UCFD|ULA_OP[1]~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux1~2_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux0~2_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[10]~7_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[11]~5_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[11]~8_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[12]~6_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[12]~9_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[13]~4_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[13]~10_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[14]~5_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[14]~11_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[15]~6_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[15]~12_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[16]~7_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[16]~13_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[17]~8_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[17]~14_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[18]~7_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[18]~15_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[19]~8_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[19]~16_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[20]~9_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[20]~17_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[21]~9_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[21]~18_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[22]~10_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[22]~19_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[23]~10_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[23]~20_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[24]~11_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[24]~21_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[25]~12_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[25]~22_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[26]~11_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[26]~23_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[27]~12_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[27]~24_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[28]~13_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[28]~25_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[29]~14_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[29]~26_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[30]~15_combout\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|CarryOut[30]~27_combout\ : std_logic;
SIGNAL \FD|MUX_JUMP|q[31]~16_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][0]~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][1]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][2]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][3]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][4]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][5]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][6]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][7]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][8]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][9]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][10]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][11]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][12]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][13]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][14]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][15]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][16]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][17]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][18]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][19]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][20]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][21]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][22]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][23]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][24]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][25]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][26]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][27]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][28]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][30]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][31]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][31]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][0]~1_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][1]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][2]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][3]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][4]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][5]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][6]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][7]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][8]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][9]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][10]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][11]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][12]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][13]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][14]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][15]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][16]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][17]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][18]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][19]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][20]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][21]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][22]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][23]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][24]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][25]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][26]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][27]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][28]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][29]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][30]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][31]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][31]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][0]~2_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][1]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][2]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][3]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][4]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][5]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][6]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][7]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][8]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][9]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][10]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][11]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][12]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][13]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][14]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][15]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][16]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][17]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][18]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][19]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][20]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][21]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][22]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][23]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][24]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][25]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][26]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][27]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][28]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][29]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][30]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[3][31]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][0]~3_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][1]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][2]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][3]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][4]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][5]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][6]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][7]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][8]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][9]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][10]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][11]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][12]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][13]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][14]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][15]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][16]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][17]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][18]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][19]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][20]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][21]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][22]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][23]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][24]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][25]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][26]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][27]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][28]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][29]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][30]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][31]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[4][31]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][0]~4_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][1]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][2]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][3]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][4]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][5]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][6]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][7]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][8]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][9]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][10]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][11]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][12]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][13]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][14]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][15]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][16]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][17]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][18]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][19]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][20]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][21]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][22]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][23]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][24]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][25]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][26]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][27]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][28]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][29]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][31]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[5][31]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][0]~5_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][1]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][2]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][3]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][4]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][5]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][6]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][7]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][8]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][9]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][10]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][11]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][12]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][13]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][14]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][15]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][16]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][17]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][18]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][19]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][20]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][21]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][22]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][23]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][24]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][25]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][26]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][27]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][28]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][29]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][30]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][31]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[6][31]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][0]~6_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[7][31]~q\ : std_logic;
SIGNAL \FD|SOMA_PC_IMM|SOMAOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|SOMA_PC|SOMAOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \FD|SOMA_PC|OUT_AND2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \FD|MEM_INST|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
op <= ww_op;
ula_op <= ww_ula_op;
hab_esc_mem <= ww_hab_esc_mem;
hab_le_mem <= ww_hab_le_mem;
beq <= ww_beq;
sel_mux_ula_mem <= ww_sel_mux_ula_mem;
sel_mux_rt_imm <= ww_sel_mux_rt_imm;
sel_MUX_rt_rd <= ww_sel_MUX_rt_rd;
sel_mux_jump <= ww_sel_mux_jump;
hab_esc_reg <= ww_hab_esc_reg;
saidaROM <= ww_saidaROM;
saidaULA <= ww_saidaULA;
saidaRAM <= ww_saidaRAM;
saidaPC <= ww_saidaPC;
saidaTeste1 <= ww_saidaTeste1;
saidaTeste2 <= ww_saidaTeste2;
saidaTeste3 <= ww_saidaTeste3;
saidaTeste4 <= ww_saidaTeste4;
saidaTeste5 <= ww_saidaTeste5;
saidaTeste6 <= ww_saidaTeste6;
saidaTeste7 <= ww_saidaTeste7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|MUX_ULA_MEM|q[1]~64_combout\ & \FD|MUX_ULA_MEM|q[2]~65_combout\ & \FD|MUX_ULA_MEM|q[3]~66_combout\ & \FD|MUX_ULA_MEM|q[4]~67_combout\ & 
\FD|MUX_ULA_MEM|q[5]~68_combout\ & \FD|MUX_ULA_MEM|q[6]~69_combout\ & \FD|MUX_ULA_MEM|q[7]~70_combout\ & \FD|MUX_ULA_MEM|q[8]~71_combout\ & \FD|MUX_ULA_MEM|q[9]~72_combout\ & \FD|MUX_ULA_MEM|q[10]~73_combout\ & \FD|MUX_ULA_MEM|q[11]~74_combout\ & 
\FD|MUX_ULA_MEM|q[12]~75_combout\ & \FD|MUX_ULA_MEM|q[13]~76_combout\ & \FD|MUX_ULA_MEM|q[14]~77_combout\ & \FD|MUX_ULA_MEM|q[15]~78_combout\ & \FD|MUX_ULA_MEM|q[16]~79_combout\ & \FD|MUX_ULA_MEM|q[17]~80_combout\ & \FD|MUX_ULA_MEM|q[18]~81_combout\ & 
\FD|MUX_ULA_MEM|q[19]~82_combout\ & \FD|MUX_ULA_MEM|q[20]~83_combout\ & \FD|MUX_ULA_MEM|q[21]~84_combout\ & \FD|MUX_ULA_MEM|q[22]~85_combout\ & \FD|MUX_ULA_MEM|q[23]~86_combout\ & \FD|MUX_ULA_MEM|q[24]~87_combout\ & \FD|MUX_ULA_MEM|q[25]~88_combout\ & 
\FD|MUX_ULA_MEM|q[26]~89_combout\ & \FD|MUX_ULA_MEM|q[27]~90_combout\ & \FD|MUX_ULA_MEM|q[28]~91_combout\ & \FD|MUX_ULA_MEM|q[29]~92_combout\ & \FD|MUX_ULA_MEM|q[30]~62_combout\ & \FD|MUX_ULA_MEM|q[31]~93_combout\ & \FD|MUX_ULA_MEM|q[0]~63_combout\);

\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|MUX_RT_RD|q[2]~2_combout\ & \FD|MUX_RT_RD|q[1]~1_combout\ & \FD|MUX_RT_RD|q[0]~0_combout\);

\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FD|MEM_INST|content~28_combout\ & \FD|MEM_INST|content~27_combout\ & \FD|MEM_INST|content~26_combout\);

\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a1\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a2\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a3\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a4\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a5\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a6\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a7\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a8\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a9\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a10\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a11\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a12\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a13\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a14\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a15\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a16\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a17\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a18\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a19\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a20\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a21\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a22\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a23\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a24\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a25\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a26\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a27\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a28\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a29\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a30\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a31\ <= \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|MUX_ULA_MEM|q[1]~64_combout\ & \FD|MUX_ULA_MEM|q[2]~65_combout\ & \FD|MUX_ULA_MEM|q[3]~66_combout\ & \FD|MUX_ULA_MEM|q[4]~67_combout\ & 
\FD|MUX_ULA_MEM|q[5]~68_combout\ & \FD|MUX_ULA_MEM|q[6]~69_combout\ & \FD|MUX_ULA_MEM|q[7]~70_combout\ & \FD|MUX_ULA_MEM|q[8]~71_combout\ & \FD|MUX_ULA_MEM|q[9]~72_combout\ & \FD|MUX_ULA_MEM|q[10]~73_combout\ & \FD|MUX_ULA_MEM|q[11]~74_combout\ & 
\FD|MUX_ULA_MEM|q[12]~75_combout\ & \FD|MUX_ULA_MEM|q[13]~76_combout\ & \FD|MUX_ULA_MEM|q[14]~77_combout\ & \FD|MUX_ULA_MEM|q[15]~78_combout\ & \FD|MUX_ULA_MEM|q[16]~79_combout\ & \FD|MUX_ULA_MEM|q[17]~80_combout\ & \FD|MUX_ULA_MEM|q[18]~81_combout\ & 
\FD|MUX_ULA_MEM|q[19]~82_combout\ & \FD|MUX_ULA_MEM|q[20]~83_combout\ & \FD|MUX_ULA_MEM|q[21]~84_combout\ & \FD|MUX_ULA_MEM|q[22]~85_combout\ & \FD|MUX_ULA_MEM|q[23]~86_combout\ & \FD|MUX_ULA_MEM|q[24]~87_combout\ & \FD|MUX_ULA_MEM|q[25]~88_combout\ & 
\FD|MUX_ULA_MEM|q[26]~89_combout\ & \FD|MUX_ULA_MEM|q[27]~90_combout\ & \FD|MUX_ULA_MEM|q[28]~91_combout\ & \FD|MUX_ULA_MEM|q[29]~92_combout\ & \FD|MUX_ULA_MEM|q[30]~62_combout\ & \FD|MUX_ULA_MEM|q[31]~93_combout\ & \FD|MUX_ULA_MEM|q[0]~63_combout\);

\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|MUX_RT_RD|q[2]~2_combout\ & \FD|MUX_RT_RD|q[1]~1_combout\ & \FD|MUX_RT_RD|q[0]~0_combout\);

\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FD|MEM_INST|content~6_combout\ & \FD|MEM_INST|content~24_combout\ & \FD|MEM_INST|content~22_combout\);

\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a30\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\ <= \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y73_N23
\op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \op[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(27),
	devoe => ww_devoe,
	o => \op[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(28),
	devoe => ww_devoe,
	o => \op[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\op[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \op[3]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\op[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \op[4]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\op[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \op[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\ula_op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(28),
	devoe => ww_devoe,
	o => \ula_op[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\ula_op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|ULA_OP[1]~0_combout\,
	devoe => ww_devoe,
	o => \ula_op[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\hab_esc_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hab_esc_mem~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\hab_le_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|MUX3~combout\,
	devoe => ww_devoe,
	o => \hab_le_mem~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\beq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(28),
	devoe => ww_devoe,
	o => \beq~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\sel_mux_ula_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|MUX3~combout\,
	devoe => ww_devoe,
	o => \sel_mux_ula_mem~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\sel_mux_rt_imm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|MUX3~combout\,
	devoe => ww_devoe,
	o => \sel_mux_rt_imm~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\sel_MUX_rt_rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|ULA_OP[1]~0_combout\,
	devoe => ww_devoe,
	o => \sel_MUX_rt_rd~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\sel_mux_jump~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|MUX1~combout\,
	devoe => ww_devoe,
	o => \sel_mux_jump~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\hab_esc_reg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|HAB_ESC_REG~0_combout\,
	devoe => ww_devoe,
	o => \hab_esc_reg~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\saidaROM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(0),
	devoe => ww_devoe,
	o => \saidaROM[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\saidaROM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(1),
	devoe => ww_devoe,
	o => \saidaROM[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\saidaROM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(2),
	devoe => ww_devoe,
	o => \saidaROM[2]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\saidaROM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(3),
	devoe => ww_devoe,
	o => \saidaROM[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\saidaROM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[4]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\saidaROM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(5),
	devoe => ww_devoe,
	o => \saidaROM[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\saidaROM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\saidaROM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[7]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\saidaROM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[8]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\saidaROM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\saidaROM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[10]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\saidaROM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(11),
	devoe => ww_devoe,
	o => \saidaROM[11]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\saidaROM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(12),
	devoe => ww_devoe,
	o => \saidaROM[12]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\saidaROM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(5),
	devoe => ww_devoe,
	o => \saidaROM[13]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\saidaROM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[14]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\saidaROM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[15]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\saidaROM[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(16),
	devoe => ww_devoe,
	o => \saidaROM[16]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\saidaROM[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(17),
	devoe => ww_devoe,
	o => \saidaROM[17]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\saidaROM[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(28),
	devoe => ww_devoe,
	o => \saidaROM[18]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\saidaROM[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[19]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\saidaROM[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[20]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\saidaROM[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(21),
	devoe => ww_devoe,
	o => \saidaROM[21]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\saidaROM[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(22),
	devoe => ww_devoe,
	o => \saidaROM[22]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\saidaROM[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(23),
	devoe => ww_devoe,
	o => \saidaROM[23]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\saidaROM[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[24]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\saidaROM[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[25]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\saidaROM[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \saidaROM[26]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\saidaROM[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(27),
	devoe => ww_devoe,
	o => \saidaROM[27]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\saidaROM[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(28),
	devoe => ww_devoe,
	o => \saidaROM[28]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\saidaROM[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[29]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\saidaROM[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[30]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\saidaROM[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \saidaROM[31]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\saidaULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux31~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\saidaULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\saidaULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\saidaULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[3]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\saidaULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\saidaULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\saidaULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\saidaULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\saidaULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[8]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\saidaULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\saidaULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[10]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\saidaULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[11]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\saidaULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[12]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\saidaULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[13]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\saidaULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\saidaULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[15]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\saidaULA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[16]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\saidaULA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[17]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\saidaULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[18]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\saidaULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[19]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\saidaULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[20]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\saidaULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[21]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\saidaULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[22]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\saidaULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[23]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\saidaULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[24]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\saidaULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[25]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\saidaULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[26]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\saidaULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[27]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\saidaULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[28]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\saidaULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \saidaULA[29]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\saidaULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \saidaULA[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\saidaULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \saidaULA[31]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\saidaRAM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|q[0]~1_combout\,
	devoe => ww_devoe,
	o => \saidaRAM[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\saidaRAM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|q[1]~2_combout\,
	devoe => ww_devoe,
	o => \saidaRAM[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\saidaRAM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|q[2]~3_combout\,
	devoe => ww_devoe,
	o => \saidaRAM[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\saidaRAM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[3]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\saidaRAM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[4]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\saidaRAM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\saidaRAM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\saidaRAM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\saidaRAM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[8]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\saidaRAM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[9]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\saidaRAM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[10]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\saidaRAM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[11]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\saidaRAM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[12]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\saidaRAM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[13]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\saidaRAM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[14]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\saidaRAM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[15]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\saidaRAM[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[16]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\saidaRAM[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[17]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\saidaRAM[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[18]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\saidaRAM[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[19]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\saidaRAM[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[20]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\saidaRAM[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[21]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\saidaRAM[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[22]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\saidaRAM[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[23]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\saidaRAM[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[24]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\saidaRAM[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[25]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\saidaRAM[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[26]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\saidaRAM[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[27]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\saidaRAM[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[28]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\saidaRAM[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[29]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\saidaRAM[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[30]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\saidaRAM[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaRAM[31]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\saidaPC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaPC[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\saidaPC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaPC[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\saidaPC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \saidaPC[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\saidaPC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \saidaPC[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\saidaPC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \saidaPC[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\saidaPC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \saidaPC[5]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\saidaPC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \saidaPC[6]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\saidaPC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \saidaPC[7]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\saidaPC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \saidaPC[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\saidaPC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(9),
	devoe => ww_devoe,
	o => \saidaPC[9]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\saidaPC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(10),
	devoe => ww_devoe,
	o => \saidaPC[10]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\saidaPC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(11),
	devoe => ww_devoe,
	o => \saidaPC[11]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\saidaPC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(12),
	devoe => ww_devoe,
	o => \saidaPC[12]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\saidaPC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(13),
	devoe => ww_devoe,
	o => \saidaPC[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\saidaPC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(14),
	devoe => ww_devoe,
	o => \saidaPC[14]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\saidaPC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(15),
	devoe => ww_devoe,
	o => \saidaPC[15]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\saidaPC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(16),
	devoe => ww_devoe,
	o => \saidaPC[16]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\saidaPC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(17),
	devoe => ww_devoe,
	o => \saidaPC[17]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\saidaPC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(18),
	devoe => ww_devoe,
	o => \saidaPC[18]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\saidaPC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(19),
	devoe => ww_devoe,
	o => \saidaPC[19]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\saidaPC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(20),
	devoe => ww_devoe,
	o => \saidaPC[20]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\saidaPC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(21),
	devoe => ww_devoe,
	o => \saidaPC[21]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\saidaPC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(22),
	devoe => ww_devoe,
	o => \saidaPC[22]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\saidaPC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(23),
	devoe => ww_devoe,
	o => \saidaPC[23]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\saidaPC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(24),
	devoe => ww_devoe,
	o => \saidaPC[24]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\saidaPC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(25),
	devoe => ww_devoe,
	o => \saidaPC[25]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\saidaPC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(26),
	devoe => ww_devoe,
	o => \saidaPC[26]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\saidaPC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(27),
	devoe => ww_devoe,
	o => \saidaPC[27]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\saidaPC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(28),
	devoe => ww_devoe,
	o => \saidaPC[28]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\saidaPC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(29),
	devoe => ww_devoe,
	o => \saidaPC[29]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\saidaPC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(30),
	devoe => ww_devoe,
	o => \saidaPC[30]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\saidaPC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(31),
	devoe => ww_devoe,
	o => \saidaPC[31]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\saidaTeste1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][0]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[0]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\saidaTeste1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][1]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\saidaTeste1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][2]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[2]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\saidaTeste1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][3]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\saidaTeste1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][4]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\saidaTeste1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][5]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\saidaTeste1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][6]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\saidaTeste1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][7]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[7]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\saidaTeste1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][8]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[8]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\saidaTeste1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][9]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[9]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\saidaTeste1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][10]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[10]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\saidaTeste1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][11]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\saidaTeste1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][12]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[12]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\saidaTeste1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][13]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[13]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\saidaTeste1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][14]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[14]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\saidaTeste1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][15]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[15]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\saidaTeste1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][16]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[16]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\saidaTeste1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][17]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[17]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\saidaTeste1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][18]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[18]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\saidaTeste1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][19]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[19]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\saidaTeste1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][20]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[20]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\saidaTeste1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][21]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[21]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\saidaTeste1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][22]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[22]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\saidaTeste1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][23]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[23]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\saidaTeste1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][24]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[24]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\saidaTeste1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][25]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[25]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\saidaTeste1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][26]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[26]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\saidaTeste1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][27]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[27]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\saidaTeste1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][28]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[28]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\saidaTeste1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][29]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[29]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\saidaTeste1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][30]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[30]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\saidaTeste1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[1][31]~q\,
	devoe => ww_devoe,
	o => \saidaTeste1[31]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\saidaTeste2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][0]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[0]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\saidaTeste2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][1]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[1]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\saidaTeste2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][2]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[2]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\saidaTeste2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][3]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\saidaTeste2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][4]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\saidaTeste2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][5]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\saidaTeste2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][6]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\saidaTeste2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][7]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[7]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\saidaTeste2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][8]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[8]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\saidaTeste2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][9]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[9]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\saidaTeste2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][10]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[10]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\saidaTeste2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][11]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[11]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\saidaTeste2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][12]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[12]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\saidaTeste2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][13]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\saidaTeste2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][14]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[14]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\saidaTeste2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][15]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[15]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\saidaTeste2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][16]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[16]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\saidaTeste2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][17]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[17]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\saidaTeste2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][18]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[18]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\saidaTeste2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][19]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[19]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\saidaTeste2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][20]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[20]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\saidaTeste2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][21]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[21]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\saidaTeste2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][22]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[22]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\saidaTeste2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][23]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[23]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\saidaTeste2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][24]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[24]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\saidaTeste2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][25]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[25]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\saidaTeste2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][26]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[26]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\saidaTeste2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][27]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[27]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\saidaTeste2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][28]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[28]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\saidaTeste2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][29]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[29]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\saidaTeste2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][30]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[30]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\saidaTeste2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[2][31]~q\,
	devoe => ww_devoe,
	o => \saidaTeste2[31]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\saidaTeste3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][0]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[0]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\saidaTeste3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][1]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\saidaTeste3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][2]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\saidaTeste3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][3]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[3]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\saidaTeste3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][4]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\saidaTeste3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][5]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[5]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\saidaTeste3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][6]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[6]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\saidaTeste3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][7]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[7]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\saidaTeste3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][8]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[8]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\saidaTeste3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][9]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[9]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\saidaTeste3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][10]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\saidaTeste3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][11]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[11]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\saidaTeste3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][12]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[12]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\saidaTeste3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][13]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[13]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\saidaTeste3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][14]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[14]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\saidaTeste3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][15]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[15]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\saidaTeste3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][16]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[16]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\saidaTeste3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][17]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[17]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\saidaTeste3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][18]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[18]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\saidaTeste3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][19]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[19]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\saidaTeste3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][20]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[20]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\saidaTeste3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][21]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[21]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\saidaTeste3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][22]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[22]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\saidaTeste3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][23]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[23]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\saidaTeste3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][24]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[24]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\saidaTeste3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][25]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[25]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\saidaTeste3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][26]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[26]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\saidaTeste3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][27]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[27]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\saidaTeste3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][28]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\saidaTeste3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][29]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[29]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\saidaTeste3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][30]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[30]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\saidaTeste3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[3][31]~q\,
	devoe => ww_devoe,
	o => \saidaTeste3[31]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\saidaTeste4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][0]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\saidaTeste4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][1]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\saidaTeste4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][2]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\saidaTeste4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][3]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\saidaTeste4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][4]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\saidaTeste4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][5]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[5]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\saidaTeste4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][6]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[6]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\saidaTeste4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][7]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[7]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\saidaTeste4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][8]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[8]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\saidaTeste4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][9]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[9]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\saidaTeste4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][10]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\saidaTeste4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][11]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[11]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\saidaTeste4[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][12]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[12]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\saidaTeste4[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][13]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[13]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\saidaTeste4[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][14]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[14]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\saidaTeste4[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][15]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[15]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\saidaTeste4[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][16]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[16]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\saidaTeste4[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][17]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[17]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\saidaTeste4[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][18]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[18]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\saidaTeste4[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][19]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[19]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\saidaTeste4[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][20]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[20]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\saidaTeste4[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][21]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[21]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\saidaTeste4[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][22]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[22]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\saidaTeste4[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][23]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[23]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\saidaTeste4[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][24]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[24]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\saidaTeste4[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][25]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[25]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\saidaTeste4[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][26]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[26]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\saidaTeste4[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][27]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[27]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\saidaTeste4[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][28]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[28]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\saidaTeste4[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][29]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[29]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\saidaTeste4[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][30]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[30]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\saidaTeste4[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[4][31]~q\,
	devoe => ww_devoe,
	o => \saidaTeste4[31]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\saidaTeste5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][0]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\saidaTeste5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][1]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[1]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\saidaTeste5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][2]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\saidaTeste5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][3]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\saidaTeste5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][4]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[4]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\saidaTeste5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][5]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\saidaTeste5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][6]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[6]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\saidaTeste5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][7]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[7]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\saidaTeste5[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][8]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[8]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\saidaTeste5[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][9]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[9]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\saidaTeste5[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][10]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[10]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\saidaTeste5[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][11]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[11]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\saidaTeste5[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][12]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[12]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\saidaTeste5[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][13]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\saidaTeste5[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][14]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\saidaTeste5[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][15]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[15]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\saidaTeste5[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][16]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[16]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\saidaTeste5[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][17]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[17]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\saidaTeste5[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][18]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[18]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\saidaTeste5[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][19]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[19]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\saidaTeste5[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][20]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[20]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\saidaTeste5[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][21]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[21]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\saidaTeste5[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][22]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[22]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\saidaTeste5[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][23]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[23]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\saidaTeste5[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][24]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[24]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\saidaTeste5[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][25]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\saidaTeste5[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][26]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[26]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\saidaTeste5[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][27]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[27]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\saidaTeste5[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][28]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[28]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\saidaTeste5[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][29]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[29]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\saidaTeste5[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][30]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\saidaTeste5[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[5][31]~q\,
	devoe => ww_devoe,
	o => \saidaTeste5[31]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\saidaTeste6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][0]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\saidaTeste6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][1]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\saidaTeste6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][2]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\saidaTeste6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][3]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\saidaTeste6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][4]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[4]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\saidaTeste6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][5]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\saidaTeste6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][6]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\saidaTeste6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][7]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[7]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\saidaTeste6[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][8]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[8]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\saidaTeste6[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][9]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\saidaTeste6[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][10]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[10]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\saidaTeste6[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][11]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[11]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\saidaTeste6[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][12]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[12]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\saidaTeste6[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][13]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[13]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\saidaTeste6[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][14]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\saidaTeste6[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][15]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\saidaTeste6[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][16]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[16]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\saidaTeste6[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][17]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[17]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\saidaTeste6[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][18]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[18]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\saidaTeste6[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][19]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[19]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\saidaTeste6[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][20]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[20]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\saidaTeste6[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][21]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[21]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\saidaTeste6[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][22]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[22]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\saidaTeste6[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][23]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[23]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\saidaTeste6[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][24]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[24]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\saidaTeste6[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][25]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[25]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\saidaTeste6[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][26]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[26]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\saidaTeste6[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][27]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[27]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\saidaTeste6[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][28]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[28]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\saidaTeste6[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][29]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[29]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\saidaTeste6[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][30]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[30]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\saidaTeste6[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[6][31]~q\,
	devoe => ww_devoe,
	o => \saidaTeste6[31]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\saidaTeste7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][0]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\saidaTeste7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][1]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\saidaTeste7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][2]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\saidaTeste7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][3]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[3]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\saidaTeste7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][4]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\saidaTeste7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][5]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\saidaTeste7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][6]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\saidaTeste7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][7]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\saidaTeste7[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][8]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[8]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\saidaTeste7[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][9]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[9]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\saidaTeste7[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][10]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[10]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\saidaTeste7[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][11]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[11]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\saidaTeste7[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][12]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\saidaTeste7[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][13]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[13]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\saidaTeste7[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][14]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\saidaTeste7[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][15]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[15]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\saidaTeste7[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][16]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[16]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\saidaTeste7[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][17]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[17]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\saidaTeste7[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][18]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[18]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\saidaTeste7[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][19]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[19]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\saidaTeste7[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][20]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[20]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\saidaTeste7[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][21]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[21]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\saidaTeste7[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][22]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[22]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\saidaTeste7[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][23]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[23]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\saidaTeste7[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][24]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[24]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\saidaTeste7[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][25]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[25]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\saidaTeste7[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][26]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[26]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\saidaTeste7[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][27]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[27]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\saidaTeste7[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][28]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[28]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\saidaTeste7[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][29]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[29]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\saidaTeste7[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][30]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[30]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\saidaTeste7[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BANCO_REG|registrador[7][31]~q\,
	devoe => ww_devoe,
	o => \saidaTeste7[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X69_Y46_N14
\FD|MEM_INST|content~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~7_combout\ = (\FD|PC|DOUT\(5) & ((\FD|PC|DOUT\(4)) # ((\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2))))) # (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) $ (((\FD|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~7_combout\);

-- Location: LCCOMB_X69_Y46_N24
\FD|MEM_INST|content~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~8_combout\ = (!\FD|PC|DOUT\(7) & (!\FD|MEM_INST|content~7_combout\ & \FD|MEM_INST|content~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|content~7_combout\,
	datad => \FD|MEM_INST|content~0_combout\,
	combout => \FD|MEM_INST|content~8_combout\);

-- Location: FF_X69_Y46_N25
\FD|MEM_INST|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(0));

-- Location: LCCOMB_X69_Y46_N28
\FD|MEM_INST|content~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~9_combout\ = (\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2)))) # (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(4) $ (\FD|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~9_combout\);

-- Location: LCCOMB_X69_Y46_N22
\FD|MEM_INST|content~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~10_combout\ = (\FD|MEM_INST|content~9_combout\ & (!\FD|PC|DOUT\(7) & \FD|MEM_INST|content~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|content~9_combout\,
	datab => \FD|PC|DOUT\(7),
	datad => \FD|MEM_INST|content~0_combout\,
	combout => \FD|MEM_INST|content~10_combout\);

-- Location: FF_X69_Y46_N23
\FD|MEM_INST|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(1));

-- Location: LCCOMB_X68_Y46_N26
\FD|SOMA_PC_IMM|SOMAOUT[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT[3]~4_combout\ = \FD|PC|DOUT\(3) $ (\FD|MEM_INST|q\(1) $ (((\FD|PC|DOUT\(2)) # (\FD|MEM_INST|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|MEM_INST|q\(1),
	combout => \FD|SOMA_PC_IMM|SOMAOUT[3]~4_combout\);

-- Location: LCCOMB_X68_Y46_N20
\FD|SOMA_PC|SOMAOUT[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(3) = \FD|PC|DOUT\(3) $ (\FD|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|SOMA_PC|SOMAOUT\(3));

-- Location: LCCOMB_X69_Y46_N10
\FD|MEM_INST|content~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~5_combout\ = (\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(2)))) # (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~5_combout\);

-- Location: LCCOMB_X69_Y46_N8
\FD|MEM_INST|content~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~6_combout\ = (!\FD|PC|DOUT\(7) & (\FD|MEM_INST|content~0_combout\ & \FD|MEM_INST|content~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~5_combout\,
	combout => \FD|MEM_INST|content~6_combout\);

-- Location: FF_X65_Y46_N27
\FD|MEM_INST|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(28));

-- Location: LCCOMB_X65_Y46_N10
\UCFD|HAB_ESC_REG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|HAB_ESC_REG~0_combout\ = (\FD|MEM_INST|q\(27) & ((\FD|MEM_INST|q\(26)))) # (!\FD|MEM_INST|q\(27) & (!\FD|MEM_INST|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(28),
	datad => \FD|MEM_INST|q\(26),
	combout => \UCFD|HAB_ESC_REG~0_combout\);

-- Location: FF_X65_Y46_N11
\FD|BANCO_REG|registrador_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UCFD|HAB_ESC_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(0));

-- Location: LCCOMB_X66_Y46_N18
\FD|MEM_INST|content~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~15_combout\ = (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) $ (((\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~15_combout\);

-- Location: LCCOMB_X66_Y46_N20
\FD|MEM_INST|content~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~16_combout\ = (\FD|MEM_INST|content~15_combout\ & (!\FD|PC|DOUT\(7) & \FD|MEM_INST|content~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|content~15_combout\,
	datac => \FD|PC|DOUT\(7),
	datad => \FD|MEM_INST|content~0_combout\,
	combout => \FD|MEM_INST|content~16_combout\);

-- Location: FF_X65_Y46_N21
\FD|MEM_INST|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(5));

-- Location: LCCOMB_X65_Y46_N18
\FD|MUX_RT_RD|q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_RD|q[2]~2_combout\ = (\FD|MEM_INST|q\(28)) # ((!\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(28),
	datad => \FD|MEM_INST|q\(5),
	combout => \FD|MUX_RT_RD|q[2]~2_combout\);

-- Location: FF_X65_Y46_N19
\FD|BANCO_REG|registrador_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_RT_RD|q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(5));

-- Location: FF_X65_Y46_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(6));

-- Location: LCCOMB_X66_Y46_N14
\FD|MEM_INST|content~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~17_combout\ = (!\FD|PC|DOUT\(7) & \FD|MEM_INST|content~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datad => \FD|MEM_INST|content~0_combout\,
	combout => \FD|MEM_INST|content~17_combout\);

-- Location: LCCOMB_X66_Y46_N4
\FD|MEM_INST|content~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~18_combout\ = (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) & (\FD|MEM_INST|content~17_combout\ & !\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|MEM_INST|content~17_combout\,
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~18_combout\);

-- Location: FF_X66_Y46_N5
\FD|MEM_INST|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(11));

-- Location: LCCOMB_X65_Y48_N4
\FD|MEM_INST|content~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~21_combout\ = (!\FD|PC|DOUT\(5) & ((\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(2) & \FD|PC|DOUT\(4))) # (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(2) & !\FD|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|MEM_INST|content~21_combout\);

-- Location: LCCOMB_X66_Y46_N26
\FD|MEM_INST|content~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~22_combout\ = (!\FD|PC|DOUT\(7) & (\FD|MEM_INST|content~21_combout\ & \FD|MEM_INST|content~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|content~21_combout\,
	datad => \FD|MEM_INST|content~0_combout\,
	combout => \FD|MEM_INST|content~22_combout\);

-- Location: FF_X66_Y46_N27
\FD|MEM_INST|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(16));

-- Location: LCCOMB_X66_Y46_N2
\FD|MUX_RT_RD|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_RD|q[0]~0_combout\ = (\FD|MEM_INST|q\(27) & (((\FD|MEM_INST|q\(16))))) # (!\FD|MEM_INST|q\(27) & ((\FD|MEM_INST|q\(28) & ((\FD|MEM_INST|q\(16)))) # (!\FD|MEM_INST|q\(28) & (\FD|MEM_INST|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(11),
	datac => \FD|MEM_INST|q\(28),
	datad => \FD|MEM_INST|q\(16),
	combout => \FD|MUX_RT_RD|q[0]~0_combout\);

-- Location: FF_X66_Y46_N3
\FD|BANCO_REG|registrador_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_RT_RD|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(1));

-- Location: LCCOMB_X69_Y46_N20
\FD|MEM_INST|content~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~19_combout\ = (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(3) $ (\FD|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~19_combout\);

-- Location: LCCOMB_X69_Y46_N30
\FD|MEM_INST|content~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~20_combout\ = (!\FD|PC|DOUT\(7) & (\FD|MEM_INST|content~0_combout\ & \FD|MEM_INST|content~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~19_combout\,
	combout => \FD|MEM_INST|content~20_combout\);

-- Location: FF_X69_Y46_N31
\FD|MEM_INST|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(12));

-- Location: LCCOMB_X69_Y46_N6
\FD|MEM_INST|content~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~23_combout\ = (\FD|PC|DOUT\(5)) # (\FD|PC|DOUT\(3) $ (((!\FD|PC|DOUT\(4) & \FD|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~23_combout\);

-- Location: LCCOMB_X69_Y46_N12
\FD|MEM_INST|content~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~24_combout\ = (!\FD|PC|DOUT\(7) & (\FD|MEM_INST|content~0_combout\ & !\FD|MEM_INST|content~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~23_combout\,
	combout => \FD|MEM_INST|content~24_combout\);

-- Location: FF_X65_Y46_N3
\FD|MEM_INST|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(17));

-- Location: LCCOMB_X65_Y46_N0
\FD|MUX_RT_RD|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_RD|q[1]~1_combout\ = (\FD|MEM_INST|q\(28) & (((\FD|MEM_INST|q\(17))))) # (!\FD|MEM_INST|q\(28) & ((\FD|MEM_INST|q\(27) & ((\FD|MEM_INST|q\(17)))) # (!\FD|MEM_INST|q\(27) & (\FD|MEM_INST|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(28),
	datab => \FD|MEM_INST|q\(12),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|MEM_INST|q\(17),
	combout => \FD|MUX_RT_RD|q[1]~1_combout\);

-- Location: FF_X65_Y46_N5
\FD|BANCO_REG|registrador_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_RT_RD|q[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(3));

-- Location: FF_X65_Y46_N29
\FD|BANCO_REG|registrador_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(4));

-- Location: FF_X66_Y46_N29
\FD|BANCO_REG|registrador_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(2));

-- Location: LCCOMB_X65_Y46_N28
\FD|BANCO_REG|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Mux63~0_combout\ = (\FD|BANCO_REG|registrador_rtl_1_bypass\(1) & (\FD|BANCO_REG|registrador_rtl_1_bypass\(2) & (\FD|BANCO_REG|registrador_rtl_1_bypass\(3) $ (!\FD|BANCO_REG|registrador_rtl_1_bypass\(4))))) # 
-- (!\FD|BANCO_REG|registrador_rtl_1_bypass\(1) & (!\FD|BANCO_REG|registrador_rtl_1_bypass\(2) & (\FD|BANCO_REG|registrador_rtl_1_bypass\(3) $ (!\FD|BANCO_REG|registrador_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(1),
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(3),
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(4),
	datad => \FD|BANCO_REG|registrador_rtl_1_bypass\(2),
	combout => \FD|BANCO_REG|Mux63~0_combout\);

-- Location: LCCOMB_X65_Y46_N16
\FD|BANCO_REG|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Mux63~1_combout\ = (\FD|BANCO_REG|registrador_rtl_1_bypass\(0) & (\FD|BANCO_REG|Mux63~0_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(5) $ (!\FD|BANCO_REG|registrador_rtl_1_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(0),
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(5),
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(6),
	datad => \FD|BANCO_REG|Mux63~0_combout\,
	combout => \FD|BANCO_REG|Mux63~1_combout\);

-- Location: LCCOMB_X65_Y46_N4
\UCFD|MUX3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|MUX3~combout\ = (\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|MEM_INST|q\(27),
	combout => \UCFD|MUX3~combout\);

-- Location: LCCOMB_X65_Y46_N2
\FD|MUX_RT_IMM|q[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[0]~15_combout\ = (!\UCFD|MUX3~combout\ & ((\FD|MEM_INST|q\(28)) # ((\FD|MEM_INST|q\(17)) # (\FD|MEM_INST|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(28),
	datab => \UCFD|MUX3~combout\,
	datac => \FD|MEM_INST|q\(17),
	datad => \FD|MEM_INST|q\(16),
	combout => \FD|MUX_RT_IMM|q[0]~15_combout\);

-- Location: FF_X65_Y45_N9
\FD|BANCO_REG|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(11));

-- Location: LCCOMB_X65_Y48_N30
\FD|MEM_INST|content~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~27_combout\ = (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(3) & (\FD|MEM_INST|content~17_combout\ & \FD|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|MEM_INST|content~17_combout\,
	datad => \FD|PC|DOUT\(4),
	combout => \FD|MEM_INST|content~27_combout\);

-- Location: LCCOMB_X68_Y47_N4
\FD|MEM_INST|q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|q[22]~feeder_combout\ = \FD|MEM_INST|content~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MEM_INST|content~27_combout\,
	combout => \FD|MEM_INST|q[22]~feeder_combout\);

-- Location: FF_X68_Y47_N5
\FD|MEM_INST|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|q[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(22));

-- Location: LCCOMB_X69_Y46_N26
\FD|MEM_INST|content~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~25_combout\ = (!\FD|PC|DOUT\(5) & ((\FD|PC|DOUT\(3) & ((\FD|PC|DOUT\(2)))) # (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~25_combout\);

-- Location: LCCOMB_X66_Y46_N28
\FD|MEM_INST|content~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~26_combout\ = (!\FD|PC|DOUT\(7) & (\FD|MEM_INST|content~25_combout\ & \FD|MEM_INST|content~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|MEM_INST|content~25_combout\,
	datad => \FD|MEM_INST|content~0_combout\,
	combout => \FD|MEM_INST|content~26_combout\);

-- Location: FF_X65_Y47_N9
\FD|MEM_INST|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(21));

-- Location: LCCOMB_X66_Y46_N24
\FD|MEM_INST|content~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~28_combout\ = (\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(2) & \FD|MEM_INST|content~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(2),
	datad => \FD|MEM_INST|content~1_combout\,
	combout => \FD|MEM_INST|content~28_combout\);

-- Location: LCCOMB_X66_Y47_N28
\FD|MEM_INST|q[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|q[23]~feeder_combout\ = \FD|MEM_INST|content~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MEM_INST|content~28_combout\,
	combout => \FD|MEM_INST|q[23]~feeder_combout\);

-- Location: FF_X66_Y47_N29
\FD|MEM_INST|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|q[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(23));

-- Location: LCCOMB_X65_Y47_N8
\FD|BANCO_REG|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Equal0~0_combout\ = (!\FD|MEM_INST|q\(22) & (!\FD|MEM_INST|q\(21) & !\FD|MEM_INST|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(22),
	datac => \FD|MEM_INST|q\(21),
	datad => \FD|MEM_INST|q\(23),
	combout => \FD|BANCO_REG|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y47_N22
\FD|BANCO_REG|registrador_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_0_bypass[0]~feeder_combout\ = \UCFD|HAB_ESC_REG~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X65_Y47_N23
\FD|BANCO_REG|registrador_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(0));

-- Location: LCCOMB_X65_Y47_N28
\FD|BANCO_REG|registrador_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_0_bypass[5]~feeder_combout\ = \FD|MUX_RT_RD|q[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_RT_RD|q[2]~2_combout\,
	combout => \FD|BANCO_REG|registrador_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X65_Y47_N29
\FD|BANCO_REG|registrador_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(5));

-- Location: FF_X65_Y47_N11
\FD|BANCO_REG|registrador_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(6));

-- Location: LCCOMB_X65_Y47_N26
\FD|BANCO_REG|registrador_rtl_0_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_0_bypass[4]~feeder_combout\ = \FD|MEM_INST|content~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MEM_INST|content~27_combout\,
	combout => \FD|BANCO_REG|registrador_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X65_Y47_N27
\FD|BANCO_REG|registrador_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(4));

-- Location: LCCOMB_X65_Y47_N0
\FD|BANCO_REG|registrador_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_0_bypass[3]~feeder_combout\ = \FD|MUX_RT_RD|q[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_RT_RD|q[1]~1_combout\,
	combout => \FD|BANCO_REG|registrador_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X65_Y47_N1
\FD|BANCO_REG|registrador_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(3));

-- Location: FF_X65_Y47_N21
\FD|BANCO_REG|registrador_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(2));

-- Location: LCCOMB_X63_Y47_N16
\FD|BANCO_REG|registrador_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_0_bypass[1]~feeder_combout\ = \FD|MUX_RT_RD|q[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_RT_RD|q[0]~0_combout\,
	combout => \FD|BANCO_REG|registrador_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X63_Y47_N17
\FD|BANCO_REG|registrador_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(1));

-- Location: LCCOMB_X65_Y47_N20
\FD|BANCO_REG|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Mux31~0_combout\ = (\FD|BANCO_REG|registrador_rtl_0_bypass\(4) & (\FD|BANCO_REG|registrador_rtl_0_bypass\(3) & (\FD|BANCO_REG|registrador_rtl_0_bypass\(2) $ (!\FD|BANCO_REG|registrador_rtl_0_bypass\(1))))) # 
-- (!\FD|BANCO_REG|registrador_rtl_0_bypass\(4) & (!\FD|BANCO_REG|registrador_rtl_0_bypass\(3) & (\FD|BANCO_REG|registrador_rtl_0_bypass\(2) $ (!\FD|BANCO_REG|registrador_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_0_bypass\(4),
	datab => \FD|BANCO_REG|registrador_rtl_0_bypass\(3),
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(2),
	datad => \FD|BANCO_REG|registrador_rtl_0_bypass\(1),
	combout => \FD|BANCO_REG|Mux31~0_combout\);

-- Location: LCCOMB_X65_Y47_N10
\FD|BANCO_REG|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Mux31~1_combout\ = (\FD|BANCO_REG|registrador_rtl_0_bypass\(0) & (\FD|BANCO_REG|Mux31~0_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(5) $ (!\FD|BANCO_REG|registrador_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_0_bypass\(0),
	datab => \FD|BANCO_REG|registrador_rtl_0_bypass\(5),
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(6),
	datad => \FD|BANCO_REG|Mux31~0_combout\,
	combout => \FD|BANCO_REG|Mux31~1_combout\);

-- Location: FF_X68_Y45_N17
\FD|BANCO_REG|registrador_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(12));

-- Location: LCCOMB_X62_Y45_N24
\FD|UC_ULA|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC_ULA|q[1]~1_combout\ = (\FD|MEM_INST|q\(28)) # ((\FD|MEM_INST|q\(27)) # ((\FD|MEM_INST|q\(1)) # (!\FD|MEM_INST|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(28),
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(1),
	datad => \FD|MEM_INST|q\(2),
	combout => \FD|UC_ULA|q[1]~1_combout\);

-- Location: LCCOMB_X66_Y46_N12
\FD|MEM_INST|content~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~13_combout\ = (\FD|PC|DOUT\(5) & (!\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(3) $ (\FD|PC|DOUT\(2))))) # (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~13_combout\);

-- Location: LCCOMB_X66_Y46_N22
\FD|MEM_INST|content~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~14_combout\ = (\FD|MEM_INST|content~0_combout\ & (!\FD|PC|DOUT\(7) & \FD|MEM_INST|content~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|content~0_combout\,
	datac => \FD|PC|DOUT\(7),
	datad => \FD|MEM_INST|content~13_combout\,
	combout => \FD|MEM_INST|content~14_combout\);

-- Location: FF_X66_Y46_N23
\FD|MEM_INST|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(3));

-- Location: LCCOMB_X66_Y46_N8
\FD|UC_ULA|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC_ULA|q[0]~0_combout\ = (!\FD|MEM_INST|q\(28) & (!\FD|MEM_INST|q\(27) & ((\FD|MEM_INST|q\(3)) # (\FD|MEM_INST|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(3),
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|MEM_INST|q\(28),
	datad => \FD|MEM_INST|q\(27),
	combout => \FD|UC_ULA|q[0]~0_combout\);

-- Location: FF_X68_Y45_N3
\FD|BANCO_REG|registrador_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(13));

-- Location: FF_X66_Y47_N11
\FD|BANCO_REG|registrador_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(14));

-- Location: FF_X66_Y47_N17
\FD|BANCO_REG|registrador_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(15));

-- Location: FF_X68_Y45_N15
\FD|BANCO_REG|registrador_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(16));

-- Location: FF_X68_Y45_N7
\FD|BANCO_REG|registrador_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(17));

-- Location: FF_X69_Y45_N13
\FD|BANCO_REG|registrador_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(18));

-- Location: FF_X65_Y44_N7
\FD|BANCO_REG|registrador_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(19));

-- Location: FF_X65_Y44_N13
\FD|BANCO_REG|registrador_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(21));

-- Location: FF_X66_Y47_N23
\FD|BANCO_REG|registrador_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(22));

-- Location: FF_X63_Y47_N21
\FD|BANCO_REG|registrador_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(23));

-- Location: LCCOMB_X65_Y46_N26
\FD|UC_ULA|q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC_ULA|q[2]~2_combout\ = (\FD|MEM_INST|q\(28)) # ((!\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(28),
	datad => \FD|MEM_INST|q\(1),
	combout => \FD|UC_ULA|q[2]~2_combout\);

-- Location: FF_X63_Y47_N7
\FD|BANCO_REG|registrador_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(27));

-- Location: FF_X63_Y47_N29
\FD|BANCO_REG|registrador_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(28));

-- Location: FF_X63_Y47_N15
\FD|BANCO_REG|registrador_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(29));

-- Location: FF_X63_Y45_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(33));

-- Location: FF_X65_Y47_N31
\FD|BANCO_REG|registrador_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(35));

-- Location: FF_X65_Y47_N5
\FD|BANCO_REG|registrador_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(36));

-- Location: FF_X65_Y47_N15
\FD|BANCO_REG|registrador_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(37));

-- Location: FF_X65_Y47_N25
\FD|BANCO_REG|registrador_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(38));

-- Location: FF_X63_Y45_N13
\FD|BANCO_REG|registrador_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(39));

-- Location: FF_X65_Y47_N13
\FD|BANCO_REG|registrador_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(40));

-- Location: FF_X65_Y46_N13
\FD|BANCO_REG|registrador_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(41));

-- Location: M9K_X64_Y45_N0
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fluxo_de_dados:FD|banco_reg:BANCO_REG|altsyncram:registrador_rtl_1|altsyncram_esg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UCFD|HAB_ESC_REG~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X65_Y46_N7
\FD|BANCO_REG|registrador_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(42));

-- Location: LCCOMB_X65_Y46_N6
\FD|MUX_RT_IMM|q[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[1]~17_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(42)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(42),
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|MUX_RT_IMM|q[1]~17_combout\);

-- Location: LCCOMB_X65_Y46_N8
\FD|MUX_RT_IMM|q[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[1]~48_combout\ = (\FD|MUX_RT_IMM|q[1]~17_combout\) # ((\FD|MEM_INST|q\(1) & (\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(1),
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|MUX_RT_IMM|q[1]~17_combout\,
	combout => \FD|MUX_RT_IMM|q[1]~48_combout\);

-- Location: LCCOMB_X69_Y46_N16
\FD|MUX_RT_IMM|q[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[0]~14_combout\ = (\FD|MEM_INST|q\(26) & (\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|MEM_INST|q\(0),
	combout => \FD|MUX_RT_IMM|q[0]~14_combout\);

-- Location: FF_X65_Y47_N7
\FD|BANCO_REG|registrador_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(11));

-- Location: M9K_X64_Y47_N0
\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fluxo_de_dados:FD|banco_reg:BANCO_REG|altsyncram:registrador_rtl_0|altsyncram_esg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UCFD|HAB_ESC_REG~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y47_N6
\FD|BANCO_REG|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[0]~0_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(11))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(11),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BANCO_REG|saidaA[0]~0_combout\);

-- Location: LCCOMB_X65_Y45_N26
\FD|ULA|SOMA|CarryOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[0]~0_combout\ = (\FD|MUX_RT_IMM|q[0]~14_combout\ & (((\FD|BANCO_REG|saidaA[0]~0_combout\)))) # (!\FD|MUX_RT_IMM|q[0]~14_combout\ & ((\FD|MUX_RT_IMM|q[0]~16_combout\ & ((\FD|BANCO_REG|saidaA[0]~0_combout\))) # 
-- (!\FD|MUX_RT_IMM|q[0]~16_combout\ & (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~14_combout\,
	datac => \FD|MUX_RT_IMM|q[0]~16_combout\,
	datad => \FD|BANCO_REG|saidaA[0]~0_combout\,
	combout => \FD|ULA|SOMA|CarryOut[0]~0_combout\);

-- Location: LCCOMB_X62_Y45_N26
\FD|ULA|MUX|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux30~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[1]~48_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[1]~48_combout\,
	datad => \FD|ULA|SOMA|CarryOut[0]~0_combout\,
	combout => \FD|ULA|MUX|Mux30~0_combout\);

-- Location: FF_X65_Y47_N17
\FD|BANCO_REG|registrador_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(42));

-- Location: LCCOMB_X65_Y47_N16
\FD|BANCO_REG|saidaA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[1]~1_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(42))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(42),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a31\,
	combout => \FD|BANCO_REG|saidaA[1]~1_combout\);

-- Location: LCCOMB_X62_Y45_N28
\FD|ULA|MUX|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux30~1_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|BANCO_REG|saidaA[1]~1_combout\))))) # (!\FD|ULA|MUX|Mux30~0_combout\ & (\FD|BANCO_REG|saidaA[1]~1_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux30~0_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[1]~1_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux30~1_combout\);

-- Location: LCCOMB_X61_Y45_N16
\FD|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~0_combout\ = (!\FD|ULA|MUX|Mux22~1_combout\ & (!\FD|ULA|MUX|Mux24~1_combout\ & (!\FD|ULA|MUX|Mux23~1_combout\ & !\FD|ULA|MUX|Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux22~1_combout\,
	datab => \FD|ULA|MUX|Mux24~1_combout\,
	datac => \FD|ULA|MUX|Mux23~1_combout\,
	datad => \FD|ULA|MUX|Mux21~1_combout\,
	combout => \FD|comb~0_combout\);

-- Location: LCCOMB_X61_Y45_N30
\FD|RAM|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|RAM|q[2]~0_combout\ = (!\FD|ULA|MUX|Mux25~1_combout\ & (\UCFD|MUX3~combout\ & (!\FD|ULA|MUX|Mux26~1_combout\ & \FD|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux25~1_combout\,
	datab => \UCFD|MUX3~combout\,
	datac => \FD|ULA|MUX|Mux26~1_combout\,
	datad => \FD|comb~0_combout\,
	combout => \FD|RAM|q[2]~0_combout\);

-- Location: LCCOMB_X61_Y45_N2
\FD|RAM|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|RAM|q[1]~2_combout\ = (\FD|RAM|q[2]~0_combout\ & (\FD|ULA|MUX|Mux28~1_combout\ & ((!\FD|ULA|MUX|Mux27~1_combout\) # (!\FD|ULA|MUX|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|q[2]~0_combout\,
	datab => \FD|ULA|MUX|Mux29~1_combout\,
	datac => \FD|ULA|MUX|Mux28~1_combout\,
	datad => \FD|ULA|MUX|Mux27~1_combout\,
	combout => \FD|RAM|q[1]~2_combout\);

-- Location: LCCOMB_X61_Y45_N24
\FD|MUX_ULA_MEM|q[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[1]~64_combout\ = (\FD|RAM|q[1]~2_combout\) # ((\FD|ULA|MUX|Mux30~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|ULA|MUX|Mux30~1_combout\,
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|RAM|q[1]~2_combout\,
	combout => \FD|MUX_ULA_MEM|q[1]~64_combout\);

-- Location: LCCOMB_X65_Y46_N12
\FD|MUX_RT_IMM|q[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[2]~18_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(41))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(41),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a30\,
	combout => \FD|MUX_RT_IMM|q[2]~18_combout\);

-- Location: LCCOMB_X65_Y46_N30
\FD|MUX_RT_IMM|q[2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[2]~49_combout\ = (\FD|MUX_RT_IMM|q[2]~18_combout\) # ((\FD|MEM_INST|q\(2) & (\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(2),
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|MUX_RT_IMM|q[2]~18_combout\,
	combout => \FD|MUX_RT_IMM|q[2]~49_combout\);

-- Location: LCCOMB_X65_Y45_N28
\FD|ULA|SOMA|CarryOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[1]~1_combout\ = (\FD|BANCO_REG|saidaA[1]~1_combout\ & ((\FD|ULA|SOMA|CarryOut[0]~0_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[1]~48_combout\)))) # (!\FD|BANCO_REG|saidaA[1]~1_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[0]~0_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[1]~1_combout\,
	datab => \FD|UC_ULA|q[2]~2_combout\,
	datac => \FD|ULA|SOMA|CarryOut[0]~0_combout\,
	datad => \FD|MUX_RT_IMM|q[1]~48_combout\,
	combout => \FD|ULA|SOMA|CarryOut[1]~1_combout\);

-- Location: LCCOMB_X62_Y45_N10
\FD|ULA|MUX|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux29~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[2]~49_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[2]~49_combout\,
	datad => \FD|ULA|SOMA|CarryOut[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux29~0_combout\);

-- Location: FF_X65_Y47_N3
\FD|BANCO_REG|registrador_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(41));

-- Location: LCCOMB_X65_Y47_N2
\FD|BANCO_REG|saidaA[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[2]~2_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(41))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(41),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a30\,
	combout => \FD|BANCO_REG|saidaA[2]~2_combout\);

-- Location: LCCOMB_X62_Y45_N12
\FD|ULA|MUX|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux29~1_combout\ = (\FD|ULA|MUX|Mux29~0_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|BANCO_REG|saidaA[2]~2_combout\) # (\FD|UC_ULA|q[0]~0_combout\))))) # (!\FD|ULA|MUX|Mux29~0_combout\ & (\FD|BANCO_REG|saidaA[2]~2_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux29~0_combout\,
	datab => \FD|BANCO_REG|saidaA[2]~2_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux29~1_combout\);

-- Location: LCCOMB_X61_Y45_N12
\FD|RAM|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|RAM|q[2]~3_combout\ = (\FD|RAM|q[2]~0_combout\ & (\FD|ULA|MUX|Mux27~1_combout\ & ((!\FD|ULA|MUX|Mux28~1_combout\) # (!\FD|ULA|MUX|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|q[2]~0_combout\,
	datab => \FD|ULA|MUX|Mux29~1_combout\,
	datac => \FD|ULA|MUX|Mux28~1_combout\,
	datad => \FD|ULA|MUX|Mux27~1_combout\,
	combout => \FD|RAM|q[2]~3_combout\);

-- Location: LCCOMB_X61_Y45_N14
\FD|MUX_ULA_MEM|q[2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[2]~65_combout\ = (\FD|RAM|q[2]~3_combout\) # ((\FD|ULA|MUX|Mux29~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux29~1_combout\,
	datad => \FD|RAM|q[2]~3_combout\,
	combout => \FD|MUX_ULA_MEM|q[2]~65_combout\);

-- Location: LCCOMB_X65_Y47_N12
\FD|BANCO_REG|saidaA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[3]~3_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(40))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(40),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a29\,
	combout => \FD|BANCO_REG|saidaA[3]~3_combout\);

-- Location: FF_X65_Y46_N15
\FD|BANCO_REG|registrador_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(40));

-- Location: LCCOMB_X65_Y46_N14
\FD|MUX_RT_IMM|q[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[3]~19_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(40))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(40),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\,
	combout => \FD|MUX_RT_IMM|q[3]~19_combout\);

-- Location: LCCOMB_X66_Y46_N30
\FD|MUX_RT_IMM|q[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[3]~50_combout\ = (\FD|MUX_RT_IMM|q[3]~19_combout\) # ((\FD|MEM_INST|q\(27) & (\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(3),
	datad => \FD|MUX_RT_IMM|q[3]~19_combout\,
	combout => \FD|MUX_RT_IMM|q[3]~50_combout\);

-- Location: LCCOMB_X65_Y45_N2
\FD|ULA|SOMA|CarryOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[2]~2_combout\ = (\FD|BANCO_REG|saidaA[2]~2_combout\ & ((\FD|ULA|SOMA|CarryOut[1]~1_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[2]~49_combout\)))) # (!\FD|BANCO_REG|saidaA[2]~2_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[1]~1_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[2]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[2]~2_combout\,
	datab => \FD|UC_ULA|q[2]~2_combout\,
	datac => \FD|MUX_RT_IMM|q[2]~49_combout\,
	datad => \FD|ULA|SOMA|CarryOut[1]~1_combout\,
	combout => \FD|ULA|SOMA|CarryOut[2]~2_combout\);

-- Location: LCCOMB_X70_Y45_N24
\FD|ULA|MUX|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux28~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[3]~50_combout\ $ (((\FD|ULA|SOMA|CarryOut[2]~2_combout\ & \FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[3]~50_combout\,
	datac => \FD|ULA|SOMA|CarryOut[2]~2_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux28~0_combout\);

-- Location: LCCOMB_X69_Y45_N4
\FD|ULA|MUX|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux28~1_combout\ = (\FD|BANCO_REG|saidaA[3]~3_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux28~0_combout\))))) # (!\FD|BANCO_REG|saidaA[3]~3_combout\ & (\FD|ULA|MUX|Mux28~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[0]~0_combout\,
	datab => \FD|BANCO_REG|saidaA[3]~3_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|MUX|Mux28~0_combout\,
	combout => \FD|ULA|MUX|Mux28~1_combout\);

-- Location: LCCOMB_X69_Y45_N20
\FD|MUX_ULA_MEM|q[3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[3]~66_combout\ = (\FD|ULA|MUX|Mux28~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|ULA|MUX|Mux28~1_combout\,
	datac => \FD|MEM_INST|q\(26),
	combout => \FD|MUX_ULA_MEM|q[3]~66_combout\);

-- Location: LCCOMB_X63_Y45_N12
\FD|MUX_RT_IMM|q[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[4]~20_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(39))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(39),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\,
	combout => \FD|MUX_RT_IMM|q[4]~20_combout\);

-- Location: LCCOMB_X65_Y45_N16
\FD|ULA|SOMA|CarryOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[3]~3_combout\ = (\FD|BANCO_REG|saidaA[3]~3_combout\ & ((\FD|ULA|SOMA|CarryOut[2]~2_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[3]~50_combout\)))) # (!\FD|BANCO_REG|saidaA[3]~3_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[2]~2_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[3]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[3]~50_combout\,
	datac => \FD|BANCO_REG|saidaA[3]~3_combout\,
	datad => \FD|ULA|SOMA|CarryOut[2]~2_combout\,
	combout => \FD|ULA|SOMA|CarryOut[3]~3_combout\);

-- Location: LCCOMB_X68_Y45_N12
\FD|ULA|MUX|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux27~0_combout\ = \FD|MUX_RT_IMM|q[4]~20_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[4]~20_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[3]~3_combout\,
	combout => \FD|ULA|MUX|Mux27~0_combout\);

-- Location: FF_X65_Y47_N19
\FD|BANCO_REG|registrador_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(39));

-- Location: LCCOMB_X65_Y47_N18
\FD|BANCO_REG|saidaA[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[4]~4_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(39)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a28\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(39),
	datad => \FD|BANCO_REG|Equal0~0_combout\,
	combout => \FD|BANCO_REG|saidaA[4]~4_combout\);

-- Location: LCCOMB_X69_Y45_N18
\FD|ULA|MUX|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux27~1_combout\ = (\FD|ULA|MUX|Mux27~0_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|BANCO_REG|saidaA[4]~4_combout\))))) # (!\FD|ULA|MUX|Mux27~0_combout\ & (\FD|BANCO_REG|saidaA[4]~4_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux27~0_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|BANCO_REG|saidaA[4]~4_combout\,
	combout => \FD|ULA|MUX|Mux27~1_combout\);

-- Location: LCCOMB_X69_Y45_N22
\FD|MUX_ULA_MEM|q[4]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[4]~67_combout\ = (\FD|ULA|MUX|Mux27~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux27~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[4]~67_combout\);

-- Location: LCCOMB_X65_Y47_N24
\FD|BANCO_REG|saidaA[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[5]~5_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(38))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a27\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(38),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a27\,
	combout => \FD|BANCO_REG|saidaA[5]~5_combout\);

-- Location: LCCOMB_X65_Y45_N18
\FD|ULA|SOMA|CarryOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[4]~4_combout\ = (\FD|BANCO_REG|saidaA[4]~4_combout\ & ((\FD|ULA|SOMA|CarryOut[3]~3_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[4]~20_combout\)))) # (!\FD|BANCO_REG|saidaA[4]~4_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[3]~3_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|BANCO_REG|saidaA[4]~4_combout\,
	datac => \FD|MUX_RT_IMM|q[4]~20_combout\,
	datad => \FD|ULA|SOMA|CarryOut[3]~3_combout\,
	combout => \FD|ULA|SOMA|CarryOut[4]~4_combout\);

-- Location: FF_X65_Y46_N25
\FD|BANCO_REG|registrador_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(38));

-- Location: LCCOMB_X65_Y46_N24
\FD|MUX_RT_IMM|q[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[5]~21_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(38))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(38),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\,
	combout => \FD|MUX_RT_IMM|q[5]~21_combout\);

-- Location: LCCOMB_X65_Y46_N20
\FD|MUX_RT_IMM|q[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[5]~51_combout\ = (\FD|MUX_RT_IMM|q[5]~21_combout\) # ((\FD|MEM_INST|q\(26) & (\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(5),
	datad => \FD|MUX_RT_IMM|q[5]~21_combout\,
	combout => \FD|MUX_RT_IMM|q[5]~51_combout\);

-- Location: LCCOMB_X70_Y45_N26
\FD|ULA|MUX|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux26~0_combout\ = \FD|MUX_RT_IMM|q[5]~51_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|ULA|SOMA|CarryOut[4]~4_combout\ & \FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|SOMA|CarryOut[4]~4_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[5]~51_combout\,
	datad => \FD|UC_ULA|q[2]~2_combout\,
	combout => \FD|ULA|MUX|Mux26~0_combout\);

-- Location: LCCOMB_X70_Y45_N20
\FD|ULA|MUX|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux26~1_combout\ = (\FD|BANCO_REG|saidaA[5]~5_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux26~0_combout\))))) # (!\FD|BANCO_REG|saidaA[5]~5_combout\ & (\FD|ULA|MUX|Mux26~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[5]~5_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|ULA|MUX|Mux26~0_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux26~1_combout\);

-- Location: LCCOMB_X61_Y45_N8
\FD|MUX_ULA_MEM|q[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[5]~68_combout\ = (\FD|ULA|MUX|Mux26~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|ULA|MUX|Mux26~1_combout\,
	datad => \FD|MEM_INST|q\(26),
	combout => \FD|MUX_ULA_MEM|q[5]~68_combout\);

-- Location: LCCOMB_X65_Y47_N14
\FD|BANCO_REG|saidaA[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[6]~6_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(37))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a26\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(37),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|BANCO_REG|saidaA[6]~6_combout\);

-- Location: FF_X65_Y46_N23
\FD|BANCO_REG|registrador_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(37));

-- Location: LCCOMB_X65_Y46_N22
\FD|MUX_RT_IMM|q[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[6]~22_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(37)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(37),
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|MUX_RT_IMM|q[6]~22_combout\);

-- Location: LCCOMB_X65_Y45_N20
\FD|ULA|SOMA|CarryOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[5]~5_combout\ = (\FD|BANCO_REG|saidaA[5]~5_combout\ & ((\FD|ULA|SOMA|CarryOut[4]~4_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[5]~51_combout\)))) # (!\FD|BANCO_REG|saidaA[5]~5_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[4]~4_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[5]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[5]~51_combout\,
	datac => \FD|BANCO_REG|saidaA[5]~5_combout\,
	datad => \FD|ULA|SOMA|CarryOut[4]~4_combout\,
	combout => \FD|ULA|SOMA|CarryOut[5]~5_combout\);

-- Location: LCCOMB_X70_Y45_N18
\FD|ULA|MUX|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux25~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[6]~22_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[6]~22_combout\,
	datad => \FD|ULA|SOMA|CarryOut[5]~5_combout\,
	combout => \FD|ULA|MUX|Mux25~0_combout\);

-- Location: LCCOMB_X70_Y45_N16
\FD|ULA|MUX|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux25~1_combout\ = (\FD|BANCO_REG|saidaA[6]~6_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux25~0_combout\))))) # (!\FD|BANCO_REG|saidaA[6]~6_combout\ & (\FD|ULA|MUX|Mux25~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[6]~6_combout\,
	datad => \FD|ULA|MUX|Mux25~0_combout\,
	combout => \FD|ULA|MUX|Mux25~1_combout\);

-- Location: LCCOMB_X61_Y45_N6
\FD|MUX_ULA_MEM|q[6]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[6]~69_combout\ = (\FD|ULA|MUX|Mux25~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|ULA|MUX|Mux25~1_combout\,
	datad => \FD|MEM_INST|q\(26),
	combout => \FD|MUX_ULA_MEM|q[6]~69_combout\);

-- Location: LCCOMB_X65_Y47_N4
\FD|BANCO_REG|saidaA[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[7]~7_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(36))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(36),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|BANCO_REG|saidaA[7]~7_combout\);

-- Location: FF_X63_Y45_N19
\FD|BANCO_REG|registrador_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(36));

-- Location: LCCOMB_X63_Y45_N18
\FD|MUX_RT_IMM|q[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[7]~23_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(36)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(36),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[7]~23_combout\);

-- Location: LCCOMB_X65_Y45_N6
\FD|ULA|SOMA|CarryOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[6]~6_combout\ = (\FD|BANCO_REG|saidaA[6]~6_combout\ & ((\FD|ULA|SOMA|CarryOut[5]~5_combout\) # (\FD|MUX_RT_IMM|q[6]~22_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[6]~6_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[5]~5_combout\ & (\FD|MUX_RT_IMM|q[6]~22_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[6]~22_combout\,
	datab => \FD|UC_ULA|q[2]~2_combout\,
	datac => \FD|BANCO_REG|saidaA[6]~6_combout\,
	datad => \FD|ULA|SOMA|CarryOut[5]~5_combout\,
	combout => \FD|ULA|SOMA|CarryOut[6]~6_combout\);

-- Location: LCCOMB_X60_Y45_N28
\FD|ULA|MUX|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux24~0_combout\ = \FD|MUX_RT_IMM|q[7]~23_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[7]~23_combout\,
	datab => \FD|UC_ULA|q[2]~2_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|SOMA|CarryOut[6]~6_combout\,
	combout => \FD|ULA|MUX|Mux24~0_combout\);

-- Location: LCCOMB_X60_Y45_N18
\FD|ULA|MUX|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux24~1_combout\ = (\FD|BANCO_REG|saidaA[7]~7_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux24~0_combout\))))) # (!\FD|BANCO_REG|saidaA[7]~7_combout\ & (\FD|ULA|MUX|Mux24~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[7]~7_combout\,
	datad => \FD|ULA|MUX|Mux24~0_combout\,
	combout => \FD|ULA|MUX|Mux24~1_combout\);

-- Location: LCCOMB_X61_Y45_N4
\FD|MUX_ULA_MEM|q[7]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[7]~70_combout\ = (\FD|ULA|MUX|Mux24~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux24~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[7]~70_combout\);

-- Location: LCCOMB_X65_Y47_N30
\FD|BANCO_REG|saidaA[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[8]~8_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(35))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(35),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|BANCO_REG|saidaA[8]~8_combout\);

-- Location: LCCOMB_X65_Y45_N12
\FD|ULA|SOMA|CarryOut[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[7]~7_combout\ = (\FD|BANCO_REG|saidaA[7]~7_combout\ & ((\FD|ULA|SOMA|CarryOut[6]~6_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[7]~23_combout\)))) # (!\FD|BANCO_REG|saidaA[7]~7_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[6]~6_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[7]~23_combout\,
	datac => \FD|BANCO_REG|saidaA[7]~7_combout\,
	datad => \FD|ULA|SOMA|CarryOut[6]~6_combout\,
	combout => \FD|ULA|SOMA|CarryOut[7]~7_combout\);

-- Location: FF_X63_Y45_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(35));

-- Location: LCCOMB_X63_Y45_N16
\FD|MUX_RT_IMM|q[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[8]~24_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(35)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(35),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[8]~24_combout\);

-- Location: LCCOMB_X62_Y45_N6
\FD|ULA|MUX|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux23~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[8]~24_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|ULA|SOMA|CarryOut[7]~7_combout\,
	datad => \FD|MUX_RT_IMM|q[8]~24_combout\,
	combout => \FD|ULA|MUX|Mux23~0_combout\);

-- Location: LCCOMB_X62_Y45_N8
\FD|ULA|MUX|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux23~1_combout\ = (\FD|BANCO_REG|saidaA[8]~8_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux23~0_combout\))))) # (!\FD|BANCO_REG|saidaA[8]~8_combout\ & (\FD|ULA|MUX|Mux23~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[8]~8_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|MUX|Mux23~0_combout\,
	combout => \FD|ULA|MUX|Mux23~1_combout\);

-- Location: LCCOMB_X61_Y45_N26
\FD|MUX_ULA_MEM|q[8]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[8]~71_combout\ = (\FD|ULA|MUX|Mux23~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|ULA|MUX|Mux23~1_combout\,
	datad => \FD|MEM_INST|q\(26),
	combout => \FD|MUX_ULA_MEM|q[8]~71_combout\);

-- Location: FF_X66_Y47_N27
\FD|BANCO_REG|registrador_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(34));

-- Location: LCCOMB_X66_Y47_N26
\FD|BANCO_REG|saidaA[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[9]~9_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(34)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a23\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(34),
	datad => \FD|BANCO_REG|Mux31~1_combout\,
	combout => \FD|BANCO_REG|saidaA[9]~9_combout\);

-- Location: FF_X63_Y45_N15
\FD|BANCO_REG|registrador_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(34));

-- Location: LCCOMB_X63_Y45_N14
\FD|MUX_RT_IMM|q[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[9]~25_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(34))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(34),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|MUX_RT_IMM|q[9]~25_combout\);

-- Location: LCCOMB_X65_Y45_N22
\FD|ULA|SOMA|CarryOut[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[8]~8_combout\ = (\FD|BANCO_REG|saidaA[8]~8_combout\ & ((\FD|ULA|SOMA|CarryOut[7]~7_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[8]~24_combout\)))) # (!\FD|BANCO_REG|saidaA[8]~8_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[7]~7_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[8]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[8]~24_combout\,
	datac => \FD|BANCO_REG|saidaA[8]~8_combout\,
	datad => \FD|ULA|SOMA|CarryOut[7]~7_combout\,
	combout => \FD|ULA|SOMA|CarryOut[8]~8_combout\);

-- Location: LCCOMB_X62_Y45_N18
\FD|ULA|MUX|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux22~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[9]~25_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[9]~25_combout\,
	datad => \FD|ULA|SOMA|CarryOut[8]~8_combout\,
	combout => \FD|ULA|MUX|Mux22~0_combout\);

-- Location: LCCOMB_X62_Y45_N4
\FD|ULA|MUX|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux22~1_combout\ = (\FD|BANCO_REG|saidaA[9]~9_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux22~0_combout\))))) # (!\FD|BANCO_REG|saidaA[9]~9_combout\ & (\FD|ULA|MUX|Mux22~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[9]~9_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|MUX|Mux22~0_combout\,
	combout => \FD|ULA|MUX|Mux22~1_combout\);

-- Location: LCCOMB_X61_Y45_N28
\FD|MUX_ULA_MEM|q[9]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[9]~72_combout\ = (\FD|ULA|MUX|Mux22~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux22~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[9]~72_combout\);

-- Location: LCCOMB_X63_Y45_N20
\FD|MUX_RT_IMM|q[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[10]~26_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(33))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(33),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\,
	combout => \FD|MUX_RT_IMM|q[10]~26_combout\);

-- Location: LCCOMB_X65_Y45_N24
\FD|ULA|SOMA|CarryOut[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[9]~9_combout\ = (\FD|BANCO_REG|saidaA[9]~9_combout\ & ((\FD|ULA|SOMA|CarryOut[8]~8_combout\) # (\FD|MUX_RT_IMM|q[9]~25_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[9]~9_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[8]~8_combout\ & (\FD|MUX_RT_IMM|q[9]~25_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[9]~9_combout\,
	datab => \FD|MUX_RT_IMM|q[9]~25_combout\,
	datac => \FD|ULA|SOMA|CarryOut[8]~8_combout\,
	datad => \FD|UC_ULA|q[2]~2_combout\,
	combout => \FD|ULA|SOMA|CarryOut[9]~9_combout\);

-- Location: LCCOMB_X62_Y45_N22
\FD|ULA|MUX|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux21~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[10]~26_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[10]~26_combout\,
	datad => \FD|ULA|SOMA|CarryOut[9]~9_combout\,
	combout => \FD|ULA|MUX|Mux21~0_combout\);

-- Location: FF_X66_Y47_N25
\FD|BANCO_REG|registrador_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(33));

-- Location: LCCOMB_X66_Y47_N24
\FD|BANCO_REG|saidaA[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[10]~10_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(33))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(33),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a22\,
	combout => \FD|BANCO_REG|saidaA[10]~10_combout\);

-- Location: LCCOMB_X62_Y45_N16
\FD|ULA|MUX|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux21~1_combout\ = (\FD|ULA|MUX|Mux21~0_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|BANCO_REG|saidaA[10]~10_combout\))))) # (!\FD|ULA|MUX|Mux21~0_combout\ & (\FD|BANCO_REG|saidaA[10]~10_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux21~0_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[10]~10_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux21~1_combout\);

-- Location: LCCOMB_X61_Y45_N22
\FD|MUX_ULA_MEM|q[10]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[10]~73_combout\ = (\FD|ULA|MUX|Mux21~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux21~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[10]~73_combout\);

-- Location: FF_X66_Y47_N7
\FD|BANCO_REG|registrador_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(32));

-- Location: LCCOMB_X66_Y47_N6
\FD|BANCO_REG|saidaA[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[11]~11_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(32)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a21\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(32),
	datad => \FD|BANCO_REG|Equal0~0_combout\,
	combout => \FD|BANCO_REG|saidaA[11]~11_combout\);

-- Location: FF_X65_Y44_N25
\FD|BANCO_REG|registrador_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(32));

-- Location: LCCOMB_X65_Y44_N24
\FD|MUX_RT_IMM|q[11]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[11]~27_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(32))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(32),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\,
	combout => \FD|MUX_RT_IMM|q[11]~27_combout\);

-- Location: LCCOMB_X65_Y44_N10
\FD|MUX_RT_IMM|q[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[11]~52_combout\ = (\FD|MUX_RT_IMM|q[11]~27_combout\) # ((\FD|MEM_INST|q\(11) & (\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(11),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|MUX_RT_IMM|q[11]~27_combout\,
	combout => \FD|MUX_RT_IMM|q[11]~52_combout\);

-- Location: LCCOMB_X65_Y45_N10
\FD|ULA|SOMA|CarryOut[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[10]~10_combout\ = (\FD|BANCO_REG|saidaA[10]~10_combout\ & ((\FD|ULA|SOMA|CarryOut[9]~9_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[10]~26_combout\)))) # (!\FD|BANCO_REG|saidaA[10]~10_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[9]~9_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[10]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[10]~26_combout\,
	datac => \FD|BANCO_REG|saidaA[10]~10_combout\,
	datad => \FD|ULA|SOMA|CarryOut[9]~9_combout\,
	combout => \FD|ULA|SOMA|CarryOut[10]~10_combout\);

-- Location: LCCOMB_X70_Y45_N10
\FD|ULA|MUX|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux20~0_combout\ = \FD|MUX_RT_IMM|q[11]~52_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|MUX_RT_IMM|q[11]~52_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[10]~10_combout\,
	combout => \FD|ULA|MUX|Mux20~0_combout\);

-- Location: LCCOMB_X70_Y45_N4
\FD|ULA|MUX|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux20~1_combout\ = (\FD|BANCO_REG|saidaA[11]~11_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux20~0_combout\))))) # (!\FD|BANCO_REG|saidaA[11]~11_combout\ & (\FD|ULA|MUX|Mux20~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[11]~11_combout\,
	datad => \FD|ULA|MUX|Mux20~0_combout\,
	combout => \FD|ULA|MUX|Mux20~1_combout\);

-- Location: LCCOMB_X69_Y45_N24
\FD|MUX_ULA_MEM|q[11]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[11]~74_combout\ = (\FD|ULA|MUX|Mux20~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux20~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[11]~74_combout\);

-- Location: FF_X65_Y44_N19
\FD|BANCO_REG|registrador_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(31));

-- Location: LCCOMB_X65_Y44_N18
\FD|MUX_RT_IMM|q[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[12]~28_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(31)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(31),
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|MUX_RT_IMM|q[12]~28_combout\);

-- Location: LCCOMB_X65_Y44_N0
\FD|MUX_RT_IMM|q[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[12]~53_combout\ = (\FD|MUX_RT_IMM|q[12]~28_combout\) # ((\FD|MEM_INST|q\(12) & (\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(12),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|MUX_RT_IMM|q[12]~28_combout\,
	combout => \FD|MUX_RT_IMM|q[12]~53_combout\);

-- Location: LCCOMB_X65_Y45_N0
\FD|ULA|SOMA|CarryOut[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[11]~11_combout\ = (\FD|BANCO_REG|saidaA[11]~11_combout\ & ((\FD|ULA|SOMA|CarryOut[10]~10_combout\) # (\FD|MUX_RT_IMM|q[11]~52_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[11]~11_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[10]~10_combout\ & (\FD|MUX_RT_IMM|q[11]~52_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[11]~52_combout\,
	datab => \FD|BANCO_REG|saidaA[11]~11_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[10]~10_combout\,
	combout => \FD|ULA|SOMA|CarryOut[11]~11_combout\);

-- Location: LCCOMB_X69_Y45_N8
\FD|ULA|MUX|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux19~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[12]~53_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[12]~53_combout\,
	datad => \FD|ULA|SOMA|CarryOut[11]~11_combout\,
	combout => \FD|ULA|MUX|Mux19~0_combout\);

-- Location: FF_X66_Y47_N13
\FD|BANCO_REG|registrador_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(31));

-- Location: LCCOMB_X66_Y47_N12
\FD|BANCO_REG|saidaA[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[12]~12_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(31))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(31),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a20\,
	combout => \FD|BANCO_REG|saidaA[12]~12_combout\);

-- Location: LCCOMB_X69_Y45_N10
\FD|ULA|MUX|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux19~1_combout\ = (\FD|ULA|MUX|Mux19~0_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|BANCO_REG|saidaA[12]~12_combout\))))) # (!\FD|ULA|MUX|Mux19~0_combout\ & (\FD|BANCO_REG|saidaA[12]~12_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[0]~0_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|ULA|MUX|Mux19~0_combout\,
	datad => \FD|BANCO_REG|saidaA[12]~12_combout\,
	combout => \FD|ULA|MUX|Mux19~1_combout\);

-- Location: LCCOMB_X69_Y45_N30
\FD|MUX_ULA_MEM|q[12]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[12]~75_combout\ = (\FD|ULA|MUX|Mux19~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux19~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[12]~75_combout\);

-- Location: FF_X66_Y47_N31
\FD|BANCO_REG|registrador_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(30));

-- Location: LCCOMB_X66_Y47_N30
\FD|BANCO_REG|saidaA[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[13]~13_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(30)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a19\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(30),
	datad => \FD|BANCO_REG|Equal0~0_combout\,
	combout => \FD|BANCO_REG|saidaA[13]~13_combout\);

-- Location: FF_X65_Y48_N29
\FD|BANCO_REG|registrador_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(30));

-- Location: LCCOMB_X65_Y48_N28
\FD|MUX_RT_IMM|q[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[13]~29_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(30))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(30),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\,
	combout => \FD|MUX_RT_IMM|q[13]~29_combout\);

-- Location: LCCOMB_X65_Y48_N14
\FD|MUX_RT_IMM|q[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[13]~54_combout\ = (\FD|MUX_RT_IMM|q[13]~29_combout\) # ((\FD|MEM_INST|q\(27) & (\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(5),
	datad => \FD|MUX_RT_IMM|q[13]~29_combout\,
	combout => \FD|MUX_RT_IMM|q[13]~54_combout\);

-- Location: LCCOMB_X65_Y45_N30
\FD|ULA|SOMA|CarryOut[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[12]~12_combout\ = (\FD|BANCO_REG|saidaA[12]~12_combout\ & ((\FD|ULA|SOMA|CarryOut[11]~11_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[12]~53_combout\)))) # (!\FD|BANCO_REG|saidaA[12]~12_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[11]~11_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[12]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[12]~53_combout\,
	datac => \FD|BANCO_REG|saidaA[12]~12_combout\,
	datad => \FD|ULA|SOMA|CarryOut[11]~11_combout\,
	combout => \FD|ULA|SOMA|CarryOut[12]~12_combout\);

-- Location: LCCOMB_X65_Y48_N18
\FD|ULA|MUX|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux18~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[13]~54_combout\ $ (((\FD|ULA|SOMA|CarryOut[12]~12_combout\ & \FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[13]~54_combout\,
	datac => \FD|ULA|SOMA|CarryOut[12]~12_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux18~0_combout\);

-- Location: LCCOMB_X65_Y48_N24
\FD|ULA|MUX|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux18~1_combout\ = (\FD|BANCO_REG|saidaA[13]~13_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux18~0_combout\))))) # (!\FD|BANCO_REG|saidaA[13]~13_combout\ & (\FD|ULA|MUX|Mux18~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[13]~13_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|MUX|Mux18~0_combout\,
	combout => \FD|ULA|MUX|Mux18~1_combout\);

-- Location: LCCOMB_X65_Y48_N26
\FD|MUX_ULA_MEM|q[13]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[13]~76_combout\ = (\FD|ULA|MUX|Mux18~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux18~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[13]~76_combout\);

-- Location: LCCOMB_X63_Y47_N14
\FD|BANCO_REG|saidaA[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[14]~14_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(29))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(29),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a18\,
	combout => \FD|BANCO_REG|saidaA[14]~14_combout\);

-- Location: FF_X65_Y44_N29
\FD|BANCO_REG|registrador_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(29));

-- Location: LCCOMB_X65_Y44_N28
\FD|MUX_RT_IMM|q[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[14]~30_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(29))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(29),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\,
	combout => \FD|MUX_RT_IMM|q[14]~30_combout\);

-- Location: LCCOMB_X65_Y45_N4
\FD|ULA|SOMA|CarryOut[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[13]~13_combout\ = (\FD|BANCO_REG|saidaA[13]~13_combout\ & ((\FD|ULA|SOMA|CarryOut[12]~12_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[13]~54_combout\)))) # (!\FD|BANCO_REG|saidaA[13]~13_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[12]~12_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[13]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|BANCO_REG|saidaA[13]~13_combout\,
	datac => \FD|ULA|SOMA|CarryOut[12]~12_combout\,
	datad => \FD|MUX_RT_IMM|q[13]~54_combout\,
	combout => \FD|ULA|SOMA|CarryOut[13]~13_combout\);

-- Location: LCCOMB_X65_Y48_N6
\FD|ULA|MUX|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux17~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[14]~30_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[14]~30_combout\,
	datad => \FD|ULA|SOMA|CarryOut[13]~13_combout\,
	combout => \FD|ULA|MUX|Mux17~0_combout\);

-- Location: LCCOMB_X65_Y48_N12
\FD|ULA|MUX|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux17~1_combout\ = (\FD|BANCO_REG|saidaA[14]~14_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux17~0_combout\))))) # (!\FD|BANCO_REG|saidaA[14]~14_combout\ & (\FD|ULA|MUX|Mux17~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|BANCO_REG|saidaA[14]~14_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|MUX|Mux17~0_combout\,
	combout => \FD|ULA|MUX|Mux17~1_combout\);

-- Location: LCCOMB_X65_Y44_N22
\FD|MUX_ULA_MEM|q[14]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[14]~77_combout\ = (\FD|ULA|MUX|Mux17~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|ULA|MUX|Mux17~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[14]~77_combout\);

-- Location: LCCOMB_X63_Y47_N28
\FD|BANCO_REG|saidaA[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[15]~15_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(28))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(28),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a17\,
	combout => \FD|BANCO_REG|saidaA[15]~15_combout\);

-- Location: FF_X63_Y45_N11
\FD|BANCO_REG|registrador_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(28));

-- Location: LCCOMB_X63_Y45_N10
\FD|MUX_RT_IMM|q[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[15]~31_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(28))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(28),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\,
	combout => \FD|MUX_RT_IMM|q[15]~31_combout\);

-- Location: LCCOMB_X65_Y45_N14
\FD|ULA|SOMA|CarryOut[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[14]~14_combout\ = (\FD|BANCO_REG|saidaA[14]~14_combout\ & ((\FD|ULA|SOMA|CarryOut[13]~13_combout\) # (\FD|MUX_RT_IMM|q[14]~30_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[14]~14_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[13]~13_combout\ & (\FD|MUX_RT_IMM|q[14]~30_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[14]~14_combout\,
	datab => \FD|MUX_RT_IMM|q[14]~30_combout\,
	datac => \FD|ULA|SOMA|CarryOut[13]~13_combout\,
	datad => \FD|UC_ULA|q[2]~2_combout\,
	combout => \FD|ULA|SOMA|CarryOut[14]~14_combout\);

-- Location: LCCOMB_X65_Y48_N10
\FD|ULA|MUX|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux16~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[15]~31_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[15]~31_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|SOMA|CarryOut[14]~14_combout\,
	combout => \FD|ULA|MUX|Mux16~0_combout\);

-- Location: LCCOMB_X65_Y48_N8
\FD|ULA|MUX|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux16~1_combout\ = (\FD|BANCO_REG|saidaA[15]~15_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux16~0_combout\))))) # (!\FD|BANCO_REG|saidaA[15]~15_combout\ & (\FD|ULA|MUX|Mux16~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|BANCO_REG|saidaA[15]~15_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|MUX|Mux16~0_combout\,
	combout => \FD|ULA|MUX|Mux16~1_combout\);

-- Location: LCCOMB_X65_Y48_N0
\FD|MUX_ULA_MEM|q[15]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[15]~78_combout\ = (\FD|ULA|MUX|Mux16~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux16~1_combout\,
	datad => \FD|MEM_INST|q\(27),
	combout => \FD|MUX_ULA_MEM|q[15]~78_combout\);

-- Location: LCCOMB_X63_Y47_N6
\FD|BANCO_REG|saidaA[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[16]~16_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(27))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(27),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a16\,
	combout => \FD|BANCO_REG|saidaA[16]~16_combout\);

-- Location: LCCOMB_X66_Y45_N24
\FD|ULA|SOMA|CarryOut[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[15]~15_combout\ = (\FD|BANCO_REG|saidaA[15]~15_combout\ & ((\FD|ULA|SOMA|CarryOut[14]~14_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[15]~31_combout\)))) # (!\FD|BANCO_REG|saidaA[15]~15_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[14]~14_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[15]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|BANCO_REG|saidaA[15]~15_combout\,
	datac => \FD|MUX_RT_IMM|q[15]~31_combout\,
	datad => \FD|ULA|SOMA|CarryOut[14]~14_combout\,
	combout => \FD|ULA|SOMA|CarryOut[15]~15_combout\);

-- Location: LCCOMB_X65_Y48_N2
\FD|ULA|MUX|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux15~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[16]~32_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[16]~32_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|SOMA|CarryOut[15]~15_combout\,
	combout => \FD|ULA|MUX|Mux15~0_combout\);

-- Location: LCCOMB_X65_Y48_N20
\FD|ULA|MUX|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux15~1_combout\ = (\FD|BANCO_REG|saidaA[16]~16_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux15~0_combout\))))) # (!\FD|BANCO_REG|saidaA[16]~16_combout\ & (\FD|ULA|MUX|Mux15~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[16]~16_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|MUX|Mux15~0_combout\,
	combout => \FD|ULA|MUX|Mux15~1_combout\);

-- Location: LCCOMB_X65_Y48_N22
\FD|MUX_ULA_MEM|q[16]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[16]~79_combout\ = (\FD|ULA|MUX|Mux15~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux15~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[16]~79_combout\);

-- Location: FF_X63_Y45_N25
\FD|BANCO_REG|registrador_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(27));

-- Location: LCCOMB_X63_Y45_N24
\FD|MUX_RT_IMM|q[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[16]~32_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(27))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(27),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\,
	combout => \FD|MUX_RT_IMM|q[16]~32_combout\);

-- Location: LCCOMB_X66_Y45_N30
\FD|ULA|SOMA|CarryOut[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[16]~16_combout\ = (\FD|BANCO_REG|saidaA[16]~16_combout\ & ((\FD|ULA|SOMA|CarryOut[15]~15_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[16]~32_combout\)))) # (!\FD|BANCO_REG|saidaA[16]~16_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[15]~15_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[16]~32_combout\,
	datac => \FD|BANCO_REG|saidaA[16]~16_combout\,
	datad => \FD|ULA|SOMA|CarryOut[15]~15_combout\,
	combout => \FD|ULA|SOMA|CarryOut[16]~16_combout\);

-- Location: FF_X63_Y45_N7
\FD|BANCO_REG|registrador_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(26));

-- Location: LCCOMB_X63_Y45_N6
\FD|MUX_RT_IMM|q[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[17]~33_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(26)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(26),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[17]~33_combout\);

-- Location: LCCOMB_X67_Y47_N26
\FD|ULA|MUX|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux14~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[17]~33_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|ULA|SOMA|CarryOut[16]~16_combout\,
	datad => \FD|MUX_RT_IMM|q[17]~33_combout\,
	combout => \FD|ULA|MUX|Mux14~0_combout\);

-- Location: FF_X63_Y47_N13
\FD|BANCO_REG|registrador_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(26));

-- Location: LCCOMB_X63_Y47_N12
\FD|BANCO_REG|saidaA[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[17]~17_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(26)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a15\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(26),
	datad => \FD|BANCO_REG|Equal0~0_combout\,
	combout => \FD|BANCO_REG|saidaA[17]~17_combout\);

-- Location: LCCOMB_X67_Y47_N20
\FD|ULA|MUX|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux14~1_combout\ = (\FD|ULA|MUX|Mux14~0_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|BANCO_REG|saidaA[17]~17_combout\))))) # (!\FD|ULA|MUX|Mux14~0_combout\ & (\FD|BANCO_REG|saidaA[17]~17_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[0]~0_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|ULA|MUX|Mux14~0_combout\,
	datad => \FD|BANCO_REG|saidaA[17]~17_combout\,
	combout => \FD|ULA|MUX|Mux14~1_combout\);

-- Location: LCCOMB_X67_Y47_N30
\FD|MUX_ULA_MEM|q[17]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[17]~80_combout\ = (\FD|ULA|MUX|Mux14~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datab => \FD|MEM_INST|q\(27),
	datad => \FD|ULA|MUX|Mux14~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[17]~80_combout\);

-- Location: FF_X63_Y47_N3
\FD|BANCO_REG|registrador_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(25));

-- Location: LCCOMB_X63_Y47_N2
\FD|BANCO_REG|saidaA[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[18]~18_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(25)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a14\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(25),
	datad => \FD|BANCO_REG|Mux31~1_combout\,
	combout => \FD|BANCO_REG|saidaA[18]~18_combout\);

-- Location: FF_X63_Y45_N29
\FD|BANCO_REG|registrador_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(25));

-- Location: LCCOMB_X63_Y45_N28
\FD|MUX_RT_IMM|q[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[18]~34_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(25)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(25),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[18]~34_combout\);

-- Location: LCCOMB_X66_Y45_N20
\FD|ULA|SOMA|CarryOut[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[17]~17_combout\ = (\FD|ULA|SOMA|CarryOut[16]~16_combout\ & ((\FD|BANCO_REG|saidaA[17]~17_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[17]~33_combout\)))) # (!\FD|ULA|SOMA|CarryOut[16]~16_combout\ & 
-- (\FD|BANCO_REG|saidaA[17]~17_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[17]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[17]~33_combout\,
	datac => \FD|ULA|SOMA|CarryOut[16]~16_combout\,
	datad => \FD|BANCO_REG|saidaA[17]~17_combout\,
	combout => \FD|ULA|SOMA|CarryOut[17]~17_combout\);

-- Location: LCCOMB_X67_Y47_N6
\FD|ULA|MUX|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux13~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[18]~34_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[18]~34_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|SOMA|CarryOut[17]~17_combout\,
	combout => \FD|ULA|MUX|Mux13~0_combout\);

-- Location: LCCOMB_X67_Y47_N28
\FD|ULA|MUX|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux13~1_combout\ = (\FD|BANCO_REG|saidaA[18]~18_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux13~0_combout\))))) # (!\FD|BANCO_REG|saidaA[18]~18_combout\ & (\FD|ULA|MUX|Mux13~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[0]~0_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|BANCO_REG|saidaA[18]~18_combout\,
	datad => \FD|ULA|MUX|Mux13~0_combout\,
	combout => \FD|ULA|MUX|Mux13~1_combout\);

-- Location: LCCOMB_X67_Y47_N24
\FD|MUX_ULA_MEM|q[18]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[18]~81_combout\ = (\FD|ULA|MUX|Mux13~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datab => \FD|MEM_INST|q\(27),
	datad => \FD|ULA|MUX|Mux13~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[18]~81_combout\);

-- Location: FF_X66_Y47_N5
\FD|BANCO_REG|registrador_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(24));

-- Location: LCCOMB_X66_Y47_N4
\FD|BANCO_REG|saidaA[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[19]~19_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(24)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a13\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(24),
	datad => \FD|BANCO_REG|Mux31~1_combout\,
	combout => \FD|BANCO_REG|saidaA[19]~19_combout\);

-- Location: FF_X65_Y44_N31
\FD|BANCO_REG|registrador_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(24));

-- Location: LCCOMB_X65_Y44_N30
\FD|MUX_RT_IMM|q[19]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[19]~35_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(24))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(24),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\,
	combout => \FD|MUX_RT_IMM|q[19]~35_combout\);

-- Location: LCCOMB_X66_Y45_N10
\FD|ULA|SOMA|CarryOut[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[18]~18_combout\ = (\FD|BANCO_REG|saidaA[18]~18_combout\ & ((\FD|ULA|SOMA|CarryOut[17]~17_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[18]~34_combout\)))) # (!\FD|BANCO_REG|saidaA[18]~18_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[17]~17_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[18]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[18]~34_combout\,
	datac => \FD|BANCO_REG|saidaA[18]~18_combout\,
	datad => \FD|ULA|SOMA|CarryOut[17]~17_combout\,
	combout => \FD|ULA|SOMA|CarryOut[18]~18_combout\);

-- Location: LCCOMB_X66_Y47_N18
\FD|ULA|MUX|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux12~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[19]~35_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[18]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[19]~35_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|SOMA|CarryOut[18]~18_combout\,
	combout => \FD|ULA|MUX|Mux12~0_combout\);

-- Location: LCCOMB_X66_Y47_N20
\FD|ULA|MUX|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux12~1_combout\ = (\FD|BANCO_REG|saidaA[19]~19_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux12~0_combout\))))) # (!\FD|BANCO_REG|saidaA[19]~19_combout\ & (\FD|ULA|MUX|Mux12~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[19]~19_combout\,
	datad => \FD|ULA|MUX|Mux12~0_combout\,
	combout => \FD|ULA|MUX|Mux12~1_combout\);

-- Location: LCCOMB_X67_Y47_N10
\FD|MUX_ULA_MEM|q[19]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[19]~82_combout\ = (\FD|ULA|MUX|Mux12~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datab => \FD|MEM_INST|q\(27),
	datad => \FD|ULA|MUX|Mux12~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[19]~82_combout\);

-- Location: LCCOMB_X63_Y47_N20
\FD|BANCO_REG|saidaA[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[20]~20_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(23))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(23),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a12\,
	combout => \FD|BANCO_REG|saidaA[20]~20_combout\);

-- Location: FF_X65_Y44_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(23));

-- Location: LCCOMB_X65_Y44_N20
\FD|MUX_RT_IMM|q[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[20]~36_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(23))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(23),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\,
	combout => \FD|MUX_RT_IMM|q[20]~36_combout\);

-- Location: LCCOMB_X66_Y45_N16
\FD|ULA|SOMA|CarryOut[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[19]~19_combout\ = (\FD|BANCO_REG|saidaA[19]~19_combout\ & ((\FD|ULA|SOMA|CarryOut[18]~18_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[19]~35_combout\)))) # (!\FD|BANCO_REG|saidaA[19]~19_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[18]~18_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[19]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[19]~35_combout\,
	datac => \FD|BANCO_REG|saidaA[19]~19_combout\,
	datad => \FD|ULA|SOMA|CarryOut[18]~18_combout\,
	combout => \FD|ULA|SOMA|CarryOut[19]~19_combout\);

-- Location: LCCOMB_X66_Y47_N2
\FD|ULA|MUX|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux11~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[20]~36_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[20]~36_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|SOMA|CarryOut[19]~19_combout\,
	combout => \FD|ULA|MUX|Mux11~0_combout\);

-- Location: LCCOMB_X66_Y47_N8
\FD|ULA|MUX|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux11~1_combout\ = (\FD|BANCO_REG|saidaA[20]~20_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux11~0_combout\))))) # (!\FD|BANCO_REG|saidaA[20]~20_combout\ & (\FD|ULA|MUX|Mux11~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[20]~20_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|MUX|Mux11~0_combout\,
	combout => \FD|ULA|MUX|Mux11~1_combout\);

-- Location: LCCOMB_X66_Y47_N0
\FD|MUX_ULA_MEM|q[20]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[20]~83_combout\ = (\FD|ULA|MUX|Mux11~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|ULA|MUX|Mux11~1_combout\,
	datad => \FD|MEM_INST|q\(26),
	combout => \FD|MUX_ULA_MEM|q[20]~83_combout\);

-- Location: LCCOMB_X66_Y47_N22
\FD|BANCO_REG|saidaA[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[21]~21_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(22))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(22),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a11\,
	combout => \FD|BANCO_REG|saidaA[21]~21_combout\);

-- Location: FF_X65_Y44_N15
\FD|BANCO_REG|registrador_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(22));

-- Location: LCCOMB_X65_Y44_N14
\FD|MUX_RT_IMM|q[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[21]~37_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(22))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(22),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\,
	combout => \FD|MUX_RT_IMM|q[21]~37_combout\);

-- Location: LCCOMB_X66_Y45_N6
\FD|ULA|SOMA|CarryOut[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[20]~20_combout\ = (\FD|BANCO_REG|saidaA[20]~20_combout\ & ((\FD|ULA|SOMA|CarryOut[19]~19_combout\) # (\FD|MUX_RT_IMM|q[20]~36_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[20]~20_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[19]~19_combout\ & (\FD|MUX_RT_IMM|q[20]~36_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[20]~36_combout\,
	datab => \FD|BANCO_REG|saidaA[20]~20_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[19]~19_combout\,
	combout => \FD|ULA|SOMA|CarryOut[20]~20_combout\);

-- Location: LCCOMB_X66_Y44_N16
\FD|ULA|MUX|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux10~0_combout\ = \FD|MUX_RT_IMM|q[21]~37_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[20]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[21]~37_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|ULA|SOMA|CarryOut[20]~20_combout\,
	datad => \FD|UC_ULA|q[2]~2_combout\,
	combout => \FD|ULA|MUX|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y44_N2
\FD|ULA|MUX|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux10~1_combout\ = (\FD|BANCO_REG|saidaA[21]~21_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux10~0_combout\))))) # (!\FD|BANCO_REG|saidaA[21]~21_combout\ & (\FD|ULA|MUX|Mux10~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|BANCO_REG|saidaA[21]~21_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|MUX|Mux10~0_combout\,
	combout => \FD|ULA|MUX|Mux10~1_combout\);

-- Location: LCCOMB_X66_Y44_N10
\FD|MUX_ULA_MEM|q[21]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[21]~84_combout\ = (\FD|ULA|MUX|Mux10~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux10~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[21]~84_combout\);

-- Location: LCCOMB_X65_Y44_N12
\FD|BANCO_REG|saidaA[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[22]~22_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(21))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(21),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a10\,
	combout => \FD|BANCO_REG|saidaA[22]~22_combout\);

-- Location: FF_X65_Y44_N27
\FD|BANCO_REG|registrador_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(21));

-- Location: LCCOMB_X65_Y44_N26
\FD|MUX_RT_IMM|q[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[22]~38_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(21))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(21),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\,
	combout => \FD|MUX_RT_IMM|q[22]~38_combout\);

-- Location: LCCOMB_X66_Y45_N28
\FD|ULA|SOMA|CarryOut[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[21]~21_combout\ = (\FD|BANCO_REG|saidaA[21]~21_combout\ & ((\FD|ULA|SOMA|CarryOut[20]~20_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[21]~37_combout\)))) # (!\FD|BANCO_REG|saidaA[21]~21_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[20]~20_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[21]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[21]~37_combout\,
	datac => \FD|BANCO_REG|saidaA[21]~21_combout\,
	datad => \FD|ULA|SOMA|CarryOut[20]~20_combout\,
	combout => \FD|ULA|SOMA|CarryOut[21]~21_combout\);

-- Location: LCCOMB_X66_Y44_N28
\FD|ULA|MUX|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux9~0_combout\ = \FD|MUX_RT_IMM|q[22]~38_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[22]~38_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|ULA|SOMA|CarryOut[21]~21_combout\,
	datad => \FD|UC_ULA|q[2]~2_combout\,
	combout => \FD|ULA|MUX|Mux9~0_combout\);

-- Location: LCCOMB_X66_Y44_N26
\FD|ULA|MUX|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux9~1_combout\ = (\FD|BANCO_REG|saidaA[22]~22_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux9~0_combout\))))) # (!\FD|BANCO_REG|saidaA[22]~22_combout\ & (\FD|ULA|MUX|Mux9~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[22]~22_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|MUX|Mux9~0_combout\,
	combout => \FD|ULA|MUX|Mux9~1_combout\);

-- Location: LCCOMB_X66_Y44_N0
\FD|MUX_ULA_MEM|q[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[22]~85_combout\ = (\FD|ULA|MUX|Mux9~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux9~1_combout\,
	datad => \FD|MEM_INST|q\(27),
	combout => \FD|MUX_ULA_MEM|q[22]~85_combout\);

-- Location: LCCOMB_X63_Y44_N12
\FD|BANCO_REG|registrador_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_0_bypass[20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	combout => \FD|BANCO_REG|registrador_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X63_Y44_N13
\FD|BANCO_REG|registrador_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_0_bypass\(20));

-- Location: LCCOMB_X63_Y47_N18
\FD|BANCO_REG|saidaA[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[23]~23_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_0_bypass\(20)))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a9\,
	datad => \FD|BANCO_REG|registrador_rtl_0_bypass\(20),
	combout => \FD|BANCO_REG|saidaA[23]~23_combout\);

-- Location: FF_X65_Y44_N5
\FD|BANCO_REG|registrador_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(20));

-- Location: LCCOMB_X65_Y44_N4
\FD|MUX_RT_IMM|q[23]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[23]~39_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(20))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(20),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\,
	combout => \FD|MUX_RT_IMM|q[23]~39_combout\);

-- Location: LCCOMB_X66_Y45_N18
\FD|ULA|SOMA|CarryOut[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[22]~22_combout\ = (\FD|BANCO_REG|saidaA[22]~22_combout\ & ((\FD|ULA|SOMA|CarryOut[21]~21_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[22]~38_combout\)))) # (!\FD|BANCO_REG|saidaA[22]~22_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[21]~21_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[22]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|BANCO_REG|saidaA[22]~22_combout\,
	datac => \FD|MUX_RT_IMM|q[22]~38_combout\,
	datad => \FD|ULA|SOMA|CarryOut[21]~21_combout\,
	combout => \FD|ULA|SOMA|CarryOut[22]~22_combout\);

-- Location: LCCOMB_X66_Y44_N24
\FD|ULA|MUX|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux8~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[23]~39_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[22]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[23]~39_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|SOMA|CarryOut[22]~22_combout\,
	combout => \FD|ULA|MUX|Mux8~0_combout\);

-- Location: LCCOMB_X66_Y44_N14
\FD|ULA|MUX|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux8~1_combout\ = (\FD|BANCO_REG|saidaA[23]~23_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux8~0_combout\))))) # (!\FD|BANCO_REG|saidaA[23]~23_combout\ & (\FD|ULA|MUX|Mux8~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[0]~0_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|BANCO_REG|saidaA[23]~23_combout\,
	datad => \FD|ULA|MUX|Mux8~0_combout\,
	combout => \FD|ULA|MUX|Mux8~1_combout\);

-- Location: LCCOMB_X66_Y44_N30
\FD|MUX_ULA_MEM|q[23]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[23]~86_combout\ = (\FD|ULA|MUX|Mux8~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux8~1_combout\,
	datad => \FD|MEM_INST|q\(27),
	combout => \FD|MUX_ULA_MEM|q[23]~86_combout\);

-- Location: LCCOMB_X65_Y44_N6
\FD|BANCO_REG|saidaA[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[24]~24_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(19))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(19),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a8\,
	combout => \FD|BANCO_REG|saidaA[24]~24_combout\);

-- Location: FF_X65_Y44_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(19));

-- Location: LCCOMB_X65_Y44_N16
\FD|MUX_RT_IMM|q[24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[24]~40_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(19)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(19),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[24]~40_combout\);

-- Location: LCCOMB_X66_Y45_N0
\FD|ULA|SOMA|CarryOut[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[23]~23_combout\ = (\FD|BANCO_REG|saidaA[23]~23_combout\ & ((\FD|ULA|SOMA|CarryOut[22]~22_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[23]~39_combout\)))) # (!\FD|BANCO_REG|saidaA[23]~23_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[22]~22_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[23]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[23]~39_combout\,
	datac => \FD|BANCO_REG|saidaA[23]~23_combout\,
	datad => \FD|ULA|SOMA|CarryOut[22]~22_combout\,
	combout => \FD|ULA|SOMA|CarryOut[23]~23_combout\);

-- Location: LCCOMB_X66_Y46_N6
\FD|ULA|MUX|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux7~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[24]~40_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[24]~40_combout\,
	datad => \FD|ULA|SOMA|CarryOut[23]~23_combout\,
	combout => \FD|ULA|MUX|Mux7~0_combout\);

-- Location: LCCOMB_X66_Y46_N0
\FD|ULA|MUX|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux7~1_combout\ = (\FD|BANCO_REG|saidaA[24]~24_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux7~0_combout\))))) # (!\FD|BANCO_REG|saidaA[24]~24_combout\ & (\FD|ULA|MUX|Mux7~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[24]~24_combout\,
	datad => \FD|ULA|MUX|Mux7~0_combout\,
	combout => \FD|ULA|MUX|Mux7~1_combout\);

-- Location: LCCOMB_X65_Y44_N8
\FD|MUX_ULA_MEM|q[24]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[24]~87_combout\ = (\FD|ULA|MUX|Mux7~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|ULA|MUX|Mux7~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[24]~87_combout\);

-- Location: LCCOMB_X69_Y45_N12
\FD|BANCO_REG|saidaA[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[25]~25_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(18))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux31~1_combout\,
	datab => \FD|BANCO_REG|Equal0~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(18),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a7\,
	combout => \FD|BANCO_REG|saidaA[25]~25_combout\);

-- Location: FF_X69_Y45_N15
\FD|BANCO_REG|registrador_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(18));

-- Location: LCCOMB_X69_Y45_N14
\FD|MUX_RT_IMM|q[25]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[25]~41_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(18))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(18),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\,
	combout => \FD|MUX_RT_IMM|q[25]~41_combout\);

-- Location: LCCOMB_X66_Y45_N2
\FD|ULA|SOMA|CarryOut[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[24]~24_combout\ = (\FD|BANCO_REG|saidaA[24]~24_combout\ & ((\FD|ULA|SOMA|CarryOut[23]~23_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[24]~40_combout\)))) # (!\FD|BANCO_REG|saidaA[24]~24_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[23]~23_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[24]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[24]~40_combout\,
	datac => \FD|BANCO_REG|saidaA[24]~24_combout\,
	datad => \FD|ULA|SOMA|CarryOut[23]~23_combout\,
	combout => \FD|ULA|SOMA|CarryOut[24]~24_combout\);

-- Location: LCCOMB_X69_Y45_N16
\FD|ULA|MUX|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux6~0_combout\ = \FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[25]~41_combout\ $ (((\FD|ULA|SOMA|CarryOut[24]~24_combout\ & \FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[25]~41_combout\,
	datac => \FD|ULA|SOMA|CarryOut[24]~24_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y45_N6
\FD|ULA|MUX|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux6~1_combout\ = (\FD|BANCO_REG|saidaA[25]~25_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux6~0_combout\))))) # (!\FD|BANCO_REG|saidaA[25]~25_combout\ & (\FD|ULA|MUX|Mux6~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[25]~25_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|MUX|Mux6~0_combout\,
	combout => \FD|ULA|MUX|Mux6~1_combout\);

-- Location: LCCOMB_X69_Y45_N28
\FD|MUX_ULA_MEM|q[25]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[25]~88_combout\ = (\FD|ULA|MUX|Mux6~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux6~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[25]~88_combout\);

-- Location: LCCOMB_X68_Y45_N6
\FD|BANCO_REG|saidaA[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[26]~26_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(17))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(17),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a6\,
	combout => \FD|BANCO_REG|saidaA[26]~26_combout\);

-- Location: FF_X68_Y45_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(17));

-- Location: LCCOMB_X68_Y45_N20
\FD|MUX_RT_IMM|q[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[26]~42_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(17)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(17),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[26]~42_combout\);

-- Location: LCCOMB_X66_Y45_N12
\FD|ULA|SOMA|CarryOut[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[25]~25_combout\ = (\FD|BANCO_REG|saidaA[25]~25_combout\ & ((\FD|ULA|SOMA|CarryOut[24]~24_combout\) # (\FD|MUX_RT_IMM|q[25]~41_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[25]~25_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[24]~24_combout\ & (\FD|MUX_RT_IMM|q[25]~41_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[25]~41_combout\,
	datab => \FD|UC_ULA|q[2]~2_combout\,
	datac => \FD|BANCO_REG|saidaA[25]~25_combout\,
	datad => \FD|ULA|SOMA|CarryOut[24]~24_combout\,
	combout => \FD|ULA|SOMA|CarryOut[25]~25_combout\);

-- Location: LCCOMB_X68_Y45_N18
\FD|ULA|MUX|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux5~0_combout\ = \FD|MUX_RT_IMM|q[26]~42_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|MUX_RT_IMM|q[26]~42_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[25]~25_combout\,
	combout => \FD|ULA|MUX|Mux5~0_combout\);

-- Location: LCCOMB_X68_Y45_N0
\FD|ULA|MUX|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux5~1_combout\ = (\FD|BANCO_REG|saidaA[26]~26_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux5~0_combout\))))) # (!\FD|BANCO_REG|saidaA[26]~26_combout\ & (\FD|ULA|MUX|Mux5~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[26]~26_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|MUX|Mux5~0_combout\,
	combout => \FD|ULA|MUX|Mux5~1_combout\);

-- Location: LCCOMB_X68_Y45_N28
\FD|MUX_ULA_MEM|q[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[26]~89_combout\ = (\FD|ULA|MUX|Mux5~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|ULA|MUX|Mux5~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[26]~89_combout\);

-- Location: LCCOMB_X68_Y45_N14
\FD|BANCO_REG|saidaA[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[27]~27_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(16))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(16),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a5\,
	combout => \FD|BANCO_REG|saidaA[27]~27_combout\);

-- Location: FF_X68_Y45_N5
\FD|BANCO_REG|registrador_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(16));

-- Location: LCCOMB_X68_Y45_N4
\FD|MUX_RT_IMM|q[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[27]~43_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(16)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(16),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[27]~43_combout\);

-- Location: LCCOMB_X66_Y45_N26
\FD|ULA|SOMA|CarryOut[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[26]~26_combout\ = (\FD|BANCO_REG|saidaA[26]~26_combout\ & ((\FD|ULA|SOMA|CarryOut[25]~25_combout\) # (\FD|MUX_RT_IMM|q[26]~42_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[26]~26_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[25]~25_combout\ & (\FD|MUX_RT_IMM|q[26]~42_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[26]~26_combout\,
	datab => \FD|MUX_RT_IMM|q[26]~42_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[25]~25_combout\,
	combout => \FD|ULA|SOMA|CarryOut[26]~26_combout\);

-- Location: LCCOMB_X68_Y45_N10
\FD|ULA|MUX|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux4~0_combout\ = \FD|MUX_RT_IMM|q[27]~43_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|MUX_RT_IMM|q[27]~43_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[26]~26_combout\,
	combout => \FD|ULA|MUX|Mux4~0_combout\);

-- Location: LCCOMB_X68_Y45_N24
\FD|ULA|MUX|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux4~1_combout\ = (\FD|BANCO_REG|saidaA[27]~27_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux4~0_combout\))))) # (!\FD|BANCO_REG|saidaA[27]~27_combout\ & (\FD|ULA|MUX|Mux4~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[0]~0_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|BANCO_REG|saidaA[27]~27_combout\,
	datad => \FD|ULA|MUX|Mux4~0_combout\,
	combout => \FD|ULA|MUX|Mux4~1_combout\);

-- Location: LCCOMB_X68_Y45_N30
\FD|MUX_ULA_MEM|q[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[27]~90_combout\ = (\FD|ULA|MUX|Mux4~1_combout\ & ((!\FD|MEM_INST|q\(27)) # (!\FD|MEM_INST|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|MEM_INST|q\(27),
	datad => \FD|ULA|MUX|Mux4~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[27]~90_combout\);

-- Location: LCCOMB_X66_Y47_N16
\FD|BANCO_REG|saidaA[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[28]~28_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(15))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(15),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|BANCO_REG|saidaA[28]~28_combout\);

-- Location: FF_X63_Y45_N3
\FD|BANCO_REG|registrador_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(15));

-- Location: LCCOMB_X63_Y45_N2
\FD|MUX_RT_IMM|q[28]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[28]~44_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(15))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(15),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\,
	combout => \FD|MUX_RT_IMM|q[28]~44_combout\);

-- Location: LCCOMB_X66_Y45_N8
\FD|ULA|SOMA|CarryOut[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[27]~27_combout\ = (\FD|ULA|SOMA|CarryOut[26]~26_combout\ & ((\FD|BANCO_REG|saidaA[27]~27_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[27]~43_combout\)))) # (!\FD|ULA|SOMA|CarryOut[26]~26_combout\ & 
-- (\FD|BANCO_REG|saidaA[27]~27_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[27]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|MUX_RT_IMM|q[27]~43_combout\,
	datac => \FD|ULA|SOMA|CarryOut[26]~26_combout\,
	datad => \FD|BANCO_REG|saidaA[27]~27_combout\,
	combout => \FD|ULA|SOMA|CarryOut[27]~27_combout\);

-- Location: LCCOMB_X67_Y45_N16
\FD|ULA|MUX|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux3~0_combout\ = \FD|MUX_RT_IMM|q[28]~44_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[28]~44_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[27]~27_combout\,
	combout => \FD|ULA|MUX|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y45_N30
\FD|ULA|MUX|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux3~1_combout\ = (\FD|BANCO_REG|saidaA[28]~28_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux3~0_combout\))))) # (!\FD|BANCO_REG|saidaA[28]~28_combout\ & (\FD|ULA|MUX|Mux3~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[28]~28_combout\,
	datad => \FD|ULA|MUX|Mux3~0_combout\,
	combout => \FD|ULA|MUX|Mux3~1_combout\);

-- Location: LCCOMB_X67_Y45_N22
\FD|MUX_ULA_MEM|q[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[28]~91_combout\ = (\FD|ULA|MUX|Mux3~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datac => \FD|ULA|MUX|Mux3~1_combout\,
	datad => \FD|MEM_INST|q\(26),
	combout => \FD|MUX_ULA_MEM|q[28]~91_combout\);

-- Location: LCCOMB_X66_Y47_N10
\FD|BANCO_REG|saidaA[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[29]~29_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(14))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(14),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a3\,
	combout => \FD|BANCO_REG|saidaA[29]~29_combout\);

-- Location: FF_X63_Y45_N9
\FD|BANCO_REG|registrador_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(14));

-- Location: LCCOMB_X63_Y45_N8
\FD|MUX_RT_IMM|q[29]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[29]~45_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(14))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(14),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\,
	combout => \FD|MUX_RT_IMM|q[29]~45_combout\);

-- Location: LCCOMB_X66_Y45_N14
\FD|ULA|SOMA|CarryOut[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[28]~28_combout\ = (\FD|BANCO_REG|saidaA[28]~28_combout\ & ((\FD|ULA|SOMA|CarryOut[27]~27_combout\) # (\FD|MUX_RT_IMM|q[28]~44_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|BANCO_REG|saidaA[28]~28_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[27]~27_combout\ & (\FD|MUX_RT_IMM|q[28]~44_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[28]~28_combout\,
	datab => \FD|MUX_RT_IMM|q[28]~44_combout\,
	datac => \FD|ULA|SOMA|CarryOut[27]~27_combout\,
	datad => \FD|UC_ULA|q[2]~2_combout\,
	combout => \FD|ULA|SOMA|CarryOut[28]~28_combout\);

-- Location: LCCOMB_X67_Y45_N24
\FD|ULA|MUX|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux2~0_combout\ = \FD|MUX_RT_IMM|q[29]~45_combout\ $ (\FD|UC_ULA|q[2]~2_combout\ $ (((\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|SOMA|CarryOut[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[29]~45_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|ULA|SOMA|CarryOut[28]~28_combout\,
	combout => \FD|ULA|MUX|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y45_N14
\FD|ULA|MUX|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux2~1_combout\ = (\FD|BANCO_REG|saidaA[29]~29_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|MUX|Mux2~0_combout\))))) # (!\FD|BANCO_REG|saidaA[29]~29_combout\ & (\FD|ULA|MUX|Mux2~0_combout\ & 
-- (\FD|UC_ULA|q[1]~1_combout\ $ (\FD|UC_ULA|q[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[29]~29_combout\,
	datad => \FD|ULA|MUX|Mux2~0_combout\,
	combout => \FD|ULA|MUX|Mux2~1_combout\);

-- Location: LCCOMB_X67_Y45_N20
\FD|MUX_ULA_MEM|q[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[29]~92_combout\ = (\FD|ULA|MUX|Mux2~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux2~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[29]~92_combout\);

-- Location: LCCOMB_X68_Y45_N2
\FD|BANCO_REG|saidaA[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[30]~30_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(13))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(13),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|BANCO_REG|saidaA[30]~30_combout\);

-- Location: LCCOMB_X68_Y45_N22
\FD|ULA|MUX|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux1~1_combout\ = (\FD|UC_ULA|q[0]~0_combout\ & ((\FD|BANCO_REG|saidaA[30]~30_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[30]~46_combout\)))) # (!\FD|UC_ULA|q[0]~0_combout\ & (\FD|BANCO_REG|saidaA[30]~30_combout\ & 
-- (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[30]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[0]~0_combout\,
	datab => \FD|BANCO_REG|saidaA[30]~30_combout\,
	datac => \FD|UC_ULA|q[2]~2_combout\,
	datad => \FD|MUX_RT_IMM|q[30]~46_combout\,
	combout => \FD|ULA|MUX|Mux1~1_combout\);

-- Location: LCCOMB_X67_Y45_N10
\FD|MUX_ULA_MEM|q[30]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[30]~62_combout\ = (!\UCFD|MUX3~combout\ & ((\FD|ULA|MUX|Mux1~0_combout\) # ((!\FD|UC_ULA|q[1]~1_combout\ & \FD|ULA|MUX|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|MUX3~combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|ULA|MUX|Mux1~0_combout\,
	datad => \FD|ULA|MUX|Mux1~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[30]~62_combout\);

-- Location: LCCOMB_X68_Y45_N16
\FD|BANCO_REG|saidaA[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaA[31]~31_combout\ = (!\FD|BANCO_REG|Equal0~0_combout\ & ((\FD|BANCO_REG|Mux31~1_combout\ & (\FD|BANCO_REG|registrador_rtl_0_bypass\(12))) # (!\FD|BANCO_REG|Mux31~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal0~0_combout\,
	datab => \FD|BANCO_REG|Mux31~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_0_bypass\(12),
	datad => \FD|BANCO_REG|registrador_rtl_0|auto_generated|ram_block1a1\,
	combout => \FD|BANCO_REG|saidaA[31]~31_combout\);

-- Location: LCCOMB_X67_Y45_N28
\FD|ULA|MUX|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux31~2_combout\ = (\FD|UC_ULA|q[1]~1_combout\ & !\FD|UC_ULA|q[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|UC_ULA|q[0]~0_combout\,
	combout => \FD|ULA|MUX|Mux31~2_combout\);

-- Location: FF_X68_Y45_N27
\FD|BANCO_REG|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(12));

-- Location: LCCOMB_X68_Y45_N26
\FD|MUX_RT_IMM|q[31]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[31]~47_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(12))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(12),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\,
	combout => \FD|MUX_RT_IMM|q[31]~47_combout\);

-- Location: LCCOMB_X62_Y45_N14
\FD|ULA|INVERTE_B|q[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|INVERTE_B|q[31]~5_combout\ = \FD|MUX_RT_IMM|q[31]~47_combout\ $ (((\FD|MEM_INST|q\(28)) # ((!\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(28),
	datab => \FD|MEM_INST|q\(27),
	datac => \FD|MEM_INST|q\(1),
	datad => \FD|MUX_RT_IMM|q[31]~47_combout\,
	combout => \FD|ULA|INVERTE_B|q[31]~5_combout\);

-- Location: LCCOMB_X66_Y45_N4
\FD|ULA|SOMA|CarryOut[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[29]~29_combout\ = (\FD|BANCO_REG|saidaA[29]~29_combout\ & ((\FD|ULA|SOMA|CarryOut[28]~28_combout\) # (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[29]~45_combout\)))) # (!\FD|BANCO_REG|saidaA[29]~29_combout\ & 
-- (\FD|ULA|SOMA|CarryOut[28]~28_combout\ & (\FD|UC_ULA|q[2]~2_combout\ $ (\FD|MUX_RT_IMM|q[29]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[2]~2_combout\,
	datab => \FD|BANCO_REG|saidaA[29]~29_combout\,
	datac => \FD|ULA|SOMA|CarryOut[28]~28_combout\,
	datad => \FD|MUX_RT_IMM|q[29]~45_combout\,
	combout => \FD|ULA|SOMA|CarryOut[29]~29_combout\);

-- Location: LCCOMB_X66_Y45_N22
\FD|ULA|SOMA|CarryOut[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|SOMA|CarryOut[30]~30_combout\ = (\FD|ULA|SOMA|CarryOut[29]~29_combout\ & ((\FD|BANCO_REG|saidaA[30]~30_combout\) # (\FD|MUX_RT_IMM|q[30]~46_combout\ $ (\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|ULA|SOMA|CarryOut[29]~29_combout\ & 
-- (\FD|BANCO_REG|saidaA[30]~30_combout\ & (\FD|MUX_RT_IMM|q[30]~46_combout\ $ (\FD|UC_ULA|q[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[30]~46_combout\,
	datab => \FD|UC_ULA|q[2]~2_combout\,
	datac => \FD|ULA|SOMA|CarryOut[29]~29_combout\,
	datad => \FD|BANCO_REG|saidaA[30]~30_combout\,
	combout => \FD|ULA|SOMA|CarryOut[30]~30_combout\);

-- Location: LCCOMB_X67_Y45_N8
\FD|ULA|MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux0~0_combout\ = (\FD|ULA|MUX|Mux31~2_combout\ & (\FD|BANCO_REG|saidaA[31]~31_combout\ $ (\FD|ULA|INVERTE_B|q[31]~5_combout\ $ (\FD|ULA|SOMA|CarryOut[30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[31]~31_combout\,
	datab => \FD|ULA|MUX|Mux31~2_combout\,
	datac => \FD|ULA|INVERTE_B|q[31]~5_combout\,
	datad => \FD|ULA|SOMA|CarryOut[30]~30_combout\,
	combout => \FD|ULA|MUX|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y45_N8
\FD|ULA|MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux0~1_combout\ = (!\FD|UC_ULA|q[1]~1_combout\ & ((\FD|BANCO_REG|saidaA[31]~31_combout\ & ((\FD|UC_ULA|q[0]~0_combout\) # (\FD|ULA|INVERTE_B|q[31]~5_combout\))) # (!\FD|BANCO_REG|saidaA[31]~31_combout\ & (\FD|UC_ULA|q[0]~0_combout\ & 
-- \FD|ULA|INVERTE_B|q[31]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|saidaA[31]~31_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|UC_ULA|q[0]~0_combout\,
	datad => \FD|ULA|INVERTE_B|q[31]~5_combout\,
	combout => \FD|ULA|MUX|Mux0~1_combout\);

-- Location: LCCOMB_X67_Y45_N0
\FD|MUX_ULA_MEM|q[31]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[31]~93_combout\ = (\FD|MEM_INST|q\(27) & (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux0~0_combout\) # (\FD|ULA|MUX|Mux0~1_combout\)))) # (!\FD|MEM_INST|q\(27) & (((\FD|ULA|MUX|Mux0~0_combout\) # (\FD|ULA|MUX|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux0~0_combout\,
	datad => \FD|ULA|MUX|Mux0~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[31]~93_combout\);

-- Location: LCCOMB_X65_Y45_N8
\FD|MUX_RT_IMM|q[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[0]~16_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(11))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|MUX_RT_IMM|q[0]~15_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(11),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|MUX_RT_IMM|q[0]~16_combout\);

-- Location: LCCOMB_X70_Y45_N12
\FD|ULA|MUX|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux31~0_combout\ = (\FD|MUX_RT_IMM|q[0]~16_combout\ & ((\FD|UC_ULA|q[1]~1_combout\) # ((!\FD|UC_ULA|q[2]~2_combout\)))) # (!\FD|MUX_RT_IMM|q[0]~16_combout\ & (\FD|MUX_RT_IMM|q[0]~14_combout\ $ (((!\FD|UC_ULA|q[1]~1_combout\ & 
-- \FD|UC_ULA|q[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_IMM|q[0]~16_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datac => \FD|MUX_RT_IMM|q[0]~14_combout\,
	datad => \FD|UC_ULA|q[2]~2_combout\,
	combout => \FD|ULA|MUX|Mux31~0_combout\);

-- Location: LCCOMB_X70_Y45_N22
\FD|ULA|MUX|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux31~1_combout\ = (\FD|ULA|MUX|Mux31~0_combout\ & (\FD|UC_ULA|q[1]~1_combout\ $ (((\FD|UC_ULA|q[0]~0_combout\) # (\FD|BANCO_REG|saidaA[0]~0_combout\))))) # (!\FD|ULA|MUX|Mux31~0_combout\ & (\FD|BANCO_REG|saidaA[0]~0_combout\ & 
-- (\FD|UC_ULA|q[0]~0_combout\ $ (\FD|UC_ULA|q[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux31~0_combout\,
	datab => \FD|UC_ULA|q[0]~0_combout\,
	datac => \FD|BANCO_REG|saidaA[0]~0_combout\,
	datad => \FD|UC_ULA|q[1]~1_combout\,
	combout => \FD|ULA|MUX|Mux31~1_combout\);

-- Location: LCCOMB_X61_Y45_N20
\FD|RAM|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|RAM|q[0]~1_combout\ = (\FD|RAM|q[2]~0_combout\ & (\FD|ULA|MUX|Mux29~1_combout\ & ((!\FD|ULA|MUX|Mux27~1_combout\) # (!\FD|ULA|MUX|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|q[2]~0_combout\,
	datab => \FD|ULA|MUX|Mux29~1_combout\,
	datac => \FD|ULA|MUX|Mux28~1_combout\,
	datad => \FD|ULA|MUX|Mux27~1_combout\,
	combout => \FD|RAM|q[0]~1_combout\);

-- Location: LCCOMB_X61_Y45_N18
\FD|MUX_ULA_MEM|q[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[0]~63_combout\ = (\FD|RAM|q[0]~1_combout\) # ((\FD|ULA|MUX|Mux31~1_combout\ & ((!\FD|MEM_INST|q\(26)) # (!\FD|MEM_INST|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux31~1_combout\,
	datad => \FD|RAM|q[0]~1_combout\,
	combout => \FD|MUX_ULA_MEM|q[0]~63_combout\);

-- Location: FF_X68_Y45_N9
\FD|BANCO_REG|registrador_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(13));

-- Location: LCCOMB_X68_Y45_N8
\FD|MUX_RT_IMM|q[30]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_RT_IMM|q[30]~46_combout\ = (\FD|MUX_RT_IMM|q[0]~15_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(13)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(13),
	datad => \FD|MUX_RT_IMM|q[0]~15_combout\,
	combout => \FD|MUX_RT_IMM|q[30]~46_combout\);

-- Location: LCCOMB_X69_Y45_N26
\FD|ULA|INVERTE_B|q[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|INVERTE_B|q[30]~4_combout\ = \FD|MUX_RT_IMM|q[30]~46_combout\ $ (((\FD|MEM_INST|q\(28)) # ((!\FD|MEM_INST|q\(27) & \FD|MEM_INST|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(27),
	datab => \FD|MEM_INST|q\(28),
	datac => \FD|MEM_INST|q\(1),
	datad => \FD|MUX_RT_IMM|q[30]~46_combout\,
	combout => \FD|ULA|INVERTE_B|q[30]~4_combout\);

-- Location: LCCOMB_X67_Y45_N26
\FD|ULA|MUX|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux1~0_combout\ = (\FD|ULA|MUX|Mux31~2_combout\ & (\FD|ULA|INVERTE_B|q[30]~4_combout\ $ (\FD|ULA|SOMA|CarryOut[29]~29_combout\ $ (\FD|BANCO_REG|saidaA[30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|INVERTE_B|q[30]~4_combout\,
	datab => \FD|ULA|MUX|Mux31~2_combout\,
	datac => \FD|ULA|SOMA|CarryOut[29]~29_combout\,
	datad => \FD|BANCO_REG|saidaA[30]~30_combout\,
	combout => \FD|ULA|MUX|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y45_N2
\FD|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~1_combout\ = (!\FD|ULA|MUX|Mux20~1_combout\ & (!\FD|ULA|MUX|Mux28~1_combout\ & (!\FD|ULA|MUX|Mux19~1_combout\ & !\FD|ULA|MUX|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux20~1_combout\,
	datab => \FD|ULA|MUX|Mux28~1_combout\,
	datac => \FD|ULA|MUX|Mux19~1_combout\,
	datad => \FD|ULA|MUX|Mux27~1_combout\,
	combout => \FD|comb~1_combout\);

-- Location: LCCOMB_X65_Y48_N16
\FD|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~2_combout\ = (!\FD|ULA|MUX|Mux17~1_combout\ & (!\FD|ULA|MUX|Mux18~1_combout\ & (!\FD|ULA|MUX|Mux16~1_combout\ & !\FD|ULA|MUX|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux17~1_combout\,
	datab => \FD|ULA|MUX|Mux18~1_combout\,
	datac => \FD|ULA|MUX|Mux16~1_combout\,
	datad => \FD|ULA|MUX|Mux15~1_combout\,
	combout => \FD|comb~2_combout\);

-- Location: LCCOMB_X66_Y47_N14
\FD|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~3_combout\ = (!\FD|ULA|MUX|Mux14~1_combout\ & (!\FD|ULA|MUX|Mux12~1_combout\ & (!\FD|ULA|MUX|Mux11~1_combout\ & !\FD|ULA|MUX|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux14~1_combout\,
	datab => \FD|ULA|MUX|Mux12~1_combout\,
	datac => \FD|ULA|MUX|Mux11~1_combout\,
	datad => \FD|ULA|MUX|Mux13~1_combout\,
	combout => \FD|comb~3_combout\);

-- Location: LCCOMB_X67_Y45_N18
\FD|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~4_combout\ = (!\FD|ULA|MUX|Mux8~1_combout\ & (!\FD|ULA|MUX|Mux10~1_combout\ & (!\FD|ULA|MUX|Mux9~1_combout\ & !\FD|ULA|MUX|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux8~1_combout\,
	datab => \FD|ULA|MUX|Mux10~1_combout\,
	datac => \FD|ULA|MUX|Mux9~1_combout\,
	datad => \FD|ULA|MUX|Mux7~1_combout\,
	combout => \FD|comb~4_combout\);

-- Location: LCCOMB_X67_Y45_N4
\FD|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~5_combout\ = (\FD|comb~1_combout\ & (\FD|comb~2_combout\ & (\FD|comb~3_combout\ & \FD|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|comb~1_combout\,
	datab => \FD|comb~2_combout\,
	datac => \FD|comb~3_combout\,
	datad => \FD|comb~4_combout\,
	combout => \FD|comb~5_combout\);

-- Location: LCCOMB_X61_Y45_N0
\FD|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~7_combout\ = (!\FD|ULA|MUX|Mux25~1_combout\ & (!\FD|ULA|MUX|Mux26~1_combout\ & \FD|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux25~1_combout\,
	datac => \FD|ULA|MUX|Mux26~1_combout\,
	datad => \FD|comb~0_combout\,
	combout => \FD|comb~7_combout\);

-- Location: LCCOMB_X61_Y45_N10
\FD|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~8_combout\ = (!\FD|ULA|MUX|Mux31~1_combout\ & (!\FD|ULA|MUX|Mux30~1_combout\ & (!\FD|ULA|MUX|Mux29~1_combout\ & \FD|comb~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux31~1_combout\,
	datab => \FD|ULA|MUX|Mux30~1_combout\,
	datac => \FD|ULA|MUX|Mux29~1_combout\,
	datad => \FD|comb~7_combout\,
	combout => \FD|comb~8_combout\);

-- Location: LCCOMB_X69_Y45_N0
\FD|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~9_combout\ = (\FD|comb~8_combout\ & (!\FD|ULA|MUX|Mux0~1_combout\ & (\FD|MEM_INST|q\(28) & !\FD|ULA|MUX|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|comb~8_combout\,
	datab => \FD|ULA|MUX|Mux0~1_combout\,
	datac => \FD|MEM_INST|q\(28),
	datad => \FD|ULA|MUX|Mux6~1_combout\,
	combout => \FD|comb~9_combout\);

-- Location: LCCOMB_X67_Y45_N2
\FD|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~6_combout\ = (!\FD|ULA|MUX|Mux5~1_combout\ & (!\FD|ULA|MUX|Mux4~1_combout\ & ((\FD|UC_ULA|q[1]~1_combout\) # (!\FD|ULA|MUX|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC_ULA|q[1]~1_combout\,
	datab => \FD|ULA|MUX|Mux1~1_combout\,
	datac => \FD|ULA|MUX|Mux5~1_combout\,
	datad => \FD|ULA|MUX|Mux4~1_combout\,
	combout => \FD|comb~6_combout\);

-- Location: LCCOMB_X67_Y45_N12
\FD|comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~10_combout\ = (!\FD|ULA|MUX|Mux3~1_combout\ & (\FD|comb~5_combout\ & (\FD|comb~9_combout\ & \FD|comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux3~1_combout\,
	datab => \FD|comb~5_combout\,
	datac => \FD|comb~9_combout\,
	datad => \FD|comb~6_combout\,
	combout => \FD|comb~10_combout\);

-- Location: LCCOMB_X67_Y45_N6
\FD|comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~11_combout\ = (!\FD|ULA|MUX|Mux1~0_combout\ & (!\FD|ULA|MUX|Mux2~1_combout\ & (!\FD|ULA|MUX|Mux0~0_combout\ & \FD|comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux1~0_combout\,
	datab => \FD|ULA|MUX|Mux2~1_combout\,
	datac => \FD|ULA|MUX|Mux0~0_combout\,
	datad => \FD|comb~10_combout\,
	combout => \FD|comb~11_combout\);

-- Location: LCCOMB_X68_Y46_N4
\FD|PC|DOUT[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[3]~0_combout\ = (\FD|comb~11_combout\ & (\FD|SOMA_PC_IMM|SOMAOUT[3]~4_combout\)) # (!\FD|comb~11_combout\ & ((\FD|SOMA_PC|SOMAOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|SOMAOUT[3]~4_combout\,
	datab => \FD|SOMA_PC|SOMAOUT\(3),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[3]~0_combout\);

-- Location: FF_X68_Y46_N5
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[3]~0_combout\,
	asdata => \FD|MEM_INST|q\(1),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: LCCOMB_X69_Y46_N2
\FD|MEM_INST|content~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~3_combout\ = (\FD|PC|DOUT\(4)) # ((\FD|PC|DOUT\(3) & ((\FD|PC|DOUT\(2)))) # (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(5) & !\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~3_combout\);

-- Location: LCCOMB_X69_Y46_N0
\FD|MEM_INST|content~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~4_combout\ = (!\FD|PC|DOUT\(7) & (\FD|MEM_INST|content~0_combout\ & !\FD|MEM_INST|content~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~3_combout\,
	combout => \FD|MEM_INST|content~4_combout\);

-- Location: FF_X65_Y46_N1
\FD|MEM_INST|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(27));

-- Location: LCCOMB_X67_Y47_N4
\UCFD|MUX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|MUX1~combout\ = \FD|MEM_INST|q\(26) $ (\FD|MEM_INST|q\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datad => \FD|MEM_INST|q\(27),
	combout => \UCFD|MUX1~combout\);

-- Location: LCCOMB_X68_Y46_N6
\FD|MUX_JUMP|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[2]~0_combout\ = (\UCFD|MUX1~combout\ & (\FD|MEM_INST|q\(0))) # (!\UCFD|MUX1~combout\ & (\FD|PC|DOUT\(2) $ (((!\FD|comb~11_combout\) # (!\FD|MEM_INST|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|MUX1~combout\,
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[2]~0_combout\);

-- Location: FF_X68_Y46_N7
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LCCOMB_X68_Y46_N12
\FD|SOMA_PC|SOMAOUT[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(5) = \FD|PC|DOUT\(5) $ (((\FD|PC|DOUT\(2) & (\FD|PC|DOUT\(3) & \FD|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|SOMA_PC|SOMAOUT\(5));

-- Location: LCCOMB_X68_Y46_N30
\FD|SOMA_PC|OUT_AND2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(3) = (\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|SOMA_PC|OUT_AND2\(3));

-- Location: LCCOMB_X68_Y46_N16
\FD|SOMA_PC_IMM|CarryOut[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[3]~0_combout\ = (\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(2) & ((\FD|MEM_INST|q\(1)) # (\FD|MEM_INST|q\(0))))) # (!\FD|PC|DOUT\(3) & (\FD|MEM_INST|q\(1) & ((\FD|PC|DOUT\(2)) # (\FD|MEM_INST|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|MEM_INST|q\(1),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|MEM_INST|q\(0),
	combout => \FD|SOMA_PC_IMM|CarryOut[3]~0_combout\);

-- Location: LCCOMB_X68_Y46_N0
\FD|SOMA_PC_IMM|CarryOut[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[4]~1_combout\ = (\FD|MEM_INST|q\(2) & ((\FD|SOMA_PC_IMM|CarryOut[3]~0_combout\) # (\FD|PC|DOUT\(4) $ (\FD|SOMA_PC|OUT_AND2\(3))))) # (!\FD|MEM_INST|q\(2) & (\FD|SOMA_PC_IMM|CarryOut[3]~0_combout\ & (\FD|PC|DOUT\(4) $ 
-- (\FD|SOMA_PC|OUT_AND2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(2),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|SOMA_PC|OUT_AND2\(3),
	datad => \FD|SOMA_PC_IMM|CarryOut[3]~0_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[4]~1_combout\);

-- Location: LCCOMB_X68_Y46_N14
\FD|SOMA_PC_IMM|SOMAOUT[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(5) = \FD|SOMA_PC|OUT_AND2\(4) $ (\FD|MEM_INST|q\(3) $ (\FD|PC|DOUT\(5) $ (\FD|SOMA_PC_IMM|CarryOut[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(4),
	datab => \FD|MEM_INST|q\(3),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|SOMA_PC_IMM|CarryOut[4]~1_combout\,
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(5));

-- Location: LCCOMB_X68_Y46_N8
\FD|PC|DOUT[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[5]~2_combout\ = (\FD|comb~11_combout\ & ((\FD|SOMA_PC_IMM|SOMAOUT\(5)))) # (!\FD|comb~11_combout\ & (\FD|SOMA_PC|SOMAOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(5),
	datab => \FD|SOMA_PC_IMM|SOMAOUT\(5),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[5]~2_combout\);

-- Location: FF_X68_Y46_N9
\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[5]~2_combout\,
	asdata => \FD|MEM_INST|q\(3),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

-- Location: LCCOMB_X67_Y46_N14
\FD|SOMA_PC|OUT_AND2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(7) = (\FD|PC|DOUT\(6) & (\FD|SOMA_PC|OUT_AND2\(4) & (\FD|PC|DOUT\(5) & \FD|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(6),
	datab => \FD|SOMA_PC|OUT_AND2\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(7),
	combout => \FD|SOMA_PC|OUT_AND2\(7));

-- Location: LCCOMB_X66_Y42_N10
\FD|SOMA_PC|SOMAOUT[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(8) = \FD|PC|DOUT\(8) $ (\FD|SOMA_PC|OUT_AND2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(8),
	datac => \FD|SOMA_PC|OUT_AND2\(7),
	combout => \FD|SOMA_PC|SOMAOUT\(8));

-- Location: LCCOMB_X67_Y46_N2
\FD|SOMA_PC|OUT_AND2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(6) = (\FD|SOMA_PC|OUT_AND2\(4) & (\FD|PC|DOUT\(5) & \FD|PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|SOMA_PC|OUT_AND2\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(6),
	combout => \FD|SOMA_PC|OUT_AND2\(6));

-- Location: LCCOMB_X68_Y46_N2
\FD|SOMA_PC_IMM|CarryOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[6]~3_combout\ = (\FD|SOMA_PC_IMM|CarryOut[5]~2_combout\ & (\FD|PC|DOUT\(6) $ (((\FD|SOMA_PC|OUT_AND2\(4) & \FD|PC|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(4),
	datab => \FD|PC|DOUT\(6),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|SOMA_PC_IMM|CarryOut[5]~2_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[6]~3_combout\);

-- Location: LCCOMB_X67_Y46_N28
\FD|SOMA_PC_IMM|CarryOut[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[7]~4_combout\ = (\FD|MEM_INST|q\(5) & ((\FD|SOMA_PC_IMM|CarryOut[6]~3_combout\) # (\FD|PC|DOUT\(7) $ (\FD|SOMA_PC|OUT_AND2\(6))))) # (!\FD|MEM_INST|q\(5) & (\FD|SOMA_PC_IMM|CarryOut[6]~3_combout\ & (\FD|PC|DOUT\(7) $ 
-- (\FD|SOMA_PC|OUT_AND2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(5),
	datab => \FD|PC|DOUT\(7),
	datac => \FD|SOMA_PC|OUT_AND2\(6),
	datad => \FD|SOMA_PC_IMM|CarryOut[6]~3_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[7]~4_combout\);

-- Location: LCCOMB_X66_Y42_N16
\FD|MUX_JUMP|q[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[8]~2_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(8) $ (((\FD|SOMA_PC_IMM|CarryOut[7]~4_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(8),
	datab => \FD|SOMA_PC_IMM|CarryOut[7]~4_combout\,
	datac => \UCFD|MUX1~combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[8]~2_combout\);

-- Location: FF_X66_Y42_N17
\FD|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(8));

-- Location: LCCOMB_X67_Y46_N18
\FD|SOMA_PC_IMM|CarryOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[8]~5_combout\ = (\FD|SOMA_PC_IMM|CarryOut[7]~4_combout\ & (\FD|PC|DOUT\(8) $ (((\FD|PC|DOUT\(7) & \FD|SOMA_PC|OUT_AND2\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|SOMA_PC|OUT_AND2\(6),
	datac => \FD|PC|DOUT\(8),
	datad => \FD|SOMA_PC_IMM|CarryOut[7]~4_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[8]~5_combout\);

-- Location: LCCOMB_X66_Y42_N4
\FD|SOMA_PC|SOMAOUT[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(9) = \FD|PC|DOUT\(9) $ (((\FD|PC|DOUT\(8) & \FD|SOMA_PC|OUT_AND2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(8),
	datac => \FD|SOMA_PC|OUT_AND2\(7),
	datad => \FD|PC|DOUT\(9),
	combout => \FD|SOMA_PC|SOMAOUT\(9));

-- Location: LCCOMB_X66_Y42_N2
\FD|MUX_JUMP|q[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[9]~3_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(9) $ (((\FD|SOMA_PC_IMM|CarryOut[8]~5_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|MUX1~combout\,
	datab => \FD|SOMA_PC_IMM|CarryOut[8]~5_combout\,
	datac => \FD|SOMA_PC|SOMAOUT\(9),
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[9]~3_combout\);

-- Location: FF_X66_Y42_N3
\FD|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(9));

-- Location: LCCOMB_X66_Y42_N0
\FD|SOMA_PC_IMM|CarryOut[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[9]~6_combout\ = (\FD|SOMA_PC_IMM|CarryOut[8]~5_combout\ & (\FD|PC|DOUT\(9) $ (((\FD|PC|DOUT\(8) & \FD|SOMA_PC|OUT_AND2\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(8),
	datab => \FD|PC|DOUT\(9),
	datac => \FD|SOMA_PC|OUT_AND2\(7),
	datad => \FD|SOMA_PC_IMM|CarryOut[8]~5_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[9]~6_combout\);

-- Location: LCCOMB_X66_Y42_N22
\FD|SOMA_PC|SOMAOUT[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(10) = \FD|PC|DOUT\(10) $ (((\FD|PC|DOUT\(8) & (\FD|PC|DOUT\(9) & \FD|SOMA_PC|OUT_AND2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(8),
	datab => \FD|PC|DOUT\(9),
	datac => \FD|SOMA_PC|OUT_AND2\(7),
	datad => \FD|PC|DOUT\(10),
	combout => \FD|SOMA_PC|SOMAOUT\(10));

-- Location: LCCOMB_X66_Y42_N28
\FD|MUX_JUMP|q[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[10]~4_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(10) $ (((\FD|SOMA_PC_IMM|CarryOut[9]~6_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|MUX1~combout\,
	datab => \FD|SOMA_PC_IMM|CarryOut[9]~6_combout\,
	datac => \FD|SOMA_PC|SOMAOUT\(10),
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[10]~4_combout\);

-- Location: FF_X66_Y42_N29
\FD|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(10));

-- Location: LCCOMB_X66_Y42_N12
\FD|MEM_INST|content~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~0_combout\ = (!\FD|PC|DOUT\(8) & (!\FD|PC|DOUT\(9) & (!\FD|PC|DOUT\(6) & !\FD|PC|DOUT\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(8),
	datab => \FD|PC|DOUT\(9),
	datac => \FD|PC|DOUT\(6),
	datad => \FD|PC|DOUT\(10),
	combout => \FD|MEM_INST|content~0_combout\);

-- Location: LCCOMB_X69_Y46_N18
\FD|MEM_INST|content~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~11_combout\ = (!\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(3) $ (((\FD|PC|DOUT\(4)) # (\FD|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~11_combout\);

-- Location: LCCOMB_X69_Y46_N4
\FD|MEM_INST|content~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~12_combout\ = (!\FD|PC|DOUT\(7) & (\FD|MEM_INST|content~0_combout\ & \FD|MEM_INST|content~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~11_combout\,
	combout => \FD|MEM_INST|content~12_combout\);

-- Location: FF_X69_Y46_N5
\FD|MEM_INST|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(2));

-- Location: LCCOMB_X68_Y46_N22
\FD|SOMA_PC_IMM|SOMAOUT[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(4) = \FD|MEM_INST|q\(2) $ (\FD|SOMA_PC_IMM|CarryOut[3]~0_combout\ $ (\FD|SOMA_PC|OUT_AND2\(3) $ (\FD|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(2),
	datab => \FD|SOMA_PC_IMM|CarryOut[3]~0_combout\,
	datac => \FD|SOMA_PC|OUT_AND2\(3),
	datad => \FD|PC|DOUT\(4),
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(4));

-- Location: LCCOMB_X68_Y46_N28
\FD|SOMA_PC|SOMAOUT[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(4) = \FD|PC|DOUT\(4) $ (((\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|SOMA_PC|SOMAOUT\(4));

-- Location: LCCOMB_X68_Y46_N18
\FD|PC|DOUT[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[4]~1_combout\ = (\FD|comb~11_combout\ & (\FD|SOMA_PC_IMM|SOMAOUT\(4))) # (!\FD|comb~11_combout\ & ((\FD|SOMA_PC|SOMAOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|SOMAOUT\(4),
	datab => \FD|SOMA_PC|SOMAOUT\(4),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[4]~1_combout\);

-- Location: FF_X68_Y46_N19
\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[4]~1_combout\,
	asdata => \FD|MEM_INST|q\(2),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

-- Location: LCCOMB_X68_Y46_N10
\FD|SOMA_PC|OUT_AND2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(4) = (\FD|PC|DOUT\(4) & (\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|SOMA_PC|OUT_AND2\(4));

-- Location: LCCOMB_X68_Y46_N24
\FD|SOMA_PC_IMM|CarryOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[5]~2_combout\ = (\FD|MEM_INST|q\(3) & ((\FD|SOMA_PC_IMM|CarryOut[4]~1_combout\) # (\FD|SOMA_PC|OUT_AND2\(4) $ (\FD|PC|DOUT\(5))))) # (!\FD|MEM_INST|q\(3) & (\FD|SOMA_PC_IMM|CarryOut[4]~1_combout\ & (\FD|SOMA_PC|OUT_AND2\(4) $ 
-- (\FD|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(4),
	datab => \FD|PC|DOUT\(5),
	datac => \FD|MEM_INST|q\(3),
	datad => \FD|SOMA_PC_IMM|CarryOut[4]~1_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[5]~2_combout\);

-- Location: LCCOMB_X67_Y46_N22
\FD|SOMA_PC|SOMAOUT[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(6) = \FD|PC|DOUT\(6) $ (((\FD|SOMA_PC|OUT_AND2\(4) & \FD|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(6),
	datab => \FD|SOMA_PC|OUT_AND2\(4),
	datac => \FD|PC|DOUT\(5),
	combout => \FD|SOMA_PC|SOMAOUT\(6));

-- Location: LCCOMB_X67_Y46_N6
\FD|MUX_JUMP|q[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[6]~1_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(6) $ (((\FD|SOMA_PC_IMM|CarryOut[5]~2_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[5]~2_combout\,
	datab => \UCFD|MUX1~combout\,
	datac => \FD|SOMA_PC|SOMAOUT\(6),
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[6]~1_combout\);

-- Location: FF_X67_Y46_N7
\FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(6));

-- Location: LCCOMB_X67_Y46_N12
\FD|SOMA_PC|SOMAOUT[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(7) = \FD|PC|DOUT\(7) $ (((\FD|PC|DOUT\(6) & (\FD|SOMA_PC|OUT_AND2\(4) & \FD|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(6),
	datab => \FD|SOMA_PC|OUT_AND2\(4),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(7),
	combout => \FD|SOMA_PC|SOMAOUT\(7));

-- Location: LCCOMB_X67_Y46_N24
\FD|SOMA_PC_IMM|SOMAOUT[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(7) = \FD|SOMA_PC_IMM|CarryOut[6]~3_combout\ $ (\FD|PC|DOUT\(7) $ (\FD|MEM_INST|q\(5) $ (\FD|SOMA_PC|OUT_AND2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[6]~3_combout\,
	datab => \FD|PC|DOUT\(7),
	datac => \FD|MEM_INST|q\(5),
	datad => \FD|SOMA_PC|OUT_AND2\(6),
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(7));

-- Location: LCCOMB_X67_Y46_N0
\FD|PC|DOUT[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[7]~3_combout\ = (\FD|comb~11_combout\ & ((\FD|SOMA_PC_IMM|SOMAOUT\(7)))) # (!\FD|comb~11_combout\ & (\FD|SOMA_PC|SOMAOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(7),
	datab => \FD|SOMA_PC_IMM|SOMAOUT\(7),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[7]~3_combout\);

-- Location: FF_X67_Y46_N1
\FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[7]~3_combout\,
	asdata => \FD|MEM_INST|q\(5),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(7));

-- Location: LCCOMB_X66_Y46_N10
\FD|MEM_INST|content~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~1_combout\ = (!\FD|PC|DOUT\(7) & (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(3) & \FD|MEM_INST|content~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|MEM_INST|content~0_combout\,
	combout => \FD|MEM_INST|content~1_combout\);

-- Location: LCCOMB_X66_Y46_N16
\FD|MEM_INST|content~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~2_combout\ = (\FD|MEM_INST|content~1_combout\ & !\FD|PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|content~1_combout\,
	datad => \FD|PC|DOUT\(5),
	combout => \FD|MEM_INST|content~2_combout\);

-- Location: FF_X66_Y46_N17
\FD|MEM_INST|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(26));

-- Location: LCCOMB_X62_Y45_N2
\UCFD|ULA_OP[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|ULA_OP[1]~0_combout\ = (!\FD|MEM_INST|q\(28) & !\FD|MEM_INST|q\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(28),
	datac => \FD|MEM_INST|q\(27),
	combout => \UCFD|ULA_OP[1]~0_combout\);

-- Location: LCCOMB_X70_Y45_N6
\FD|ULA|MUX|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux1~2_combout\ = (\FD|ULA|MUX|Mux1~0_combout\) # ((\FD|ULA|MUX|Mux1~1_combout\ & !\FD|UC_ULA|q[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux1~1_combout\,
	datab => \FD|UC_ULA|q[1]~1_combout\,
	datad => \FD|ULA|MUX|Mux1~0_combout\,
	combout => \FD|ULA|MUX|Mux1~2_combout\);

-- Location: LCCOMB_X70_Y45_N2
\FD|ULA|MUX|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux0~2_combout\ = (\FD|ULA|MUX|Mux0~1_combout\) # (\FD|ULA|MUX|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|MUX|Mux0~1_combout\,
	datad => \FD|ULA|MUX|Mux0~0_combout\,
	combout => \FD|ULA|MUX|Mux0~2_combout\);

-- Location: LCCOMB_X66_Y42_N26
\FD|SOMA_PC|OUT_AND2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(8) = (\FD|SOMA_PC|OUT_AND2\(7) & \FD|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|SOMA_PC|OUT_AND2\(7),
	datad => \FD|PC|DOUT\(8),
	combout => \FD|SOMA_PC|OUT_AND2\(8));

-- Location: LCCOMB_X66_Y42_N20
\FD|SOMA_PC_IMM|CarryOut[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[10]~7_combout\ = (\FD|SOMA_PC_IMM|CarryOut[9]~6_combout\ & (\FD|PC|DOUT\(10) $ (((\FD|SOMA_PC|OUT_AND2\(8) & \FD|PC|DOUT\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(8),
	datab => \FD|PC|DOUT\(10),
	datac => \FD|PC|DOUT\(9),
	datad => \FD|SOMA_PC_IMM|CarryOut[9]~6_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[10]~7_combout\);

-- Location: LCCOMB_X66_Y42_N18
\FD|SOMA_PC|OUT_AND2[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(10) = (\FD|PC|DOUT\(8) & (\FD|PC|DOUT\(9) & (\FD|SOMA_PC|OUT_AND2\(7) & \FD|PC|DOUT\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(8),
	datab => \FD|PC|DOUT\(9),
	datac => \FD|SOMA_PC|OUT_AND2\(7),
	datad => \FD|PC|DOUT\(10),
	combout => \FD|SOMA_PC|OUT_AND2\(10));

-- Location: LCCOMB_X66_Y42_N8
\FD|SOMA_PC|SOMAOUT[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(11) = \FD|SOMA_PC|OUT_AND2\(10) $ (\FD|PC|DOUT\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|SOMA_PC|OUT_AND2\(10),
	datad => \FD|PC|DOUT\(11),
	combout => \FD|SOMA_PC|SOMAOUT\(11));

-- Location: LCCOMB_X66_Y42_N6
\FD|MUX_JUMP|q[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[11]~5_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(11) $ (((\FD|SOMA_PC_IMM|CarryOut[10]~7_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|MUX1~combout\,
	datab => \FD|SOMA_PC_IMM|CarryOut[10]~7_combout\,
	datac => \FD|SOMA_PC|SOMAOUT\(11),
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[11]~5_combout\);

-- Location: FF_X66_Y42_N7
\FD|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(11));

-- Location: LCCOMB_X66_Y42_N30
\FD|SOMA_PC|OUT_AND2[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(9) = (\FD|PC|DOUT\(9) & (\FD|SOMA_PC|OUT_AND2\(7) & \FD|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(9),
	datac => \FD|SOMA_PC|OUT_AND2\(7),
	datad => \FD|PC|DOUT\(8),
	combout => \FD|SOMA_PC|OUT_AND2\(9));

-- Location: LCCOMB_X66_Y42_N24
\FD|SOMA_PC_IMM|CarryOut[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[11]~8_combout\ = (\FD|SOMA_PC_IMM|CarryOut[10]~7_combout\ & (\FD|PC|DOUT\(11) $ (((\FD|PC|DOUT\(10) & \FD|SOMA_PC|OUT_AND2\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(11),
	datab => \FD|PC|DOUT\(10),
	datac => \FD|SOMA_PC|OUT_AND2\(9),
	datad => \FD|SOMA_PC_IMM|CarryOut[10]~7_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[11]~8_combout\);

-- Location: LCCOMB_X67_Y42_N8
\FD|SOMA_PC|SOMAOUT[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(12) = \FD|PC|DOUT\(12) $ (((\FD|SOMA_PC|OUT_AND2\(10) & \FD|PC|DOUT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(12),
	datab => \FD|SOMA_PC|OUT_AND2\(10),
	datac => \FD|PC|DOUT\(11),
	combout => \FD|SOMA_PC|SOMAOUT\(12));

-- Location: LCCOMB_X67_Y42_N22
\FD|MUX_JUMP|q[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[12]~6_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(12) $ (((\FD|SOMA_PC_IMM|CarryOut[11]~8_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[11]~8_combout\,
	datab => \UCFD|MUX1~combout\,
	datac => \FD|SOMA_PC|SOMAOUT\(12),
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[12]~6_combout\);

-- Location: FF_X67_Y42_N23
\FD|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[12]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(12));

-- Location: LCCOMB_X67_Y42_N6
\FD|SOMA_PC_IMM|CarryOut[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[12]~9_combout\ = (\FD|SOMA_PC_IMM|CarryOut[11]~8_combout\ & (\FD|PC|DOUT\(12) $ (((\FD|SOMA_PC|OUT_AND2\(10) & \FD|PC|DOUT\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(12),
	datab => \FD|SOMA_PC|OUT_AND2\(10),
	datac => \FD|PC|DOUT\(11),
	datad => \FD|SOMA_PC_IMM|CarryOut[11]~8_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[12]~9_combout\);

-- Location: LCCOMB_X67_Y42_N24
\FD|SOMA_PC|OUT_AND2[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(12) = (\FD|PC|DOUT\(11) & (\FD|PC|DOUT\(12) & \FD|SOMA_PC|OUT_AND2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(11),
	datac => \FD|PC|DOUT\(12),
	datad => \FD|SOMA_PC|OUT_AND2\(10),
	combout => \FD|SOMA_PC|OUT_AND2\(12));

-- Location: LCCOMB_X67_Y42_N12
\FD|SOMA_PC_IMM|SOMAOUT[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(13) = \FD|SOMA_PC_IMM|CarryOut[12]~9_combout\ $ (\FD|SOMA_PC|OUT_AND2\(12) $ (\FD|MEM_INST|q\(11) $ (\FD|PC|DOUT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[12]~9_combout\,
	datab => \FD|SOMA_PC|OUT_AND2\(12),
	datac => \FD|MEM_INST|q\(11),
	datad => \FD|PC|DOUT\(13),
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(13));

-- Location: LCCOMB_X67_Y42_N18
\FD|SOMA_PC|SOMAOUT[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(13) = \FD|PC|DOUT\(13) $ (((\FD|PC|DOUT\(12) & (\FD|SOMA_PC|OUT_AND2\(10) & \FD|PC|DOUT\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(12),
	datab => \FD|SOMA_PC|OUT_AND2\(10),
	datac => \FD|PC|DOUT\(11),
	datad => \FD|PC|DOUT\(13),
	combout => \FD|SOMA_PC|SOMAOUT\(13));

-- Location: LCCOMB_X67_Y42_N20
\FD|PC|DOUT[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[13]~4_combout\ = (\FD|comb~11_combout\ & (\FD|SOMA_PC_IMM|SOMAOUT\(13))) # (!\FD|comb~11_combout\ & ((\FD|SOMA_PC|SOMAOUT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|SOMAOUT\(13),
	datab => \FD|SOMA_PC|SOMAOUT\(13),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[13]~4_combout\);

-- Location: FF_X67_Y42_N21
\FD|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[13]~4_combout\,
	asdata => \FD|MEM_INST|q\(11),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(13));

-- Location: LCCOMB_X67_Y42_N26
\FD|SOMA_PC|OUT_AND2[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(13) = (\FD|PC|DOUT\(12) & (\FD|SOMA_PC|OUT_AND2\(10) & (\FD|PC|DOUT\(11) & \FD|PC|DOUT\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(12),
	datab => \FD|SOMA_PC|OUT_AND2\(10),
	datac => \FD|PC|DOUT\(11),
	datad => \FD|PC|DOUT\(13),
	combout => \FD|SOMA_PC|OUT_AND2\(13));

-- Location: LCCOMB_X66_Y43_N28
\FD|SOMA_PC|SOMAOUT[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(14) = \FD|SOMA_PC|OUT_AND2\(13) $ (\FD|PC|DOUT\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|PC|DOUT\(14),
	combout => \FD|SOMA_PC|SOMAOUT\(14));

-- Location: LCCOMB_X67_Y42_N0
\FD|SOMA_PC_IMM|CarryOut[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[13]~10_combout\ = (\FD|MEM_INST|q\(11) & ((\FD|SOMA_PC_IMM|CarryOut[12]~9_combout\) # (\FD|PC|DOUT\(13) $ (\FD|SOMA_PC|OUT_AND2\(12))))) # (!\FD|MEM_INST|q\(11) & (\FD|SOMA_PC_IMM|CarryOut[12]~9_combout\ & (\FD|PC|DOUT\(13) $ 
-- (\FD|SOMA_PC|OUT_AND2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(13),
	datab => \FD|SOMA_PC|OUT_AND2\(12),
	datac => \FD|MEM_INST|q\(11),
	datad => \FD|SOMA_PC_IMM|CarryOut[12]~9_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[13]~10_combout\);

-- Location: LCCOMB_X66_Y43_N30
\FD|SOMA_PC_IMM|SOMAOUT[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(14) = \FD|MEM_INST|q\(12) $ (\FD|PC|DOUT\(14) $ (\FD|SOMA_PC|OUT_AND2\(13) $ (\FD|SOMA_PC_IMM|CarryOut[13]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(12),
	datab => \FD|PC|DOUT\(14),
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|SOMA_PC_IMM|CarryOut[13]~10_combout\,
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(14));

-- Location: LCCOMB_X66_Y43_N20
\FD|PC|DOUT[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[14]~5_combout\ = (\FD|comb~11_combout\ & ((\FD|SOMA_PC_IMM|SOMAOUT\(14)))) # (!\FD|comb~11_combout\ & (\FD|SOMA_PC|SOMAOUT\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|comb~11_combout\,
	datab => \FD|SOMA_PC|SOMAOUT\(14),
	datad => \FD|SOMA_PC_IMM|SOMAOUT\(14),
	combout => \FD|PC|DOUT[14]~5_combout\);

-- Location: FF_X66_Y43_N21
\FD|PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[14]~5_combout\,
	asdata => \FD|MEM_INST|q\(12),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(14));

-- Location: LCCOMB_X66_Y43_N8
\FD|SOMA_PC|SOMAOUT[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(15) = \FD|PC|DOUT\(15) $ (((\FD|SOMA_PC|OUT_AND2\(13) & \FD|PC|DOUT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(15),
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|PC|DOUT\(14),
	combout => \FD|SOMA_PC|SOMAOUT\(15));

-- Location: LCCOMB_X66_Y43_N22
\FD|SOMA_PC|OUT_AND2[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(14) = (\FD|SOMA_PC|OUT_AND2\(13) & \FD|PC|DOUT\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|PC|DOUT\(14),
	combout => \FD|SOMA_PC|OUT_AND2\(14));

-- Location: LCCOMB_X66_Y43_N16
\FD|SOMA_PC_IMM|CarryOut[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[14]~11_combout\ = (\FD|MEM_INST|q\(12) & ((\FD|SOMA_PC_IMM|CarryOut[13]~10_combout\) # (\FD|PC|DOUT\(14) $ (\FD|SOMA_PC|OUT_AND2\(13))))) # (!\FD|MEM_INST|q\(12) & (\FD|SOMA_PC_IMM|CarryOut[13]~10_combout\ & (\FD|PC|DOUT\(14) $ 
-- (\FD|SOMA_PC|OUT_AND2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(12),
	datab => \FD|PC|DOUT\(14),
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|SOMA_PC_IMM|CarryOut[13]~10_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[14]~11_combout\);

-- Location: LCCOMB_X66_Y43_N10
\FD|SOMA_PC_IMM|SOMAOUT[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(15) = \FD|SOMA_PC|OUT_AND2\(14) $ (\FD|SOMA_PC_IMM|CarryOut[14]~11_combout\ $ (\FD|MEM_INST|q\(5) $ (\FD|PC|DOUT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(14),
	datab => \FD|SOMA_PC_IMM|CarryOut[14]~11_combout\,
	datac => \FD|MEM_INST|q\(5),
	datad => \FD|PC|DOUT\(15),
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(15));

-- Location: LCCOMB_X66_Y43_N18
\FD|PC|DOUT[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[15]~6_combout\ = (\FD|comb~11_combout\ & ((\FD|SOMA_PC_IMM|SOMAOUT\(15)))) # (!\FD|comb~11_combout\ & (\FD|SOMA_PC|SOMAOUT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|comb~11_combout\,
	datab => \FD|SOMA_PC|SOMAOUT\(15),
	datad => \FD|SOMA_PC_IMM|SOMAOUT\(15),
	combout => \FD|PC|DOUT[15]~6_combout\);

-- Location: FF_X66_Y43_N19
\FD|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[15]~6_combout\,
	asdata => \FD|MEM_INST|q\(5),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(15));

-- Location: LCCOMB_X66_Y43_N26
\FD|SOMA_PC_IMM|CarryOut[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[15]~12_combout\ = (\FD|MEM_INST|q\(5) & ((\FD|SOMA_PC_IMM|CarryOut[14]~11_combout\) # (\FD|SOMA_PC|OUT_AND2\(14) $ (\FD|PC|DOUT\(15))))) # (!\FD|MEM_INST|q\(5) & (\FD|SOMA_PC_IMM|CarryOut[14]~11_combout\ & 
-- (\FD|SOMA_PC|OUT_AND2\(14) $ (\FD|PC|DOUT\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(14),
	datab => \FD|PC|DOUT\(15),
	datac => \FD|MEM_INST|q\(5),
	datad => \FD|SOMA_PC_IMM|CarryOut[14]~11_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[15]~12_combout\);

-- Location: LCCOMB_X66_Y43_N4
\FD|SOMA_PC|SOMAOUT[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(16) = \FD|PC|DOUT\(16) $ (((\FD|PC|DOUT\(14) & (\FD|SOMA_PC|OUT_AND2\(13) & \FD|PC|DOUT\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(14),
	datab => \FD|PC|DOUT\(16),
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|PC|DOUT\(15),
	combout => \FD|SOMA_PC|SOMAOUT\(16));

-- Location: LCCOMB_X66_Y43_N0
\FD|MUX_JUMP|q[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[16]~7_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(16) $ (((\FD|SOMA_PC_IMM|CarryOut[15]~12_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[15]~12_combout\,
	datab => \FD|SOMA_PC|SOMAOUT\(16),
	datac => \FD|comb~11_combout\,
	datad => \UCFD|MUX1~combout\,
	combout => \FD|MUX_JUMP|q[16]~7_combout\);

-- Location: FF_X66_Y43_N1
\FD|PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[16]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(16));

-- Location: LCCOMB_X66_Y43_N24
\FD|SOMA_PC|OUT_AND2[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(16) = (\FD|PC|DOUT\(14) & (\FD|PC|DOUT\(16) & (\FD|SOMA_PC|OUT_AND2\(13) & \FD|PC|DOUT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(14),
	datab => \FD|PC|DOUT\(16),
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|PC|DOUT\(15),
	combout => \FD|SOMA_PC|OUT_AND2\(16));

-- Location: LCCOMB_X67_Y43_N30
\FD|SOMA_PC|SOMAOUT[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(17) = \FD|PC|DOUT\(17) $ (\FD|SOMA_PC|OUT_AND2\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datad => \FD|SOMA_PC|OUT_AND2\(16),
	combout => \FD|SOMA_PC|SOMAOUT\(17));

-- Location: LCCOMB_X66_Y43_N2
\FD|SOMA_PC_IMM|CarryOut[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[16]~13_combout\ = (\FD|SOMA_PC_IMM|CarryOut[15]~12_combout\ & (\FD|PC|DOUT\(16) $ (((\FD|SOMA_PC|OUT_AND2\(14) & \FD|PC|DOUT\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(14),
	datab => \FD|PC|DOUT\(15),
	datac => \FD|SOMA_PC_IMM|CarryOut[15]~12_combout\,
	datad => \FD|PC|DOUT\(16),
	combout => \FD|SOMA_PC_IMM|CarryOut[16]~13_combout\);

-- Location: LCCOMB_X66_Y43_N14
\FD|MUX_JUMP|q[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[17]~8_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(17) $ (((\FD|SOMA_PC_IMM|CarryOut[16]~13_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(17),
	datab => \FD|SOMA_PC_IMM|CarryOut[16]~13_combout\,
	datac => \FD|comb~11_combout\,
	datad => \UCFD|MUX1~combout\,
	combout => \FD|MUX_JUMP|q[17]~8_combout\);

-- Location: FF_X66_Y43_N15
\FD|PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[17]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(17));

-- Location: LCCOMB_X66_Y43_N12
\FD|SOMA_PC|OUT_AND2[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(15) = (\FD|PC|DOUT\(15) & (\FD|SOMA_PC|OUT_AND2\(13) & \FD|PC|DOUT\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(15),
	datac => \FD|SOMA_PC|OUT_AND2\(13),
	datad => \FD|PC|DOUT\(14),
	combout => \FD|SOMA_PC|OUT_AND2\(15));

-- Location: LCCOMB_X66_Y43_N6
\FD|SOMA_PC_IMM|CarryOut[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[17]~14_combout\ = (\FD|SOMA_PC_IMM|CarryOut[16]~13_combout\ & (\FD|PC|DOUT\(17) $ (((\FD|SOMA_PC|OUT_AND2\(15) & \FD|PC|DOUT\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(15),
	datab => \FD|PC|DOUT\(16),
	datac => \FD|PC|DOUT\(17),
	datad => \FD|SOMA_PC_IMM|CarryOut[16]~13_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[17]~14_combout\);

-- Location: LCCOMB_X67_Y43_N6
\FD|SOMA_PC_IMM|SOMAOUT[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(18) = \FD|SOMA_PC_IMM|CarryOut[17]~14_combout\ $ (\FD|PC|DOUT\(18) $ (((\FD|PC|DOUT\(17) & \FD|SOMA_PC|OUT_AND2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|SOMA_PC|OUT_AND2\(16),
	datac => \FD|SOMA_PC_IMM|CarryOut[17]~14_combout\,
	datad => \FD|PC|DOUT\(18),
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(18));

-- Location: LCCOMB_X67_Y43_N28
\FD|SOMA_PC|SOMAOUT[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(18) = \FD|PC|DOUT\(18) $ (((\FD|PC|DOUT\(17) & \FD|SOMA_PC|OUT_AND2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|SOMA_PC|OUT_AND2\(16),
	datad => \FD|PC|DOUT\(18),
	combout => \FD|SOMA_PC|SOMAOUT\(18));

-- Location: LCCOMB_X67_Y43_N0
\FD|PC|DOUT[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[18]~7_combout\ = (\FD|comb~11_combout\ & (\FD|SOMA_PC_IMM|SOMAOUT\(18))) # (!\FD|comb~11_combout\ & ((\FD|SOMA_PC|SOMAOUT\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|SOMAOUT\(18),
	datab => \FD|SOMA_PC|SOMAOUT\(18),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[18]~7_combout\);

-- Location: FF_X67_Y43_N1
\FD|PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[18]~7_combout\,
	asdata => \FD|MEM_INST|q\(16),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(18));

-- Location: LCCOMB_X67_Y43_N12
\FD|SOMA_PC|SOMAOUT[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(19) = \FD|PC|DOUT\(19) $ (((\FD|PC|DOUT\(17) & (\FD|PC|DOUT\(18) & \FD|SOMA_PC|OUT_AND2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|PC|DOUT\(18),
	datac => \FD|PC|DOUT\(19),
	datad => \FD|SOMA_PC|OUT_AND2\(16),
	combout => \FD|SOMA_PC|SOMAOUT\(19));

-- Location: LCCOMB_X67_Y43_N4
\FD|SOMA_PC_IMM|CarryOut[18]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[18]~15_combout\ = (\FD|SOMA_PC_IMM|CarryOut[17]~14_combout\ & (\FD|PC|DOUT\(18) $ (((\FD|PC|DOUT\(17) & \FD|SOMA_PC|OUT_AND2\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|SOMA_PC|OUT_AND2\(16),
	datac => \FD|SOMA_PC_IMM|CarryOut[17]~14_combout\,
	datad => \FD|PC|DOUT\(18),
	combout => \FD|SOMA_PC_IMM|CarryOut[18]~15_combout\);

-- Location: LCCOMB_X67_Y43_N2
\FD|SOMA_PC|OUT_AND2[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(18) = (\FD|PC|DOUT\(17) & (\FD|SOMA_PC|OUT_AND2\(16) & \FD|PC|DOUT\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|SOMA_PC|OUT_AND2\(16),
	datad => \FD|PC|DOUT\(18),
	combout => \FD|SOMA_PC|OUT_AND2\(18));

-- Location: LCCOMB_X67_Y43_N14
\FD|SOMA_PC_IMM|SOMAOUT[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(19) = \FD|PC|DOUT\(19) $ (\FD|SOMA_PC_IMM|CarryOut[18]~15_combout\ $ (\FD|SOMA_PC|OUT_AND2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(19),
	datac => \FD|SOMA_PC_IMM|CarryOut[18]~15_combout\,
	datad => \FD|SOMA_PC|OUT_AND2\(18),
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(19));

-- Location: LCCOMB_X67_Y43_N26
\FD|PC|DOUT[19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[19]~8_combout\ = (\FD|comb~11_combout\ & ((\FD|SOMA_PC_IMM|SOMAOUT\(19)))) # (!\FD|comb~11_combout\ & (\FD|SOMA_PC|SOMAOUT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(19),
	datab => \FD|SOMA_PC_IMM|SOMAOUT\(19),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[19]~8_combout\);

-- Location: FF_X67_Y43_N27
\FD|PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[19]~8_combout\,
	asdata => \FD|MEM_INST|q\(17),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(19));

-- Location: LCCOMB_X67_Y43_N24
\FD|SOMA_PC|OUT_AND2[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(19) = (\FD|PC|DOUT\(17) & (\FD|PC|DOUT\(18) & (\FD|PC|DOUT\(19) & \FD|SOMA_PC|OUT_AND2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|PC|DOUT\(18),
	datac => \FD|PC|DOUT\(19),
	datad => \FD|SOMA_PC|OUT_AND2\(16),
	combout => \FD|SOMA_PC|OUT_AND2\(19));

-- Location: LCCOMB_X62_Y45_N30
\FD|SOMA_PC|SOMAOUT[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(20) = \FD|PC|DOUT\(20) $ (\FD|SOMA_PC|OUT_AND2\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(20),
	datad => \FD|SOMA_PC|OUT_AND2\(19),
	combout => \FD|SOMA_PC|SOMAOUT\(20));

-- Location: LCCOMB_X67_Y43_N18
\FD|SOMA_PC|OUT_AND2[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(17) = (\FD|PC|DOUT\(17) & \FD|SOMA_PC|OUT_AND2\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datad => \FD|SOMA_PC|OUT_AND2\(16),
	combout => \FD|SOMA_PC|OUT_AND2\(17));

-- Location: LCCOMB_X67_Y43_N22
\FD|SOMA_PC_IMM|CarryOut[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[19]~16_combout\ = (\FD|SOMA_PC_IMM|CarryOut[18]~15_combout\ & (\FD|PC|DOUT\(19) $ (((\FD|PC|DOUT\(18) & \FD|SOMA_PC|OUT_AND2\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(19),
	datab => \FD|PC|DOUT\(18),
	datac => \FD|SOMA_PC_IMM|CarryOut[18]~15_combout\,
	datad => \FD|SOMA_PC|OUT_AND2\(17),
	combout => \FD|SOMA_PC_IMM|CarryOut[19]~16_combout\);

-- Location: LCCOMB_X62_Y45_N20
\FD|SOMA_PC_IMM|SOMAOUT[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(20) = \FD|PC|DOUT\(20) $ (\FD|SOMA_PC_IMM|CarryOut[19]~16_combout\ $ (\FD|SOMA_PC|OUT_AND2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(20),
	datac => \FD|SOMA_PC_IMM|CarryOut[19]~16_combout\,
	datad => \FD|SOMA_PC|OUT_AND2\(19),
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(20));

-- Location: LCCOMB_X62_Y45_N0
\FD|PC|DOUT[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[20]~9_combout\ = (\FD|comb~11_combout\ & ((\FD|SOMA_PC_IMM|SOMAOUT\(20)))) # (!\FD|comb~11_combout\ & (\FD|SOMA_PC|SOMAOUT\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(20),
	datab => \FD|SOMA_PC_IMM|SOMAOUT\(20),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[20]~9_combout\);

-- Location: FF_X62_Y45_N1
\FD|PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[20]~9_combout\,
	asdata => \FD|MEM_INST|q\(28),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(20));

-- Location: LCCOMB_X67_Y43_N10
\FD|SOMA_PC_IMM|CarryOut[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[20]~17_combout\ = (\FD|SOMA_PC_IMM|CarryOut[19]~16_combout\ & (\FD|PC|DOUT\(20) $ (((\FD|SOMA_PC|OUT_AND2\(18) & \FD|PC|DOUT\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(20),
	datab => \FD|SOMA_PC|OUT_AND2\(18),
	datac => \FD|SOMA_PC_IMM|CarryOut[19]~16_combout\,
	datad => \FD|PC|DOUT\(19),
	combout => \FD|SOMA_PC_IMM|CarryOut[20]~17_combout\);

-- Location: LCCOMB_X67_Y43_N16
\FD|SOMA_PC|SOMAOUT[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(21) = \FD|PC|DOUT\(21) $ (((\FD|PC|DOUT\(20) & \FD|SOMA_PC|OUT_AND2\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(20),
	datab => \FD|SOMA_PC|OUT_AND2\(19),
	datac => \FD|PC|DOUT\(21),
	combout => \FD|SOMA_PC|SOMAOUT\(21));

-- Location: LCCOMB_X67_Y43_N8
\FD|MUX_JUMP|q[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[21]~9_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(21) $ (((\FD|SOMA_PC_IMM|CarryOut[20]~17_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[20]~17_combout\,
	datab => \FD|SOMA_PC|SOMAOUT\(21),
	datac => \UCFD|MUX1~combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[21]~9_combout\);

-- Location: FF_X67_Y43_N9
\FD|PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(21));

-- Location: LCCOMB_X67_Y43_N20
\FD|SOMA_PC_IMM|CarryOut[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[21]~18_combout\ = (\FD|SOMA_PC_IMM|CarryOut[20]~17_combout\ & (\FD|PC|DOUT\(21) $ (((\FD|PC|DOUT\(20) & \FD|SOMA_PC|OUT_AND2\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(20),
	datab => \FD|SOMA_PC|OUT_AND2\(19),
	datac => \FD|PC|DOUT\(21),
	datad => \FD|SOMA_PC_IMM|CarryOut[20]~17_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[21]~18_combout\);

-- Location: LCCOMB_X68_Y47_N24
\FD|SOMA_PC|SOMAOUT[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(22) = \FD|PC|DOUT\(22) $ (((\FD|SOMA_PC|OUT_AND2\(19) & (\FD|PC|DOUT\(20) & \FD|PC|DOUT\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(19),
	datab => \FD|PC|DOUT\(22),
	datac => \FD|PC|DOUT\(20),
	datad => \FD|PC|DOUT\(21),
	combout => \FD|SOMA_PC|SOMAOUT\(22));

-- Location: LCCOMB_X68_Y47_N2
\FD|MUX_JUMP|q[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[22]~10_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(22) $ (((\FD|SOMA_PC_IMM|CarryOut[21]~18_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[21]~18_combout\,
	datab => \FD|SOMA_PC|SOMAOUT\(22),
	datac => \UCFD|MUX1~combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[22]~10_combout\);

-- Location: FF_X68_Y47_N3
\FD|PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(22));

-- Location: LCCOMB_X68_Y47_N30
\FD|SOMA_PC|OUT_AND2[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(22) = (\FD|PC|DOUT\(21) & (\FD|PC|DOUT\(20) & (\FD|SOMA_PC|OUT_AND2\(19) & \FD|PC|DOUT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(21),
	datab => \FD|PC|DOUT\(20),
	datac => \FD|SOMA_PC|OUT_AND2\(19),
	datad => \FD|PC|DOUT\(22),
	combout => \FD|SOMA_PC|OUT_AND2\(22));

-- Location: LCCOMB_X68_Y47_N18
\FD|SOMA_PC|OUT_AND2[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(20) = (\FD|PC|DOUT\(20) & \FD|SOMA_PC|OUT_AND2\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(20),
	datac => \FD|SOMA_PC|OUT_AND2\(19),
	combout => \FD|SOMA_PC|OUT_AND2\(20));

-- Location: LCCOMB_X68_Y47_N0
\FD|SOMA_PC_IMM|CarryOut[22]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[22]~19_combout\ = (\FD|SOMA_PC_IMM|CarryOut[21]~18_combout\ & (\FD|PC|DOUT\(22) $ (((\FD|PC|DOUT\(21) & \FD|SOMA_PC|OUT_AND2\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(21),
	datab => \FD|PC|DOUT\(22),
	datac => \FD|SOMA_PC_IMM|CarryOut[21]~18_combout\,
	datad => \FD|SOMA_PC|OUT_AND2\(20),
	combout => \FD|SOMA_PC_IMM|CarryOut[22]~19_combout\);

-- Location: LCCOMB_X68_Y47_N10
\FD|SOMA_PC_IMM|SOMAOUT[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(23) = \FD|PC|DOUT\(23) $ (\FD|SOMA_PC|OUT_AND2\(22) $ (\FD|SOMA_PC_IMM|CarryOut[22]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(23),
	datac => \FD|SOMA_PC|OUT_AND2\(22),
	datad => \FD|SOMA_PC_IMM|CarryOut[22]~19_combout\,
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(23));

-- Location: LCCOMB_X68_Y47_N28
\FD|SOMA_PC|SOMAOUT[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(23) = \FD|SOMA_PC|OUT_AND2\(22) $ (\FD|PC|DOUT\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|SOMA_PC|OUT_AND2\(22),
	datad => \FD|PC|DOUT\(23),
	combout => \FD|SOMA_PC|SOMAOUT\(23));

-- Location: LCCOMB_X68_Y47_N16
\FD|PC|DOUT[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[23]~10_combout\ = (\FD|comb~11_combout\ & (\FD|SOMA_PC_IMM|SOMAOUT\(23))) # (!\FD|comb~11_combout\ & ((\FD|SOMA_PC|SOMAOUT\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|SOMAOUT\(23),
	datab => \FD|SOMA_PC|SOMAOUT\(23),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[23]~10_combout\);

-- Location: FF_X68_Y47_N17
\FD|PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[23]~10_combout\,
	asdata => \FD|MEM_INST|q\(21),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(23));

-- Location: LCCOMB_X68_Y47_N22
\FD|SOMA_PC|OUT_AND2[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(21) = (\FD|PC|DOUT\(20) & (\FD|SOMA_PC|OUT_AND2\(19) & \FD|PC|DOUT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(20),
	datac => \FD|SOMA_PC|OUT_AND2\(19),
	datad => \FD|PC|DOUT\(21),
	combout => \FD|SOMA_PC|OUT_AND2\(21));

-- Location: LCCOMB_X68_Y47_N20
\FD|SOMA_PC_IMM|CarryOut[23]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[23]~20_combout\ = (\FD|SOMA_PC_IMM|CarryOut[22]~19_combout\ & (\FD|PC|DOUT\(23) $ (((\FD|PC|DOUT\(22) & \FD|SOMA_PC|OUT_AND2\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(22),
	datab => \FD|PC|DOUT\(23),
	datac => \FD|SOMA_PC|OUT_AND2\(21),
	datad => \FD|SOMA_PC_IMM|CarryOut[22]~19_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[23]~20_combout\);

-- Location: LCCOMB_X68_Y47_N12
\FD|SOMA_PC_IMM|SOMAOUT[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(24) = \FD|PC|DOUT\(24) $ (\FD|SOMA_PC_IMM|CarryOut[23]~20_combout\ $ (((\FD|SOMA_PC|OUT_AND2\(22) & \FD|PC|DOUT\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(22),
	datab => \FD|PC|DOUT\(23),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|SOMA_PC_IMM|CarryOut[23]~20_combout\,
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(24));

-- Location: LCCOMB_X68_Y47_N8
\FD|SOMA_PC|SOMAOUT[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(24) = \FD|PC|DOUT\(24) $ (((\FD|SOMA_PC|OUT_AND2\(22) & \FD|PC|DOUT\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(22),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|PC|DOUT\(23),
	combout => \FD|SOMA_PC|SOMAOUT\(24));

-- Location: LCCOMB_X68_Y47_N14
\FD|PC|DOUT[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[24]~11_combout\ = (\FD|comb~11_combout\ & (\FD|SOMA_PC_IMM|SOMAOUT\(24))) # (!\FD|comb~11_combout\ & ((\FD|SOMA_PC|SOMAOUT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|SOMAOUT\(24),
	datab => \FD|SOMA_PC|SOMAOUT\(24),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[24]~11_combout\);

-- Location: FF_X68_Y47_N15
\FD|PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[24]~11_combout\,
	asdata => \FD|MEM_INST|q\(22),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(24));

-- Location: LCCOMB_X67_Y42_N4
\FD|SOMA_PC|SOMAOUT[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(25) = \FD|PC|DOUT\(25) $ (((\FD|SOMA_PC|OUT_AND2\(22) & (\FD|PC|DOUT\(23) & \FD|PC|DOUT\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(22),
	datab => \FD|PC|DOUT\(23),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|PC|DOUT\(25),
	combout => \FD|SOMA_PC|SOMAOUT\(25));

-- Location: LCCOMB_X67_Y42_N14
\FD|SOMA_PC|OUT_AND2[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(24) = (\FD|PC|DOUT\(23) & (\FD|PC|DOUT\(24) & \FD|SOMA_PC|OUT_AND2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(23),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|SOMA_PC|OUT_AND2\(22),
	combout => \FD|SOMA_PC|OUT_AND2\(24));

-- Location: LCCOMB_X68_Y47_N26
\FD|SOMA_PC_IMM|CarryOut[24]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[24]~21_combout\ = (\FD|SOMA_PC_IMM|CarryOut[23]~20_combout\ & (\FD|PC|DOUT\(24) $ (((\FD|SOMA_PC|OUT_AND2\(22) & \FD|PC|DOUT\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(22),
	datab => \FD|PC|DOUT\(23),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|SOMA_PC_IMM|CarryOut[23]~20_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[24]~21_combout\);

-- Location: LCCOMB_X68_Y43_N0
\FD|SOMA_PC_IMM|SOMAOUT[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|SOMAOUT\(25) = \FD|SOMA_PC|OUT_AND2\(24) $ (\FD|PC|DOUT\(25) $ (\FD|SOMA_PC_IMM|CarryOut[24]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(24),
	datab => \FD|PC|DOUT\(25),
	datad => \FD|SOMA_PC_IMM|CarryOut[24]~21_combout\,
	combout => \FD|SOMA_PC_IMM|SOMAOUT\(25));

-- Location: LCCOMB_X68_Y43_N24
\FD|PC|DOUT[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[25]~12_combout\ = (\FD|comb~11_combout\ & ((\FD|SOMA_PC_IMM|SOMAOUT\(25)))) # (!\FD|comb~11_combout\ & (\FD|SOMA_PC|SOMAOUT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(25),
	datab => \FD|SOMA_PC_IMM|SOMAOUT\(25),
	datad => \FD|comb~11_combout\,
	combout => \FD|PC|DOUT[25]~12_combout\);

-- Location: FF_X68_Y43_N25
\FD|PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[25]~12_combout\,
	asdata => \FD|MEM_INST|q\(23),
	sload => \UCFD|MUX1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(25));

-- Location: LCCOMB_X67_Y42_N16
\FD|SOMA_PC|OUT_AND2[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(25) = (\FD|PC|DOUT\(25) & (\FD|PC|DOUT\(23) & (\FD|PC|DOUT\(24) & \FD|SOMA_PC|OUT_AND2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(25),
	datab => \FD|PC|DOUT\(23),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|SOMA_PC|OUT_AND2\(22),
	combout => \FD|SOMA_PC|OUT_AND2\(25));

-- Location: LCCOMB_X68_Y43_N22
\FD|SOMA_PC|SOMAOUT[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(26) = \FD|SOMA_PC|OUT_AND2\(25) $ (\FD|PC|DOUT\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|SOMA_PC|OUT_AND2\(25),
	datad => \FD|PC|DOUT\(26),
	combout => \FD|SOMA_PC|SOMAOUT\(26));

-- Location: LCCOMB_X67_Y42_N10
\FD|SOMA_PC|OUT_AND2[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(23) = (\FD|PC|DOUT\(23) & \FD|SOMA_PC|OUT_AND2\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(23),
	datad => \FD|SOMA_PC|OUT_AND2\(22),
	combout => \FD|SOMA_PC|OUT_AND2\(23));

-- Location: LCCOMB_X68_Y43_N20
\FD|SOMA_PC_IMM|CarryOut[25]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[25]~22_combout\ = (\FD|SOMA_PC_IMM|CarryOut[24]~21_combout\ & (\FD|PC|DOUT\(25) $ (((\FD|PC|DOUT\(24) & \FD|SOMA_PC|OUT_AND2\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(24),
	datab => \FD|PC|DOUT\(25),
	datac => \FD|SOMA_PC|OUT_AND2\(23),
	datad => \FD|SOMA_PC_IMM|CarryOut[24]~21_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[25]~22_combout\);

-- Location: LCCOMB_X68_Y43_N10
\FD|MUX_JUMP|q[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[26]~11_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(26) $ (((\FD|SOMA_PC_IMM|CarryOut[25]~22_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(26),
	datab => \FD|SOMA_PC_IMM|CarryOut[25]~22_combout\,
	datac => \UCFD|MUX1~combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[26]~11_combout\);

-- Location: FF_X68_Y43_N11
\FD|PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(26));

-- Location: LCCOMB_X68_Y43_N30
\FD|SOMA_PC|SOMAOUT[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(27) = \FD|PC|DOUT\(27) $ (((\FD|SOMA_PC|OUT_AND2\(25) & \FD|PC|DOUT\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(27),
	datac => \FD|SOMA_PC|OUT_AND2\(25),
	datad => \FD|PC|DOUT\(26),
	combout => \FD|SOMA_PC|SOMAOUT\(27));

-- Location: LCCOMB_X68_Y43_N16
\FD|SOMA_PC_IMM|CarryOut[26]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[26]~23_combout\ = (\FD|SOMA_PC_IMM|CarryOut[25]~22_combout\ & (\FD|PC|DOUT\(26) $ (((\FD|SOMA_PC|OUT_AND2\(24) & \FD|PC|DOUT\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(24),
	datab => \FD|PC|DOUT\(25),
	datac => \FD|PC|DOUT\(26),
	datad => \FD|SOMA_PC_IMM|CarryOut[25]~22_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[26]~23_combout\);

-- Location: LCCOMB_X68_Y43_N12
\FD|MUX_JUMP|q[27]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[27]~12_combout\ = (!\UCFD|MUX1~combout\ & (\FD|SOMA_PC|SOMAOUT\(27) $ (((\FD|SOMA_PC_IMM|CarryOut[26]~23_combout\ & \FD|comb~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(27),
	datab => \FD|SOMA_PC_IMM|CarryOut[26]~23_combout\,
	datac => \UCFD|MUX1~combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[27]~12_combout\);

-- Location: FF_X68_Y43_N13
\FD|PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(27));

-- Location: LCCOMB_X68_Y43_N26
\FD|SOMA_PC|SOMAOUT[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(28) = \FD|PC|DOUT\(28) $ (((\FD|PC|DOUT\(27) & (\FD|SOMA_PC|OUT_AND2\(25) & \FD|PC|DOUT\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(27),
	datab => \FD|PC|DOUT\(28),
	datac => \FD|SOMA_PC|OUT_AND2\(25),
	datad => \FD|PC|DOUT\(26),
	combout => \FD|SOMA_PC|SOMAOUT\(28));

-- Location: LCCOMB_X68_Y43_N4
\FD|SOMA_PC_IMM|CarryOut[27]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[27]~24_combout\ = (\FD|SOMA_PC_IMM|CarryOut[26]~23_combout\ & (\FD|PC|DOUT\(27) $ (((\FD|PC|DOUT\(26) & \FD|SOMA_PC|OUT_AND2\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(26),
	datab => \FD|PC|DOUT\(27),
	datac => \FD|SOMA_PC|OUT_AND2\(25),
	datad => \FD|SOMA_PC_IMM|CarryOut[26]~23_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[27]~24_combout\);

-- Location: LCCOMB_X68_Y43_N2
\FD|MUX_JUMP|q[28]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[28]~13_combout\ = \FD|SOMA_PC|SOMAOUT\(28) $ (((!\UCFD|MUX1~combout\ & (\FD|SOMA_PC_IMM|CarryOut[27]~24_combout\ & \FD|comb~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(28),
	datab => \UCFD|MUX1~combout\,
	datac => \FD|SOMA_PC_IMM|CarryOut[27]~24_combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[28]~13_combout\);

-- Location: FF_X68_Y43_N3
\FD|PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[28]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(28));

-- Location: LCCOMB_X68_Y43_N28
\FD|SOMA_PC|OUT_AND2[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(26) = (\FD|SOMA_PC|OUT_AND2\(25) & \FD|PC|DOUT\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|SOMA_PC|OUT_AND2\(25),
	datad => \FD|PC|DOUT\(26),
	combout => \FD|SOMA_PC|OUT_AND2\(26));

-- Location: LCCOMB_X68_Y43_N6
\FD|SOMA_PC_IMM|CarryOut[28]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[28]~25_combout\ = (\FD|SOMA_PC_IMM|CarryOut[27]~24_combout\ & (\FD|PC|DOUT\(28) $ (((\FD|PC|DOUT\(27) & \FD|SOMA_PC|OUT_AND2\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(27),
	datab => \FD|SOMA_PC|OUT_AND2\(26),
	datac => \FD|SOMA_PC_IMM|CarryOut[27]~24_combout\,
	datad => \FD|PC|DOUT\(28),
	combout => \FD|SOMA_PC_IMM|CarryOut[28]~25_combout\);

-- Location: LCCOMB_X68_Y43_N18
\FD|SOMA_PC|OUT_AND2[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(28) = (\FD|PC|DOUT\(27) & (\FD|PC|DOUT\(28) & (\FD|SOMA_PC|OUT_AND2\(25) & \FD|PC|DOUT\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(27),
	datab => \FD|PC|DOUT\(28),
	datac => \FD|SOMA_PC|OUT_AND2\(25),
	datad => \FD|PC|DOUT\(26),
	combout => \FD|SOMA_PC|OUT_AND2\(28));

-- Location: LCCOMB_X67_Y46_N8
\FD|SOMA_PC|SOMAOUT[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(29) = \FD|PC|DOUT\(29) $ (\FD|SOMA_PC|OUT_AND2\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(29),
	datac => \FD|SOMA_PC|OUT_AND2\(28),
	combout => \FD|SOMA_PC|SOMAOUT\(29));

-- Location: LCCOMB_X67_Y46_N16
\FD|MUX_JUMP|q[29]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[29]~14_combout\ = \FD|SOMA_PC|SOMAOUT\(29) $ (((\FD|SOMA_PC_IMM|CarryOut[28]~25_combout\ & (!\UCFD|MUX1~combout\ & \FD|comb~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC_IMM|CarryOut[28]~25_combout\,
	datab => \UCFD|MUX1~combout\,
	datac => \FD|SOMA_PC|SOMAOUT\(29),
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[29]~14_combout\);

-- Location: FF_X67_Y46_N17
\FD|PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[29]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(29));

-- Location: LCCOMB_X67_Y46_N10
\FD|SOMA_PC|SOMAOUT[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(30) = \FD|PC|DOUT\(30) $ (((\FD|SOMA_PC|OUT_AND2\(28) & \FD|PC|DOUT\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(30),
	datac => \FD|SOMA_PC|OUT_AND2\(28),
	datad => \FD|PC|DOUT\(29),
	combout => \FD|SOMA_PC|SOMAOUT\(30));

-- Location: LCCOMB_X68_Y43_N8
\FD|SOMA_PC|OUT_AND2[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(27) = (\FD|PC|DOUT\(27) & (\FD|SOMA_PC|OUT_AND2\(25) & \FD|PC|DOUT\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(27),
	datac => \FD|SOMA_PC|OUT_AND2\(25),
	datad => \FD|PC|DOUT\(26),
	combout => \FD|SOMA_PC|OUT_AND2\(27));

-- Location: LCCOMB_X68_Y43_N14
\FD|SOMA_PC_IMM|CarryOut[29]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[29]~26_combout\ = (\FD|SOMA_PC_IMM|CarryOut[28]~25_combout\ & (\FD|PC|DOUT\(29) $ (((\FD|PC|DOUT\(28) & \FD|SOMA_PC|OUT_AND2\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(29),
	datab => \FD|PC|DOUT\(28),
	datac => \FD|SOMA_PC|OUT_AND2\(27),
	datad => \FD|SOMA_PC_IMM|CarryOut[28]~25_combout\,
	combout => \FD|SOMA_PC_IMM|CarryOut[29]~26_combout\);

-- Location: LCCOMB_X67_Y46_N26
\FD|MUX_JUMP|q[30]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[30]~15_combout\ = \FD|SOMA_PC|SOMAOUT\(30) $ (((!\UCFD|MUX1~combout\ & (\FD|SOMA_PC_IMM|CarryOut[29]~26_combout\ & \FD|comb~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|SOMAOUT\(30),
	datab => \UCFD|MUX1~combout\,
	datac => \FD|SOMA_PC_IMM|CarryOut[29]~26_combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[30]~15_combout\);

-- Location: FF_X67_Y46_N27
\FD|PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[30]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(30));

-- Location: LCCOMB_X67_Y46_N20
\FD|SOMA_PC|SOMAOUT[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|SOMAOUT\(31) = \FD|PC|DOUT\(31) $ (((\FD|SOMA_PC|OUT_AND2\(28) & (\FD|PC|DOUT\(30) & \FD|PC|DOUT\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(28),
	datab => \FD|PC|DOUT\(31),
	datac => \FD|PC|DOUT\(30),
	datad => \FD|PC|DOUT\(29),
	combout => \FD|SOMA_PC|SOMAOUT\(31));

-- Location: LCCOMB_X67_Y46_N30
\FD|SOMA_PC_IMM|CarryOut[30]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC_IMM|CarryOut[30]~27_combout\ = (\FD|SOMA_PC_IMM|CarryOut[29]~26_combout\ & (\FD|PC|DOUT\(30) $ (((\FD|SOMA_PC|OUT_AND2\(28) & \FD|PC|DOUT\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(28),
	datab => \FD|PC|DOUT\(29),
	datac => \FD|SOMA_PC_IMM|CarryOut[29]~26_combout\,
	datad => \FD|PC|DOUT\(30),
	combout => \FD|SOMA_PC_IMM|CarryOut[30]~27_combout\);

-- Location: LCCOMB_X67_Y46_N4
\FD|MUX_JUMP|q[31]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_JUMP|q[31]~16_combout\ = \FD|SOMA_PC|SOMAOUT\(31) $ (((!\UCFD|MUX1~combout\ & (\FD|SOMA_PC_IMM|CarryOut[30]~27_combout\ & \FD|comb~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|MUX1~combout\,
	datab => \FD|SOMA_PC|SOMAOUT\(31),
	datac => \FD|SOMA_PC_IMM|CarryOut[30]~27_combout\,
	datad => \FD|comb~11_combout\,
	combout => \FD|MUX_JUMP|q[31]~16_combout\);

-- Location: FF_X67_Y46_N5
\FD|PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_JUMP|q[31]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(31));

-- Location: LCCOMB_X67_Y49_N4
\FD|BANCO_REG|registrador[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][0]~feeder_combout\ = \FD|MUX_ULA_MEM|q[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	combout => \FD|BANCO_REG|registrador[1][0]~feeder_combout\);

-- Location: LCCOMB_X69_Y44_N26
\FD|BANCO_REG|registrador[1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][0]~0_combout\ = (!\FD|MUX_RT_RD|q[2]~2_combout\ & (\FD|MUX_RT_RD|q[0]~0_combout\ & (!\FD|MUX_RT_RD|q[1]~1_combout\ & \UCFD|HAB_ESC_REG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_RD|q[2]~2_combout\,
	datab => \FD|MUX_RT_RD|q[0]~0_combout\,
	datac => \FD|MUX_RT_RD|q[1]~1_combout\,
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador[1][0]~0_combout\);

-- Location: FF_X67_Y49_N5
\FD|BANCO_REG|registrador[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][0]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][0]~q\);

-- Location: LCCOMB_X72_Y45_N12
\FD|BANCO_REG|registrador[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][1]~feeder_combout\ = \FD|MUX_ULA_MEM|q[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	combout => \FD|BANCO_REG|registrador[1][1]~feeder_combout\);

-- Location: FF_X72_Y45_N13
\FD|BANCO_REG|registrador[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][1]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][1]~q\);

-- Location: LCCOMB_X67_Y49_N6
\FD|BANCO_REG|registrador[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][2]~feeder_combout\ = \FD|MUX_ULA_MEM|q[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	combout => \FD|BANCO_REG|registrador[1][2]~feeder_combout\);

-- Location: FF_X67_Y49_N7
\FD|BANCO_REG|registrador[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][2]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][2]~q\);

-- Location: LCCOMB_X67_Y49_N28
\FD|BANCO_REG|registrador[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][3]~feeder_combout\ = \FD|MUX_ULA_MEM|q[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	combout => \FD|BANCO_REG|registrador[1][3]~feeder_combout\);

-- Location: FF_X67_Y49_N29
\FD|BANCO_REG|registrador[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][3]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][3]~q\);

-- Location: LCCOMB_X68_Y49_N4
\FD|BANCO_REG|registrador[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][4]~feeder_combout\ = \FD|MUX_ULA_MEM|q[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	combout => \FD|BANCO_REG|registrador[1][4]~feeder_combout\);

-- Location: FF_X68_Y49_N5
\FD|BANCO_REG|registrador[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][4]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][4]~q\);

-- Location: LCCOMB_X67_Y49_N2
\FD|BANCO_REG|registrador[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][5]~feeder_combout\ = \FD|MUX_ULA_MEM|q[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	combout => \FD|BANCO_REG|registrador[1][5]~feeder_combout\);

-- Location: FF_X67_Y49_N3
\FD|BANCO_REG|registrador[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][5]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][5]~q\);

-- Location: LCCOMB_X67_Y49_N0
\FD|BANCO_REG|registrador[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][6]~feeder_combout\ = \FD|MUX_ULA_MEM|q[6]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	combout => \FD|BANCO_REG|registrador[1][6]~feeder_combout\);

-- Location: FF_X67_Y49_N1
\FD|BANCO_REG|registrador[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][6]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][6]~q\);

-- Location: LCCOMB_X72_Y45_N10
\FD|BANCO_REG|registrador[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][7]~feeder_combout\ = \FD|MUX_ULA_MEM|q[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	combout => \FD|BANCO_REG|registrador[1][7]~feeder_combout\);

-- Location: FF_X72_Y45_N11
\FD|BANCO_REG|registrador[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][7]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][7]~q\);

-- Location: LCCOMB_X68_Y42_N28
\FD|BANCO_REG|registrador[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][8]~feeder_combout\ = \FD|MUX_ULA_MEM|q[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	combout => \FD|BANCO_REG|registrador[1][8]~feeder_combout\);

-- Location: FF_X68_Y42_N29
\FD|BANCO_REG|registrador[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][8]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][8]~q\);

-- Location: LCCOMB_X68_Y42_N6
\FD|BANCO_REG|registrador[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][9]~feeder_combout\ = \FD|MUX_ULA_MEM|q[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	combout => \FD|BANCO_REG|registrador[1][9]~feeder_combout\);

-- Location: FF_X68_Y42_N7
\FD|BANCO_REG|registrador[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][9]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][9]~q\);

-- Location: LCCOMB_X68_Y42_N12
\FD|BANCO_REG|registrador[1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][10]~feeder_combout\ = \FD|MUX_ULA_MEM|q[10]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	combout => \FD|BANCO_REG|registrador[1][10]~feeder_combout\);

-- Location: FF_X68_Y42_N13
\FD|BANCO_REG|registrador[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][10]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][10]~q\);

-- Location: LCCOMB_X67_Y44_N24
\FD|BANCO_REG|registrador[1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][11]~feeder_combout\ = \FD|MUX_ULA_MEM|q[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	combout => \FD|BANCO_REG|registrador[1][11]~feeder_combout\);

-- Location: FF_X67_Y44_N25
\FD|BANCO_REG|registrador[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][11]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][11]~q\);

-- Location: LCCOMB_X68_Y42_N22
\FD|BANCO_REG|registrador[1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][12]~feeder_combout\ = \FD|MUX_ULA_MEM|q[12]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	combout => \FD|BANCO_REG|registrador[1][12]~feeder_combout\);

-- Location: FF_X68_Y42_N23
\FD|BANCO_REG|registrador[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][12]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][12]~q\);

-- Location: LCCOMB_X72_Y45_N16
\FD|BANCO_REG|registrador[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][13]~feeder_combout\ = \FD|MUX_ULA_MEM|q[13]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	combout => \FD|BANCO_REG|registrador[1][13]~feeder_combout\);

-- Location: FF_X72_Y45_N17
\FD|BANCO_REG|registrador[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][13]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][13]~q\);

-- Location: LCCOMB_X67_Y44_N2
\FD|BANCO_REG|registrador[1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][14]~feeder_combout\ = \FD|MUX_ULA_MEM|q[14]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	combout => \FD|BANCO_REG|registrador[1][14]~feeder_combout\);

-- Location: FF_X67_Y44_N3
\FD|BANCO_REG|registrador[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][14]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][14]~q\);

-- Location: LCCOMB_X67_Y49_N22
\FD|BANCO_REG|registrador[1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][15]~feeder_combout\ = \FD|MUX_ULA_MEM|q[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	combout => \FD|BANCO_REG|registrador[1][15]~feeder_combout\);

-- Location: FF_X67_Y49_N23
\FD|BANCO_REG|registrador[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][15]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][15]~q\);

-- Location: LCCOMB_X68_Y49_N18
\FD|BANCO_REG|registrador[1][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	combout => \FD|BANCO_REG|registrador[1][16]~feeder_combout\);

-- Location: FF_X68_Y49_N19
\FD|BANCO_REG|registrador[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][16]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][16]~q\);

-- Location: LCCOMB_X67_Y47_N18
\FD|BANCO_REG|registrador[1][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][17]~feeder_combout\ = \FD|MUX_ULA_MEM|q[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	combout => \FD|BANCO_REG|registrador[1][17]~feeder_combout\);

-- Location: FF_X67_Y47_N19
\FD|BANCO_REG|registrador[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][17]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][17]~q\);

-- Location: LCCOMB_X67_Y47_N8
\FD|BANCO_REG|registrador[1][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][18]~feeder_combout\ = \FD|MUX_ULA_MEM|q[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	combout => \FD|BANCO_REG|registrador[1][18]~feeder_combout\);

-- Location: FF_X67_Y47_N9
\FD|BANCO_REG|registrador[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][18]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][18]~q\);

-- Location: LCCOMB_X67_Y44_N28
\FD|BANCO_REG|registrador[1][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][19]~feeder_combout\ = \FD|MUX_ULA_MEM|q[19]~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	combout => \FD|BANCO_REG|registrador[1][19]~feeder_combout\);

-- Location: FF_X67_Y44_N29
\FD|BANCO_REG|registrador[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][19]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][19]~q\);

-- Location: LCCOMB_X67_Y44_N14
\FD|BANCO_REG|registrador[1][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	combout => \FD|BANCO_REG|registrador[1][20]~feeder_combout\);

-- Location: FF_X67_Y44_N15
\FD|BANCO_REG|registrador[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][20]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][20]~q\);

-- Location: LCCOMB_X67_Y44_N4
\FD|BANCO_REG|registrador[1][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][21]~feeder_combout\ = \FD|MUX_ULA_MEM|q[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	combout => \FD|BANCO_REG|registrador[1][21]~feeder_combout\);

-- Location: FF_X67_Y44_N5
\FD|BANCO_REG|registrador[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][21]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][21]~q\);

-- Location: LCCOMB_X67_Y44_N26
\FD|BANCO_REG|registrador[1][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][22]~feeder_combout\ = \FD|MUX_ULA_MEM|q[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	combout => \FD|BANCO_REG|registrador[1][22]~feeder_combout\);

-- Location: FF_X67_Y44_N27
\FD|BANCO_REG|registrador[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][22]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][22]~q\);

-- Location: LCCOMB_X67_Y44_N20
\FD|BANCO_REG|registrador[1][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][23]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	combout => \FD|BANCO_REG|registrador[1][23]~feeder_combout\);

-- Location: FF_X67_Y44_N21
\FD|BANCO_REG|registrador[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][23]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][23]~q\);

-- Location: LCCOMB_X67_Y44_N30
\FD|BANCO_REG|registrador[1][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][24]~feeder_combout\ = \FD|MUX_ULA_MEM|q[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	combout => \FD|BANCO_REG|registrador[1][24]~feeder_combout\);

-- Location: FF_X67_Y44_N31
\FD|BANCO_REG|registrador[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][24]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][24]~q\);

-- Location: LCCOMB_X70_Y45_N28
\FD|BANCO_REG|registrador[1][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][25]~feeder_combout\ = \FD|MUX_ULA_MEM|q[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	combout => \FD|BANCO_REG|registrador[1][25]~feeder_combout\);

-- Location: FF_X70_Y45_N29
\FD|BANCO_REG|registrador[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][25]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][25]~q\);

-- Location: LCCOMB_X72_Y45_N26
\FD|BANCO_REG|registrador[1][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][26]~feeder_combout\ = \FD|MUX_ULA_MEM|q[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	combout => \FD|BANCO_REG|registrador[1][26]~feeder_combout\);

-- Location: FF_X72_Y45_N27
\FD|BANCO_REG|registrador[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][26]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][26]~q\);

-- Location: LCCOMB_X72_Y45_N24
\FD|BANCO_REG|registrador[1][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][27]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	combout => \FD|BANCO_REG|registrador[1][27]~feeder_combout\);

-- Location: FF_X72_Y45_N25
\FD|BANCO_REG|registrador[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][27]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][27]~q\);

-- Location: LCCOMB_X67_Y44_N12
\FD|BANCO_REG|registrador[1][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][28]~feeder_combout\ = \FD|MUX_ULA_MEM|q[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	combout => \FD|BANCO_REG|registrador[1][28]~feeder_combout\);

-- Location: FF_X67_Y44_N13
\FD|BANCO_REG|registrador[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][28]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][28]~q\);

-- Location: FF_X70_Y45_N7
\FD|BANCO_REG|registrador[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	sload => VCC,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][29]~q\);

-- Location: LCCOMB_X68_Y49_N24
\FD|BANCO_REG|registrador[1][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][30]~feeder_combout\ = \FD|MUX_ULA_MEM|q[30]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	combout => \FD|BANCO_REG|registrador[1][30]~feeder_combout\);

-- Location: FF_X68_Y49_N25
\FD|BANCO_REG|registrador[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][30]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][30]~q\);

-- Location: LCCOMB_X67_Y49_N8
\FD|BANCO_REG|registrador[1][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][31]~feeder_combout\ = \FD|MUX_ULA_MEM|q[31]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	combout => \FD|BANCO_REG|registrador[1][31]~feeder_combout\);

-- Location: FF_X67_Y49_N9
\FD|BANCO_REG|registrador[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][31]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][31]~q\);

-- Location: LCCOMB_X67_Y49_N30
\FD|BANCO_REG|registrador[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][0]~feeder_combout\ = \FD|MUX_ULA_MEM|q[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	combout => \FD|BANCO_REG|registrador[2][0]~feeder_combout\);

-- Location: LCCOMB_X69_Y44_N0
\FD|BANCO_REG|registrador[2][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][0]~1_combout\ = (!\FD|MUX_RT_RD|q[2]~2_combout\ & (!\FD|MUX_RT_RD|q[0]~0_combout\ & (\FD|MUX_RT_RD|q[1]~1_combout\ & \UCFD|HAB_ESC_REG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_RD|q[2]~2_combout\,
	datab => \FD|MUX_RT_RD|q[0]~0_combout\,
	datac => \FD|MUX_RT_RD|q[1]~1_combout\,
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador[2][0]~1_combout\);

-- Location: FF_X67_Y49_N31
\FD|BANCO_REG|registrador[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][0]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][0]~q\);

-- Location: LCCOMB_X67_Y49_N20
\FD|BANCO_REG|registrador[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][1]~feeder_combout\ = \FD|MUX_ULA_MEM|q[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	combout => \FD|BANCO_REG|registrador[2][1]~feeder_combout\);

-- Location: FF_X67_Y49_N21
\FD|BANCO_REG|registrador[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][1]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][1]~q\);

-- Location: LCCOMB_X67_Y49_N14
\FD|BANCO_REG|registrador[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][2]~feeder_combout\ = \FD|MUX_ULA_MEM|q[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	combout => \FD|BANCO_REG|registrador[2][2]~feeder_combout\);

-- Location: FF_X67_Y49_N15
\FD|BANCO_REG|registrador[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][2]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][2]~q\);

-- Location: LCCOMB_X67_Y49_N24
\FD|BANCO_REG|registrador[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][3]~feeder_combout\ = \FD|MUX_ULA_MEM|q[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	combout => \FD|BANCO_REG|registrador[2][3]~feeder_combout\);

-- Location: FF_X67_Y49_N25
\FD|BANCO_REG|registrador[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][3]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][3]~q\);

-- Location: LCCOMB_X67_Y49_N18
\FD|BANCO_REG|registrador[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][4]~feeder_combout\ = \FD|MUX_ULA_MEM|q[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	combout => \FD|BANCO_REG|registrador[2][4]~feeder_combout\);

-- Location: FF_X67_Y49_N19
\FD|BANCO_REG|registrador[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][4]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][4]~q\);

-- Location: LCCOMB_X67_Y49_N16
\FD|BANCO_REG|registrador[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][5]~feeder_combout\ = \FD|MUX_ULA_MEM|q[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	combout => \FD|BANCO_REG|registrador[2][5]~feeder_combout\);

-- Location: FF_X67_Y49_N17
\FD|BANCO_REG|registrador[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][5]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][5]~q\);

-- Location: LCCOMB_X67_Y49_N26
\FD|BANCO_REG|registrador[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][6]~feeder_combout\ = \FD|MUX_ULA_MEM|q[6]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	combout => \FD|BANCO_REG|registrador[2][6]~feeder_combout\);

-- Location: FF_X67_Y49_N27
\FD|BANCO_REG|registrador[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][6]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][6]~q\);

-- Location: LCCOMB_X68_Y42_N8
\FD|BANCO_REG|registrador[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][7]~feeder_combout\ = \FD|MUX_ULA_MEM|q[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	combout => \FD|BANCO_REG|registrador[2][7]~feeder_combout\);

-- Location: FF_X68_Y42_N9
\FD|BANCO_REG|registrador[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][7]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][7]~q\);

-- Location: LCCOMB_X68_Y42_N26
\FD|BANCO_REG|registrador[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][8]~feeder_combout\ = \FD|MUX_ULA_MEM|q[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	combout => \FD|BANCO_REG|registrador[2][8]~feeder_combout\);

-- Location: FF_X68_Y42_N27
\FD|BANCO_REG|registrador[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][8]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][8]~q\);

-- Location: LCCOMB_X68_Y42_N20
\FD|BANCO_REG|registrador[2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][9]~feeder_combout\ = \FD|MUX_ULA_MEM|q[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	combout => \FD|BANCO_REG|registrador[2][9]~feeder_combout\);

-- Location: FF_X68_Y42_N21
\FD|BANCO_REG|registrador[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][9]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][9]~q\);

-- Location: LCCOMB_X68_Y42_N10
\FD|BANCO_REG|registrador[2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][10]~feeder_combout\ = \FD|MUX_ULA_MEM|q[10]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	combout => \FD|BANCO_REG|registrador[2][10]~feeder_combout\);

-- Location: FF_X68_Y42_N11
\FD|BANCO_REG|registrador[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][10]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][10]~q\);

-- Location: LCCOMB_X67_Y48_N8
\FD|BANCO_REG|registrador[2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][11]~feeder_combout\ = \FD|MUX_ULA_MEM|q[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	combout => \FD|BANCO_REG|registrador[2][11]~feeder_combout\);

-- Location: FF_X67_Y48_N9
\FD|BANCO_REG|registrador[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][11]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][11]~q\);

-- Location: LCCOMB_X68_Y42_N4
\FD|BANCO_REG|registrador[2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][12]~feeder_combout\ = \FD|MUX_ULA_MEM|q[12]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	combout => \FD|BANCO_REG|registrador[2][12]~feeder_combout\);

-- Location: FF_X68_Y42_N5
\FD|BANCO_REG|registrador[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][12]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][12]~q\);

-- Location: LCCOMB_X68_Y42_N30
\FD|BANCO_REG|registrador[2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][13]~feeder_combout\ = \FD|MUX_ULA_MEM|q[13]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	combout => \FD|BANCO_REG|registrador[2][13]~feeder_combout\);

-- Location: FF_X68_Y42_N31
\FD|BANCO_REG|registrador[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][13]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][13]~q\);

-- Location: LCCOMB_X67_Y48_N30
\FD|BANCO_REG|registrador[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][14]~feeder_combout\ = \FD|MUX_ULA_MEM|q[14]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	combout => \FD|BANCO_REG|registrador[2][14]~feeder_combout\);

-- Location: FF_X67_Y48_N31
\FD|BANCO_REG|registrador[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][14]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][14]~q\);

-- Location: LCCOMB_X67_Y48_N24
\FD|BANCO_REG|registrador[2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][15]~feeder_combout\ = \FD|MUX_ULA_MEM|q[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	combout => \FD|BANCO_REG|registrador[2][15]~feeder_combout\);

-- Location: FF_X67_Y48_N25
\FD|BANCO_REG|registrador[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][15]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][15]~q\);

-- Location: LCCOMB_X67_Y48_N2
\FD|BANCO_REG|registrador[2][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	combout => \FD|BANCO_REG|registrador[2][16]~feeder_combout\);

-- Location: FF_X67_Y48_N3
\FD|BANCO_REG|registrador[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][16]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][16]~q\);

-- Location: LCCOMB_X67_Y49_N12
\FD|BANCO_REG|registrador[2][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][17]~feeder_combout\ = \FD|MUX_ULA_MEM|q[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	combout => \FD|BANCO_REG|registrador[2][17]~feeder_combout\);

-- Location: FF_X67_Y49_N13
\FD|BANCO_REG|registrador[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][17]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][17]~q\);

-- Location: LCCOMB_X67_Y48_N0
\FD|BANCO_REG|registrador[2][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][18]~feeder_combout\ = \FD|MUX_ULA_MEM|q[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	combout => \FD|BANCO_REG|registrador[2][18]~feeder_combout\);

-- Location: FF_X67_Y48_N1
\FD|BANCO_REG|registrador[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][18]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][18]~q\);

-- Location: LCCOMB_X67_Y48_N14
\FD|BANCO_REG|registrador[2][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][19]~feeder_combout\ = \FD|MUX_ULA_MEM|q[19]~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	combout => \FD|BANCO_REG|registrador[2][19]~feeder_combout\);

-- Location: FF_X67_Y48_N15
\FD|BANCO_REG|registrador[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][19]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][19]~q\);

-- Location: LCCOMB_X67_Y48_N4
\FD|BANCO_REG|registrador[2][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	combout => \FD|BANCO_REG|registrador[2][20]~feeder_combout\);

-- Location: FF_X67_Y48_N5
\FD|BANCO_REG|registrador[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][20]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][20]~q\);

-- Location: LCCOMB_X68_Y44_N24
\FD|BANCO_REG|registrador[2][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][21]~feeder_combout\ = \FD|MUX_ULA_MEM|q[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	combout => \FD|BANCO_REG|registrador[2][21]~feeder_combout\);

-- Location: FF_X68_Y44_N25
\FD|BANCO_REG|registrador[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][21]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][21]~q\);

-- Location: LCCOMB_X68_Y44_N10
\FD|BANCO_REG|registrador[2][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][22]~feeder_combout\ = \FD|MUX_ULA_MEM|q[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	combout => \FD|BANCO_REG|registrador[2][22]~feeder_combout\);

-- Location: FF_X68_Y44_N11
\FD|BANCO_REG|registrador[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][22]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][22]~q\);

-- Location: LCCOMB_X68_Y44_N12
\FD|BANCO_REG|registrador[2][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][23]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	combout => \FD|BANCO_REG|registrador[2][23]~feeder_combout\);

-- Location: FF_X68_Y44_N13
\FD|BANCO_REG|registrador[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][23]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][23]~q\);

-- Location: LCCOMB_X68_Y44_N22
\FD|BANCO_REG|registrador[2][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][24]~feeder_combout\ = \FD|MUX_ULA_MEM|q[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	combout => \FD|BANCO_REG|registrador[2][24]~feeder_combout\);

-- Location: FF_X68_Y44_N23
\FD|BANCO_REG|registrador[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][24]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][24]~q\);

-- Location: LCCOMB_X68_Y44_N8
\FD|BANCO_REG|registrador[2][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][25]~feeder_combout\ = \FD|MUX_ULA_MEM|q[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	combout => \FD|BANCO_REG|registrador[2][25]~feeder_combout\);

-- Location: FF_X68_Y44_N9
\FD|BANCO_REG|registrador[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][25]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][25]~q\);

-- Location: LCCOMB_X68_Y44_N2
\FD|BANCO_REG|registrador[2][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][26]~feeder_combout\ = \FD|MUX_ULA_MEM|q[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	combout => \FD|BANCO_REG|registrador[2][26]~feeder_combout\);

-- Location: FF_X68_Y44_N3
\FD|BANCO_REG|registrador[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][26]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][26]~q\);

-- Location: LCCOMB_X68_Y44_N28
\FD|BANCO_REG|registrador[2][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][27]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	combout => \FD|BANCO_REG|registrador[2][27]~feeder_combout\);

-- Location: FF_X68_Y44_N29
\FD|BANCO_REG|registrador[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][27]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][27]~q\);

-- Location: LCCOMB_X68_Y44_N26
\FD|BANCO_REG|registrador[2][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][28]~feeder_combout\ = \FD|MUX_ULA_MEM|q[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	combout => \FD|BANCO_REG|registrador[2][28]~feeder_combout\);

-- Location: FF_X68_Y44_N27
\FD|BANCO_REG|registrador[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][28]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][28]~q\);

-- Location: LCCOMB_X68_Y42_N24
\FD|BANCO_REG|registrador[2][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][29]~feeder_combout\ = \FD|MUX_ULA_MEM|q[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	combout => \FD|BANCO_REG|registrador[2][29]~feeder_combout\);

-- Location: FF_X68_Y42_N25
\FD|BANCO_REG|registrador[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][29]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][29]~q\);

-- Location: LCCOMB_X67_Y48_N18
\FD|BANCO_REG|registrador[2][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][30]~feeder_combout\ = \FD|MUX_ULA_MEM|q[30]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	combout => \FD|BANCO_REG|registrador[2][30]~feeder_combout\);

-- Location: FF_X67_Y48_N19
\FD|BANCO_REG|registrador[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][30]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][30]~q\);

-- Location: LCCOMB_X67_Y49_N10
\FD|BANCO_REG|registrador[2][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[2][31]~feeder_combout\ = \FD|MUX_ULA_MEM|q[31]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	combout => \FD|BANCO_REG|registrador[2][31]~feeder_combout\);

-- Location: FF_X67_Y49_N11
\FD|BANCO_REG|registrador[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[2][31]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][31]~q\);

-- Location: LCCOMB_X66_Y48_N12
\FD|BANCO_REG|registrador[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][0]~feeder_combout\ = \FD|MUX_ULA_MEM|q[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	combout => \FD|BANCO_REG|registrador[3][0]~feeder_combout\);

-- Location: LCCOMB_X69_Y44_N22
\FD|BANCO_REG|registrador[3][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][0]~2_combout\ = (!\FD|MUX_RT_RD|q[2]~2_combout\ & (\FD|MUX_RT_RD|q[0]~0_combout\ & (\FD|MUX_RT_RD|q[1]~1_combout\ & \UCFD|HAB_ESC_REG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_RD|q[2]~2_combout\,
	datab => \FD|MUX_RT_RD|q[0]~0_combout\,
	datac => \FD|MUX_RT_RD|q[1]~1_combout\,
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador[3][0]~2_combout\);

-- Location: FF_X66_Y48_N13
\FD|BANCO_REG|registrador[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][0]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][0]~q\);

-- Location: LCCOMB_X66_Y48_N26
\FD|BANCO_REG|registrador[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][1]~feeder_combout\ = \FD|MUX_ULA_MEM|q[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	combout => \FD|BANCO_REG|registrador[3][1]~feeder_combout\);

-- Location: FF_X66_Y48_N27
\FD|BANCO_REG|registrador[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][1]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][1]~q\);

-- Location: LCCOMB_X66_Y48_N0
\FD|BANCO_REG|registrador[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][2]~feeder_combout\ = \FD|MUX_ULA_MEM|q[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	combout => \FD|BANCO_REG|registrador[3][2]~feeder_combout\);

-- Location: FF_X66_Y48_N1
\FD|BANCO_REG|registrador[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][2]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][2]~q\);

-- Location: LCCOMB_X66_Y48_N2
\FD|BANCO_REG|registrador[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][3]~feeder_combout\ = \FD|MUX_ULA_MEM|q[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	combout => \FD|BANCO_REG|registrador[3][3]~feeder_combout\);

-- Location: FF_X66_Y48_N3
\FD|BANCO_REG|registrador[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][3]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][3]~q\);

-- Location: LCCOMB_X66_Y48_N24
\FD|BANCO_REG|registrador[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][4]~feeder_combout\ = \FD|MUX_ULA_MEM|q[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	combout => \FD|BANCO_REG|registrador[3][4]~feeder_combout\);

-- Location: FF_X66_Y48_N25
\FD|BANCO_REG|registrador[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][4]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][4]~q\);

-- Location: LCCOMB_X66_Y48_N22
\FD|BANCO_REG|registrador[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][5]~feeder_combout\ = \FD|MUX_ULA_MEM|q[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	combout => \FD|BANCO_REG|registrador[3][5]~feeder_combout\);

-- Location: FF_X66_Y48_N23
\FD|BANCO_REG|registrador[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][5]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][5]~q\);

-- Location: LCCOMB_X66_Y48_N4
\FD|BANCO_REG|registrador[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][6]~feeder_combout\ = \FD|MUX_ULA_MEM|q[6]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	combout => \FD|BANCO_REG|registrador[3][6]~feeder_combout\);

-- Location: FF_X66_Y48_N5
\FD|BANCO_REG|registrador[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][6]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][6]~q\);

-- Location: LCCOMB_X68_Y48_N4
\FD|BANCO_REG|registrador[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][7]~feeder_combout\ = \FD|MUX_ULA_MEM|q[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	combout => \FD|BANCO_REG|registrador[3][7]~feeder_combout\);

-- Location: FF_X68_Y48_N5
\FD|BANCO_REG|registrador[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][7]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][7]~q\);

-- Location: LCCOMB_X68_Y48_N26
\FD|BANCO_REG|registrador[3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][8]~feeder_combout\ = \FD|MUX_ULA_MEM|q[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	combout => \FD|BANCO_REG|registrador[3][8]~feeder_combout\);

-- Location: FF_X68_Y48_N27
\FD|BANCO_REG|registrador[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][8]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][8]~q\);

-- Location: LCCOMB_X68_Y48_N24
\FD|BANCO_REG|registrador[3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][9]~feeder_combout\ = \FD|MUX_ULA_MEM|q[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	combout => \FD|BANCO_REG|registrador[3][9]~feeder_combout\);

-- Location: FF_X68_Y48_N25
\FD|BANCO_REG|registrador[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][9]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][9]~q\);

-- Location: LCCOMB_X68_Y48_N22
\FD|BANCO_REG|registrador[3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][10]~feeder_combout\ = \FD|MUX_ULA_MEM|q[10]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	combout => \FD|BANCO_REG|registrador[3][10]~feeder_combout\);

-- Location: FF_X68_Y48_N23
\FD|BANCO_REG|registrador[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][10]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][10]~q\);

-- Location: LCCOMB_X68_Y48_N0
\FD|BANCO_REG|registrador[3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][11]~feeder_combout\ = \FD|MUX_ULA_MEM|q[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	combout => \FD|BANCO_REG|registrador[3][11]~feeder_combout\);

-- Location: FF_X68_Y48_N1
\FD|BANCO_REG|registrador[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][11]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][11]~q\);

-- Location: LCCOMB_X68_Y48_N30
\FD|BANCO_REG|registrador[3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][12]~feeder_combout\ = \FD|MUX_ULA_MEM|q[12]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	combout => \FD|BANCO_REG|registrador[3][12]~feeder_combout\);

-- Location: FF_X68_Y48_N31
\FD|BANCO_REG|registrador[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][12]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][12]~q\);

-- Location: LCCOMB_X68_Y48_N20
\FD|BANCO_REG|registrador[3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][13]~feeder_combout\ = \FD|MUX_ULA_MEM|q[13]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	combout => \FD|BANCO_REG|registrador[3][13]~feeder_combout\);

-- Location: FF_X68_Y48_N21
\FD|BANCO_REG|registrador[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][13]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][13]~q\);

-- Location: LCCOMB_X67_Y48_N12
\FD|BANCO_REG|registrador[3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][14]~feeder_combout\ = \FD|MUX_ULA_MEM|q[14]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	combout => \FD|BANCO_REG|registrador[3][14]~feeder_combout\);

-- Location: FF_X67_Y48_N13
\FD|BANCO_REG|registrador[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][14]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][14]~q\);

-- Location: LCCOMB_X67_Y48_N10
\FD|BANCO_REG|registrador[3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][15]~feeder_combout\ = \FD|MUX_ULA_MEM|q[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	combout => \FD|BANCO_REG|registrador[3][15]~feeder_combout\);

-- Location: FF_X67_Y48_N11
\FD|BANCO_REG|registrador[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][15]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][15]~q\);

-- Location: LCCOMB_X67_Y48_N28
\FD|BANCO_REG|registrador[3][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	combout => \FD|BANCO_REG|registrador[3][16]~feeder_combout\);

-- Location: FF_X67_Y48_N29
\FD|BANCO_REG|registrador[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][16]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][16]~q\);

-- Location: LCCOMB_X67_Y48_N6
\FD|BANCO_REG|registrador[3][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][17]~feeder_combout\ = \FD|MUX_ULA_MEM|q[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	combout => \FD|BANCO_REG|registrador[3][17]~feeder_combout\);

-- Location: FF_X67_Y48_N7
\FD|BANCO_REG|registrador[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][17]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][17]~q\);

-- Location: LCCOMB_X67_Y48_N16
\FD|BANCO_REG|registrador[3][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][18]~feeder_combout\ = \FD|MUX_ULA_MEM|q[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	combout => \FD|BANCO_REG|registrador[3][18]~feeder_combout\);

-- Location: FF_X67_Y48_N17
\FD|BANCO_REG|registrador[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][18]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][18]~q\);

-- Location: LCCOMB_X67_Y48_N22
\FD|BANCO_REG|registrador[3][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][19]~feeder_combout\ = \FD|MUX_ULA_MEM|q[19]~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	combout => \FD|BANCO_REG|registrador[3][19]~feeder_combout\);

-- Location: FF_X67_Y48_N23
\FD|BANCO_REG|registrador[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][19]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][19]~q\);

-- Location: LCCOMB_X67_Y48_N20
\FD|BANCO_REG|registrador[3][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	combout => \FD|BANCO_REG|registrador[3][20]~feeder_combout\);

-- Location: FF_X67_Y48_N21
\FD|BANCO_REG|registrador[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][20]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][20]~q\);

-- Location: LCCOMB_X68_Y44_N0
\FD|BANCO_REG|registrador[3][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][21]~feeder_combout\ = \FD|MUX_ULA_MEM|q[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	combout => \FD|BANCO_REG|registrador[3][21]~feeder_combout\);

-- Location: FF_X68_Y44_N1
\FD|BANCO_REG|registrador[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][21]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][21]~q\);

-- Location: LCCOMB_X68_Y44_N18
\FD|BANCO_REG|registrador[3][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][22]~feeder_combout\ = \FD|MUX_ULA_MEM|q[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	combout => \FD|BANCO_REG|registrador[3][22]~feeder_combout\);

-- Location: FF_X68_Y44_N19
\FD|BANCO_REG|registrador[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][22]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][22]~q\);

-- Location: LCCOMB_X68_Y44_N16
\FD|BANCO_REG|registrador[3][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][23]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	combout => \FD|BANCO_REG|registrador[3][23]~feeder_combout\);

-- Location: FF_X68_Y44_N17
\FD|BANCO_REG|registrador[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][23]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][23]~q\);

-- Location: LCCOMB_X68_Y44_N14
\FD|BANCO_REG|registrador[3][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][24]~feeder_combout\ = \FD|MUX_ULA_MEM|q[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	combout => \FD|BANCO_REG|registrador[3][24]~feeder_combout\);

-- Location: FF_X68_Y44_N15
\FD|BANCO_REG|registrador[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][24]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][24]~q\);

-- Location: LCCOMB_X68_Y44_N4
\FD|BANCO_REG|registrador[3][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][25]~feeder_combout\ = \FD|MUX_ULA_MEM|q[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	combout => \FD|BANCO_REG|registrador[3][25]~feeder_combout\);

-- Location: FF_X68_Y44_N5
\FD|BANCO_REG|registrador[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][25]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][25]~q\);

-- Location: LCCOMB_X68_Y44_N6
\FD|BANCO_REG|registrador[3][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][26]~feeder_combout\ = \FD|MUX_ULA_MEM|q[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	combout => \FD|BANCO_REG|registrador[3][26]~feeder_combout\);

-- Location: FF_X68_Y44_N7
\FD|BANCO_REG|registrador[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][26]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][26]~q\);

-- Location: LCCOMB_X68_Y44_N20
\FD|BANCO_REG|registrador[3][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][27]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	combout => \FD|BANCO_REG|registrador[3][27]~feeder_combout\);

-- Location: FF_X68_Y44_N21
\FD|BANCO_REG|registrador[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][27]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][27]~q\);

-- Location: LCCOMB_X68_Y44_N30
\FD|BANCO_REG|registrador[3][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][28]~feeder_combout\ = \FD|MUX_ULA_MEM|q[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	combout => \FD|BANCO_REG|registrador[3][28]~feeder_combout\);

-- Location: FF_X68_Y44_N31
\FD|BANCO_REG|registrador[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][28]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][28]~q\);

-- Location: LCCOMB_X68_Y48_N6
\FD|BANCO_REG|registrador[3][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][29]~feeder_combout\ = \FD|MUX_ULA_MEM|q[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	combout => \FD|BANCO_REG|registrador[3][29]~feeder_combout\);

-- Location: FF_X68_Y48_N7
\FD|BANCO_REG|registrador[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][29]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][29]~q\);

-- Location: LCCOMB_X67_Y48_N26
\FD|BANCO_REG|registrador[3][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[3][30]~feeder_combout\ = \FD|MUX_ULA_MEM|q[30]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	combout => \FD|BANCO_REG|registrador[3][30]~feeder_combout\);

-- Location: FF_X67_Y48_N27
\FD|BANCO_REG|registrador[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[3][30]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][30]~q\);

-- Location: FF_X67_Y45_N29
\FD|BANCO_REG|registrador[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	sload => VCC,
	ena => \FD|BANCO_REG|registrador[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[3][31]~q\);

-- Location: LCCOMB_X66_Y48_N18
\FD|BANCO_REG|registrador[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][0]~feeder_combout\ = \FD|MUX_ULA_MEM|q[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	combout => \FD|BANCO_REG|registrador[4][0]~feeder_combout\);

-- Location: LCCOMB_X69_Y44_N24
\FD|BANCO_REG|registrador[4][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][0]~3_combout\ = (\FD|MUX_RT_RD|q[2]~2_combout\ & (!\FD|MUX_RT_RD|q[0]~0_combout\ & (!\FD|MUX_RT_RD|q[1]~1_combout\ & \UCFD|HAB_ESC_REG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_RD|q[2]~2_combout\,
	datab => \FD|MUX_RT_RD|q[0]~0_combout\,
	datac => \FD|MUX_RT_RD|q[1]~1_combout\,
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador[4][0]~3_combout\);

-- Location: FF_X66_Y48_N19
\FD|BANCO_REG|registrador[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][0]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][0]~q\);

-- Location: LCCOMB_X66_Y49_N20
\FD|BANCO_REG|registrador[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][1]~feeder_combout\ = \FD|MUX_ULA_MEM|q[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	combout => \FD|BANCO_REG|registrador[4][1]~feeder_combout\);

-- Location: FF_X66_Y49_N21
\FD|BANCO_REG|registrador[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][1]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][1]~q\);

-- Location: LCCOMB_X66_Y49_N10
\FD|BANCO_REG|registrador[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][2]~feeder_combout\ = \FD|MUX_ULA_MEM|q[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	combout => \FD|BANCO_REG|registrador[4][2]~feeder_combout\);

-- Location: FF_X66_Y49_N11
\FD|BANCO_REG|registrador[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][2]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][2]~q\);

-- Location: LCCOMB_X66_Y49_N8
\FD|BANCO_REG|registrador[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][3]~feeder_combout\ = \FD|MUX_ULA_MEM|q[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	combout => \FD|BANCO_REG|registrador[4][3]~feeder_combout\);

-- Location: FF_X66_Y49_N9
\FD|BANCO_REG|registrador[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][3]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][3]~q\);

-- Location: LCCOMB_X66_Y49_N6
\FD|BANCO_REG|registrador[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][4]~feeder_combout\ = \FD|MUX_ULA_MEM|q[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	combout => \FD|BANCO_REG|registrador[4][4]~feeder_combout\);

-- Location: FF_X66_Y49_N7
\FD|BANCO_REG|registrador[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][4]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][4]~q\);

-- Location: LCCOMB_X66_Y48_N20
\FD|BANCO_REG|registrador[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][5]~feeder_combout\ = \FD|MUX_ULA_MEM|q[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	combout => \FD|BANCO_REG|registrador[4][5]~feeder_combout\);

-- Location: FF_X66_Y48_N21
\FD|BANCO_REG|registrador[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][5]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][5]~q\);

-- Location: LCCOMB_X66_Y48_N10
\FD|BANCO_REG|registrador[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][6]~feeder_combout\ = \FD|MUX_ULA_MEM|q[6]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	combout => \FD|BANCO_REG|registrador[4][6]~feeder_combout\);

-- Location: FF_X66_Y48_N11
\FD|BANCO_REG|registrador[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][6]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][6]~q\);

-- Location: LCCOMB_X68_Y48_N28
\FD|BANCO_REG|registrador[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][7]~feeder_combout\ = \FD|MUX_ULA_MEM|q[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	combout => \FD|BANCO_REG|registrador[4][7]~feeder_combout\);

-- Location: FF_X68_Y48_N29
\FD|BANCO_REG|registrador[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][7]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][7]~q\);

-- Location: LCCOMB_X69_Y44_N20
\FD|BANCO_REG|registrador[4][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][8]~feeder_combout\ = \FD|MUX_ULA_MEM|q[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	combout => \FD|BANCO_REG|registrador[4][8]~feeder_combout\);

-- Location: FF_X69_Y44_N21
\FD|BANCO_REG|registrador[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][8]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][8]~q\);

-- Location: LCCOMB_X68_Y48_N18
\FD|BANCO_REG|registrador[4][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][9]~feeder_combout\ = \FD|MUX_ULA_MEM|q[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	combout => \FD|BANCO_REG|registrador[4][9]~feeder_combout\);

-- Location: FF_X68_Y48_N19
\FD|BANCO_REG|registrador[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][9]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][9]~q\);

-- Location: LCCOMB_X68_Y48_N8
\FD|BANCO_REG|registrador[4][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][10]~feeder_combout\ = \FD|MUX_ULA_MEM|q[10]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	combout => \FD|BANCO_REG|registrador[4][10]~feeder_combout\);

-- Location: FF_X68_Y48_N9
\FD|BANCO_REG|registrador[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][10]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][10]~q\);

-- Location: LCCOMB_X68_Y48_N14
\FD|BANCO_REG|registrador[4][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][11]~feeder_combout\ = \FD|MUX_ULA_MEM|q[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	combout => \FD|BANCO_REG|registrador[4][11]~feeder_combout\);

-- Location: FF_X68_Y48_N15
\FD|BANCO_REG|registrador[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][11]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][11]~q\);

-- Location: LCCOMB_X68_Y48_N12
\FD|BANCO_REG|registrador[4][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][12]~feeder_combout\ = \FD|MUX_ULA_MEM|q[12]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	combout => \FD|BANCO_REG|registrador[4][12]~feeder_combout\);

-- Location: FF_X68_Y48_N13
\FD|BANCO_REG|registrador[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][12]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][12]~q\);

-- Location: LCCOMB_X68_Y48_N10
\FD|BANCO_REG|registrador[4][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][13]~feeder_combout\ = \FD|MUX_ULA_MEM|q[13]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	combout => \FD|BANCO_REG|registrador[4][13]~feeder_combout\);

-- Location: FF_X68_Y48_N11
\FD|BANCO_REG|registrador[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][13]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][13]~q\);

-- Location: LCCOMB_X66_Y49_N28
\FD|BANCO_REG|registrador[4][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][14]~feeder_combout\ = \FD|MUX_ULA_MEM|q[14]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	combout => \FD|BANCO_REG|registrador[4][14]~feeder_combout\);

-- Location: FF_X66_Y49_N29
\FD|BANCO_REG|registrador[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][14]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][14]~q\);

-- Location: LCCOMB_X66_Y49_N30
\FD|BANCO_REG|registrador[4][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][15]~feeder_combout\ = \FD|MUX_ULA_MEM|q[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	combout => \FD|BANCO_REG|registrador[4][15]~feeder_combout\);

-- Location: FF_X66_Y49_N31
\FD|BANCO_REG|registrador[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][15]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][15]~q\);

-- Location: LCCOMB_X66_Y49_N16
\FD|BANCO_REG|registrador[4][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	combout => \FD|BANCO_REG|registrador[4][16]~feeder_combout\);

-- Location: FF_X66_Y49_N17
\FD|BANCO_REG|registrador[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][16]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][16]~q\);

-- Location: LCCOMB_X66_Y49_N26
\FD|BANCO_REG|registrador[4][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][17]~feeder_combout\ = \FD|MUX_ULA_MEM|q[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	combout => \FD|BANCO_REG|registrador[4][17]~feeder_combout\);

-- Location: FF_X66_Y49_N27
\FD|BANCO_REG|registrador[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][17]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][17]~q\);

-- Location: LCCOMB_X66_Y49_N24
\FD|BANCO_REG|registrador[4][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][18]~feeder_combout\ = \FD|MUX_ULA_MEM|q[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	combout => \FD|BANCO_REG|registrador[4][18]~feeder_combout\);

-- Location: FF_X66_Y49_N25
\FD|BANCO_REG|registrador[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][18]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][18]~q\);

-- Location: LCCOMB_X66_Y49_N2
\FD|BANCO_REG|registrador[4][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][19]~feeder_combout\ = \FD|MUX_ULA_MEM|q[19]~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	combout => \FD|BANCO_REG|registrador[4][19]~feeder_combout\);

-- Location: FF_X66_Y49_N3
\FD|BANCO_REG|registrador[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][19]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][19]~q\);

-- Location: LCCOMB_X66_Y48_N8
\FD|BANCO_REG|registrador[4][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	combout => \FD|BANCO_REG|registrador[4][20]~feeder_combout\);

-- Location: FF_X66_Y48_N9
\FD|BANCO_REG|registrador[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][20]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][20]~q\);

-- Location: LCCOMB_X66_Y44_N12
\FD|BANCO_REG|registrador[4][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][21]~feeder_combout\ = \FD|MUX_ULA_MEM|q[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	combout => \FD|BANCO_REG|registrador[4][21]~feeder_combout\);

-- Location: FF_X66_Y44_N13
\FD|BANCO_REG|registrador[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][21]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][21]~q\);

-- Location: LCCOMB_X66_Y44_N18
\FD|BANCO_REG|registrador[4][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][22]~feeder_combout\ = \FD|MUX_ULA_MEM|q[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	combout => \FD|BANCO_REG|registrador[4][22]~feeder_combout\);

-- Location: FF_X66_Y44_N19
\FD|BANCO_REG|registrador[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][22]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][22]~q\);

-- Location: LCCOMB_X66_Y44_N20
\FD|BANCO_REG|registrador[4][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][23]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	combout => \FD|BANCO_REG|registrador[4][23]~feeder_combout\);

-- Location: FF_X66_Y44_N21
\FD|BANCO_REG|registrador[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][23]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][23]~q\);

-- Location: LCCOMB_X66_Y44_N22
\FD|BANCO_REG|registrador[4][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][24]~feeder_combout\ = \FD|MUX_ULA_MEM|q[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	combout => \FD|BANCO_REG|registrador[4][24]~feeder_combout\);

-- Location: FF_X66_Y44_N23
\FD|BANCO_REG|registrador[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][24]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][24]~q\);

-- Location: LCCOMB_X69_Y44_N2
\FD|BANCO_REG|registrador[4][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][25]~feeder_combout\ = \FD|MUX_ULA_MEM|q[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	combout => \FD|BANCO_REG|registrador[4][25]~feeder_combout\);

-- Location: FF_X69_Y44_N3
\FD|BANCO_REG|registrador[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][25]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][25]~q\);

-- Location: LCCOMB_X69_Y44_N12
\FD|BANCO_REG|registrador[4][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][26]~feeder_combout\ = \FD|MUX_ULA_MEM|q[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	combout => \FD|BANCO_REG|registrador[4][26]~feeder_combout\);

-- Location: FF_X69_Y44_N13
\FD|BANCO_REG|registrador[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][26]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][26]~q\);

-- Location: LCCOMB_X69_Y44_N18
\FD|BANCO_REG|registrador[4][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][27]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	combout => \FD|BANCO_REG|registrador[4][27]~feeder_combout\);

-- Location: FF_X69_Y44_N19
\FD|BANCO_REG|registrador[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][27]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][27]~q\);

-- Location: LCCOMB_X66_Y44_N4
\FD|BANCO_REG|registrador[4][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][28]~feeder_combout\ = \FD|MUX_ULA_MEM|q[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	combout => \FD|BANCO_REG|registrador[4][28]~feeder_combout\);

-- Location: FF_X66_Y44_N5
\FD|BANCO_REG|registrador[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][28]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][28]~q\);

-- Location: LCCOMB_X68_Y48_N16
\FD|BANCO_REG|registrador[4][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][29]~feeder_combout\ = \FD|MUX_ULA_MEM|q[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	combout => \FD|BANCO_REG|registrador[4][29]~feeder_combout\);

-- Location: FF_X68_Y48_N17
\FD|BANCO_REG|registrador[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][29]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][29]~q\);

-- Location: LCCOMB_X66_Y49_N4
\FD|BANCO_REG|registrador[4][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][30]~feeder_combout\ = \FD|MUX_ULA_MEM|q[30]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	combout => \FD|BANCO_REG|registrador[4][30]~feeder_combout\);

-- Location: FF_X66_Y49_N5
\FD|BANCO_REG|registrador[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][30]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][30]~q\);

-- Location: LCCOMB_X66_Y49_N14
\FD|BANCO_REG|registrador[4][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[4][31]~feeder_combout\ = \FD|MUX_ULA_MEM|q[31]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	combout => \FD|BANCO_REG|registrador[4][31]~feeder_combout\);

-- Location: FF_X66_Y49_N15
\FD|BANCO_REG|registrador[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[4][31]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[4][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[4][31]~q\);

-- Location: LCCOMB_X72_Y49_N24
\FD|BANCO_REG|registrador[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][0]~feeder_combout\ = \FD|MUX_ULA_MEM|q[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	combout => \FD|BANCO_REG|registrador[5][0]~feeder_combout\);

-- Location: LCCOMB_X69_Y44_N10
\FD|BANCO_REG|registrador[5][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][0]~4_combout\ = (\FD|MUX_RT_RD|q[2]~2_combout\ & (\FD|MUX_RT_RD|q[0]~0_combout\ & (!\FD|MUX_RT_RD|q[1]~1_combout\ & \UCFD|HAB_ESC_REG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_RD|q[2]~2_combout\,
	datab => \FD|MUX_RT_RD|q[0]~0_combout\,
	datac => \FD|MUX_RT_RD|q[1]~1_combout\,
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador[5][0]~4_combout\);

-- Location: FF_X72_Y49_N25
\FD|BANCO_REG|registrador[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][0]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][0]~q\);

-- Location: LCCOMB_X72_Y45_N30
\FD|BANCO_REG|registrador[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][1]~feeder_combout\ = \FD|MUX_ULA_MEM|q[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	combout => \FD|BANCO_REG|registrador[5][1]~feeder_combout\);

-- Location: FF_X72_Y45_N31
\FD|BANCO_REG|registrador[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][1]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][1]~q\);

-- Location: LCCOMB_X66_Y49_N0
\FD|BANCO_REG|registrador[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][2]~feeder_combout\ = \FD|MUX_ULA_MEM|q[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	combout => \FD|BANCO_REG|registrador[5][2]~feeder_combout\);

-- Location: FF_X66_Y49_N1
\FD|BANCO_REG|registrador[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][2]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][2]~q\);

-- Location: LCCOMB_X72_Y45_N20
\FD|BANCO_REG|registrador[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][3]~feeder_combout\ = \FD|MUX_ULA_MEM|q[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	combout => \FD|BANCO_REG|registrador[5][3]~feeder_combout\);

-- Location: FF_X72_Y45_N21
\FD|BANCO_REG|registrador[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][3]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][3]~q\);

-- Location: LCCOMB_X63_Y49_N24
\FD|BANCO_REG|registrador[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][4]~feeder_combout\ = \FD|MUX_ULA_MEM|q[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	combout => \FD|BANCO_REG|registrador[5][4]~feeder_combout\);

-- Location: FF_X63_Y49_N25
\FD|BANCO_REG|registrador[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][4]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][4]~q\);

-- Location: LCCOMB_X72_Y49_N26
\FD|BANCO_REG|registrador[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][5]~feeder_combout\ = \FD|MUX_ULA_MEM|q[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	combout => \FD|BANCO_REG|registrador[5][5]~feeder_combout\);

-- Location: FF_X72_Y49_N27
\FD|BANCO_REG|registrador[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][5]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][5]~q\);

-- Location: LCCOMB_X72_Y49_N28
\FD|BANCO_REG|registrador[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][6]~feeder_combout\ = \FD|MUX_ULA_MEM|q[6]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	combout => \FD|BANCO_REG|registrador[5][6]~feeder_combout\);

-- Location: FF_X72_Y49_N29
\FD|BANCO_REG|registrador[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][6]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][6]~q\);

-- Location: LCCOMB_X72_Y45_N18
\FD|BANCO_REG|registrador[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][7]~feeder_combout\ = \FD|MUX_ULA_MEM|q[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	combout => \FD|BANCO_REG|registrador[5][7]~feeder_combout\);

-- Location: FF_X72_Y45_N19
\FD|BANCO_REG|registrador[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][7]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][7]~q\);

-- Location: LCCOMB_X72_Y45_N4
\FD|BANCO_REG|registrador[5][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][8]~feeder_combout\ = \FD|MUX_ULA_MEM|q[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	combout => \FD|BANCO_REG|registrador[5][8]~feeder_combout\);

-- Location: FF_X72_Y45_N5
\FD|BANCO_REG|registrador[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][8]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][8]~q\);

-- Location: LCCOMB_X63_Y48_N4
\FD|BANCO_REG|registrador[5][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][9]~feeder_combout\ = \FD|MUX_ULA_MEM|q[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	combout => \FD|BANCO_REG|registrador[5][9]~feeder_combout\);

-- Location: FF_X63_Y48_N5
\FD|BANCO_REG|registrador[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][9]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][9]~q\);

-- Location: LCCOMB_X63_Y49_N26
\FD|BANCO_REG|registrador[5][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][10]~feeder_combout\ = \FD|MUX_ULA_MEM|q[10]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	combout => \FD|BANCO_REG|registrador[5][10]~feeder_combout\);

-- Location: FF_X63_Y49_N27
\FD|BANCO_REG|registrador[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][10]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][10]~q\);

-- Location: LCCOMB_X63_Y48_N22
\FD|BANCO_REG|registrador[5][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][11]~feeder_combout\ = \FD|MUX_ULA_MEM|q[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	combout => \FD|BANCO_REG|registrador[5][11]~feeder_combout\);

-- Location: FF_X63_Y48_N23
\FD|BANCO_REG|registrador[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][11]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][11]~q\);

-- Location: LCCOMB_X72_Y49_N10
\FD|BANCO_REG|registrador[5][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][12]~feeder_combout\ = \FD|MUX_ULA_MEM|q[12]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	combout => \FD|BANCO_REG|registrador[5][12]~feeder_combout\);

-- Location: FF_X72_Y49_N11
\FD|BANCO_REG|registrador[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][12]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][12]~q\);

-- Location: LCCOMB_X72_Y45_N14
\FD|BANCO_REG|registrador[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][13]~feeder_combout\ = \FD|MUX_ULA_MEM|q[13]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	combout => \FD|BANCO_REG|registrador[5][13]~feeder_combout\);

-- Location: FF_X72_Y45_N15
\FD|BANCO_REG|registrador[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][13]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][13]~q\);

-- Location: LCCOMB_X63_Y47_N24
\FD|BANCO_REG|registrador[5][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][14]~feeder_combout\ = \FD|MUX_ULA_MEM|q[14]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	combout => \FD|BANCO_REG|registrador[5][14]~feeder_combout\);

-- Location: FF_X63_Y47_N25
\FD|BANCO_REG|registrador[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][14]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][14]~q\);

-- Location: LCCOMB_X63_Y48_N0
\FD|BANCO_REG|registrador[5][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][15]~feeder_combout\ = \FD|MUX_ULA_MEM|q[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	combout => \FD|BANCO_REG|registrador[5][15]~feeder_combout\);

-- Location: FF_X63_Y48_N1
\FD|BANCO_REG|registrador[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][15]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][15]~q\);

-- Location: LCCOMB_X66_Y49_N18
\FD|BANCO_REG|registrador[5][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	combout => \FD|BANCO_REG|registrador[5][16]~feeder_combout\);

-- Location: FF_X66_Y49_N19
\FD|BANCO_REG|registrador[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][16]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][16]~q\);

-- Location: LCCOMB_X63_Y47_N22
\FD|BANCO_REG|registrador[5][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][17]~feeder_combout\ = \FD|MUX_ULA_MEM|q[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	combout => \FD|BANCO_REG|registrador[5][17]~feeder_combout\);

-- Location: FF_X63_Y47_N23
\FD|BANCO_REG|registrador[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][17]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][17]~q\);

-- Location: LCCOMB_X63_Y47_N0
\FD|BANCO_REG|registrador[5][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][18]~feeder_combout\ = \FD|MUX_ULA_MEM|q[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	combout => \FD|BANCO_REG|registrador[5][18]~feeder_combout\);

-- Location: FF_X63_Y47_N1
\FD|BANCO_REG|registrador[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][18]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][18]~q\);

-- Location: LCCOMB_X66_Y49_N12
\FD|BANCO_REG|registrador[5][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][19]~feeder_combout\ = \FD|MUX_ULA_MEM|q[19]~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	combout => \FD|BANCO_REG|registrador[5][19]~feeder_combout\);

-- Location: FF_X66_Y49_N13
\FD|BANCO_REG|registrador[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][19]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][19]~q\);

-- Location: LCCOMB_X63_Y47_N30
\FD|BANCO_REG|registrador[5][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	combout => \FD|BANCO_REG|registrador[5][20]~feeder_combout\);

-- Location: FF_X63_Y47_N31
\FD|BANCO_REG|registrador[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][20]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][20]~q\);

-- Location: LCCOMB_X63_Y44_N14
\FD|BANCO_REG|registrador[5][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][21]~feeder_combout\ = \FD|MUX_ULA_MEM|q[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	combout => \FD|BANCO_REG|registrador[5][21]~feeder_combout\);

-- Location: FF_X63_Y44_N15
\FD|BANCO_REG|registrador[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][21]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][21]~q\);

-- Location: LCCOMB_X63_Y47_N4
\FD|BANCO_REG|registrador[5][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][22]~feeder_combout\ = \FD|MUX_ULA_MEM|q[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	combout => \FD|BANCO_REG|registrador[5][22]~feeder_combout\);

-- Location: FF_X63_Y47_N5
\FD|BANCO_REG|registrador[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][22]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][22]~q\);

-- Location: LCCOMB_X63_Y44_N8
\FD|BANCO_REG|registrador[5][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][23]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	combout => \FD|BANCO_REG|registrador[5][23]~feeder_combout\);

-- Location: FF_X63_Y44_N9
\FD|BANCO_REG|registrador[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][23]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][23]~q\);

-- Location: LCCOMB_X63_Y44_N6
\FD|BANCO_REG|registrador[5][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][24]~feeder_combout\ = \FD|MUX_ULA_MEM|q[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	combout => \FD|BANCO_REG|registrador[5][24]~feeder_combout\);

-- Location: FF_X63_Y44_N7
\FD|BANCO_REG|registrador[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][24]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][24]~q\);

-- Location: LCCOMB_X70_Y45_N30
\FD|BANCO_REG|registrador[5][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][25]~feeder_combout\ = \FD|MUX_ULA_MEM|q[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	combout => \FD|BANCO_REG|registrador[5][25]~feeder_combout\);

-- Location: FF_X70_Y45_N31
\FD|BANCO_REG|registrador[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][25]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][25]~q\);

-- Location: LCCOMB_X72_Y45_N28
\FD|BANCO_REG|registrador[5][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][26]~feeder_combout\ = \FD|MUX_ULA_MEM|q[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	combout => \FD|BANCO_REG|registrador[5][26]~feeder_combout\);

-- Location: FF_X72_Y45_N29
\FD|BANCO_REG|registrador[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][26]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][26]~q\);

-- Location: LCCOMB_X72_Y45_N22
\FD|BANCO_REG|registrador[5][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][27]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	combout => \FD|BANCO_REG|registrador[5][27]~feeder_combout\);

-- Location: FF_X72_Y45_N23
\FD|BANCO_REG|registrador[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][27]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][27]~q\);

-- Location: LCCOMB_X66_Y49_N22
\FD|BANCO_REG|registrador[5][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][28]~feeder_combout\ = \FD|MUX_ULA_MEM|q[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	combout => \FD|BANCO_REG|registrador[5][28]~feeder_combout\);

-- Location: FF_X66_Y49_N23
\FD|BANCO_REG|registrador[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][28]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][28]~q\);

-- Location: LCCOMB_X70_Y45_N0
\FD|BANCO_REG|registrador[5][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][29]~feeder_combout\ = \FD|MUX_ULA_MEM|q[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	combout => \FD|BANCO_REG|registrador[5][29]~feeder_combout\);

-- Location: FF_X70_Y45_N1
\FD|BANCO_REG|registrador[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][29]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][29]~q\);

-- Location: FF_X70_Y45_N3
\FD|BANCO_REG|registrador[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	sload => VCC,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][30]~q\);

-- Location: LCCOMB_X70_Y45_N14
\FD|BANCO_REG|registrador[5][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[5][31]~feeder_combout\ = \FD|MUX_ULA_MEM|q[31]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	combout => \FD|BANCO_REG|registrador[5][31]~feeder_combout\);

-- Location: FF_X70_Y45_N15
\FD|BANCO_REG|registrador[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[5][31]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[5][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[5][31]~q\);

-- Location: LCCOMB_X72_Y49_N20
\FD|BANCO_REG|registrador[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][0]~feeder_combout\ = \FD|MUX_ULA_MEM|q[0]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	combout => \FD|BANCO_REG|registrador[6][0]~feeder_combout\);

-- Location: LCCOMB_X69_Y44_N28
\FD|BANCO_REG|registrador[6][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][0]~5_combout\ = (\FD|MUX_RT_RD|q[2]~2_combout\ & (!\FD|MUX_RT_RD|q[0]~0_combout\ & (\FD|MUX_RT_RD|q[1]~1_combout\ & \UCFD|HAB_ESC_REG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_RD|q[2]~2_combout\,
	datab => \FD|MUX_RT_RD|q[0]~0_combout\,
	datac => \FD|MUX_RT_RD|q[1]~1_combout\,
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador[6][0]~5_combout\);

-- Location: FF_X72_Y49_N21
\FD|BANCO_REG|registrador[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][0]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][0]~q\);

-- Location: LCCOMB_X72_Y49_N2
\FD|BANCO_REG|registrador[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][1]~feeder_combout\ = \FD|MUX_ULA_MEM|q[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	combout => \FD|BANCO_REG|registrador[6][1]~feeder_combout\);

-- Location: FF_X72_Y49_N3
\FD|BANCO_REG|registrador[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][1]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][1]~q\);

-- Location: LCCOMB_X68_Y49_N22
\FD|BANCO_REG|registrador[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][2]~feeder_combout\ = \FD|MUX_ULA_MEM|q[2]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	combout => \FD|BANCO_REG|registrador[6][2]~feeder_combout\);

-- Location: FF_X68_Y49_N23
\FD|BANCO_REG|registrador[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][2]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][2]~q\);

-- Location: LCCOMB_X72_Y49_N4
\FD|BANCO_REG|registrador[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][3]~feeder_combout\ = \FD|MUX_ULA_MEM|q[3]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	combout => \FD|BANCO_REG|registrador[6][3]~feeder_combout\);

-- Location: FF_X72_Y49_N5
\FD|BANCO_REG|registrador[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][3]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][3]~q\);

-- Location: LCCOMB_X68_Y49_N12
\FD|BANCO_REG|registrador[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][4]~feeder_combout\ = \FD|MUX_ULA_MEM|q[4]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	combout => \FD|BANCO_REG|registrador[6][4]~feeder_combout\);

-- Location: FF_X68_Y49_N13
\FD|BANCO_REG|registrador[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][4]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][4]~q\);

-- Location: LCCOMB_X72_Y49_N22
\FD|BANCO_REG|registrador[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][5]~feeder_combout\ = \FD|MUX_ULA_MEM|q[5]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	combout => \FD|BANCO_REG|registrador[6][5]~feeder_combout\);

-- Location: FF_X72_Y49_N23
\FD|BANCO_REG|registrador[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][5]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][5]~q\);

-- Location: LCCOMB_X72_Y49_N12
\FD|BANCO_REG|registrador[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][6]~feeder_combout\ = \FD|MUX_ULA_MEM|q[6]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	combout => \FD|BANCO_REG|registrador[6][6]~feeder_combout\);

-- Location: FF_X72_Y49_N13
\FD|BANCO_REG|registrador[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][6]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][6]~q\);

-- Location: LCCOMB_X63_Y45_N30
\FD|BANCO_REG|registrador[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][7]~feeder_combout\ = \FD|MUX_ULA_MEM|q[7]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	combout => \FD|BANCO_REG|registrador[6][7]~feeder_combout\);

-- Location: FF_X63_Y45_N31
\FD|BANCO_REG|registrador[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][7]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][7]~q\);

-- Location: LCCOMB_X72_Y48_N4
\FD|BANCO_REG|registrador[6][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][8]~feeder_combout\ = \FD|MUX_ULA_MEM|q[8]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	combout => \FD|BANCO_REG|registrador[6][8]~feeder_combout\);

-- Location: FF_X72_Y48_N5
\FD|BANCO_REG|registrador[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][8]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][8]~q\);

-- Location: LCCOMB_X62_Y47_N28
\FD|BANCO_REG|registrador[6][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][9]~feeder_combout\ = \FD|MUX_ULA_MEM|q[9]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	combout => \FD|BANCO_REG|registrador[6][9]~feeder_combout\);

-- Location: FF_X62_Y47_N29
\FD|BANCO_REG|registrador[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][9]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][9]~q\);

-- Location: LCCOMB_X68_Y49_N10
\FD|BANCO_REG|registrador[6][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][10]~feeder_combout\ = \FD|MUX_ULA_MEM|q[10]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	combout => \FD|BANCO_REG|registrador[6][10]~feeder_combout\);

-- Location: FF_X68_Y49_N11
\FD|BANCO_REG|registrador[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][10]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][10]~q\);

-- Location: LCCOMB_X63_Y48_N2
\FD|BANCO_REG|registrador[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][11]~feeder_combout\ = \FD|MUX_ULA_MEM|q[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	combout => \FD|BANCO_REG|registrador[6][11]~feeder_combout\);

-- Location: FF_X63_Y48_N3
\FD|BANCO_REG|registrador[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][11]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][11]~q\);

-- Location: LCCOMB_X72_Y49_N14
\FD|BANCO_REG|registrador[6][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][12]~feeder_combout\ = \FD|MUX_ULA_MEM|q[12]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	combout => \FD|BANCO_REG|registrador[6][12]~feeder_combout\);

-- Location: FF_X72_Y49_N15
\FD|BANCO_REG|registrador[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][12]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][12]~q\);

-- Location: LCCOMB_X72_Y48_N14
\FD|BANCO_REG|registrador[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][13]~feeder_combout\ = \FD|MUX_ULA_MEM|q[13]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	combout => \FD|BANCO_REG|registrador[6][13]~feeder_combout\);

-- Location: FF_X72_Y48_N15
\FD|BANCO_REG|registrador[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][13]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][13]~q\);

-- Location: LCCOMB_X68_Y49_N28
\FD|BANCO_REG|registrador[6][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][14]~feeder_combout\ = \FD|MUX_ULA_MEM|q[14]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	combout => \FD|BANCO_REG|registrador[6][14]~feeder_combout\);

-- Location: FF_X68_Y49_N29
\FD|BANCO_REG|registrador[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][14]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][14]~q\);

-- Location: LCCOMB_X63_Y48_N8
\FD|BANCO_REG|registrador[6][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][15]~feeder_combout\ = \FD|MUX_ULA_MEM|q[15]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	combout => \FD|BANCO_REG|registrador[6][15]~feeder_combout\);

-- Location: FF_X63_Y48_N9
\FD|BANCO_REG|registrador[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][15]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][15]~q\);

-- Location: LCCOMB_X63_Y45_N4
\FD|BANCO_REG|registrador[6][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[16]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	combout => \FD|BANCO_REG|registrador[6][16]~feeder_combout\);

-- Location: FF_X63_Y45_N5
\FD|BANCO_REG|registrador[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][16]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][16]~q\);

-- Location: LCCOMB_X63_Y45_N26
\FD|BANCO_REG|registrador[6][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][17]~feeder_combout\ = \FD|MUX_ULA_MEM|q[17]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	combout => \FD|BANCO_REG|registrador[6][17]~feeder_combout\);

-- Location: FF_X63_Y45_N27
\FD|BANCO_REG|registrador[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][17]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][17]~q\);

-- Location: LCCOMB_X68_Y49_N2
\FD|BANCO_REG|registrador[6][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][18]~feeder_combout\ = \FD|MUX_ULA_MEM|q[18]~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	combout => \FD|BANCO_REG|registrador[6][18]~feeder_combout\);

-- Location: FF_X68_Y49_N3
\FD|BANCO_REG|registrador[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][18]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][18]~q\);

-- Location: LCCOMB_X67_Y44_N22
\FD|BANCO_REG|registrador[6][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][19]~feeder_combout\ = \FD|MUX_ULA_MEM|q[19]~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	combout => \FD|BANCO_REG|registrador[6][19]~feeder_combout\);

-- Location: FF_X67_Y44_N23
\FD|BANCO_REG|registrador[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][19]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][19]~q\);

-- Location: LCCOMB_X67_Y44_N16
\FD|BANCO_REG|registrador[6][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[20]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	combout => \FD|BANCO_REG|registrador[6][20]~feeder_combout\);

-- Location: FF_X67_Y44_N17
\FD|BANCO_REG|registrador[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][20]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][20]~q\);

-- Location: LCCOMB_X67_Y44_N18
\FD|BANCO_REG|registrador[6][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][21]~feeder_combout\ = \FD|MUX_ULA_MEM|q[21]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	combout => \FD|BANCO_REG|registrador[6][21]~feeder_combout\);

-- Location: FF_X67_Y44_N19
\FD|BANCO_REG|registrador[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][21]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][21]~q\);

-- Location: LCCOMB_X67_Y44_N8
\FD|BANCO_REG|registrador[6][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][22]~feeder_combout\ = \FD|MUX_ULA_MEM|q[22]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	combout => \FD|BANCO_REG|registrador[6][22]~feeder_combout\);

-- Location: FF_X67_Y44_N9
\FD|BANCO_REG|registrador[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][22]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][22]~q\);

-- Location: LCCOMB_X67_Y44_N10
\FD|BANCO_REG|registrador[6][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][23]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	combout => \FD|BANCO_REG|registrador[6][23]~feeder_combout\);

-- Location: FF_X67_Y44_N11
\FD|BANCO_REG|registrador[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][23]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][23]~q\);

-- Location: LCCOMB_X67_Y44_N0
\FD|BANCO_REG|registrador[6][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][24]~feeder_combout\ = \FD|MUX_ULA_MEM|q[24]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	combout => \FD|BANCO_REG|registrador[6][24]~feeder_combout\);

-- Location: FF_X67_Y44_N1
\FD|BANCO_REG|registrador[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][24]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][24]~q\);

-- Location: LCCOMB_X69_Y44_N4
\FD|BANCO_REG|registrador[6][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][25]~feeder_combout\ = \FD|MUX_ULA_MEM|q[25]~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	combout => \FD|BANCO_REG|registrador[6][25]~feeder_combout\);

-- Location: FF_X69_Y44_N5
\FD|BANCO_REG|registrador[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][25]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][25]~q\);

-- Location: LCCOMB_X69_Y44_N6
\FD|BANCO_REG|registrador[6][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][26]~feeder_combout\ = \FD|MUX_ULA_MEM|q[26]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	combout => \FD|BANCO_REG|registrador[6][26]~feeder_combout\);

-- Location: FF_X69_Y44_N7
\FD|BANCO_REG|registrador[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][26]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][26]~q\);

-- Location: LCCOMB_X69_Y44_N8
\FD|BANCO_REG|registrador[6][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][27]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	combout => \FD|BANCO_REG|registrador[6][27]~feeder_combout\);

-- Location: FF_X69_Y44_N9
\FD|BANCO_REG|registrador[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][27]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][27]~q\);

-- Location: LCCOMB_X67_Y44_N6
\FD|BANCO_REG|registrador[6][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][28]~feeder_combout\ = \FD|MUX_ULA_MEM|q[28]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	combout => \FD|BANCO_REG|registrador[6][28]~feeder_combout\);

-- Location: FF_X67_Y44_N7
\FD|BANCO_REG|registrador[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][28]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][28]~q\);

-- Location: LCCOMB_X63_Y45_N0
\FD|BANCO_REG|registrador[6][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][29]~feeder_combout\ = \FD|MUX_ULA_MEM|q[29]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	combout => \FD|BANCO_REG|registrador[6][29]~feeder_combout\);

-- Location: FF_X63_Y45_N1
\FD|BANCO_REG|registrador[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][29]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][29]~q\);

-- Location: LCCOMB_X68_Y49_N8
\FD|BANCO_REG|registrador[6][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][30]~feeder_combout\ = \FD|MUX_ULA_MEM|q[30]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	combout => \FD|BANCO_REG|registrador[6][30]~feeder_combout\);

-- Location: FF_X68_Y49_N9
\FD|BANCO_REG|registrador[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][30]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][30]~q\);

-- Location: LCCOMB_X63_Y45_N22
\FD|BANCO_REG|registrador[6][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[6][31]~feeder_combout\ = \FD|MUX_ULA_MEM|q[31]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	combout => \FD|BANCO_REG|registrador[6][31]~feeder_combout\);

-- Location: FF_X63_Y45_N23
\FD|BANCO_REG|registrador[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[6][31]~feeder_combout\,
	ena => \FD|BANCO_REG|registrador[6][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[6][31]~q\);

-- Location: LCCOMB_X69_Y44_N30
\FD|BANCO_REG|registrador[7][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[7][0]~6_combout\ = (\FD|MUX_RT_RD|q[2]~2_combout\ & (\FD|MUX_RT_RD|q[0]~0_combout\ & (\FD|MUX_RT_RD|q[1]~1_combout\ & \UCFD|HAB_ESC_REG~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX_RT_RD|q[2]~2_combout\,
	datab => \FD|MUX_RT_RD|q[0]~0_combout\,
	datac => \FD|MUX_RT_RD|q[1]~1_combout\,
	datad => \UCFD|HAB_ESC_REG~0_combout\,
	combout => \FD|BANCO_REG|registrador[7][0]~6_combout\);

-- Location: FF_X61_Y45_N19
\FD|BANCO_REG|registrador[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[0]~63_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][0]~q\);

-- Location: FF_X61_Y45_N25
\FD|BANCO_REG|registrador[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[1]~64_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][1]~q\);

-- Location: FF_X61_Y45_N15
\FD|BANCO_REG|registrador[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[2]~65_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][2]~q\);

-- Location: FF_X69_Y45_N21
\FD|BANCO_REG|registrador[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[3]~66_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][3]~q\);

-- Location: FF_X69_Y45_N23
\FD|BANCO_REG|registrador[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[4]~67_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][4]~q\);

-- Location: FF_X61_Y45_N9
\FD|BANCO_REG|registrador[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[5]~68_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][5]~q\);

-- Location: FF_X61_Y45_N7
\FD|BANCO_REG|registrador[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[6]~69_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][6]~q\);

-- Location: FF_X61_Y45_N5
\FD|BANCO_REG|registrador[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[7]~70_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][7]~q\);

-- Location: FF_X61_Y45_N27
\FD|BANCO_REG|registrador[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[8]~71_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][8]~q\);

-- Location: FF_X61_Y45_N29
\FD|BANCO_REG|registrador[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[9]~72_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][9]~q\);

-- Location: FF_X61_Y45_N23
\FD|BANCO_REG|registrador[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[10]~73_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][10]~q\);

-- Location: FF_X69_Y45_N25
\FD|BANCO_REG|registrador[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[11]~74_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][11]~q\);

-- Location: FF_X69_Y45_N31
\FD|BANCO_REG|registrador[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[12]~75_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][12]~q\);

-- Location: FF_X65_Y48_N27
\FD|BANCO_REG|registrador[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[13]~76_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][13]~q\);

-- Location: FF_X65_Y44_N23
\FD|BANCO_REG|registrador[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[14]~77_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][14]~q\);

-- Location: FF_X65_Y48_N1
\FD|BANCO_REG|registrador[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[15]~78_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][15]~q\);

-- Location: FF_X65_Y48_N23
\FD|BANCO_REG|registrador[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[16]~79_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][16]~q\);

-- Location: FF_X67_Y47_N31
\FD|BANCO_REG|registrador[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[17]~80_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][17]~q\);

-- Location: FF_X67_Y47_N25
\FD|BANCO_REG|registrador[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[18]~81_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][18]~q\);

-- Location: FF_X67_Y47_N11
\FD|BANCO_REG|registrador[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[19]~82_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][19]~q\);

-- Location: FF_X66_Y47_N1
\FD|BANCO_REG|registrador[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[20]~83_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][20]~q\);

-- Location: FF_X66_Y44_N11
\FD|BANCO_REG|registrador[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[21]~84_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][21]~q\);

-- Location: FF_X66_Y44_N1
\FD|BANCO_REG|registrador[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[22]~85_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][22]~q\);

-- Location: FF_X66_Y44_N31
\FD|BANCO_REG|registrador[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[23]~86_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][23]~q\);

-- Location: FF_X65_Y44_N9
\FD|BANCO_REG|registrador[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[24]~87_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][24]~q\);

-- Location: FF_X69_Y45_N29
\FD|BANCO_REG|registrador[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[25]~88_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][25]~q\);

-- Location: FF_X68_Y45_N29
\FD|BANCO_REG|registrador[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[26]~89_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][26]~q\);

-- Location: FF_X68_Y45_N31
\FD|BANCO_REG|registrador[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[27]~90_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][27]~q\);

-- Location: FF_X67_Y45_N23
\FD|BANCO_REG|registrador[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[28]~91_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][28]~q\);

-- Location: FF_X67_Y45_N21
\FD|BANCO_REG|registrador[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[29]~92_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][29]~q\);

-- Location: FF_X67_Y45_N11
\FD|BANCO_REG|registrador[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[30]~62_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][30]~q\);

-- Location: FF_X67_Y45_N1
\FD|BANCO_REG|registrador[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[31]~93_combout\,
	ena => \FD|BANCO_REG|registrador[7][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[7][31]~q\);

ww_op(0) <= \op[0]~output_o\;

ww_op(1) <= \op[1]~output_o\;

ww_op(2) <= \op[2]~output_o\;

ww_op(3) <= \op[3]~output_o\;

ww_op(4) <= \op[4]~output_o\;

ww_op(5) <= \op[5]~output_o\;

ww_ula_op(0) <= \ula_op[0]~output_o\;

ww_ula_op(1) <= \ula_op[1]~output_o\;

ww_hab_esc_mem <= \hab_esc_mem~output_o\;

ww_hab_le_mem <= \hab_le_mem~output_o\;

ww_beq <= \beq~output_o\;

ww_sel_mux_ula_mem <= \sel_mux_ula_mem~output_o\;

ww_sel_mux_rt_imm <= \sel_mux_rt_imm~output_o\;

ww_sel_MUX_rt_rd <= \sel_MUX_rt_rd~output_o\;

ww_sel_mux_jump <= \sel_mux_jump~output_o\;

ww_hab_esc_reg <= \hab_esc_reg~output_o\;

ww_saidaROM(0) <= \saidaROM[0]~output_o\;

ww_saidaROM(1) <= \saidaROM[1]~output_o\;

ww_saidaROM(2) <= \saidaROM[2]~output_o\;

ww_saidaROM(3) <= \saidaROM[3]~output_o\;

ww_saidaROM(4) <= \saidaROM[4]~output_o\;

ww_saidaROM(5) <= \saidaROM[5]~output_o\;

ww_saidaROM(6) <= \saidaROM[6]~output_o\;

ww_saidaROM(7) <= \saidaROM[7]~output_o\;

ww_saidaROM(8) <= \saidaROM[8]~output_o\;

ww_saidaROM(9) <= \saidaROM[9]~output_o\;

ww_saidaROM(10) <= \saidaROM[10]~output_o\;

ww_saidaROM(11) <= \saidaROM[11]~output_o\;

ww_saidaROM(12) <= \saidaROM[12]~output_o\;

ww_saidaROM(13) <= \saidaROM[13]~output_o\;

ww_saidaROM(14) <= \saidaROM[14]~output_o\;

ww_saidaROM(15) <= \saidaROM[15]~output_o\;

ww_saidaROM(16) <= \saidaROM[16]~output_o\;

ww_saidaROM(17) <= \saidaROM[17]~output_o\;

ww_saidaROM(18) <= \saidaROM[18]~output_o\;

ww_saidaROM(19) <= \saidaROM[19]~output_o\;

ww_saidaROM(20) <= \saidaROM[20]~output_o\;

ww_saidaROM(21) <= \saidaROM[21]~output_o\;

ww_saidaROM(22) <= \saidaROM[22]~output_o\;

ww_saidaROM(23) <= \saidaROM[23]~output_o\;

ww_saidaROM(24) <= \saidaROM[24]~output_o\;

ww_saidaROM(25) <= \saidaROM[25]~output_o\;

ww_saidaROM(26) <= \saidaROM[26]~output_o\;

ww_saidaROM(27) <= \saidaROM[27]~output_o\;

ww_saidaROM(28) <= \saidaROM[28]~output_o\;

ww_saidaROM(29) <= \saidaROM[29]~output_o\;

ww_saidaROM(30) <= \saidaROM[30]~output_o\;

ww_saidaROM(31) <= \saidaROM[31]~output_o\;

ww_saidaULA(0) <= \saidaULA[0]~output_o\;

ww_saidaULA(1) <= \saidaULA[1]~output_o\;

ww_saidaULA(2) <= \saidaULA[2]~output_o\;

ww_saidaULA(3) <= \saidaULA[3]~output_o\;

ww_saidaULA(4) <= \saidaULA[4]~output_o\;

ww_saidaULA(5) <= \saidaULA[5]~output_o\;

ww_saidaULA(6) <= \saidaULA[6]~output_o\;

ww_saidaULA(7) <= \saidaULA[7]~output_o\;

ww_saidaULA(8) <= \saidaULA[8]~output_o\;

ww_saidaULA(9) <= \saidaULA[9]~output_o\;

ww_saidaULA(10) <= \saidaULA[10]~output_o\;

ww_saidaULA(11) <= \saidaULA[11]~output_o\;

ww_saidaULA(12) <= \saidaULA[12]~output_o\;

ww_saidaULA(13) <= \saidaULA[13]~output_o\;

ww_saidaULA(14) <= \saidaULA[14]~output_o\;

ww_saidaULA(15) <= \saidaULA[15]~output_o\;

ww_saidaULA(16) <= \saidaULA[16]~output_o\;

ww_saidaULA(17) <= \saidaULA[17]~output_o\;

ww_saidaULA(18) <= \saidaULA[18]~output_o\;

ww_saidaULA(19) <= \saidaULA[19]~output_o\;

ww_saidaULA(20) <= \saidaULA[20]~output_o\;

ww_saidaULA(21) <= \saidaULA[21]~output_o\;

ww_saidaULA(22) <= \saidaULA[22]~output_o\;

ww_saidaULA(23) <= \saidaULA[23]~output_o\;

ww_saidaULA(24) <= \saidaULA[24]~output_o\;

ww_saidaULA(25) <= \saidaULA[25]~output_o\;

ww_saidaULA(26) <= \saidaULA[26]~output_o\;

ww_saidaULA(27) <= \saidaULA[27]~output_o\;

ww_saidaULA(28) <= \saidaULA[28]~output_o\;

ww_saidaULA(29) <= \saidaULA[29]~output_o\;

ww_saidaULA(30) <= \saidaULA[30]~output_o\;

ww_saidaULA(31) <= \saidaULA[31]~output_o\;

ww_saidaRAM(0) <= \saidaRAM[0]~output_o\;

ww_saidaRAM(1) <= \saidaRAM[1]~output_o\;

ww_saidaRAM(2) <= \saidaRAM[2]~output_o\;

ww_saidaRAM(3) <= \saidaRAM[3]~output_o\;

ww_saidaRAM(4) <= \saidaRAM[4]~output_o\;

ww_saidaRAM(5) <= \saidaRAM[5]~output_o\;

ww_saidaRAM(6) <= \saidaRAM[6]~output_o\;

ww_saidaRAM(7) <= \saidaRAM[7]~output_o\;

ww_saidaRAM(8) <= \saidaRAM[8]~output_o\;

ww_saidaRAM(9) <= \saidaRAM[9]~output_o\;

ww_saidaRAM(10) <= \saidaRAM[10]~output_o\;

ww_saidaRAM(11) <= \saidaRAM[11]~output_o\;

ww_saidaRAM(12) <= \saidaRAM[12]~output_o\;

ww_saidaRAM(13) <= \saidaRAM[13]~output_o\;

ww_saidaRAM(14) <= \saidaRAM[14]~output_o\;

ww_saidaRAM(15) <= \saidaRAM[15]~output_o\;

ww_saidaRAM(16) <= \saidaRAM[16]~output_o\;

ww_saidaRAM(17) <= \saidaRAM[17]~output_o\;

ww_saidaRAM(18) <= \saidaRAM[18]~output_o\;

ww_saidaRAM(19) <= \saidaRAM[19]~output_o\;

ww_saidaRAM(20) <= \saidaRAM[20]~output_o\;

ww_saidaRAM(21) <= \saidaRAM[21]~output_o\;

ww_saidaRAM(22) <= \saidaRAM[22]~output_o\;

ww_saidaRAM(23) <= \saidaRAM[23]~output_o\;

ww_saidaRAM(24) <= \saidaRAM[24]~output_o\;

ww_saidaRAM(25) <= \saidaRAM[25]~output_o\;

ww_saidaRAM(26) <= \saidaRAM[26]~output_o\;

ww_saidaRAM(27) <= \saidaRAM[27]~output_o\;

ww_saidaRAM(28) <= \saidaRAM[28]~output_o\;

ww_saidaRAM(29) <= \saidaRAM[29]~output_o\;

ww_saidaRAM(30) <= \saidaRAM[30]~output_o\;

ww_saidaRAM(31) <= \saidaRAM[31]~output_o\;

ww_saidaPC(0) <= \saidaPC[0]~output_o\;

ww_saidaPC(1) <= \saidaPC[1]~output_o\;

ww_saidaPC(2) <= \saidaPC[2]~output_o\;

ww_saidaPC(3) <= \saidaPC[3]~output_o\;

ww_saidaPC(4) <= \saidaPC[4]~output_o\;

ww_saidaPC(5) <= \saidaPC[5]~output_o\;

ww_saidaPC(6) <= \saidaPC[6]~output_o\;

ww_saidaPC(7) <= \saidaPC[7]~output_o\;

ww_saidaPC(8) <= \saidaPC[8]~output_o\;

ww_saidaPC(9) <= \saidaPC[9]~output_o\;

ww_saidaPC(10) <= \saidaPC[10]~output_o\;

ww_saidaPC(11) <= \saidaPC[11]~output_o\;

ww_saidaPC(12) <= \saidaPC[12]~output_o\;

ww_saidaPC(13) <= \saidaPC[13]~output_o\;

ww_saidaPC(14) <= \saidaPC[14]~output_o\;

ww_saidaPC(15) <= \saidaPC[15]~output_o\;

ww_saidaPC(16) <= \saidaPC[16]~output_o\;

ww_saidaPC(17) <= \saidaPC[17]~output_o\;

ww_saidaPC(18) <= \saidaPC[18]~output_o\;

ww_saidaPC(19) <= \saidaPC[19]~output_o\;

ww_saidaPC(20) <= \saidaPC[20]~output_o\;

ww_saidaPC(21) <= \saidaPC[21]~output_o\;

ww_saidaPC(22) <= \saidaPC[22]~output_o\;

ww_saidaPC(23) <= \saidaPC[23]~output_o\;

ww_saidaPC(24) <= \saidaPC[24]~output_o\;

ww_saidaPC(25) <= \saidaPC[25]~output_o\;

ww_saidaPC(26) <= \saidaPC[26]~output_o\;

ww_saidaPC(27) <= \saidaPC[27]~output_o\;

ww_saidaPC(28) <= \saidaPC[28]~output_o\;

ww_saidaPC(29) <= \saidaPC[29]~output_o\;

ww_saidaPC(30) <= \saidaPC[30]~output_o\;

ww_saidaPC(31) <= \saidaPC[31]~output_o\;

ww_saidaTeste1(0) <= \saidaTeste1[0]~output_o\;

ww_saidaTeste1(1) <= \saidaTeste1[1]~output_o\;

ww_saidaTeste1(2) <= \saidaTeste1[2]~output_o\;

ww_saidaTeste1(3) <= \saidaTeste1[3]~output_o\;

ww_saidaTeste1(4) <= \saidaTeste1[4]~output_o\;

ww_saidaTeste1(5) <= \saidaTeste1[5]~output_o\;

ww_saidaTeste1(6) <= \saidaTeste1[6]~output_o\;

ww_saidaTeste1(7) <= \saidaTeste1[7]~output_o\;

ww_saidaTeste1(8) <= \saidaTeste1[8]~output_o\;

ww_saidaTeste1(9) <= \saidaTeste1[9]~output_o\;

ww_saidaTeste1(10) <= \saidaTeste1[10]~output_o\;

ww_saidaTeste1(11) <= \saidaTeste1[11]~output_o\;

ww_saidaTeste1(12) <= \saidaTeste1[12]~output_o\;

ww_saidaTeste1(13) <= \saidaTeste1[13]~output_o\;

ww_saidaTeste1(14) <= \saidaTeste1[14]~output_o\;

ww_saidaTeste1(15) <= \saidaTeste1[15]~output_o\;

ww_saidaTeste1(16) <= \saidaTeste1[16]~output_o\;

ww_saidaTeste1(17) <= \saidaTeste1[17]~output_o\;

ww_saidaTeste1(18) <= \saidaTeste1[18]~output_o\;

ww_saidaTeste1(19) <= \saidaTeste1[19]~output_o\;

ww_saidaTeste1(20) <= \saidaTeste1[20]~output_o\;

ww_saidaTeste1(21) <= \saidaTeste1[21]~output_o\;

ww_saidaTeste1(22) <= \saidaTeste1[22]~output_o\;

ww_saidaTeste1(23) <= \saidaTeste1[23]~output_o\;

ww_saidaTeste1(24) <= \saidaTeste1[24]~output_o\;

ww_saidaTeste1(25) <= \saidaTeste1[25]~output_o\;

ww_saidaTeste1(26) <= \saidaTeste1[26]~output_o\;

ww_saidaTeste1(27) <= \saidaTeste1[27]~output_o\;

ww_saidaTeste1(28) <= \saidaTeste1[28]~output_o\;

ww_saidaTeste1(29) <= \saidaTeste1[29]~output_o\;

ww_saidaTeste1(30) <= \saidaTeste1[30]~output_o\;

ww_saidaTeste1(31) <= \saidaTeste1[31]~output_o\;

ww_saidaTeste2(0) <= \saidaTeste2[0]~output_o\;

ww_saidaTeste2(1) <= \saidaTeste2[1]~output_o\;

ww_saidaTeste2(2) <= \saidaTeste2[2]~output_o\;

ww_saidaTeste2(3) <= \saidaTeste2[3]~output_o\;

ww_saidaTeste2(4) <= \saidaTeste2[4]~output_o\;

ww_saidaTeste2(5) <= \saidaTeste2[5]~output_o\;

ww_saidaTeste2(6) <= \saidaTeste2[6]~output_o\;

ww_saidaTeste2(7) <= \saidaTeste2[7]~output_o\;

ww_saidaTeste2(8) <= \saidaTeste2[8]~output_o\;

ww_saidaTeste2(9) <= \saidaTeste2[9]~output_o\;

ww_saidaTeste2(10) <= \saidaTeste2[10]~output_o\;

ww_saidaTeste2(11) <= \saidaTeste2[11]~output_o\;

ww_saidaTeste2(12) <= \saidaTeste2[12]~output_o\;

ww_saidaTeste2(13) <= \saidaTeste2[13]~output_o\;

ww_saidaTeste2(14) <= \saidaTeste2[14]~output_o\;

ww_saidaTeste2(15) <= \saidaTeste2[15]~output_o\;

ww_saidaTeste2(16) <= \saidaTeste2[16]~output_o\;

ww_saidaTeste2(17) <= \saidaTeste2[17]~output_o\;

ww_saidaTeste2(18) <= \saidaTeste2[18]~output_o\;

ww_saidaTeste2(19) <= \saidaTeste2[19]~output_o\;

ww_saidaTeste2(20) <= \saidaTeste2[20]~output_o\;

ww_saidaTeste2(21) <= \saidaTeste2[21]~output_o\;

ww_saidaTeste2(22) <= \saidaTeste2[22]~output_o\;

ww_saidaTeste2(23) <= \saidaTeste2[23]~output_o\;

ww_saidaTeste2(24) <= \saidaTeste2[24]~output_o\;

ww_saidaTeste2(25) <= \saidaTeste2[25]~output_o\;

ww_saidaTeste2(26) <= \saidaTeste2[26]~output_o\;

ww_saidaTeste2(27) <= \saidaTeste2[27]~output_o\;

ww_saidaTeste2(28) <= \saidaTeste2[28]~output_o\;

ww_saidaTeste2(29) <= \saidaTeste2[29]~output_o\;

ww_saidaTeste2(30) <= \saidaTeste2[30]~output_o\;

ww_saidaTeste2(31) <= \saidaTeste2[31]~output_o\;

ww_saidaTeste3(0) <= \saidaTeste3[0]~output_o\;

ww_saidaTeste3(1) <= \saidaTeste3[1]~output_o\;

ww_saidaTeste3(2) <= \saidaTeste3[2]~output_o\;

ww_saidaTeste3(3) <= \saidaTeste3[3]~output_o\;

ww_saidaTeste3(4) <= \saidaTeste3[4]~output_o\;

ww_saidaTeste3(5) <= \saidaTeste3[5]~output_o\;

ww_saidaTeste3(6) <= \saidaTeste3[6]~output_o\;

ww_saidaTeste3(7) <= \saidaTeste3[7]~output_o\;

ww_saidaTeste3(8) <= \saidaTeste3[8]~output_o\;

ww_saidaTeste3(9) <= \saidaTeste3[9]~output_o\;

ww_saidaTeste3(10) <= \saidaTeste3[10]~output_o\;

ww_saidaTeste3(11) <= \saidaTeste3[11]~output_o\;

ww_saidaTeste3(12) <= \saidaTeste3[12]~output_o\;

ww_saidaTeste3(13) <= \saidaTeste3[13]~output_o\;

ww_saidaTeste3(14) <= \saidaTeste3[14]~output_o\;

ww_saidaTeste3(15) <= \saidaTeste3[15]~output_o\;

ww_saidaTeste3(16) <= \saidaTeste3[16]~output_o\;

ww_saidaTeste3(17) <= \saidaTeste3[17]~output_o\;

ww_saidaTeste3(18) <= \saidaTeste3[18]~output_o\;

ww_saidaTeste3(19) <= \saidaTeste3[19]~output_o\;

ww_saidaTeste3(20) <= \saidaTeste3[20]~output_o\;

ww_saidaTeste3(21) <= \saidaTeste3[21]~output_o\;

ww_saidaTeste3(22) <= \saidaTeste3[22]~output_o\;

ww_saidaTeste3(23) <= \saidaTeste3[23]~output_o\;

ww_saidaTeste3(24) <= \saidaTeste3[24]~output_o\;

ww_saidaTeste3(25) <= \saidaTeste3[25]~output_o\;

ww_saidaTeste3(26) <= \saidaTeste3[26]~output_o\;

ww_saidaTeste3(27) <= \saidaTeste3[27]~output_o\;

ww_saidaTeste3(28) <= \saidaTeste3[28]~output_o\;

ww_saidaTeste3(29) <= \saidaTeste3[29]~output_o\;

ww_saidaTeste3(30) <= \saidaTeste3[30]~output_o\;

ww_saidaTeste3(31) <= \saidaTeste3[31]~output_o\;

ww_saidaTeste4(0) <= \saidaTeste4[0]~output_o\;

ww_saidaTeste4(1) <= \saidaTeste4[1]~output_o\;

ww_saidaTeste4(2) <= \saidaTeste4[2]~output_o\;

ww_saidaTeste4(3) <= \saidaTeste4[3]~output_o\;

ww_saidaTeste4(4) <= \saidaTeste4[4]~output_o\;

ww_saidaTeste4(5) <= \saidaTeste4[5]~output_o\;

ww_saidaTeste4(6) <= \saidaTeste4[6]~output_o\;

ww_saidaTeste4(7) <= \saidaTeste4[7]~output_o\;

ww_saidaTeste4(8) <= \saidaTeste4[8]~output_o\;

ww_saidaTeste4(9) <= \saidaTeste4[9]~output_o\;

ww_saidaTeste4(10) <= \saidaTeste4[10]~output_o\;

ww_saidaTeste4(11) <= \saidaTeste4[11]~output_o\;

ww_saidaTeste4(12) <= \saidaTeste4[12]~output_o\;

ww_saidaTeste4(13) <= \saidaTeste4[13]~output_o\;

ww_saidaTeste4(14) <= \saidaTeste4[14]~output_o\;

ww_saidaTeste4(15) <= \saidaTeste4[15]~output_o\;

ww_saidaTeste4(16) <= \saidaTeste4[16]~output_o\;

ww_saidaTeste4(17) <= \saidaTeste4[17]~output_o\;

ww_saidaTeste4(18) <= \saidaTeste4[18]~output_o\;

ww_saidaTeste4(19) <= \saidaTeste4[19]~output_o\;

ww_saidaTeste4(20) <= \saidaTeste4[20]~output_o\;

ww_saidaTeste4(21) <= \saidaTeste4[21]~output_o\;

ww_saidaTeste4(22) <= \saidaTeste4[22]~output_o\;

ww_saidaTeste4(23) <= \saidaTeste4[23]~output_o\;

ww_saidaTeste4(24) <= \saidaTeste4[24]~output_o\;

ww_saidaTeste4(25) <= \saidaTeste4[25]~output_o\;

ww_saidaTeste4(26) <= \saidaTeste4[26]~output_o\;

ww_saidaTeste4(27) <= \saidaTeste4[27]~output_o\;

ww_saidaTeste4(28) <= \saidaTeste4[28]~output_o\;

ww_saidaTeste4(29) <= \saidaTeste4[29]~output_o\;

ww_saidaTeste4(30) <= \saidaTeste4[30]~output_o\;

ww_saidaTeste4(31) <= \saidaTeste4[31]~output_o\;

ww_saidaTeste5(0) <= \saidaTeste5[0]~output_o\;

ww_saidaTeste5(1) <= \saidaTeste5[1]~output_o\;

ww_saidaTeste5(2) <= \saidaTeste5[2]~output_o\;

ww_saidaTeste5(3) <= \saidaTeste5[3]~output_o\;

ww_saidaTeste5(4) <= \saidaTeste5[4]~output_o\;

ww_saidaTeste5(5) <= \saidaTeste5[5]~output_o\;

ww_saidaTeste5(6) <= \saidaTeste5[6]~output_o\;

ww_saidaTeste5(7) <= \saidaTeste5[7]~output_o\;

ww_saidaTeste5(8) <= \saidaTeste5[8]~output_o\;

ww_saidaTeste5(9) <= \saidaTeste5[9]~output_o\;

ww_saidaTeste5(10) <= \saidaTeste5[10]~output_o\;

ww_saidaTeste5(11) <= \saidaTeste5[11]~output_o\;

ww_saidaTeste5(12) <= \saidaTeste5[12]~output_o\;

ww_saidaTeste5(13) <= \saidaTeste5[13]~output_o\;

ww_saidaTeste5(14) <= \saidaTeste5[14]~output_o\;

ww_saidaTeste5(15) <= \saidaTeste5[15]~output_o\;

ww_saidaTeste5(16) <= \saidaTeste5[16]~output_o\;

ww_saidaTeste5(17) <= \saidaTeste5[17]~output_o\;

ww_saidaTeste5(18) <= \saidaTeste5[18]~output_o\;

ww_saidaTeste5(19) <= \saidaTeste5[19]~output_o\;

ww_saidaTeste5(20) <= \saidaTeste5[20]~output_o\;

ww_saidaTeste5(21) <= \saidaTeste5[21]~output_o\;

ww_saidaTeste5(22) <= \saidaTeste5[22]~output_o\;

ww_saidaTeste5(23) <= \saidaTeste5[23]~output_o\;

ww_saidaTeste5(24) <= \saidaTeste5[24]~output_o\;

ww_saidaTeste5(25) <= \saidaTeste5[25]~output_o\;

ww_saidaTeste5(26) <= \saidaTeste5[26]~output_o\;

ww_saidaTeste5(27) <= \saidaTeste5[27]~output_o\;

ww_saidaTeste5(28) <= \saidaTeste5[28]~output_o\;

ww_saidaTeste5(29) <= \saidaTeste5[29]~output_o\;

ww_saidaTeste5(30) <= \saidaTeste5[30]~output_o\;

ww_saidaTeste5(31) <= \saidaTeste5[31]~output_o\;

ww_saidaTeste6(0) <= \saidaTeste6[0]~output_o\;

ww_saidaTeste6(1) <= \saidaTeste6[1]~output_o\;

ww_saidaTeste6(2) <= \saidaTeste6[2]~output_o\;

ww_saidaTeste6(3) <= \saidaTeste6[3]~output_o\;

ww_saidaTeste6(4) <= \saidaTeste6[4]~output_o\;

ww_saidaTeste6(5) <= \saidaTeste6[5]~output_o\;

ww_saidaTeste6(6) <= \saidaTeste6[6]~output_o\;

ww_saidaTeste6(7) <= \saidaTeste6[7]~output_o\;

ww_saidaTeste6(8) <= \saidaTeste6[8]~output_o\;

ww_saidaTeste6(9) <= \saidaTeste6[9]~output_o\;

ww_saidaTeste6(10) <= \saidaTeste6[10]~output_o\;

ww_saidaTeste6(11) <= \saidaTeste6[11]~output_o\;

ww_saidaTeste6(12) <= \saidaTeste6[12]~output_o\;

ww_saidaTeste6(13) <= \saidaTeste6[13]~output_o\;

ww_saidaTeste6(14) <= \saidaTeste6[14]~output_o\;

ww_saidaTeste6(15) <= \saidaTeste6[15]~output_o\;

ww_saidaTeste6(16) <= \saidaTeste6[16]~output_o\;

ww_saidaTeste6(17) <= \saidaTeste6[17]~output_o\;

ww_saidaTeste6(18) <= \saidaTeste6[18]~output_o\;

ww_saidaTeste6(19) <= \saidaTeste6[19]~output_o\;

ww_saidaTeste6(20) <= \saidaTeste6[20]~output_o\;

ww_saidaTeste6(21) <= \saidaTeste6[21]~output_o\;

ww_saidaTeste6(22) <= \saidaTeste6[22]~output_o\;

ww_saidaTeste6(23) <= \saidaTeste6[23]~output_o\;

ww_saidaTeste6(24) <= \saidaTeste6[24]~output_o\;

ww_saidaTeste6(25) <= \saidaTeste6[25]~output_o\;

ww_saidaTeste6(26) <= \saidaTeste6[26]~output_o\;

ww_saidaTeste6(27) <= \saidaTeste6[27]~output_o\;

ww_saidaTeste6(28) <= \saidaTeste6[28]~output_o\;

ww_saidaTeste6(29) <= \saidaTeste6[29]~output_o\;

ww_saidaTeste6(30) <= \saidaTeste6[30]~output_o\;

ww_saidaTeste6(31) <= \saidaTeste6[31]~output_o\;

ww_saidaTeste7(0) <= \saidaTeste7[0]~output_o\;

ww_saidaTeste7(1) <= \saidaTeste7[1]~output_o\;

ww_saidaTeste7(2) <= \saidaTeste7[2]~output_o\;

ww_saidaTeste7(3) <= \saidaTeste7[3]~output_o\;

ww_saidaTeste7(4) <= \saidaTeste7[4]~output_o\;

ww_saidaTeste7(5) <= \saidaTeste7[5]~output_o\;

ww_saidaTeste7(6) <= \saidaTeste7[6]~output_o\;

ww_saidaTeste7(7) <= \saidaTeste7[7]~output_o\;

ww_saidaTeste7(8) <= \saidaTeste7[8]~output_o\;

ww_saidaTeste7(9) <= \saidaTeste7[9]~output_o\;

ww_saidaTeste7(10) <= \saidaTeste7[10]~output_o\;

ww_saidaTeste7(11) <= \saidaTeste7[11]~output_o\;

ww_saidaTeste7(12) <= \saidaTeste7[12]~output_o\;

ww_saidaTeste7(13) <= \saidaTeste7[13]~output_o\;

ww_saidaTeste7(14) <= \saidaTeste7[14]~output_o\;

ww_saidaTeste7(15) <= \saidaTeste7[15]~output_o\;

ww_saidaTeste7(16) <= \saidaTeste7[16]~output_o\;

ww_saidaTeste7(17) <= \saidaTeste7[17]~output_o\;

ww_saidaTeste7(18) <= \saidaTeste7[18]~output_o\;

ww_saidaTeste7(19) <= \saidaTeste7[19]~output_o\;

ww_saidaTeste7(20) <= \saidaTeste7[20]~output_o\;

ww_saidaTeste7(21) <= \saidaTeste7[21]~output_o\;

ww_saidaTeste7(22) <= \saidaTeste7[22]~output_o\;

ww_saidaTeste7(23) <= \saidaTeste7[23]~output_o\;

ww_saidaTeste7(24) <= \saidaTeste7[24]~output_o\;

ww_saidaTeste7(25) <= \saidaTeste7[25]~output_o\;

ww_saidaTeste7(26) <= \saidaTeste7[26]~output_o\;

ww_saidaTeste7(27) <= \saidaTeste7[27]~output_o\;

ww_saidaTeste7(28) <= \saidaTeste7[28]~output_o\;

ww_saidaTeste7(29) <= \saidaTeste7[29]~output_o\;

ww_saidaTeste7(30) <= \saidaTeste7[30]~output_o\;

ww_saidaTeste7(31) <= \saidaTeste7[31]~output_o\;
END structure;


