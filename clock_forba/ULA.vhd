library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is

	generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		A : in std_logic_vector ((DATA_WIDTH-1) downto 0) := "0000";
		B : in std_logic_vector ((DATA_WIDTH-1) downto 0) := "0000";
		Sel : in std_logic;
		result : out std_logic_vector ((DATA_WIDTH-1) downto 0);
		z_ula : out std_logic
	);

end entity;

architecture rtl of ULA is

signal zero: std_logic_vector ((DATA_WIDTH-1) downto 0);

begin
zero <= (others => '0');
	process(A,B,Sel)
	begin
		case Sel is
			when '0' => result <= std_logic_vector(unsigned(A) + unsigned(B));
			when '1' => result <= std_logic_vector(unsigned(A) - unsigned(B));
			when others => result <= (others => '0');
		end case;
	end process;
	z_ula <= '1' when result = zero else '0';--flag zero da para fazer um or com os valores da saida e negar
end rtl;
