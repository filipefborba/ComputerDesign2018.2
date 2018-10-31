-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;

-- SIGNED and UNSIGNED types, and relevant functions
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


entity ULA is
	port
	(
		-- Input ports
		A		: in  std_logic_vector(31 downto 0);
		B		: in  std_logic_vector(31 downto 0);
    selector: in std_logic_vector(3 downto 0);

		-- Output ports
		overflow: out std_logic;
		r		: out std_logic_vector(31 downto 0);
		COut: out std_logic_vector(31 downto 0);
		Z: out std_logic
	);
	
end entity;
-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture arch_ula of ULA is
signal OUT_AND, OUT_OR : std_logic_vector(31 downto 0);
signal COut_Aux, CIn_Aux, zero : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
signal SUM : std_logic_vector(31 downto 0);
signal ENTRADA_A: std_logic_vector(31 downto 0);
signal ENTRADA_B: std_logic_vector(31 downto 0);
signal saida_AUX_R: std_logic_vector(31 downto 0);
signal invA: std_logic;
signal invB: std_logic;
signal aux_sel: std_logic_vector(1 downto 0);
	-- Declarations (optional)

begin
	invA <= selector(3);
	invB <= selector(2);
	aux_sel <= selector(1 downto 0); 
	CIn_Aux(0) <= invB;

	INVERTE_A: entity work.mux2
	port map(A => A, B => NOT A, sel => invA, q => ENTRADA_A);

	INVERTE_B: entity work.mux2
	port map(A => B, B => NOT B, sel => invB, q => ENTRADA_B);

	OUT_AND <= ENTRADA_A AND ENTRADA_B;
	OUT_OR <= ENTRADA_A OR ENTRADA_B;


	SOMA: entity work.soma
	port map(A => ENTRADA_A, B => ENTRADA_B, CarryIn => CIn_Aux, SOMAOUT => SUM, CarryOut => COut_Aux);

	MUX: entity work.mux
	port map (A => OUT_AND, B => OUT_OR, C => SUM, D => zero, sel => aux_sel, q => saida_AUX_R);
   COut <= COut_Aux;
	overflow <= CIn_Aux(31) XOR COut_Aux(31);
	
	r <= saida_AUX_R;
	Z <= (not or_reduce(saida_AUX_R));
end architecture;
