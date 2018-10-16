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
		CIn	: in  std_logic;
    selector: in std_logic_vector(1 downto 0);

		-- Output ports
		overflow: out std_logic;
		r		: out std_logic_vector(31 downto 0);
		COut: out std_logic_vector(31 downto 0)
	);
	
end entity;
-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture arch_soma of soma is
signal OUT_AND : std_logic_vector(31 downto 0);
signal OUT_OR : std_logic_vector(31 downto 0);
signal SUM : std_logic_vector(31 downto 0);
signal zero: "00000000000000000000000000000000";
	-- Declarations (optional)

begin
	process(A, B, CIn, sel)
	begin
    OUT_AND <= A AND B;
    OUT_OR <= A OR B;

		soma: entity work.arch_soma
			port map(A => A, B => B, CarryIn => CIn, SOMA => SUM, CarryOut => COut)

    mux: entity work.rtl
      port map (A => OUT_AND, B => OUT_OR, C => SUM, D => zero, sel => selector)

		overflow <= CIn[31] xor COut[31];
			

	end process;
end architecture;
