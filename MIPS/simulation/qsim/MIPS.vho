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

-- DATE "10/29/2018 15:24:03"

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
	op : OUT std_logic_vector(5 DOWNTO 0);
	ula_op : OUT std_logic_vector(1 DOWNTO 0);
	hab_esc_mem : OUT std_logic;
	hab_le_mem : OUT std_logic;
	beq : OUT std_logic;
	sel_mux_ula_mem : OUT std_logic;
	sel_mux_rt_imm : OUT std_logic;
	sel_MUX_rt_rd : OUT std_logic;
	sel_mux_jump : OUT std_logic;
	hab_esc_reg : OUT std_logic;
	saidaROM : OUT std_logic_vector(31 DOWNTO 0);
	saidaULA : OUT std_logic_vector(31 DOWNTO 0);
	saidaRAM : OUT std_logic_vector(31 DOWNTO 0);
	saidaPC : OUT std_logic_vector(31 DOWNTO 0);
	saidaTeste1 : OUT std_logic_vector(31 DOWNTO 0);
	saidaTeste2 : OUT std_logic_vector(31 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- op[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[5]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_esc_mem	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_le_mem	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beq	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_ula_mem	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_rt_imm	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_MUX_rt_rd	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux_jump	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_esc_reg	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[2]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[6]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[7]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[8]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[9]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[10]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[11]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[12]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[13]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[14]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[16]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[17]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[18]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[19]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[20]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[22]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[23]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[24]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[25]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[26]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[27]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[28]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[29]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[30]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaROM[31]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[0]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[2]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[3]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[5]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[8]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[9]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[10]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[12]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[13]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[15]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[16]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[17]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[18]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[19]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[20]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[21]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[22]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[23]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[24]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[25]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[26]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[27]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[28]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[29]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaULA[31]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[1]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[2]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[3]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[4]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[5]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[6]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[8]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[9]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[11]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[12]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[13]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[14]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[15]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[17]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[18]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[19]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[20]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[21]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[22]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[23]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[24]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[25]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[26]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[27]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[28]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[29]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[30]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaRAM[31]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[5]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[7]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[8]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[9]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[11]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[12]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[13]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[14]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[15]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[16]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[17]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[18]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[19]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[20]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[21]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[22]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[23]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[24]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[25]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[26]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[27]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[28]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[29]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[30]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[31]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[0]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[4]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[5]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[7]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[9]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[10]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[11]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[12]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[13]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[14]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[15]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[17]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[18]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[19]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[20]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[21]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[22]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[23]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[24]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[25]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[26]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[27]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[28]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[29]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[30]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste1[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[1]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[4]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[6]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[7]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[9]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[10]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[11]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[12]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[13]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[14]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[15]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[16]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[17]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[18]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[19]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[20]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[21]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[22]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[23]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[24]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[25]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[26]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[27]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[28]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[29]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[30]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaTeste2[31]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|PC|DOUT[0]~32_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[1]~0_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~1_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~2_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~3_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~4_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[6]~5_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[7]~6_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[8]~7_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~0_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~1_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~2_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~3_combout\ : std_logic;
SIGNAL \FD|MEM_INST|content~4_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Decoder0~1_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Decoder0~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Mux63~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Mux63~1_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Equal1~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux30~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux5~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux21~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[10]~10_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux20~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[11]~11_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux22~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[9]~9_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[8]~8_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[7]~7_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux19~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[12]~12_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux18~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[13]~13_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux17~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[14]~14_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[4]~4_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux16~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[15]~15_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux15~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[16]~16_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[1]~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux14~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[17]~17_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux8~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[23]~23_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux6~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[25]~25_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[26]~26_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux4~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[27]~27_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux7~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[24]~24_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux3~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[28]~28_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux9~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[22]~22_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux10~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[21]~21_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux11~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[20]~20_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux12~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[19]~19_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux2~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[29]~29_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux23~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux1~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[30]~30_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux24~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[6]~6_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux25~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[5]~5_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux26~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux13~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[18]~18_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux0~0_combout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[31]~31_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux27~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[3]~3_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux28~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[2]~2_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[2]~1_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux29~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[1]~1_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux30~1_combout\ : std_logic;
SIGNAL \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|MUX_ULA_MEM|q[0]~0_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BANCO_REG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|MUX|Mux31~0_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[9]~8_combout\ : std_logic;
SIGNAL \FD|SOMA_PC|OUT_AND2[9]~0_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[10]~9_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[11]~10_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[12]~11_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[13]~12_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[14]~13_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[15]~14_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[16]~15_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[17]~16_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[18]~17_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[19]~18_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[20]~19_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[21]~20_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[22]~21_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[23]~22_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[24]~23_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[25]~24_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[26]~25_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[27]~26_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[28]~27_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[29]~28_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[30]~29_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[31]~30_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[31]~31_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][0]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|Decoder0~2_combout\ : std_logic;
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
SIGNAL \FD|BANCO_REG|registrador[1][29]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][30]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][31]~feeder_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[1][31]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|Decoder0~3_combout\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][0]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][1]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][2]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][3]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][4]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][5]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][6]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][7]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][8]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][9]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][10]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][11]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][12]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][13]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][14]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][15]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][16]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][17]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][18]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][19]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][20]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][21]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][22]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][23]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][24]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][25]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][26]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][27]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][28]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][29]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][30]~q\ : std_logic;
SIGNAL \FD|BANCO_REG|registrador[2][31]~q\ : std_logic;
SIGNAL \FD|SOMA_PC|OUT_AND2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BANCO_REG|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \FD|MEM_INST|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|MEM_INST|ALT_INV_q\ : std_logic_vector(26 DOWNTO 26);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|MUX_ULA_MEM|q[1]~1_combout\ & \FD|MUX_ULA_MEM|q[2]~2_combout\ & \FD|MUX_ULA_MEM|q[3]~3_combout\ & \FD|MUX_ULA_MEM|q[4]~4_combout\ & 
\FD|MUX_ULA_MEM|q[5]~5_combout\ & \FD|MUX_ULA_MEM|q[6]~6_combout\ & \FD|MUX_ULA_MEM|q[7]~7_combout\ & \FD|MUX_ULA_MEM|q[8]~8_combout\ & \FD|MUX_ULA_MEM|q[9]~9_combout\ & \FD|MUX_ULA_MEM|q[10]~10_combout\ & \FD|MUX_ULA_MEM|q[11]~11_combout\ & 
\FD|MUX_ULA_MEM|q[12]~12_combout\ & \FD|MUX_ULA_MEM|q[13]~13_combout\ & \FD|MUX_ULA_MEM|q[14]~14_combout\ & \FD|MUX_ULA_MEM|q[15]~15_combout\ & \FD|MUX_ULA_MEM|q[16]~16_combout\ & \FD|MUX_ULA_MEM|q[17]~17_combout\ & \FD|MUX_ULA_MEM|q[18]~18_combout\ & 
\FD|MUX_ULA_MEM|q[19]~19_combout\ & \FD|MUX_ULA_MEM|q[20]~20_combout\ & \FD|MUX_ULA_MEM|q[21]~21_combout\ & \FD|MUX_ULA_MEM|q[22]~22_combout\ & \FD|MUX_ULA_MEM|q[23]~23_combout\ & \FD|MUX_ULA_MEM|q[24]~24_combout\ & \FD|MUX_ULA_MEM|q[25]~25_combout\ & 
\FD|MUX_ULA_MEM|q[26]~26_combout\ & \FD|MUX_ULA_MEM|q[27]~27_combout\ & \FD|MUX_ULA_MEM|q[28]~28_combout\ & \FD|MUX_ULA_MEM|q[29]~29_combout\ & \FD|MUX_ULA_MEM|q[30]~30_combout\ & \FD|MUX_ULA_MEM|q[31]~31_combout\ & \FD|MUX_ULA_MEM|q[0]~0_combout\);

\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|BANCO_REG|Decoder0~1_combout\ & \FD|BANCO_REG|Decoder0~0_combout\);

\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FD|MEM_INST|content~3_combout\ & \FD|MEM_INST|content~4_combout\);

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

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\FD|BANCO_REG|saidaB[17]~17_combout\ & \FD|BANCO_REG|saidaB[16]~16_combout\ & \FD|BANCO_REG|saidaB[15]~15_combout\ & \FD|BANCO_REG|saidaB[14]~14_combout\ & 
\FD|BANCO_REG|saidaB[13]~13_combout\ & \FD|BANCO_REG|saidaB[12]~12_combout\ & \FD|BANCO_REG|saidaB[11]~11_combout\ & \FD|BANCO_REG|saidaB[10]~10_combout\ & \FD|BANCO_REG|saidaB[9]~9_combout\ & \FD|BANCO_REG|saidaB[8]~8_combout\ & 
\FD|BANCO_REG|saidaB[7]~7_combout\ & \FD|BANCO_REG|saidaB[6]~6_combout\ & \FD|BANCO_REG|saidaB[5]~5_combout\ & \FD|BANCO_REG|saidaB[4]~4_combout\ & \FD|BANCO_REG|saidaB[3]~3_combout\ & \FD|BANCO_REG|saidaB[2]~1_combout\ & 
\FD|BANCO_REG|saidaB[1]~2_combout\ & \FD|BANCO_REG|saidaB[0]~0_combout\);

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|ULA|MUX|Mux23~0_combout\ & \FD|ULA|MUX|Mux24~0_combout\ & \FD|ULA|MUX|Mux25~0_combout\ & \FD|ULA|MUX|Mux26~0_combout\ & \FD|ULA|MUX|Mux27~0_combout\ & \FD|ULA|MUX|Mux28~0_combout\
& \FD|ULA|MUX|Mux29~0_combout\ & \FD|ULA|MUX|Mux30~1_combout\ & \FD|ULA|MUX|Mux31~0_combout\);

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FD|ULA|MUX|Mux23~0_combout\ & \FD|ULA|MUX|Mux24~0_combout\ & \FD|ULA|MUX|Mux25~0_combout\ & \FD|ULA|MUX|Mux26~0_combout\ & \FD|ULA|MUX|Mux27~0_combout\ & \FD|ULA|MUX|Mux28~0_combout\
& \FD|ULA|MUX|Mux29~0_combout\ & \FD|ULA|MUX|Mux30~1_combout\ & \FD|ULA|MUX|Mux31~0_combout\);

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a8\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a9\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a10\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a11\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a12\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a13\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a14\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a15\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a16\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a17\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|BANCO_REG|saidaB[31]~31_combout\ & \FD|BANCO_REG|saidaB[30]~30_combout\ & \FD|BANCO_REG|saidaB[29]~29_combout\ & \FD|BANCO_REG|saidaB[28]~28_combout\ & 
\FD|BANCO_REG|saidaB[27]~27_combout\ & \FD|BANCO_REG|saidaB[26]~26_combout\ & \FD|BANCO_REG|saidaB[25]~25_combout\ & \FD|BANCO_REG|saidaB[24]~24_combout\ & \FD|BANCO_REG|saidaB[23]~23_combout\ & \FD|BANCO_REG|saidaB[22]~22_combout\ & 
\FD|BANCO_REG|saidaB[21]~21_combout\ & \FD|BANCO_REG|saidaB[20]~20_combout\ & \FD|BANCO_REG|saidaB[19]~19_combout\ & \FD|BANCO_REG|saidaB[18]~18_combout\);

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\FD|ULA|MUX|Mux23~0_combout\ & \FD|ULA|MUX|Mux24~0_combout\ & \FD|ULA|MUX|Mux25~0_combout\ & \FD|ULA|MUX|Mux26~0_combout\ & \FD|ULA|MUX|Mux27~0_combout\ & \FD|ULA|MUX|Mux28~0_combout\
& \FD|ULA|MUX|Mux29~0_combout\ & \FD|ULA|MUX|Mux30~1_combout\ & \FD|ULA|MUX|Mux31~0_combout\);

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\FD|ULA|MUX|Mux23~0_combout\ & \FD|ULA|MUX|Mux24~0_combout\ & \FD|ULA|MUX|Mux25~0_combout\ & \FD|ULA|MUX|Mux26~0_combout\ & \FD|ULA|MUX|Mux27~0_combout\ & \FD|ULA|MUX|Mux28~0_combout\
& \FD|ULA|MUX|Mux29~0_combout\ & \FD|ULA|MUX|Mux30~1_combout\ & \FD|ULA|MUX|Mux31~0_combout\);

