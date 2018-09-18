-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;

-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;
	
entity Mux is
	generic
	(
	LEN : natural := 8 -- Bits in each input
	);
	
	port
	(
		-- Input ports
		a	: in  std_logic_vector (LEN - 1 downto 0);
		b	: in  std_logic_vector (LEN - 1 downto 0);
		sel	: in  std_logic;

		-- Output ports
		output	: out std_logic_vector (LEN - 1 downto 0)
	);
end Mux;

architecture arch of Mux is
	-- Declarations (optional)
	
begin
	output <= a when sel = '0' else b;
end arch;