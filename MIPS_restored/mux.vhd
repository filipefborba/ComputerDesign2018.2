library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
	port
	(
		-- Input ports
		A		: in  std_logic_vector(31 downto 0);
		B		: in  std_logic_vector(31 downto 0);
		C		: in  std_logic_vector(31 downto 0);
		D		: in  std_logic_vector(31 downto 0);
		sel	: in  std_logic_vector(1 downto 0);

		-- Output ports
		q		: out std_logic_vector(31 downto 0)
	);
	
end entity;

architecture rtl of mux is
begin
	process(sel)
	begin
		 case sel is
			  when "00" => q <= A;
			  when "01" => q <= B;
			  when "10" => q <= C;
			  when "11" => q <= D;
			  when others => report "unreachable" severity failure;
		 end case;
	end process;
end architecture;