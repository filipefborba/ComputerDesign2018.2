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
-- Generated on "10/30/2018 09:59:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top_level
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_level_vhd_vec_tst IS
END top_level_vhd_vec_tst;
ARCHITECTURE top_level_arch OF top_level_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL beq : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL hab_esc_mem : STD_LOGIC;
SIGNAL hab_esc_reg : STD_LOGIC;
SIGNAL hab_le_mem : STD_LOGIC;
SIGNAL op : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL saidaPC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaRAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaROM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaTeste1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaTeste2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL sel_mux_jump : STD_LOGIC;
SIGNAL sel_mux_rt_imm : STD_LOGIC;
SIGNAL sel_MUX_rt_rd : STD_LOGIC;
SIGNAL sel_mux_ula_mem : STD_LOGIC;
SIGNAL ula_op : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT top_level
	PORT (
	beq : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	hab_esc_mem : OUT STD_LOGIC;
	hab_esc_reg : OUT STD_LOGIC;
	hab_le_mem : OUT STD_LOGIC;
	op : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	saidaPC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaRAM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaROM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaTeste1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaTeste2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	sel_mux_jump : OUT STD_LOGIC;
	sel_mux_rt_imm : OUT STD_LOGIC;
	sel_MUX_rt_rd : OUT STD_LOGIC;
	sel_mux_ula_mem : OUT STD_LOGIC;
	ula_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : top_level
	PORT MAP (
-- list connections between master ports and signals
	beq => beq,
	clk => clk,
	hab_esc_mem => hab_esc_mem,
	hab_esc_reg => hab_esc_reg,
	hab_le_mem => hab_le_mem,
	op => op,
	saidaPC => saidaPC,
	saidaRAM => saidaRAM,
	saidaROM => saidaROM,
	saidaTeste1 => saidaTeste1,
	saidaTeste2 => saidaTeste2,
	saidaULA => saidaULA,
	sel_mux_jump => sel_mux_jump,
	sel_mux_rt_imm => sel_mux_rt_imm,
	sel_MUX_rt_rd => sel_MUX_rt_rd,
	sel_mux_ula_mem => sel_mux_ula_mem,
	ula_op => ula_op
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END top_level_arch;
