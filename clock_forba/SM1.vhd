LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity SM1 is
    port(
		  reset: in std_logic;
		  clock: in std_logic;
		  leituraA: in std_logic;
		  leituraB: in std_logic;
		  controle: in std_logic_vector(15 downto 0);
		  passo: in std_logic_vector(3 downto 0);
		  auxReset: in std_logic;
		  reiniciaFSM: in std_logic
        );
end entity;

architecture arch of SM1 is
    signal tick : std_logic;
begin
    
end architecture;