-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;

-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;
--mux para selecionar em qual registrador sera editado o valor
entity mux6to1 is
	generic
	(
	LEN : natural := 4 -- Bits in each input
	);
	
	port
	(
		-- Input ports
		unidade_s	: in  std_logic_vector (LEN - 1 downto 0); 
		dezena_s	: in  std_logic_vector (LEN - 1 downto 0); 
		unidade_m	: in  std_logic_vector (LEN - 1 downto 0); 
		dezena_m	: in  std_logic_vector (LEN - 1 downto 0); 
		unidade_h	: in  std_logic_vector (LEN - 1 downto 0);
		dezena_h	: in  std_logic_vector (LEN - 1 downto 0);
		sel	: in  std_logic_vector (2 downto 0);

		-- Output ports
		output	: out std_logic_vector (LEN - 1 downto 0)
	);
end entity;

architecture arch of mux6to1 is	
begin
	output <= unidade_s when sel = "000" else
			  dezena_s when sel = "001" else
			  unidade_m when sel = "010" else
			  dezena_m when sel = "011" else
			  unidade_h when sel = "100" else
			  dezena_h when sel = "101";
end arch;