\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a19\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(1);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a20\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(2);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a21\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(3);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a22\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(4);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a23\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(5);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a24\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(6);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a25\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(7);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a26\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(8);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a27\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(9);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a28\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(10);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a29\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(11);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a30\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(12);
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a31\ <= \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(13);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\FD|MEM_INST|ALT_INV_q\(26) <= NOT \FD|MEM_INST|q\(26);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X81_Y73_N9
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

-- Location: IOOBUF_X83_Y73_N23
\op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \op[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \op[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
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

-- Location: IOOBUF_X16_Y73_N16
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

-- Location: IOOBUF_X85_Y73_N16
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

-- Location: IOOBUF_X16_Y73_N23
\ula_op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_op[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\ula_op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|ALT_INV_q\(26),
	devoe => ww_devoe,
	o => \ula_op[1]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
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

-- Location: IOOBUF_X85_Y73_N23
\hab_le_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \hab_le_mem~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\beq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beq~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\sel_mux_ula_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \sel_mux_ula_mem~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\sel_mux_rt_imm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \sel_mux_rt_imm~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\sel_MUX_rt_rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|ALT_INV_q\(26),
	devoe => ww_devoe,
	o => \sel_MUX_rt_rd~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\sel_mux_jump~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sel_mux_jump~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\hab_esc_reg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hab_esc_reg~output_o\);

-- Location: IOOBUF_X58_Y73_N16
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

-- Location: IOOBUF_X42_Y73_N2
\saidaROM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
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

-- Location: IOOBUF_X27_Y73_N16
\saidaROM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
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

-- Location: IOOBUF_X1_Y73_N16
\saidaROM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[5]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y35_N16
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X27_Y73_N9
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

-- Location: IOOBUF_X0_Y42_N2
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

-- Location: IOOBUF_X115_Y27_N2
\saidaROM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[11]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\saidaROM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\saidaROM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[13]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X23_Y73_N16
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

-- Location: IOOBUF_X105_Y0_N23
\saidaROM[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(2),
	devoe => ww_devoe,
	o => \saidaROM[16]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\saidaROM[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(0),
	devoe => ww_devoe,
	o => \saidaROM[17]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\saidaROM[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[18]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X49_Y73_N23
\saidaROM[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[21]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\saidaROM[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[22]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\saidaROM[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[23]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X87_Y73_N23
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

-- Location: IOOBUF_X87_Y73_N16
\saidaROM[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MEM_INST|q\(26),
	devoe => ww_devoe,
	o => \saidaROM[27]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\saidaROM[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaROM[28]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X0_Y24_N9
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

-- Location: IOOBUF_X83_Y73_N16
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

-- Location: IOOBUF_X83_Y0_N23
\saidaULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
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

-- Location: IOOBUF_X83_Y0_N2
\saidaULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\saidaULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[3]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\saidaULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux27~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[4]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\saidaULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux26~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\saidaULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\saidaULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\saidaULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[8]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\saidaULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[9]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\saidaULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\saidaULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[11]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\saidaULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[12]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\saidaULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\saidaULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[14]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\saidaULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\saidaULA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[16]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\saidaULA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[17]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\saidaULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[18]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\saidaULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[19]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\saidaULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[20]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\saidaULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\saidaULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\saidaULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[23]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\saidaULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[24]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\saidaULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[25]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\saidaULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[26]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\saidaULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[27]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\saidaULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[28]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\saidaULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[29]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\saidaULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[30]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\saidaULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|MUX|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saidaULA[31]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\saidaRAM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \saidaRAM[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\saidaRAM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \saidaRAM[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\saidaRAM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \saidaRAM[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\saidaRAM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \saidaRAM[3]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\saidaRAM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \saidaRAM[4]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\saidaRAM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \saidaRAM[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\saidaRAM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \saidaRAM[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\saidaRAM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \saidaRAM[7]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\saidaRAM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \saidaRAM[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\saidaRAM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \saidaRAM[9]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\saidaRAM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \saidaRAM[10]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\saidaRAM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \saidaRAM[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\saidaRAM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \saidaRAM[12]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\saidaRAM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \saidaRAM[13]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\saidaRAM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \saidaRAM[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\saidaRAM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \saidaRAM[15]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\saidaRAM[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \saidaRAM[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\saidaRAM[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \saidaRAM[17]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\saidaRAM[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	devoe => ww_devoe,
	o => \saidaRAM[18]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\saidaRAM[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \saidaRAM[19]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\saidaRAM[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \saidaRAM[20]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\saidaRAM[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \saidaRAM[21]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\saidaRAM[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \saidaRAM[22]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\saidaRAM[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \saidaRAM[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\saidaRAM[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \saidaRAM[24]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\saidaRAM[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \saidaRAM[25]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\saidaRAM[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \saidaRAM[26]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\saidaRAM[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \saidaRAM[27]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\saidaRAM[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \saidaRAM[28]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\saidaRAM[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \saidaRAM[29]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\saidaRAM[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \saidaRAM[30]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\saidaRAM[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \saidaRAM[31]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\saidaPC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \saidaPC[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\saidaPC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \saidaPC[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X27_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X27_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X13_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X9_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X5_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X3_Y0_N23
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N9
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X94_Y0_N9
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X96_Y0_N2
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

-- Location: IOOBUF_X42_Y0_N23
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N16
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X100_Y0_N16
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X74_Y0_N2
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

-- Location: IOOBUF_X115_Y12_N2
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

-- Location: IOOBUF_X98_Y0_N16
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

-- Location: IOOBUF_X45_Y0_N16
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

-- Location: IOOBUF_X109_Y0_N9
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X74_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X47_Y0_N2
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X85_Y0_N23
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X52_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X35_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X115_Y8_N23
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N9
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

-- Location: IOOBUF_X115_Y8_N16
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

-- Location: IOOBUF_X115_Y4_N23
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X60_Y0_N9
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

-- Location: IOOBUF_X81_Y0_N16
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X96_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X100_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X85_Y0_N16
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X109_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X115_Y12_N9
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

-- Location: IOOBUF_X47_Y0_N9
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

-- Location: IOOBUF_X52_Y0_N16
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

-- Location: IOOBUF_X115_Y4_N16
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

-- Location: LCCOMB_X35_Y4_N28
\FD|PC|DOUT[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[0]~32_combout\ = !\FD|PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(0),
	combout => \FD|PC|DOUT[0]~32_combout\);

-- Location: FF_X35_Y4_N29
\FD|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(0));

-- Location: LCCOMB_X35_Y4_N30
\FD|PC|DOUT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[1]~0_combout\ = \FD|PC|DOUT\(1) $ (\FD|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(0),
	combout => \FD|PC|DOUT[1]~0_combout\);

-- Location: FF_X35_Y4_N31
\FD|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(1));

-- Location: LCCOMB_X35_Y4_N16
\FD|PC|DOUT[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[2]~1_combout\ = \FD|PC|DOUT\(2) $ (((\FD|PC|DOUT\(1) & \FD|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(1),
	datac => \FD|PC|DOUT\(2),
	datad => \FD|PC|DOUT\(0),
	combout => \FD|PC|DOUT[2]~1_combout\);

-- Location: FF_X35_Y4_N17
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LCCOMB_X35_Y4_N26
\FD|PC|DOUT[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[3]~2_combout\ = \FD|PC|DOUT\(3) $ (((\FD|PC|DOUT\(1) & (\FD|PC|DOUT\(0) & \FD|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(1),
	datab => \FD|PC|DOUT\(0),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|PC|DOUT[3]~2_combout\);

-- Location: FF_X35_Y4_N27
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: LCCOMB_X35_Y4_N12
\FD|SOMA_PC|OUT_AND2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(3) = (\FD|PC|DOUT\(1) & (\FD|PC|DOUT\(0) & (\FD|PC|DOUT\(3) & \FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(1),
	datab => \FD|PC|DOUT\(0),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|SOMA_PC|OUT_AND2\(3));

-- Location: LCCOMB_X35_Y4_N4
\FD|PC|DOUT[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[4]~3_combout\ = \FD|PC|DOUT\(4) $ (\FD|SOMA_PC|OUT_AND2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(4),
	datad => \FD|SOMA_PC|OUT_AND2\(3),
	combout => \FD|PC|DOUT[4]~3_combout\);

-- Location: FF_X35_Y4_N5
\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

-- Location: LCCOMB_X35_Y4_N6
\FD|PC|DOUT[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[5]~4_combout\ = \FD|PC|DOUT\(5) $ (((\FD|SOMA_PC|OUT_AND2\(3) & \FD|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|SOMA_PC|OUT_AND2\(3),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(5),
	combout => \FD|PC|DOUT[5]~4_combout\);

-- Location: FF_X35_Y4_N7
\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

-- Location: LCCOMB_X35_Y4_N20
\FD|PC|DOUT[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[6]~5_combout\ = \FD|PC|DOUT\(6) $ (((\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(4) & \FD|SOMA_PC|OUT_AND2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(6),
	datad => \FD|SOMA_PC|OUT_AND2\(3),
	combout => \FD|PC|DOUT[6]~5_combout\);

-- Location: FF_X35_Y4_N21
\FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(6));

-- Location: LCCOMB_X35_Y4_N18
\FD|SOMA_PC|OUT_AND2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(6) = (\FD|PC|DOUT\(5) & (\FD|PC|DOUT\(6) & (\FD|PC|DOUT\(4) & \FD|SOMA_PC|OUT_AND2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(5),
	datab => \FD|PC|DOUT\(6),
	datac => \FD|PC|DOUT\(4),
	datad => \FD|SOMA_PC|OUT_AND2\(3),
	combout => \FD|SOMA_PC|OUT_AND2\(6));

-- Location: LCCOMB_X35_Y4_N10
\FD|PC|DOUT[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[7]~6_combout\ = \FD|PC|DOUT\(7) $ (\FD|SOMA_PC|OUT_AND2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(7),
	datad => \FD|SOMA_PC|OUT_AND2\(6),
	combout => \FD|PC|DOUT[7]~6_combout\);

-- Location: FF_X35_Y4_N11
\FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(7));

-- Location: LCCOMB_X35_Y4_N0
\FD|PC|DOUT[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[8]~7_combout\ = \FD|PC|DOUT\(8) $ (((\FD|PC|DOUT\(7) & \FD|SOMA_PC|OUT_AND2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datac => \FD|PC|DOUT\(8),
	datad => \FD|SOMA_PC|OUT_AND2\(6),
	combout => \FD|PC|DOUT[8]~7_combout\);

-- Location: FF_X35_Y4_N1
\FD|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(8));

-- Location: LCCOMB_X35_Y4_N24
\FD|MEM_INST|content~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~0_combout\ = (!\FD|PC|DOUT\(7) & (!\FD|PC|DOUT\(6) & (!\FD|PC|DOUT\(5) & !\FD|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(6),
	datac => \FD|PC|DOUT\(5),
	datad => \FD|PC|DOUT\(8),
	combout => \FD|MEM_INST|content~0_combout\);

-- Location: LCCOMB_X35_Y4_N14
\FD|MEM_INST|content~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~1_combout\ = (!\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(1) & !\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(3),
	datab => \FD|PC|DOUT\(4),
	datac => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|MEM_INST|content~1_combout\);

-- Location: LCCOMB_X62_Y4_N16
\FD|MEM_INST|content~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~2_combout\ = (\FD|MEM_INST|content~0_combout\ & \FD|MEM_INST|content~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~1_combout\,
	combout => \FD|MEM_INST|content~2_combout\);

-- Location: FF_X62_Y4_N17
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

-- Location: LCCOMB_X62_Y4_N26
\FD|MEM_INST|content~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~3_combout\ = (!\FD|PC|DOUT\(0) & (\FD|MEM_INST|content~0_combout\ & \FD|MEM_INST|content~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~1_combout\,
	combout => \FD|MEM_INST|content~3_combout\);

-- Location: FF_X63_Y4_N21
\FD|MEM_INST|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(0));

-- Location: LCCOMB_X62_Y4_N14
\FD|MEM_INST|content~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MEM_INST|content~4_combout\ = (\FD|PC|DOUT\(0) & (\FD|MEM_INST|content~0_combout\ & \FD|MEM_INST|content~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|MEM_INST|content~0_combout\,
	datad => \FD|MEM_INST|content~1_combout\,
	combout => \FD|MEM_INST|content~4_combout\);

-- Location: FF_X62_Y4_N15
\FD|MEM_INST|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MEM_INST|content~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|MEM_INST|q\(2));

-- Location: LCCOMB_X62_Y4_N24
\FD|BANCO_REG|registrador_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_1_bypass[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BANCO_REG|registrador_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X62_Y4_N25
\FD|BANCO_REG|registrador_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(0));

-- Location: FF_X62_Y4_N27
\FD|BANCO_REG|registrador_rtl_1_bypass[2]\ : dffeas
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
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(2));

-- Location: LCCOMB_X63_Y4_N8
\FD|BANCO_REG|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Decoder0~1_combout\ = (\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|MEM_INST|q\(0),
	combout => \FD|BANCO_REG|Decoder0~1_combout\);

-- Location: FF_X63_Y4_N9
\FD|BANCO_REG|registrador_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(3));

-- Location: FF_X62_Y4_N29
\FD|BANCO_REG|registrador_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MEM_INST|content~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(4));

-- Location: LCCOMB_X62_Y4_N10
\FD|BANCO_REG|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Decoder0~0_combout\ = (\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|MEM_INST|q\(2),
	combout => \FD|BANCO_REG|Decoder0~0_combout\);

-- Location: FF_X62_Y4_N11
\FD|BANCO_REG|registrador_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(1));

-- Location: LCCOMB_X62_Y4_N28
\FD|BANCO_REG|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Mux63~0_combout\ = (\FD|BANCO_REG|registrador_rtl_1_bypass\(2) & (\FD|BANCO_REG|registrador_rtl_1_bypass\(1) & (\FD|BANCO_REG|registrador_rtl_1_bypass\(3) $ (!\FD|BANCO_REG|registrador_rtl_1_bypass\(4))))) # 
-- (!\FD|BANCO_REG|registrador_rtl_1_bypass\(2) & (!\FD|BANCO_REG|registrador_rtl_1_bypass\(1) & (\FD|BANCO_REG|registrador_rtl_1_bypass\(3) $ (!\FD|BANCO_REG|registrador_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(2),
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(3),
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(4),
	datad => \FD|BANCO_REG|registrador_rtl_1_bypass\(1),
	combout => \FD|BANCO_REG|Mux63~0_combout\);

-- Location: LCCOMB_X62_Y4_N20
\FD|BANCO_REG|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Mux63~1_combout\ = (\FD|BANCO_REG|registrador_rtl_1_bypass\(0) & \FD|BANCO_REG|Mux63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(0),
	datad => \FD|BANCO_REG|Mux63~0_combout\,
	combout => \FD|BANCO_REG|Mux63~1_combout\);

-- Location: LCCOMB_X63_Y4_N20
\FD|BANCO_REG|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Equal1~0_combout\ = (\FD|MEM_INST|q\(0)) # (\FD|MEM_INST|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MEM_INST|q\(0),
	datad => \FD|MEM_INST|q\(2),
	combout => \FD|BANCO_REG|Equal1~0_combout\);

-- Location: LCCOMB_X63_Y4_N0
\FD|ULA|MUX|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux30~0_combout\ = (\FD|MEM_INST|q\(0) & (!\FD|MEM_INST|q\(26) & \FD|MEM_INST|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|MEM_INST|q\(2),
	combout => \FD|ULA|MUX|Mux30~0_combout\);

-- Location: FF_X65_Y4_N7
\FD|BANCO_REG|registrador_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[26]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(17));

-- Location: LCCOMB_X65_Y4_N6
\FD|ULA|MUX|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux5~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(17))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(17),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\,
	combout => \FD|ULA|MUX|Mux5~0_combout\);

-- Location: FF_X65_Y4_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[28]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(15));

-- Location: FF_X68_Y4_N31
\FD|BANCO_REG|registrador_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[14]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(29));

-- Location: FF_X62_Y4_N19
\FD|BANCO_REG|registrador_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[11]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(32));

-- Location: FF_X65_Y3_N3
\FD|BANCO_REG|registrador_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[12]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(31));

-- Location: M9K_X64_Y4_N0
\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fluxo_de_dados:FD|banco_reg:BANCO_REG|altsyncram:registrador_rtl_1|altsyncram_esg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y3_N14
\FD|BANCO_REG|saidaB[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[12]~12_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(31))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(31),
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\,
	combout => \FD|BANCO_REG|saidaB[12]~12_combout\);

-- Location: FF_X68_Y4_N29
\FD|BANCO_REG|registrador_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[13]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(30));

-- Location: LCCOMB_X65_Y3_N28
\FD|BANCO_REG|saidaB[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[13]~13_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(30))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(30),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\,
	combout => \FD|BANCO_REG|saidaB[13]~13_combout\);

-- Location: LCCOMB_X65_Y3_N10
\FD|BANCO_REG|saidaB[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[14]~14_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(29))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(29),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\,
	combout => \FD|BANCO_REG|saidaB[14]~14_combout\);

-- Location: FF_X62_Y4_N13
\FD|BANCO_REG|registrador_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[15]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(28));

-- Location: LCCOMB_X63_Y3_N22
\FD|BANCO_REG|saidaB[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[15]~15_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(28))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(28),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\,
	combout => \FD|BANCO_REG|saidaB[15]~15_combout\);

-- Location: FF_X68_Y4_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[16]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(27));

-- Location: LCCOMB_X63_Y3_N12
\FD|BANCO_REG|saidaB[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[16]~16_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(27))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(27),
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\,
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|BANCO_REG|saidaB[16]~16_combout\);

-- Location: FF_X63_Y4_N19
\FD|BANCO_REG|registrador_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[17]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(26));

-- Location: LCCOMB_X63_Y3_N10
\FD|BANCO_REG|saidaB[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[17]~17_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(26))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(26),
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\,
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|BANCO_REG|saidaB[17]~17_combout\);

-- Location: M9K_X64_Y3_N0
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000C0002000040000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram_t.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_de_dados:FD|ram:RAM|altsyncram:ram_block_rtl_0|altsyncram_76f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => GND,
	ena1 => \FD|MEM_INST|q\(26),
	portadatain => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X63_Y3_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[10]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(33));

-- Location: LCCOMB_X63_Y3_N20
\FD|ULA|MUX|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux21~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(33))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux30~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(33),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\,
	combout => \FD|ULA|MUX|Mux21~0_combout\);

-- Location: LCCOMB_X63_Y3_N30
\FD|MUX_ULA_MEM|q[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[10]~10_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a10\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a10\,
	datad => \FD|ULA|MUX|Mux21~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[10]~10_combout\);

-- Location: LCCOMB_X63_Y3_N28
\FD|BANCO_REG|saidaB[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[11]~11_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(32))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(32),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\,
	combout => \FD|BANCO_REG|saidaB[11]~11_combout\);

-- Location: LCCOMB_X62_Y4_N18
\FD|ULA|MUX|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux20~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(32))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(32),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a21\,
	combout => \FD|ULA|MUX|Mux20~0_combout\);

-- Location: LCCOMB_X62_Y4_N4
\FD|MUX_ULA_MEM|q[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[11]~11_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a11\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a11\,
	datad => \FD|ULA|MUX|Mux20~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[11]~11_combout\);

-- Location: LCCOMB_X63_Y3_N26
\FD|BANCO_REG|saidaB[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[10]~10_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(33)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a22\,
	datac => \FD|BANCO_REG|Mux63~1_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1_bypass\(33),
	combout => \FD|BANCO_REG|saidaB[10]~10_combout\);

-- Location: LCCOMB_X65_Y3_N16
\FD|ULA|MUX|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux22~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(34))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux30~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(34),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|ULA|MUX|Mux22~0_combout\);

-- Location: LCCOMB_X65_Y3_N22
\FD|MUX_ULA_MEM|q[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[9]~9_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a9\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a9\,
	datad => \FD|ULA|MUX|Mux22~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[9]~9_combout\);

-- Location: FF_X65_Y3_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[9]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(34));

-- Location: LCCOMB_X65_Y3_N8
\FD|BANCO_REG|saidaB[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[9]~9_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(34))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(34),
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|BANCO_REG|saidaB[9]~9_combout\);

-- Location: LCCOMB_X63_Y4_N22
\FD|MUX_ULA_MEM|q[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[8]~8_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a8\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a8\,
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux23~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[8]~8_combout\);

-- Location: FF_X63_Y4_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(35));

-- Location: LCCOMB_X63_Y3_N16
\FD|BANCO_REG|saidaB[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[8]~8_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(35))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(35),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\,
	combout => \FD|BANCO_REG|saidaB[8]~8_combout\);

-- Location: LCCOMB_X65_Y4_N14
\FD|MUX_ULA_MEM|q[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[7]~7_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a7\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux24~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[7]~7_combout\);

-- Location: FF_X65_Y4_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(36));

-- Location: LCCOMB_X65_Y4_N30
\FD|BANCO_REG|saidaB[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[7]~7_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(36))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(36),
	datab => \FD|BANCO_REG|Equal1~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\,
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|BANCO_REG|saidaB[7]~7_combout\);

-- Location: LCCOMB_X65_Y3_N2
\FD|ULA|MUX|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux19~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(31))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux30~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(31),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a20\,
	combout => \FD|ULA|MUX|Mux19~0_combout\);

-- Location: LCCOMB_X65_Y3_N0
\FD|MUX_ULA_MEM|q[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[12]~12_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a12\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a12\,
	datad => \FD|ULA|MUX|Mux19~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[12]~12_combout\);

-- Location: LCCOMB_X63_Y4_N30
\FD|BANCO_REG|saidaB[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[6]~6_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(37))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|Equal1~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(37),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\,
	combout => \FD|BANCO_REG|saidaB[6]~6_combout\);

-- Location: LCCOMB_X68_Y4_N28
\FD|ULA|MUX|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux18~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(30))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(30),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a19\,
	combout => \FD|ULA|MUX|Mux18~0_combout\);

-- Location: LCCOMB_X68_Y4_N26
\FD|MUX_ULA_MEM|q[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[13]~13_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a13\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a13\,
	datad => \FD|ULA|MUX|Mux18~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[13]~13_combout\);

-- Location: LCCOMB_X68_Y4_N30
\FD|ULA|MUX|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux17~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(29))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(29),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a18\,
	combout => \FD|ULA|MUX|Mux17~0_combout\);

-- Location: LCCOMB_X68_Y4_N24
\FD|MUX_ULA_MEM|q[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[14]~14_combout\ = (\FD|MEM_INST|q\(26) & ((\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|MEM_INST|q\(26) & (\FD|ULA|MUX|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux17~0_combout\,
	datad => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|MUX_ULA_MEM|q[14]~14_combout\);

-- Location: LCCOMB_X63_Y3_N18
\FD|BANCO_REG|saidaB[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[5]~5_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(38))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(38),
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\,
	combout => \FD|BANCO_REG|saidaB[5]~5_combout\);

-- Location: LCCOMB_X65_Y4_N24
\FD|MUX_ULA_MEM|q[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[4]~4_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a4\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a4\,
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux27~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[4]~4_combout\);

-- Location: FF_X65_Y4_N11
\FD|BANCO_REG|registrador_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(39));

-- Location: LCCOMB_X65_Y4_N28
\FD|BANCO_REG|saidaB[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[4]~4_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(39))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(39),
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\,
	datad => \FD|BANCO_REG|Equal1~0_combout\,
	combout => \FD|BANCO_REG|saidaB[4]~4_combout\);

-- Location: LCCOMB_X62_Y4_N12
\FD|ULA|MUX|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux16~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(28))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(28),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a17\,
	combout => \FD|ULA|MUX|Mux16~0_combout\);

-- Location: LCCOMB_X62_Y4_N6
\FD|MUX_ULA_MEM|q[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[15]~15_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a15\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a15\,
	datad => \FD|ULA|MUX|Mux16~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[15]~15_combout\);

-- Location: LCCOMB_X65_Y3_N26
\FD|BANCO_REG|saidaB[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[3]~3_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(40))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(40),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\,
	combout => \FD|BANCO_REG|saidaB[3]~3_combout\);

-- Location: LCCOMB_X68_Y4_N20
\FD|ULA|MUX|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux15~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(27))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(27),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a16\,
	combout => \FD|ULA|MUX|Mux15~0_combout\);

-- Location: LCCOMB_X68_Y4_N6
\FD|MUX_ULA_MEM|q[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[16]~16_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a16\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \FD|ULA|MUX|Mux15~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[16]~16_combout\);

-- Location: LCCOMB_X63_Y3_N8
\FD|BANCO_REG|saidaB[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[1]~2_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(42)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\,
	datad => \FD|BANCO_REG|registrador_rtl_1_bypass\(42),
	combout => \FD|BANCO_REG|saidaB[1]~2_combout\);

-- Location: LCCOMB_X63_Y4_N18
\FD|ULA|MUX|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux14~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(26)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a15\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(26),
	datad => \FD|ULA|MUX|Mux30~0_combout\,
	combout => \FD|ULA|MUX|Mux14~0_combout\);

-- Location: LCCOMB_X63_Y4_N12
\FD|MUX_ULA_MEM|q[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[17]~17_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a17\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a17\,
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux14~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[17]~17_combout\);

-- Location: FF_X60_Y4_N25
\FD|BANCO_REG|registrador_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[29]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(14));

-- Location: LCCOMB_X63_Y5_N22
\FD|BANCO_REG|saidaB[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[29]~29_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(14)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(14),
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|BANCO_REG|saidaB[29]~29_combout\);

-- Location: FF_X60_Y4_N3
\FD|BANCO_REG|registrador_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[30]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(13));

-- Location: LCCOMB_X63_Y5_N4
\FD|BANCO_REG|saidaB[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[30]~30_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(13))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(13),
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\,
	combout => \FD|BANCO_REG|saidaB[30]~30_combout\);

-- Location: FF_X62_Y4_N1
\FD|BANCO_REG|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[31]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(12));

-- Location: LCCOMB_X63_Y5_N10
\FD|BANCO_REG|saidaB[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[31]~31_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(12))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(12),
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\,
	combout => \FD|BANCO_REG|saidaB[31]~31_combout\);

-- Location: M9K_X64_Y5_N0
\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram_t.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_de_dados:FD|ram:RAM|altsyncram:ram_block_rtl_0|altsyncram_76f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => GND,
	ena1 => \FD|MEM_INST|q\(26),
	portadatain => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: FF_X60_Y4_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[23]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(20));

-- Location: LCCOMB_X60_Y4_N16
\FD|ULA|MUX|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux8~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(20))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(20),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\,
	combout => \FD|ULA|MUX|Mux8~0_combout\);

-- Location: LCCOMB_X60_Y4_N8
\FD|MUX_ULA_MEM|q[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[23]~23_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a23\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \FD|ULA|MUX|Mux8~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[23]~23_combout\);

-- Location: LCCOMB_X65_Y5_N2
\FD|BANCO_REG|saidaB[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[28]~28_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(15))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(15),
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\,
	datad => \FD|BANCO_REG|Equal1~0_combout\,
	combout => \FD|BANCO_REG|saidaB[28]~28_combout\);

-- Location: FF_X65_Y4_N1
\FD|BANCO_REG|registrador_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[25]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(18));

-- Location: LCCOMB_X65_Y4_N0
\FD|ULA|MUX|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux6~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(18))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(18),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\,
	combout => \FD|ULA|MUX|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y4_N18
\FD|MUX_ULA_MEM|q[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[25]~25_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a25\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a25\,
	datad => \FD|ULA|MUX|Mux6~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[25]~25_combout\);

-- Location: LCCOMB_X60_Y4_N30
\FD|BANCO_REG|registrador_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador_rtl_1_bypass[16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[27]~27_combout\,
	combout => \FD|BANCO_REG|registrador_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X60_Y4_N31
\FD|BANCO_REG|registrador_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(16));

-- Location: LCCOMB_X63_Y5_N20
\FD|BANCO_REG|saidaB[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[27]~27_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(16)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(16),
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|BANCO_REG|saidaB[27]~27_combout\);

-- Location: LCCOMB_X65_Y4_N8
\FD|MUX_ULA_MEM|q[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[26]~26_combout\ = (\FD|MEM_INST|q\(26) & ((\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a26\))) # (!\FD|MEM_INST|q\(26) & (\FD|ULA|MUX|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux5~0_combout\,
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|MUX_ULA_MEM|q[26]~26_combout\);

-- Location: LCCOMB_X65_Y5_N24
\FD|BANCO_REG|saidaB[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[26]~26_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(17)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|Equal1~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a6\,
	datad => \FD|BANCO_REG|registrador_rtl_1_bypass\(17),
	combout => \FD|BANCO_REG|saidaB[26]~26_combout\);

-- Location: LCCOMB_X61_Y4_N20
\FD|ULA|MUX|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux4~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(16))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(16),
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a5\,
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|ULA|MUX|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y4_N26
\FD|MUX_ULA_MEM|q[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[27]~27_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a27\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a27\,
	datad => \FD|ULA|MUX|Mux4~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[27]~27_combout\);

-- Location: LCCOMB_X65_Y5_N22
\FD|BANCO_REG|saidaB[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[25]~25_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(18)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a7\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(18),
	datac => \FD|BANCO_REG|Mux63~1_combout\,
	datad => \FD|BANCO_REG|Equal1~0_combout\,
	combout => \FD|BANCO_REG|saidaB[25]~25_combout\);

-- Location: LCCOMB_X65_Y4_N2
\FD|ULA|MUX|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux7~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(19))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(19),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\,
	combout => \FD|ULA|MUX|Mux7~0_combout\);

