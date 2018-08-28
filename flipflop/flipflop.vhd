library IEEE;
use ieee.std_logic_1164.all;

entity flipflop is
	port
	(
	-- Input ports
	D : in  STD_LOGIC;
	clk	: in  STD_LOGIC;

	-- Output ports
	Q	: out STD_LOGIC;
	Q_linha	: out STD_LOGIC
	);
end flipflop;

architecture arch of flipflop is

begin
	-- Update the register output on the clock's rising edge
	process (clk)
	begin
		if (rising_edge(clk)) then
			Q <= D;
			Q_linha <= NOT(D);
		end if;
	end process;
end arch;
