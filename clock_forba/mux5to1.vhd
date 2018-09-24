library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux5to1 is
	
	port
	(
		-- Input ports
		const_1 : in std_logic_vector(3 downto 0) := "0001";
		const_2 : in std_logic_vector(3 downto 0) := "0010";
		const_4 : in std_logic_vector(3 downto 0) := "0100";
		const_5 : in std_logic_vector(3 downto 0) := "0101";
		const_9 : in std_logic_vector(3 downto 0) := "1001";
		sel_2	: in  std_logic_vector (2 downto 0);

		-- Output ports
		output	: out std_logic_vector (3 downto 0)
	);
end mux5to1;

architecture arch of mux5to1 is	
begin
	output <= const_1 when sel_2 = "000" else
			  const_2 when sel_2 = "001" else
			  const_4 when sel_2 = "010" else
			  const_5 when sel_2 = "011" else
			  const_9 when sel_2 = "100";
end arch;
