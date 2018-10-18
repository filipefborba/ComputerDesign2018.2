library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2 is
	port
	(
		-- Input ports
		A		: in  std_logic_vector(31 downto 0);
		B		: in  std_logic_vector(31 downto 0);
		sel	: in  std_logic;

		-- Output ports
		q		: out std_logic_vector(31 downto 0)
	);
	
end entity;

architecture arch_mux2 of mux2 is
begin
	process(sel)
	begin
		 case sel is
			  when '0' => q <= A;
			  when '1' => q <= B;
		 end case;
	end process;
end architecture;