-- Location: LCCOMB_X65_Y4_N4
\FD|MUX_ULA_MEM|q[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[24]~24_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a24\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a24\,
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux7~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[24]~24_combout\);

-- Location: FF_X65_Y4_N3
\FD|BANCO_REG|registrador_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[24]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(19));

-- Location: LCCOMB_X65_Y5_N12
\FD|BANCO_REG|saidaB[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[24]~24_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(19))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(19),
	datab => \FD|BANCO_REG|Equal1~0_combout\,
	datac => \FD|BANCO_REG|Mux63~1_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a8\,
	combout => \FD|BANCO_REG|saidaB[24]~24_combout\);

-- Location: LCCOMB_X65_Y4_N16
\FD|ULA|MUX|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux3~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(15))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(15),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a4\,
	combout => \FD|ULA|MUX|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y4_N26
\FD|MUX_ULA_MEM|q[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[28]~28_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a28\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a28\,
	datad => \FD|ULA|MUX|Mux3~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[28]~28_combout\);

-- Location: LCCOMB_X63_Y5_N26
\FD|BANCO_REG|saidaB[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[23]~23_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(20)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a9\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(20),
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|BANCO_REG|saidaB[23]~23_combout\);

-- Location: LCCOMB_X65_Y3_N18
\FD|ULA|MUX|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux9~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(21))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux30~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(21),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\,
	combout => \FD|ULA|MUX|Mux9~0_combout\);

