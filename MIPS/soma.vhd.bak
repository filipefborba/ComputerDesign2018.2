-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;

-- SIGNED and UNSIGNED types, and relevant functions
use ieee.numeric_std.all;

entity soma is
	port
	(
		-- Input ports
		A		: in  std_logic_vector(31 downto 0);
		B		: in  std_logic_vector(31 downto 0);
		CarryIn	: in  std_logic_vector(31 downto 0);

		-- Output ports
		SOMA		: out std_logic_vector(31 downto 0);
		CarryOut: out std_logic_vector(31 downto 0)
	);
	
end entity;
-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture arch_soma of soma is
signal OUT_XOR2 : std_logic_vector(31 downto 0);
signal OUT_AND1 : std_logic_vector(31 downto 0);
signal OUT_AND2 : std_logic_vector(31 downto 0);
	-- Declarations (optional)

begin
	process(A, B, CarryIn)
	begin
			OUT_XOR2 <= A XOR B;
			SOMA <= CarryIn XOR OUT_XOR2;
			OUT_AND1 <= A AND B;
			OUT_AND2 <= OUT_XOR2 AND CarryIn;
			CarryOut <= OUT_AND1 OR OUT_AND2;

	end process;
end architecture;
