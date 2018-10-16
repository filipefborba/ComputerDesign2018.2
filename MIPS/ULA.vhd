-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;

-- SIGNED and UNSIGNED types, and relevant functions
use ieee.numeric_std.all;

entity ULA is
	port
	(
		-- Input ports
		A		: in  std_logic_vector(31 downto 0);
		B		: in  std_logic_vector(31 downto 0);
		CIn	: in  std_logic_vector(31 downto 0);
    selector: in std_logic_vector(1 downto 0);

		-- Output ports
		overflow: out std_logic;
		r		: out std_logic_vector(31 downto 0);
		COut: out std_logic_vector(31 downto 0)
	);
	
end entity;
-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture arch_ula of ULA is
signal OUT_AND, OUT_OR : std_logic_vector(31 downto 0);
signal COut_Aux, CIn_Aux, zero : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
signal SUM : std_logic_vector(31 downto 0);
	-- Declarations (optional)

begin
	OUT_AND <= A AND B;
	OUT_OR <= A OR B;

	SOMA: entity work.soma
	port map(A => A, B => B, CarryIn => CIn_Aux, SOMAOUT => SUM, CarryOut => COut_Aux);

	MUX: entity work.mux
	port map (A => OUT_AND, B => OUT_OR, C => SUM, D => zero, sel => selector, q => r);
   COut <= COut_Aux;
	overflow <= CIn_Aux(31) XOR COut_Aux(31);
end architecture;