-- Location: LCCOMB_X65_Y3_N12
\FD|MUX_ULA_MEM|q[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[22]~22_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a22\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a22\,
	datad => \FD|ULA|MUX|Mux9~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[22]~22_combout\);

-- Location: FF_X65_Y3_N19
\FD|BANCO_REG|registrador_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[22]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(21));

-- Location: LCCOMB_X65_Y5_N18
\FD|BANCO_REG|saidaB[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[22]~22_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(21))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(21),
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a10\,
	datad => \FD|BANCO_REG|Equal1~0_combout\,
	combout => \FD|BANCO_REG|saidaB[22]~22_combout\);

-- Location: LCCOMB_X65_Y3_N20
\FD|ULA|MUX|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux10~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(22))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|MUX|Mux30~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(22),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\,
	combout => \FD|ULA|MUX|Mux10~0_combout\);

-- Location: LCCOMB_X65_Y3_N30
\FD|MUX_ULA_MEM|q[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[21]~21_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a21\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \FD|ULA|MUX|Mux10~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[21]~21_combout\);

-- Location: FF_X65_Y3_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[21]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(22));

-- Location: LCCOMB_X65_Y5_N8
\FD|BANCO_REG|saidaB[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[21]~21_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(22))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(22),
	datac => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a11\,
	datad => \FD|BANCO_REG|Equal1~0_combout\,
	combout => \FD|BANCO_REG|saidaB[21]~21_combout\);

