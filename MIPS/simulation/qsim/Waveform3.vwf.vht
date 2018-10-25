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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/23/2018 10:28:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UCFD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UCFD_vhd_vec_tst IS
END UCFD_vhd_vec_tst;
ARCHITECTURE UCFD_arch OF UCFD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BEQ : STD_LOGIC;
SIGNAL HAB_ESC_MEM : STD_LOGIC;
SIGNAL HAB_ESC_REG : STD_LOGIC;
SIGNAL HAB_LE_MEM : STD_LOGIC;
SIGNAL MUX1 : STD_LOGIC;
SIGNAL MUX2 : STD_LOGIC;
SIGNAL MUX3 : STD_LOGIC;
SIGNAL MUX4 : STD_LOGIC;
SIGNAL OP : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL ULA_OP : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT UCFD
	PORT (
	BEQ : BUFFER STD_LOGIC;
	HAB_ESC_MEM : BUFFER STD_LOGIC;
	HAB_ESC_REG : BUFFER STD_LOGIC;
	HAB_LE_MEM : BUFFER STD_LOGIC;
	MUX1 : BUFFER STD_LOGIC;
	MUX2 : BUFFER STD_LOGIC;
	MUX3 : BUFFER STD_LOGIC;
	MUX4 : BUFFER STD_LOGIC;
	OP : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	ULA_OP : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : UCFD
	PORT MAP (
-- list connections between master ports and signals
	BEQ => BEQ,
	HAB_ESC_MEM => HAB_ESC_MEM,
	HAB_ESC_REG => HAB_ESC_REG,
	HAB_LE_MEM => HAB_LE_MEM,
	MUX1 => MUX1,
	MUX2 => MUX2,
	MUX3 => MUX3,
	MUX4 => MUX4,
	OP => OP,
	ULA_OP => ULA_OP
	);
-- OP[5]
t_prcs_OP_5: PROCESS
BEGIN
	OP(5) <= '0';
	WAIT FOR 40000 ps;
	OP(5) <= '1';
	WAIT FOR 80000 ps;
	OP(5) <= '0';
WAIT;
END PROCESS t_prcs_OP_5;
-- OP[4]
t_prcs_OP_4: PROCESS
BEGIN
	OP(4) <= '0';
WAIT;
END PROCESS t_prcs_OP_4;
-- OP[3]
t_prcs_OP_3: PROCESS
BEGIN
	OP(3) <= '0';
	WAIT FOR 80000 ps;
	OP(3) <= '1';
	WAIT FOR 40000 ps;
	OP(3) <= '0';
WAIT;
END PROCESS t_prcs_OP_3;
-- OP[2]
t_prcs_OP_2: PROCESS
BEGIN
	OP(2) <= '0';
	WAIT FOR 120000 ps;
	OP(2) <= '1';
	WAIT FOR 40000 ps;
	OP(2) <= '0';
WAIT;
END PROCESS t_prcs_OP_2;
-- OP[1]
t_prcs_OP_1: PROCESS
BEGIN
	OP(1) <= '0';
	WAIT FOR 40000 ps;
	OP(1) <= '1';
	WAIT FOR 80000 ps;
	OP(1) <= '0';
	WAIT FOR 40000 ps;
	OP(1) <= '1';
	WAIT FOR 50000 ps;
	OP(1) <= '0';
WAIT;
END PROCESS t_prcs_OP_1;
-- OP[0]
t_prcs_OP_0: PROCESS
BEGIN
	OP(0) <= '0';
	WAIT FOR 40000 ps;
	OP(0) <= '1';
	WAIT FOR 80000 ps;
	OP(0) <= '0';
WAIT;
END PROCESS t_prcs_OP_0;
END UCFD_arch;
