library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--LIBRARY work;
--USE work.Registrador.all;


entity pipeline is
	-- Numero de bits do pipeline (DEFAULT: 8)
	generic (
	NUM_BITS : natural := 8
	);
 
	port (
	clock : in std_logic;
	reset : in std_logic;
	enable : in std_logic := '1';
	in_r : in std_logic_vector(NUM_BITS-1 downto 0);
	out_r : out std_logic_vector(NUM_BITS-1 downto 0)
	);
end entity;

architecture arch of pipeline is
	signal OUT_R1 : std_logic_vector(NUM_BITS-1 downto 0);
	signal OUT_R2 : std_logic_vector(NUM_BITS-1 downto 0);
	signal IN_R2 : std_logic_vector(NUM_BITS-1 downto 0);
	signal IN_R3 : std_logic_vector(NUM_BITS-1 downto 0);

	
begin
	R1 : entity work.Registrador
	port map (
	in_r, enable, clock, reset, OUT_R1
	);
	
	IN_R2(NUM_BITS-1 downto 6) <= OUT_R1(NUM_BITS-1 downto 6);
	IN_R2(5) <= OUT_R1(5) and OUT_R1(4);
	IN_R2(4 downto 0) <= OUT_R1(4 downto 0);

	
	R2 : entity work.Registrador
	port map (
	 IN_R2, enable, clock, reset, OUT_R2
	);
	
	IN_R3(NUM_BITS-1 downto 1) <= OUT_R2(NUM_BITS-1 downto 1);
	IN_R3(0) <= OUT_R2(1) or OUT_R2(0);
	
	R3 : entity work.Registrador
	port map (
	 IN_R3, enable, clock, reset, out_r
	);
end architecture;