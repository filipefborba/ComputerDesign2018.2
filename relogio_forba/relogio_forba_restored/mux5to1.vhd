library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux5to1 is
	port
	(
		-- Input ports
		A		: in  std_logic_vector(3 downto 0);
		B		: in  std_logic_vector(3 downto 0);
		C		: in  std_logic_vector(3 downto 0);
		D		: in  std_logic_vector(3 downto 0);
		E		: in  std_logic_vector(3 downto 0);
		sel	: in  std_logic_vector(2 downto 0);

		-- Output ports
		q		: out std_logic_vector(3 downto 0)
	);
	
end entity;

architecture rtl of mux5to1 is
begin
	process(sel)
	begin
		 case sel is
			  when "000" => q <= A;
			  when "001" => q <= B;
			  when "010" => q <= C;
			  when "011" => q <= D;
			  when "100" => q <= E;
			  when others => report "unreachable" severity failure;
		 end case;
	end process;
end architecture;