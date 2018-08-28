-- Quartus Prime VHDL Template
-- Signed Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Registrador is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		entrada: in std_logic_vector ((DATA_WIDTH-1) downto 0);
		enable : in std_logic;
		clock: in std_logic;
		reset: in std_logic;
		saida: out std_logic_vector ((DATA_WIDTH-1) downto 0) 
	);

end entity;

architecture comportamento of Registrador is

begin

process (clock, reset)
begin
	-- Reset whenever the reset signal goes low, regardless of the clock
	-- or the clock enable
	if (reset = '0') then
		saida <= (others => '0');
	-- If not resetting, and the clock signal is enabled on this register, 
	-- update the register output on the clock's rising edge
	elsif (rising_edge(clock)) then
		if (enable = '1') then
			saida <= entrada;
		end if;
	end if;
end process;



end comportamento;




