-- Quartus Prime VHDL Template
-- Signed Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		a : in std_logic_vector ((DATA_WIDTH-1) downto 0);
		b : in std_logic_vector ((DATA_WIDTH-1) downto 0);
		m : in std_logic_vector(1 downto 0);
		result : out std_logic_vector ((DATA_WIDTH-1) downto 0);
		z: out std_logic 
	);

end entity;

architecture rtl of ULA is

signal zero: std_logic_vector ((DATA_WIDTH-1) downto 0);

begin


zero <= (others => '0');


	process(a,b,m)
	begin
		case m is
			when "00" => result <= std_logic_vector(signed(a) + signed(b));
			when "01" => result <= std_logic_vector(signed(a) - signed(b));
			when others => result <= (others => '0');
		end case;
		
	end process;
	
	
	z <= '1' when result = zero else '0';

end rtl;