-- Location: LCCOMB_X68_Y4_N16
\FD|ULA|MUX|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux11~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(23))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(23),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\,
	combout => \FD|ULA|MUX|Mux11~0_combout\);

-- Location: LCCOMB_X68_Y4_N22
\FD|MUX_ULA_MEM|q[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[20]~20_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a20\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a20\,
	datab => \FD|MEM_INST|q\(26),
	datad => \FD|ULA|MUX|Mux11~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[20]~20_combout\);

-- Location: FF_X68_Y4_N17
\FD|BANCO_REG|registrador_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[20]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(23));

-- Location: LCCOMB_X65_Y5_N10
\FD|BANCO_REG|saidaB[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[20]~20_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(23))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|Equal1~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(23),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a12\,
	combout => \FD|BANCO_REG|saidaB[20]~20_combout\);

-- Location: LCCOMB_X62_Y4_N2
\FD|ULA|MUX|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux12~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(24)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(24),
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|ULA|MUX|Mux12~0_combout\);

-- Location: LCCOMB_X62_Y4_N8
\FD|MUX_ULA_MEM|q[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[19]~19_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a19\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a19\,
	datad => \FD|ULA|MUX|Mux12~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[19]~19_combout\);

-- Location: FF_X62_Y4_N3
\FD|BANCO_REG|registrador_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[19]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(24));

-- Location: LCCOMB_X63_Y5_N8
\FD|BANCO_REG|saidaB[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[19]~19_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(24))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1_bypass\(24),
	datac => \FD|BANCO_REG|Equal1~0_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a13\,
	combout => \FD|BANCO_REG|saidaB[19]~19_combout\);

-- Location: LCCOMB_X60_Y4_N24
\FD|ULA|MUX|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux2~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(14))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(14),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a3\,
	combout => \FD|ULA|MUX|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y4_N26
\FD|MUX_ULA_MEM|q[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[29]~29_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a29\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a29\,
	datad => \FD|ULA|MUX|Mux2~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[29]~29_combout\);

-- Location: LCCOMB_X63_Y4_N16
\FD|ULA|MUX|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux23~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(35)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a24\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(35),
	datad => \FD|ULA|MUX|Mux30~0_combout\,
	combout => \FD|ULA|MUX|Mux23~0_combout\);

-- Location: LCCOMB_X60_Y4_N2
\FD|ULA|MUX|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux1~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(13))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(13),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a2\,
	combout => \FD|ULA|MUX|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y4_N4
\FD|MUX_ULA_MEM|q[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[30]~30_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a30\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a30\,
	datad => \FD|ULA|MUX|Mux1~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[30]~30_combout\);

-- Location: LCCOMB_X65_Y4_N20
\FD|ULA|MUX|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux24~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(36)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a25\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(36),
	datad => \FD|BANCO_REG|Mux63~1_combout\,
	combout => \FD|ULA|MUX|Mux24~0_combout\);

-- Location: LCCOMB_X62_Y4_N30
\FD|MUX_ULA_MEM|q[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[6]~6_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a6\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \FD|ULA|MUX|Mux25~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[6]~6_combout\);

-- Location: FF_X62_Y4_N21
\FD|BANCO_REG|registrador_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(37));

-- Location: LCCOMB_X63_Y4_N2
\FD|ULA|MUX|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux25~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(37))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(37),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a26\,
	combout => \FD|ULA|MUX|Mux25~0_combout\);

-- Location: LCCOMB_X63_Y4_N28
\FD|MUX_ULA_MEM|q[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[5]~5_combout\ = (\FD|MEM_INST|q\(26) & ((\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a5\))) # (!\FD|MEM_INST|q\(26) & (\FD|ULA|MUX|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux26~0_combout\,
	datad => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \FD|MUX_ULA_MEM|q[5]~5_combout\);

-- Location: FF_X63_Y4_N5
\FD|BANCO_REG|registrador_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(38));

-- Location: LCCOMB_X63_Y4_N4
\FD|ULA|MUX|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux26~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(38))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(38),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a27\,
	combout => \FD|ULA|MUX|Mux26~0_combout\);

-- Location: LCCOMB_X68_Y4_N18
\FD|ULA|MUX|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux13~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(25))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(25),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\,
	combout => \FD|ULA|MUX|Mux13~0_combout\);

-- Location: LCCOMB_X68_Y4_N8
\FD|MUX_ULA_MEM|q[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[18]~18_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18~portbdataout\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datad => \FD|ULA|MUX|Mux13~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[18]~18_combout\);

-- Location: FF_X68_Y4_N19
\FD|BANCO_REG|registrador_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[18]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(25));

-- Location: LCCOMB_X65_Y5_N20
\FD|BANCO_REG|saidaB[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[18]~18_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(25))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|registrador_rtl_1_bypass\(25),
	datab => \FD|BANCO_REG|Equal1~0_combout\,
	datac => \FD|BANCO_REG|Mux63~1_combout\,
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a14\,
	combout => \FD|BANCO_REG|saidaB[18]~18_combout\);

-- Location: LCCOMB_X62_Y4_N0
\FD|ULA|MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux0~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(12)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a1\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(12),
	datad => \FD|ULA|MUX|Mux30~0_combout\,
	combout => \FD|ULA|MUX|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y4_N22
\FD|MUX_ULA_MEM|q[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[31]~31_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a31\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a31\,
	datad => \FD|ULA|MUX|Mux0~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[31]~31_combout\);

-- Location: LCCOMB_X65_Y4_N10
\FD|ULA|MUX|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux27~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1_bypass\(39)))) # (!\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a28\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(39),
	datad => \FD|ULA|MUX|Mux30~0_combout\,
	combout => \FD|ULA|MUX|Mux27~0_combout\);

-- Location: LCCOMB_X65_Y4_N22
\FD|MUX_ULA_MEM|q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[3]~3_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \FD|ULA|MUX|Mux28~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[3]~3_combout\);

-- Location: FF_X65_Y4_N13
\FD|BANCO_REG|registrador_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(40));

-- Location: LCCOMB_X65_Y4_N12
\FD|ULA|MUX|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux28~0_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(40))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(40),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a29\,
	combout => \FD|ULA|MUX|Mux28~0_combout\);

-- Location: LCCOMB_X65_Y3_N4
\FD|MUX_ULA_MEM|q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[2]~2_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a2\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \FD|ULA|MUX|Mux29~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[2]~2_combout\);

-- Location: FF_X65_Y3_N25
\FD|BANCO_REG|registrador_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(41));

-- Location: LCCOMB_X65_Y3_N24
\FD|BANCO_REG|saidaB[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[2]~1_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(41))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Equal1~0_combout\,
	datab => \FD|BANCO_REG|Mux63~1_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(41),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a30\,
	combout => \FD|BANCO_REG|saidaB[2]~1_combout\);

-- Location: LCCOMB_X65_Y3_N6
\FD|ULA|MUX|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux29~0_combout\ = (\FD|MEM_INST|q\(26) & (((\FD|MEM_INST|q\(2))))) # (!\FD|MEM_INST|q\(26) & (\FD|BANCO_REG|saidaB[2]~1_combout\ & (\FD|MEM_INST|q\(0) $ (!\FD|MEM_INST|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|MEM_INST|q\(2),
	datad => \FD|BANCO_REG|saidaB[2]~1_combout\,
	combout => \FD|ULA|MUX|Mux29~0_combout\);

-- Location: LCCOMB_X63_Y4_N14
\FD|MUX_ULA_MEM|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[1]~1_combout\ = (\FD|MEM_INST|q\(26) & ((\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a1\))) # (!\FD|MEM_INST|q\(26) & (\FD|ULA|MUX|Mux30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|ULA|MUX|Mux30~1_combout\,
	datad => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \FD|MUX_ULA_MEM|q[1]~1_combout\);

-- Location: FF_X63_Y4_N27
\FD|BANCO_REG|registrador_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(42));

-- Location: LCCOMB_X63_Y4_N26
\FD|ULA|MUX|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux30~1_combout\ = (\FD|ULA|MUX|Mux30~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(42))) # (!\FD|BANCO_REG|Mux63~1_combout\ & ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|ULA|MUX|Mux30~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(42),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a31\,
	combout => \FD|ULA|MUX|Mux30~1_combout\);

