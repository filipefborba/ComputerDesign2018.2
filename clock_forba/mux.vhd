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
		a	: in  std_logic_vector (LEN - 1 downto 0); --9(um,us)
		b	: in  std_logic_vector (LEN - 1 downto 0); --6(dm,ds)
		c	: in  std_logic_vector (LEN - 1 downto 0); --2(dh)
		d	: in  std_logic_vector (LEN - 1 downto 0); --4(uh)
		sel	: in  std_logic;

		-- Output ports
		output	: out std_logic_vector (LEN - 1 downto 0)
	);
end Mux;

architecture arch of Mux is	
begin
	output <= a when sel = '00' else
			  b when sel = '01' else
			  c when sel = '10' else
			  d when sel = '11';
end arch;