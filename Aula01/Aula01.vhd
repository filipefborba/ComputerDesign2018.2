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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"
-- CREATED		"Tue Aug 14 14:53:51 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Aula01 IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		OUT :  OUT  STD_LOGIC
	);
END Aula01;

ARCHITECTURE bdf_type OF Aula01 IS 

SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_2 <= A AND D;


SYNTHESIZED_WIRE_7 <= NOT(B);



SYNTHESIZED_WIRE_1 <= D AND SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_3 <= NOT(C);



SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_3 AND A AND SYNTHESIZED_WIRE_7;


OUT <= SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6;


END bdf_type;