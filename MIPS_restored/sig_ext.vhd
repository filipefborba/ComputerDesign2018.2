library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sig_ext is
	generic (
        larguraDados : natural := 32
    );
	port
	(
		-- Input ports
		sig		: in  std_logic_vector(15 downto 0);

		-- Output ports
		q		: out std_logic_vector(larguraDados-1 downto 0)
	);
	
end entity;

architecture arch_mux2 of sig_ext is
begin
		q <= sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig(15)&sig;
end architecture;