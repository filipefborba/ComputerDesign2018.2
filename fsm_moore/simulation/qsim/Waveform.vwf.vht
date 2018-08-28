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
-- Generated on "08/28/2018 15:12:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fsm_moore
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsm_moore_vhd_vec_tst IS
END fsm_moore_vhd_vec_tst;
ARCHITECTURE fsm_moore_arch OF fsm_moore_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL input : STD_LOGIC;
SIGNAL output : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT fsm_moore
	PORT (
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC;
	output : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm_moore
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	input => input,
	output => output,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30000 ps;
		clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- input
t_prcs_input: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		input <= '0';
		WAIT FOR 60000 ps;
		input <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	input <= '0';
WAIT;
END PROCESS t_prcs_input;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END fsm_moore_arch;
