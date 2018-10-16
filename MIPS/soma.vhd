library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity soma is
	port
	(
		-- Input ports
		A		: in  std_logic_vector(31 downto 0);
		B		: in  std_logic_vector(31 downto 0);
		CarryIn	: in  std_logic_vector(31 downto 0);

		-- Output ports
		SOMAOUT		: out std_logic_vector(31 downto 0);
		CarryOut: out std_logic_vector(31 downto 0)
	);
	
end entity;

architecture arch_soma of soma is
signal OUT_XOR : std_logic_vector(31 downto 0);
signal OUT_AND1 : std_logic_vector(31 downto 0);
signal OUT_AND2 : std_logic_vector(31 downto 0);

begin
	OUT_XOR <= A XOR B;
	SOMAOUT(0) <= CarryIn(0) XOR OUT_XOR(0);
	SOMAOUT(31 downto 1) <= CarryOut(30 downto 0) XOR OUT_XOR(31 downto 1);
	
	OUT_AND1 <= A AND B;
	OUT_AND2(0) <= CarryIn(0) AND OUT_XOR(0);
	OUT_AND2(31 downto 1) <= CarryOut(30 downto 0) AND OUT_XOR(31 downto 1);
	CarryOut <= OUT_AND1 OR OUT_AND2;
end architecture;
