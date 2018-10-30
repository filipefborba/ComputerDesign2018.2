LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram IS
	GENERIC
	(
		ADDRESS_WIDTH	: integer := 512;
		DATA_WIDTH	: integer := 32
	);
	PORT
	(
		clock			: IN  std_logic;
		data			: IN  std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
		--write_address			: IN  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
		--read_address			: IN  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
		write_address			: IN  natural range 0 to ADDRESS_WIDTH - 1;
		read_address			: IN  natural range 0 to ADDRESS_WIDTH - 1;
		we			: IN  std_logic;
		re			: IN  std_logic;
		q			: OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
	);
END ram;

ARCHITECTURE rtl OF ram IS
	TYPE RAM IS ARRAY(0 TO ADDRESS_WIDTH - 1) OF std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

	SIGNAL ram_block : RAM;
	attribute ram_init_file: string;
	attribute ram_init_file of ram_block:
	signal is "ram_t.mif";
	
BEGIN
	PROCESS (clock)
	BEGIN
		IF (clock'event AND clock = '1') THEN
			IF (we = '1') THEN
			    ram_block(write_address) <= data;
			END IF;
		END IF;
	END PROCESS;
	
	q <= ram_block(read_address) WHEN re = '1' ELSE "00000000000000000000000000000000"; 
	 
END rtl;