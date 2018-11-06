-- Quartus Prime VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 64
	);

	port 
	(
		clk		: in std_logic;
		addr	: in natural range 0 to ADDR_WIDTH - 1:=0;
		--addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		--addr	: in std_logic_vector((ADDR_WIDTH -1) downto 0);
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of rom is

	type memory_t is array ((ADDR_WIDTH-1) downto 0) of std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal content: memory_t;
	attribute ram_init_file : string;
	attribute ram_init_file of content:
	signal is "rom_t.mif";

	begin
		 process(clk)
		 begin
			  if (RISING_EDGE(clk)) then
					q <= content(addr);
			  end if;
		 end process;
end architecture;