-- Location: LCCOMB_X63_Y4_N24
\FD|MUX_ULA_MEM|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MUX_ULA_MEM|q[0]~0_combout\ = (\FD|MEM_INST|q\(26) & (\FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|MEM_INST|q\(26) & ((\FD|ULA|MUX|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(26),
	datac => \FD|RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \FD|ULA|MUX|Mux31~0_combout\,
	combout => \FD|MUX_ULA_MEM|q[0]~0_combout\);

-- Location: FF_X63_Y4_N11
\FD|BANCO_REG|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MUX_ULA_MEM|q[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador_rtl_1_bypass\(11));

-- Location: LCCOMB_X63_Y4_N10
\FD|BANCO_REG|saidaB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|saidaB[0]~0_combout\ = (\FD|BANCO_REG|Equal1~0_combout\ & ((\FD|BANCO_REG|Mux63~1_combout\ & (\FD|BANCO_REG|registrador_rtl_1_bypass\(11))) # (!\FD|BANCO_REG|Mux63~1_combout\ & 
-- ((\FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BANCO_REG|Mux63~1_combout\,
	datab => \FD|BANCO_REG|Equal1~0_combout\,
	datac => \FD|BANCO_REG|registrador_rtl_1_bypass\(11),
	datad => \FD|BANCO_REG|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BANCO_REG|saidaB[0]~0_combout\);

-- Location: LCCOMB_X63_Y4_N6
\FD|ULA|MUX|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|MUX|Mux31~0_combout\ = (\FD|MEM_INST|q\(26) & (((\FD|MEM_INST|q\(0))))) # (!\FD|MEM_INST|q\(26) & (\FD|BANCO_REG|saidaB[0]~0_combout\ & (\FD|MEM_INST|q\(2) $ (!\FD|MEM_INST|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(2),
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|MEM_INST|q\(26),
	datad => \FD|BANCO_REG|saidaB[0]~0_combout\,
	combout => \FD|ULA|MUX|Mux31~0_combout\);

-- Location: LCCOMB_X35_Y4_N2
\FD|PC|DOUT[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[9]~8_combout\ = \FD|PC|DOUT\(9) $ (((\FD|PC|DOUT\(7) & (\FD|SOMA_PC|OUT_AND2\(6) & \FD|PC|DOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|SOMA_PC|OUT_AND2\(6),
	datac => \FD|PC|DOUT\(9),
	datad => \FD|PC|DOUT\(8),
	combout => \FD|PC|DOUT[9]~8_combout\);

-- Location: FF_X35_Y4_N3
\FD|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(9));

-- Location: LCCOMB_X35_Y4_N8
\FD|SOMA_PC|OUT_AND2[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2[9]~0_combout\ = (\FD|PC|DOUT\(7) & (\FD|PC|DOUT\(6) & (\FD|PC|DOUT\(4) & \FD|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(7),
	datab => \FD|PC|DOUT\(6),
	datac => \FD|PC|DOUT\(4),
	datad => \FD|PC|DOUT\(5),
	combout => \FD|SOMA_PC|OUT_AND2[9]~0_combout\);

-- Location: LCCOMB_X35_Y4_N22
\FD|SOMA_PC|OUT_AND2[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(9) = (\FD|PC|DOUT\(9) & (\FD|PC|DOUT\(8) & (\FD|SOMA_PC|OUT_AND2[9]~0_combout\ & \FD|SOMA_PC|OUT_AND2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(9),
	datab => \FD|PC|DOUT\(8),
	datac => \FD|SOMA_PC|OUT_AND2[9]~0_combout\,
	datad => \FD|SOMA_PC|OUT_AND2\(3),
	combout => \FD|SOMA_PC|OUT_AND2\(9));

-- Location: LCCOMB_X6_Y1_N20
\FD|PC|DOUT[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[10]~9_combout\ = \FD|PC|DOUT\(10) $ (\FD|SOMA_PC|OUT_AND2\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(10),
	datad => \FD|SOMA_PC|OUT_AND2\(9),
	combout => \FD|PC|DOUT[10]~9_combout\);

-- Location: FF_X6_Y1_N21
\FD|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(10));

-- Location: LCCOMB_X6_Y1_N26
\FD|PC|DOUT[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[11]~10_combout\ = \FD|PC|DOUT\(11) $ (((\FD|PC|DOUT\(10) & \FD|SOMA_PC|OUT_AND2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(10),
	datac => \FD|PC|DOUT\(11),
	datad => \FD|SOMA_PC|OUT_AND2\(9),
	combout => \FD|PC|DOUT[11]~10_combout\);

-- Location: FF_X6_Y1_N27
\FD|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(11));

-- Location: LCCOMB_X6_Y1_N8
\FD|PC|DOUT[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[12]~11_combout\ = \FD|PC|DOUT\(12) $ (((\FD|PC|DOUT\(11) & (\FD|PC|DOUT\(10) & \FD|SOMA_PC|OUT_AND2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(11),
	datab => \FD|PC|DOUT\(10),
	datac => \FD|PC|DOUT\(12),
	datad => \FD|SOMA_PC|OUT_AND2\(9),
	combout => \FD|PC|DOUT[12]~11_combout\);

-- Location: FF_X6_Y1_N9
\FD|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(12));

-- Location: LCCOMB_X6_Y1_N12
\FD|SOMA_PC|OUT_AND2[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(12) = (\FD|PC|DOUT\(11) & (\FD|PC|DOUT\(10) & (\FD|PC|DOUT\(12) & \FD|SOMA_PC|OUT_AND2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(11),
	datab => \FD|PC|DOUT\(10),
	datac => \FD|PC|DOUT\(12),
	datad => \FD|SOMA_PC|OUT_AND2\(9),
	combout => \FD|SOMA_PC|OUT_AND2\(12));

-- Location: LCCOMB_X6_Y1_N6
\FD|PC|DOUT[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[13]~12_combout\ = \FD|PC|DOUT\(13) $ (\FD|SOMA_PC|OUT_AND2\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(13),
	datad => \FD|SOMA_PC|OUT_AND2\(12),
	combout => \FD|PC|DOUT[13]~12_combout\);

-- Location: FF_X6_Y1_N7
\FD|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[13]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(13));

-- Location: LCCOMB_X6_Y1_N24
\FD|PC|DOUT[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[14]~13_combout\ = \FD|PC|DOUT\(14) $ (((\FD|PC|DOUT\(13) & \FD|SOMA_PC|OUT_AND2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(13),
	datac => \FD|PC|DOUT\(14),
	datad => \FD|SOMA_PC|OUT_AND2\(12),
	combout => \FD|PC|DOUT[14]~13_combout\);

-- Location: FF_X6_Y1_N25
\FD|PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[14]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(14));

-- Location: LCCOMB_X6_Y1_N14
\FD|PC|DOUT[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[15]~14_combout\ = \FD|PC|DOUT\(15) $ (((\FD|PC|DOUT\(13) & (\FD|PC|DOUT\(14) & \FD|SOMA_PC|OUT_AND2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(13),
	datab => \FD|PC|DOUT\(14),
	datac => \FD|PC|DOUT\(15),
	datad => \FD|SOMA_PC|OUT_AND2\(12),
	combout => \FD|PC|DOUT[15]~14_combout\);

-- Location: FF_X6_Y1_N15
\FD|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[15]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(15));

-- Location: LCCOMB_X6_Y1_N10
\FD|SOMA_PC|OUT_AND2[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(15) = (\FD|PC|DOUT\(13) & (\FD|PC|DOUT\(14) & (\FD|PC|DOUT\(15) & \FD|SOMA_PC|OUT_AND2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(13),
	datab => \FD|PC|DOUT\(14),
	datac => \FD|PC|DOUT\(15),
	datad => \FD|SOMA_PC|OUT_AND2\(12),
	combout => \FD|SOMA_PC|OUT_AND2\(15));

-- Location: LCCOMB_X6_Y1_N0
\FD|PC|DOUT[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[16]~15_combout\ = \FD|PC|DOUT\(16) $ (\FD|SOMA_PC|OUT_AND2\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(16),
	datad => \FD|SOMA_PC|OUT_AND2\(15),
	combout => \FD|PC|DOUT[16]~15_combout\);

-- Location: FF_X6_Y1_N1
\FD|PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[16]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(16));

-- Location: LCCOMB_X6_Y1_N22
\FD|PC|DOUT[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[17]~16_combout\ = \FD|PC|DOUT\(17) $ (((\FD|PC|DOUT\(16) & \FD|SOMA_PC|OUT_AND2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(16),
	datac => \FD|PC|DOUT\(17),
	datad => \FD|SOMA_PC|OUT_AND2\(15),
	combout => \FD|PC|DOUT[17]~16_combout\);

-- Location: FF_X6_Y1_N23
\FD|PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[17]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(17));

-- Location: LCCOMB_X6_Y1_N4
\FD|PC|DOUT[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[18]~17_combout\ = \FD|PC|DOUT\(18) $ (((\FD|PC|DOUT\(17) & (\FD|PC|DOUT\(16) & \FD|SOMA_PC|OUT_AND2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|PC|DOUT\(16),
	datac => \FD|PC|DOUT\(18),
	datad => \FD|SOMA_PC|OUT_AND2\(15),
	combout => \FD|PC|DOUT[18]~17_combout\);

-- Location: FF_X6_Y1_N5
\FD|PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(18));

-- Location: LCCOMB_X6_Y1_N16
\FD|SOMA_PC|OUT_AND2[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(18) = (\FD|PC|DOUT\(17) & (\FD|PC|DOUT\(16) & (\FD|PC|DOUT\(18) & \FD|SOMA_PC|OUT_AND2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(17),
	datab => \FD|PC|DOUT\(16),
	datac => \FD|PC|DOUT\(18),
	datad => \FD|SOMA_PC|OUT_AND2\(15),
	combout => \FD|SOMA_PC|OUT_AND2\(18));

-- Location: LCCOMB_X6_Y1_N30
\FD|PC|DOUT[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[19]~18_combout\ = \FD|PC|DOUT\(19) $ (\FD|SOMA_PC|OUT_AND2\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(19),
	datad => \FD|SOMA_PC|OUT_AND2\(18),
	combout => \FD|PC|DOUT[19]~18_combout\);

-- Location: FF_X6_Y1_N31
\FD|PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(19));

-- Location: LCCOMB_X6_Y1_N28
\FD|PC|DOUT[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[20]~19_combout\ = \FD|PC|DOUT\(20) $ (((\FD|PC|DOUT\(19) & \FD|SOMA_PC|OUT_AND2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(19),
	datac => \FD|PC|DOUT\(20),
	datad => \FD|SOMA_PC|OUT_AND2\(18),
	combout => \FD|PC|DOUT[20]~19_combout\);

-- Location: FF_X6_Y1_N29
\FD|PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[20]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(20));

-- Location: LCCOMB_X6_Y1_N18
\FD|PC|DOUT[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[21]~20_combout\ = \FD|PC|DOUT\(21) $ (((\FD|PC|DOUT\(19) & (\FD|PC|DOUT\(20) & \FD|SOMA_PC|OUT_AND2\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(19),
	datab => \FD|PC|DOUT\(20),
	datac => \FD|PC|DOUT\(21),
	datad => \FD|SOMA_PC|OUT_AND2\(18),
	combout => \FD|PC|DOUT[21]~20_combout\);

-- Location: FF_X6_Y1_N19
\FD|PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[21]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(21));

-- Location: LCCOMB_X6_Y1_N2
\FD|SOMA_PC|OUT_AND2[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(21) = (\FD|PC|DOUT\(21) & (\FD|PC|DOUT\(20) & (\FD|PC|DOUT\(19) & \FD|SOMA_PC|OUT_AND2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(21),
	datab => \FD|PC|DOUT\(20),
	datac => \FD|PC|DOUT\(19),
	datad => \FD|SOMA_PC|OUT_AND2\(18),
	combout => \FD|SOMA_PC|OUT_AND2\(21));

-- Location: LCCOMB_X5_Y1_N24
\FD|PC|DOUT[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[22]~21_combout\ = \FD|PC|DOUT\(22) $ (\FD|SOMA_PC|OUT_AND2\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(22),
	datad => \FD|SOMA_PC|OUT_AND2\(21),
	combout => \FD|PC|DOUT[22]~21_combout\);

-- Location: FF_X5_Y1_N25
\FD|PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(22));

-- Location: LCCOMB_X5_Y1_N6
\FD|PC|DOUT[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[23]~22_combout\ = \FD|PC|DOUT\(23) $ (((\FD|PC|DOUT\(22) & \FD|SOMA_PC|OUT_AND2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(22),
	datac => \FD|PC|DOUT\(23),
	datad => \FD|SOMA_PC|OUT_AND2\(21),
	combout => \FD|PC|DOUT[23]~22_combout\);

-- Location: FF_X5_Y1_N7
\FD|PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[23]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(23));

-- Location: LCCOMB_X5_Y1_N8
\FD|PC|DOUT[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[24]~23_combout\ = \FD|PC|DOUT\(24) $ (((\FD|PC|DOUT\(23) & (\FD|PC|DOUT\(22) & \FD|SOMA_PC|OUT_AND2\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(23),
	datab => \FD|PC|DOUT\(22),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|SOMA_PC|OUT_AND2\(21),
	combout => \FD|PC|DOUT[24]~23_combout\);

-- Location: FF_X5_Y1_N9
\FD|PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(24));

-- Location: LCCOMB_X5_Y1_N20
\FD|SOMA_PC|OUT_AND2[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(24) = (\FD|PC|DOUT\(23) & (\FD|PC|DOUT\(22) & (\FD|PC|DOUT\(24) & \FD|SOMA_PC|OUT_AND2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(23),
	datab => \FD|PC|DOUT\(22),
	datac => \FD|PC|DOUT\(24),
	datad => \FD|SOMA_PC|OUT_AND2\(21),
	combout => \FD|SOMA_PC|OUT_AND2\(24));

-- Location: LCCOMB_X5_Y1_N18
\FD|PC|DOUT[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[25]~24_combout\ = \FD|PC|DOUT\(25) $ (\FD|SOMA_PC|OUT_AND2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(25),
	datad => \FD|SOMA_PC|OUT_AND2\(24),
	combout => \FD|PC|DOUT[25]~24_combout\);

-- Location: FF_X5_Y1_N19
\FD|PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[25]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(25));

-- Location: LCCOMB_X5_Y1_N16
\FD|PC|DOUT[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[26]~25_combout\ = \FD|PC|DOUT\(26) $ (((\FD|PC|DOUT\(25) & \FD|SOMA_PC|OUT_AND2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(25),
	datac => \FD|PC|DOUT\(26),
	datad => \FD|SOMA_PC|OUT_AND2\(24),
	combout => \FD|PC|DOUT[26]~25_combout\);

-- Location: FF_X5_Y1_N17
\FD|PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[26]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(26));

-- Location: LCCOMB_X5_Y1_N22
\FD|PC|DOUT[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[27]~26_combout\ = \FD|PC|DOUT\(27) $ (((\FD|PC|DOUT\(26) & (\FD|PC|DOUT\(25) & \FD|SOMA_PC|OUT_AND2\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(26),
	datab => \FD|PC|DOUT\(25),
	datac => \FD|PC|DOUT\(27),
	datad => \FD|SOMA_PC|OUT_AND2\(24),
	combout => \FD|PC|DOUT[27]~26_combout\);

-- Location: FF_X5_Y1_N23
\FD|PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[27]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(27));

-- Location: LCCOMB_X5_Y1_N10
\FD|SOMA_PC|OUT_AND2[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|SOMA_PC|OUT_AND2\(27) = (\FD|PC|DOUT\(26) & (\FD|PC|DOUT\(25) & (\FD|PC|DOUT\(27) & \FD|SOMA_PC|OUT_AND2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(26),
	datab => \FD|PC|DOUT\(25),
	datac => \FD|PC|DOUT\(27),
	datad => \FD|SOMA_PC|OUT_AND2\(24),
	combout => \FD|SOMA_PC|OUT_AND2\(27));

-- Location: LCCOMB_X5_Y1_N0
\FD|PC|DOUT[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[28]~27_combout\ = \FD|PC|DOUT\(28) $ (\FD|SOMA_PC|OUT_AND2\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|DOUT\(28),
	datad => \FD|SOMA_PC|OUT_AND2\(27),
	combout => \FD|PC|DOUT[28]~27_combout\);

-- Location: FF_X5_Y1_N1
\FD|PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[28]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(28));

-- Location: LCCOMB_X5_Y1_N30
\FD|PC|DOUT[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[29]~28_combout\ = \FD|PC|DOUT\(29) $ (((\FD|PC|DOUT\(28) & \FD|SOMA_PC|OUT_AND2\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(28),
	datac => \FD|PC|DOUT\(29),
	datad => \FD|SOMA_PC|OUT_AND2\(27),
	combout => \FD|PC|DOUT[29]~28_combout\);

-- Location: FF_X5_Y1_N31
\FD|PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[29]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(29));

-- Location: LCCOMB_X5_Y1_N28
\FD|PC|DOUT[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[30]~29_combout\ = \FD|PC|DOUT\(30) $ (((\FD|PC|DOUT\(29) & (\FD|PC|DOUT\(28) & \FD|SOMA_PC|OUT_AND2\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(29),
	datab => \FD|PC|DOUT\(28),
	datac => \FD|PC|DOUT\(30),
	datad => \FD|SOMA_PC|OUT_AND2\(27),
	combout => \FD|PC|DOUT[30]~29_combout\);

-- Location: FF_X5_Y1_N29
\FD|PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[30]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(30));

-- Location: LCCOMB_X5_Y1_N12
\FD|PC|DOUT[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[31]~30_combout\ = ((!\FD|PC|DOUT\(28)) # (!\FD|PC|DOUT\(29))) # (!\FD|PC|DOUT\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(30),
	datac => \FD|PC|DOUT\(29),
	datad => \FD|PC|DOUT\(28),
	combout => \FD|PC|DOUT[31]~30_combout\);

-- Location: LCCOMB_X5_Y1_N26
\FD|PC|DOUT[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[31]~31_combout\ = \FD|PC|DOUT\(31) $ (((!\FD|PC|DOUT[31]~30_combout\ & \FD|SOMA_PC|OUT_AND2\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT[31]~30_combout\,
	datac => \FD|PC|DOUT\(31),
	datad => \FD|SOMA_PC|OUT_AND2\(27),
	combout => \FD|PC|DOUT[31]~31_combout\);

-- Location: FF_X5_Y1_N27
\FD|PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(31));

-- Location: LCCOMB_X67_Y4_N4
\FD|BANCO_REG|registrador[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][0]~feeder_combout\ = \FD|MUX_ULA_MEM|q[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[0]~0_combout\,
	combout => \FD|BANCO_REG|registrador[1][0]~feeder_combout\);

-- Location: LCCOMB_X61_Y4_N4
\FD|BANCO_REG|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Decoder0~2_combout\ = (\FD|MEM_INST|q\(2) & (!\FD|MEM_INST|q\(0) & \FD|MEM_INST|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(2),
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|MEM_INST|q\(26),
	combout => \FD|BANCO_REG|Decoder0~2_combout\);

-- Location: FF_X67_Y4_N5
\FD|BANCO_REG|registrador[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][0]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][0]~q\);

-- Location: LCCOMB_X61_Y4_N10
\FD|BANCO_REG|registrador[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][1]~feeder_combout\ = \FD|MUX_ULA_MEM|q[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[1]~1_combout\,
	combout => \FD|BANCO_REG|registrador[1][1]~feeder_combout\);

-- Location: FF_X61_Y4_N11
\FD|BANCO_REG|registrador[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][1]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][1]~q\);

-- Location: LCCOMB_X66_Y3_N20
\FD|BANCO_REG|registrador[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][2]~feeder_combout\ = \FD|MUX_ULA_MEM|q[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[2]~2_combout\,
	combout => \FD|BANCO_REG|registrador[1][2]~feeder_combout\);

-- Location: FF_X66_Y3_N21
\FD|BANCO_REG|registrador[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][2]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][2]~q\);

-- Location: LCCOMB_X66_Y4_N20
\FD|BANCO_REG|registrador[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][3]~feeder_combout\ = \FD|MUX_ULA_MEM|q[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[3]~3_combout\,
	combout => \FD|BANCO_REG|registrador[1][3]~feeder_combout\);

-- Location: FF_X66_Y4_N21
\FD|BANCO_REG|registrador[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][3]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][3]~q\);

-- Location: LCCOMB_X66_Y4_N22
\FD|BANCO_REG|registrador[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][4]~feeder_combout\ = \FD|MUX_ULA_MEM|q[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[4]~4_combout\,
	combout => \FD|BANCO_REG|registrador[1][4]~feeder_combout\);

-- Location: FF_X66_Y4_N23
\FD|BANCO_REG|registrador[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][4]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][4]~q\);

-- Location: LCCOMB_X61_Y4_N16
\FD|BANCO_REG|registrador[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][5]~feeder_combout\ = \FD|MUX_ULA_MEM|q[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[5]~5_combout\,
	combout => \FD|BANCO_REG|registrador[1][5]~feeder_combout\);

-- Location: FF_X61_Y4_N17
\FD|BANCO_REG|registrador[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][5]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][5]~q\);

-- Location: LCCOMB_X61_Y4_N22
\FD|BANCO_REG|registrador[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][6]~feeder_combout\ = \FD|MUX_ULA_MEM|q[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[6]~6_combout\,
	combout => \FD|BANCO_REG|registrador[1][6]~feeder_combout\);

-- Location: FF_X61_Y4_N23
\FD|BANCO_REG|registrador[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][6]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][6]~q\);

-- Location: LCCOMB_X66_Y4_N8
\FD|BANCO_REG|registrador[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][7]~feeder_combout\ = \FD|MUX_ULA_MEM|q[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[7]~7_combout\,
	combout => \FD|BANCO_REG|registrador[1][7]~feeder_combout\);

-- Location: FF_X66_Y4_N9
\FD|BANCO_REG|registrador[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][7]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][7]~q\);

-- Location: LCCOMB_X61_Y4_N12
\FD|BANCO_REG|registrador[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][8]~feeder_combout\ = \FD|MUX_ULA_MEM|q[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[8]~8_combout\,
	combout => \FD|BANCO_REG|registrador[1][8]~feeder_combout\);

-- Location: FF_X61_Y4_N13
\FD|BANCO_REG|registrador[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][8]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][8]~q\);

-- Location: LCCOMB_X66_Y3_N26
\FD|BANCO_REG|registrador[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][9]~feeder_combout\ = \FD|MUX_ULA_MEM|q[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[9]~9_combout\,
	combout => \FD|BANCO_REG|registrador[1][9]~feeder_combout\);

-- Location: FF_X66_Y3_N27
\FD|BANCO_REG|registrador[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][9]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][9]~q\);

-- Location: LCCOMB_X62_Y3_N20
\FD|BANCO_REG|registrador[1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][10]~feeder_combout\ = \FD|MUX_ULA_MEM|q[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[10]~10_combout\,
	combout => \FD|BANCO_REG|registrador[1][10]~feeder_combout\);

-- Location: FF_X62_Y3_N21
\FD|BANCO_REG|registrador[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][10]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][10]~q\);

-- Location: LCCOMB_X61_Y4_N30
\FD|BANCO_REG|registrador[1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][11]~feeder_combout\ = \FD|MUX_ULA_MEM|q[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[11]~11_combout\,
	combout => \FD|BANCO_REG|registrador[1][11]~feeder_combout\);

-- Location: FF_X61_Y4_N31
\FD|BANCO_REG|registrador[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][11]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][11]~q\);

-- Location: LCCOMB_X66_Y3_N0
\FD|BANCO_REG|registrador[1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][12]~feeder_combout\ = \FD|MUX_ULA_MEM|q[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[12]~12_combout\,
	combout => \FD|BANCO_REG|registrador[1][12]~feeder_combout\);

-- Location: FF_X66_Y3_N1
\FD|BANCO_REG|registrador[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][12]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][12]~q\);

-- Location: LCCOMB_X67_Y4_N10
\FD|BANCO_REG|registrador[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][13]~feeder_combout\ = \FD|MUX_ULA_MEM|q[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[13]~13_combout\,
	combout => \FD|BANCO_REG|registrador[1][13]~feeder_combout\);

-- Location: FF_X67_Y4_N11
\FD|BANCO_REG|registrador[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][13]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][13]~q\);

-- Location: LCCOMB_X67_Y4_N20
\FD|BANCO_REG|registrador[1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][14]~feeder_combout\ = \FD|MUX_ULA_MEM|q[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[14]~14_combout\,
	combout => \FD|BANCO_REG|registrador[1][14]~feeder_combout\);

-- Location: FF_X67_Y4_N21
\FD|BANCO_REG|registrador[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][14]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][14]~q\);

-- Location: LCCOMB_X61_Y4_N8
\FD|BANCO_REG|registrador[1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][15]~feeder_combout\ = \FD|MUX_ULA_MEM|q[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[15]~15_combout\,
	combout => \FD|BANCO_REG|registrador[1][15]~feeder_combout\);

-- Location: FF_X61_Y4_N9
\FD|BANCO_REG|registrador[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][15]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][15]~q\);

-- Location: LCCOMB_X67_Y4_N2
\FD|BANCO_REG|registrador[1][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][16]~feeder_combout\ = \FD|MUX_ULA_MEM|q[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[16]~16_combout\,
	combout => \FD|BANCO_REG|registrador[1][16]~feeder_combout\);

-- Location: FF_X67_Y4_N3
\FD|BANCO_REG|registrador[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][16]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][16]~q\);

-- Location: LCCOMB_X61_Y4_N18
\FD|BANCO_REG|registrador[1][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][17]~feeder_combout\ = \FD|MUX_ULA_MEM|q[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[17]~17_combout\,
	combout => \FD|BANCO_REG|registrador[1][17]~feeder_combout\);

-- Location: FF_X61_Y4_N19
\FD|BANCO_REG|registrador[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][17]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][17]~q\);

-- Location: LCCOMB_X67_Y4_N12
\FD|BANCO_REG|registrador[1][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][18]~feeder_combout\ = \FD|MUX_ULA_MEM|q[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[18]~18_combout\,
	combout => \FD|BANCO_REG|registrador[1][18]~feeder_combout\);

-- Location: FF_X67_Y4_N13
\FD|BANCO_REG|registrador[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][18]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][18]~q\);

-- Location: LCCOMB_X61_Y4_N28
\FD|BANCO_REG|registrador[1][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][19]~feeder_combout\ = \FD|MUX_ULA_MEM|q[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[19]~19_combout\,
	combout => \FD|BANCO_REG|registrador[1][19]~feeder_combout\);

-- Location: FF_X61_Y4_N29
\FD|BANCO_REG|registrador[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][19]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][19]~q\);

-- Location: LCCOMB_X67_Y4_N14
\FD|BANCO_REG|registrador[1][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][20]~feeder_combout\ = \FD|MUX_ULA_MEM|q[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[20]~20_combout\,
	combout => \FD|BANCO_REG|registrador[1][20]~feeder_combout\);

-- Location: FF_X67_Y4_N15
\FD|BANCO_REG|registrador[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][20]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][20]~q\);

-- Location: LCCOMB_X66_Y3_N6
\FD|BANCO_REG|registrador[1][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][21]~feeder_combout\ = \FD|MUX_ULA_MEM|q[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[21]~21_combout\,
	combout => \FD|BANCO_REG|registrador[1][21]~feeder_combout\);

-- Location: FF_X66_Y3_N7
\FD|BANCO_REG|registrador[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][21]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][21]~q\);

-- Location: LCCOMB_X66_Y3_N28
\FD|BANCO_REG|registrador[1][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][22]~feeder_combout\ = \FD|MUX_ULA_MEM|q[22]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[22]~22_combout\,
	combout => \FD|BANCO_REG|registrador[1][22]~feeder_combout\);

-- Location: FF_X66_Y3_N29
\FD|BANCO_REG|registrador[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][22]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][22]~q\);

-- Location: LCCOMB_X59_Y4_N24
\FD|BANCO_REG|registrador[1][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][23]~feeder_combout\ = \FD|MUX_ULA_MEM|q[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[23]~23_combout\,
	combout => \FD|BANCO_REG|registrador[1][23]~feeder_combout\);

-- Location: FF_X59_Y4_N25
\FD|BANCO_REG|registrador[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][23]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][23]~q\);

-- Location: LCCOMB_X66_Y4_N2
\FD|BANCO_REG|registrador[1][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][24]~feeder_combout\ = \FD|MUX_ULA_MEM|q[24]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[24]~24_combout\,
	combout => \FD|BANCO_REG|registrador[1][24]~feeder_combout\);

-- Location: FF_X66_Y4_N3
\FD|BANCO_REG|registrador[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][24]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][24]~q\);

-- Location: LCCOMB_X66_Y4_N4
\FD|BANCO_REG|registrador[1][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][25]~feeder_combout\ = \FD|MUX_ULA_MEM|q[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[25]~25_combout\,
	combout => \FD|BANCO_REG|registrador[1][25]~feeder_combout\);

-- Location: FF_X66_Y4_N5
\FD|BANCO_REG|registrador[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][25]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][25]~q\);

-- Location: LCCOMB_X66_Y4_N26
\FD|BANCO_REG|registrador[1][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][26]~feeder_combout\ = \FD|MUX_ULA_MEM|q[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[26]~26_combout\,
	combout => \FD|BANCO_REG|registrador[1][26]~feeder_combout\);

-- Location: FF_X66_Y4_N27
\FD|BANCO_REG|registrador[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][26]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][26]~q\);

-- Location: LCCOMB_X61_Y4_N6
\FD|BANCO_REG|registrador[1][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][27]~feeder_combout\ = \FD|MUX_ULA_MEM|q[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[27]~27_combout\,
	combout => \FD|BANCO_REG|registrador[1][27]~feeder_combout\);

-- Location: FF_X61_Y4_N7
\FD|BANCO_REG|registrador[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][27]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][27]~q\);

-- Location: LCCOMB_X66_Y4_N12
\FD|BANCO_REG|registrador[1][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][28]~feeder_combout\ = \FD|MUX_ULA_MEM|q[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX_ULA_MEM|q[28]~28_combout\,
	combout => \FD|BANCO_REG|registrador[1][28]~feeder_combout\);

-- Location: FF_X66_Y4_N13
\FD|BANCO_REG|registrador[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][28]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][28]~q\);

-- Location: LCCOMB_X59_Y4_N2
\FD|BANCO_REG|registrador[1][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][29]~feeder_combout\ = \FD|MUX_ULA_MEM|q[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[29]~29_combout\,
	combout => \FD|BANCO_REG|registrador[1][29]~feeder_combout\);

-- Location: FF_X59_Y4_N3
\FD|BANCO_REG|registrador[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][29]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][29]~q\);

-- Location: LCCOMB_X59_Y4_N28
\FD|BANCO_REG|registrador[1][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][30]~feeder_combout\ = \FD|MUX_ULA_MEM|q[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[30]~30_combout\,
	combout => \FD|BANCO_REG|registrador[1][30]~feeder_combout\);

-- Location: FF_X59_Y4_N29
\FD|BANCO_REG|registrador[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][30]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][30]~q\);

-- Location: LCCOMB_X61_Y4_N24
\FD|BANCO_REG|registrador[1][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|registrador[1][31]~feeder_combout\ = \FD|MUX_ULA_MEM|q[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MUX_ULA_MEM|q[31]~31_combout\,
	combout => \FD|BANCO_REG|registrador[1][31]~feeder_combout\);

-- Location: FF_X61_Y4_N25
\FD|BANCO_REG|registrador[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BANCO_REG|registrador[1][31]~feeder_combout\,
	ena => \FD|BANCO_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[1][31]~q\);

-- Location: LCCOMB_X61_Y4_N14
\FD|BANCO_REG|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BANCO_REG|Decoder0~3_combout\ = (!\FD|MEM_INST|q\(2) & (\FD|MEM_INST|q\(0) & \FD|MEM_INST|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MEM_INST|q\(2),
	datab => \FD|MEM_INST|q\(0),
	datac => \FD|MEM_INST|q\(26),
	combout => \FD|BANCO_REG|Decoder0~3_combout\);

-- Location: FF_X63_Y4_N25
\FD|BANCO_REG|registrador[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[0]~0_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][0]~q\);

-- Location: FF_X63_Y4_N15
\FD|BANCO_REG|registrador[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[1]~1_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][1]~q\);

-- Location: FF_X65_Y3_N5
\FD|BANCO_REG|registrador[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[2]~2_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][2]~q\);

-- Location: FF_X65_Y4_N23
\FD|BANCO_REG|registrador[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[3]~3_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][3]~q\);

-- Location: FF_X65_Y4_N25
\FD|BANCO_REG|registrador[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[4]~4_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][4]~q\);

-- Location: FF_X63_Y4_N29
\FD|BANCO_REG|registrador[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[5]~5_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][5]~q\);

-- Location: FF_X62_Y4_N31
\FD|BANCO_REG|registrador[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[6]~6_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][6]~q\);

-- Location: FF_X65_Y4_N15
\FD|BANCO_REG|registrador[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[7]~7_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][7]~q\);

-- Location: FF_X63_Y4_N23
\FD|BANCO_REG|registrador[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[8]~8_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][8]~q\);

