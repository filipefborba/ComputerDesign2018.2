library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is
	port
	(
      clk: in std_logic;
		endereco: in std_logic_vector(31 downto 0);
		memoria: out std_logic;
		led0: out std_logic;
		led1: out std_logic;
		led2: out std_logic;
		led3: out std_logic;
		sw0: out std_logic;
		sw1: out std_logic;
		sw2: out std_logic;
		sw3: out std_logic
	);
end entity;

architecture arch of decodificador is

begin
	-- Switches da placa
	--algumacoisa <= SW(2);
	--algumacoisa <= SW(1);
	--algumacoisa <= SW(0);

	-- Botoes da Placa
	--algumacoisa <= not(KEY(0)); --  Pressionando a tecla 0
	process(all)
		begin
--			case endereco is
--				when "00000000000000000000000000000000" => led0 <= '1';
--				when "00000000000000000000000000000000" => q <= '1';
--				when "00000000000000000000000000000000" => q <= C;
--				when "00000000000000000000000000000000" => q <= D;
--				when "00000000000000000000000000000000" => q <= E;
--				when others => report "unreachable" severity failure;
--			end case;
			IF (to_integer(unsigned(endereco)) < 512) THEN
				memoria <= '1';
			ELSE
				memoria <= '0';
			END IF;
			
			IF (to_integer(unsigned(endereco)) = 513) THEN
				led0 <= '1';
			ELSE
				led0 <= '0';
			END IF;
			
			IF (to_integer(unsigned(endereco)) = 514) THEN
				led1 <= '1';
			ELSE
				led1 <= '0';
			END IF;
			
			IF (to_integer(unsigned(endereco)) = 515) THEN
				led2 <= '1';
			ELSE
				led2 <= '0';
			END IF;
				
			IF (to_integer(unsigned(endereco)) = 516) THEN
				led3 <= '1';
			ELSE
				led3 <= '0';
			END IF;
			
			IF (to_integer(unsigned(endereco)) = 517) THEN
				sw0 <= '1';
			ELSE
				sw0 <= '0';
			END IF;
			
			IF (to_integer(unsigned(endereco)) = 518) THEN
				sw1 <= '1';
			ELSE
				sw1 <= '0';
			END IF;
			
			IF (to_integer(unsigned(endereco)) = 519) THEN
				sw2 <= '1';
			ELSE
				sw2 <= '0';
			END IF;
			
			IF (to_integer(unsigned(endereco)) = 520) THEN
				sw3 <= '1';
			ELSE
				sw3 <= '0';
			END IF;
	end process;
end architecture;