library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UC is
	port
	(
		-- Input ports
		OP		: in  std_logic_vector(1 downto 0);
		F		: in  std_logic_vector(5 downto 0);
		-- Output ports
		q		: out std_logic_vector(3 downto 0)
	);
	
end entity;

architecture arch_UC of UC is
begin
  
  q(0) <= OP(1) AND (F(3) OR F(0));
  q(1) <= (NOT OP(1)) OR(OP(1) AND F(1)) OR (OP(1) AND (NOT F(2)) AND (NOT F(1)));
  q(2) <= OP(0) OR (OP(1) AND F(1));
  q(2) <= '0';
end architecture;