-- Location: FF_X65_Y3_N23
\FD|BANCO_REG|registrador[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[9]~9_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][9]~q\);

-- Location: FF_X63_Y3_N31
\FD|BANCO_REG|registrador[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[10]~10_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][10]~q\);

-- Location: FF_X62_Y4_N5
\FD|BANCO_REG|registrador[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[11]~11_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][11]~q\);

-- Location: FF_X65_Y3_N1
\FD|BANCO_REG|registrador[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[12]~12_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][12]~q\);

-- Location: FF_X68_Y4_N27
\FD|BANCO_REG|registrador[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[13]~13_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][13]~q\);

-- Location: FF_X68_Y4_N25
\FD|BANCO_REG|registrador[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[14]~14_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][14]~q\);

-- Location: FF_X62_Y4_N7
\FD|BANCO_REG|registrador[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[15]~15_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][15]~q\);

-- Location: FF_X68_Y4_N7
\FD|BANCO_REG|registrador[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[16]~16_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][16]~q\);

-- Location: FF_X63_Y4_N13
\FD|BANCO_REG|registrador[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[17]~17_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][17]~q\);

-- Location: FF_X68_Y4_N9
\FD|BANCO_REG|registrador[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[18]~18_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][18]~q\);

-- Location: FF_X62_Y4_N9
\FD|BANCO_REG|registrador[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[19]~19_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][19]~q\);

