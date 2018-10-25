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
-- Generated on "10/18/2018 12:31:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UC_vhd_vec_tst IS
END UC_vhd_vec_tst;
ARCHITECTURE UC_arch OF UC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL F : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL OP : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT UC
	PORT (
	F : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	OP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : UC
	PORT MAP (
-- list connections between master ports and signals
	F => F,
	OP => OP,
	q => q
	);
-- OP[1]
t_prcs_OP_1: PROCESS
BEGIN
	OP(1) <= '0';
	WAIT FOR 140000 ps;
	OP(1) <= '1';
	WAIT FOR 270000 ps;
	OP(1) <= '0';
WAIT;
END PROCESS t_prcs_OP_1;
-- OP[0]
t_prcs_OP_0: PROCESS
BEGIN
	OP(0) <= '0';
	WAIT FOR 90000 ps;
	OP(0) <= '1';
	WAIT FOR 50000 ps;
	OP(0) <= '0';
WAIT;
END PROCESS t_prcs_OP_0;
-- F[5]
t_prcs_F_5: PROCESS
BEGIN
	F(5) <= 'X';
	WAIT FOR 140000 ps;
	F(5) <= '1';
	WAIT FOR 270000 ps;
	F(5) <= '0';
WAIT;
END PROCESS t_prcs_F_5;
-- F[4]
t_prcs_F_4: PROCESS
BEGIN
	F(4) <= 'X';
	WAIT FOR 140000 ps;
	F(4) <= '0';
WAIT;
END PROCESS t_prcs_F_4;
-- F[3]
t_prcs_F_3: PROCESS
BEGIN
	F(3) <= 'X';
	WAIT FOR 140000 ps;
	F(3) <= '0';
	WAIT FOR 200000 ps;
	F(3) <= '1';
	WAIT FOR 70000 ps;
	F(3) <= '0';
WAIT;
END PROCESS t_prcs_F_3;
-- F[2]
t_prcs_F_2: PROCESS
BEGIN
	F(2) <= 'X';
	WAIT FOR 140000 ps;
	F(2) <= '0';
	WAIT FOR 100000 ps;
	F(2) <= '1';
	WAIT FOR 100000 ps;
	F(2) <= '0';
WAIT;
END PROCESS t_prcs_F_2;
-- F[1]
t_prcs_F_1: PROCESS
BEGIN
	F(1) <= 'X';
	WAIT FOR 140000 ps;
	F(1) <= '0';
	WAIT FOR 50000 ps;
	F(1) <= '1';
	WAIT FOR 50000 ps;
	F(1) <= '0';
	WAIT FOR 100000 ps;
	F(1) <= '1';
	WAIT FOR 70000 ps;
	F(1) <= '0';
WAIT;
END PROCESS t_prcs_F_1;
-- F[0]
t_prcs_F_0: PROCESS
BEGIN
	F(0) <= 'X';
	WAIT FOR 140000 ps;
	F(0) <= '0';
	WAIT FOR 150000 ps;
	F(0) <= '1';
	WAIT FOR 50000 ps;
	F(0) <= '0';
WAIT;
END PROCESS t_prcs_F_0;
END UC_arch;