-- Location: FF_X68_Y4_N23
\FD|BANCO_REG|registrador[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[20]~20_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][20]~q\);

-- Location: FF_X65_Y3_N31
\FD|BANCO_REG|registrador[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[21]~21_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][21]~q\);

-- Location: FF_X65_Y3_N13
\FD|BANCO_REG|registrador[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[22]~22_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][22]~q\);

-- Location: FF_X60_Y4_N9
\FD|BANCO_REG|registrador[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[23]~23_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][23]~q\);

-- Location: FF_X65_Y4_N5
\FD|BANCO_REG|registrador[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[24]~24_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][24]~q\);

-- Location: FF_X65_Y4_N19
\FD|BANCO_REG|registrador[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[25]~25_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][25]~q\);

-- Location: FF_X65_Y4_N9
\FD|BANCO_REG|registrador[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[26]~26_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][26]~q\);

-- Location: FF_X61_Y4_N27
\FD|BANCO_REG|registrador[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[27]~27_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][27]~q\);

-- Location: FF_X65_Y4_N27
\FD|BANCO_REG|registrador[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[28]~28_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][28]~q\);

-- Location: FF_X60_Y4_N27
\FD|BANCO_REG|registrador[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[29]~29_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][29]~q\);

-- Location: FF_X60_Y4_N5
\FD|BANCO_REG|registrador[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[30]~30_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][30]~q\);

-- Location: FF_X62_Y4_N23
\FD|BANCO_REG|registrador[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MUX_ULA_MEM|q[31]~31_combout\,
	ena => \FD|BANCO_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BANCO_REG|registrador[2][31]~q\);

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
END structure;


