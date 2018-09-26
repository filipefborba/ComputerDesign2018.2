library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_forba is
	port (
		-- Entradas (placa)
		CLOCK_50 : in STD_LOGIC;
		KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW: in STD_LOGIC_VECTOR(17 DOWNTO 0);
		
		-- Entradas HORAS
		--UN_SEG, DEZ_SEG, UN_MIN, DEZ_MIN, UN_HORA, DEZ_HORA: in STD_LOGIC_VECTOR(3 downto 0);

		-- Saidas (placa)
		--    LEDR  : out STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
		--    LEDG  : out STD_LOGIC_VECTOR(8 DOWNTO 0) := (others => '0');
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
	);
end entity;


architecture comportamento of clock_forba is	
	signal auxClock, auxclk_1seg : std_logic := '0';
	signal auxReset : std_logic := '0';
	signal auxSelectFuncaoULA: std_logic;
	signal auxSelectTempo:  std_logic_vector (2 downto 0);
	signal auxSelectConstante: std_logic_vector (2 downto 0);
	signal auxCarregaSaida: std_logic_vector(5 downto 0);
	signal auxResetReg: std_logic_vector(5 downto 0);
	signal auxZ, auxZteste: std_logic := '0';
	signal resetEstado : std_logic := '0';
	signal proximoEstado : std_logic := '0';
	signal auxvai_nada : std_logic := '1';
	signal AUXUN_SEG, AUXDEZ_SEG, AUXUN_MIN, AUXDEZ_MIN, AUXUN_HORA, AUXDEZ_HORA: std_logic_vector(3 downto 0);
	signal BotaoTeste: std_logic;
	signal auxZeraProximo: std_logic;
		
begin
	FD : entity work.fluxoDados
	port map (
		selectFuncaoULA => auxSelectFuncaoULA,
		selectTempo => auxSelectTempo,
		selectConstante => auxSelectConstante,
		carregaSaida => auxCarregaSaida,
		clk => CLOCK_50, rst => auxResetReg, Z => auxZ,
		US_atual => AUXUN_SEG, DS_atual => AUXDEZ_SEG,
		UM_atual => AUXUN_MIN, DM_atual => AUXDEZ_MIN,
		UH_atual => AUXUN_HORA, DH_atual => AUXDEZ_HORA);
	
	CU : entity work.SM1
	port map (
		reset => resetEstado,
		clock => CLOCK_50,
		Z => auxZ,
		vai_nada => auxvai_nada,
		proximo => proximoEstado,
		enable => auxCarregaSaida,
		selectTempo => auxSelectTempo,
		selectConstante => auxSelectConstante,
		selectFuncaoULA => auxSelectFuncaoULA,
		resetReg => auxResetReg,
		zeraProximo => auxZeraProximo);

	display0 : entity work.conversorHex7seg
	Port map (saida7seg => HEX0, dadoHex => AUXUN_SEG, apaga => '1');
	
	display1 : entity work.conversorHex7seg
	Port map (saida7seg => HEX1, dadoHex => AUXUN_SEG, apaga => '1');
	
	-- Unidade de Segundo
	display2 : entity work.conversorHex7seg
	Port map (saida7seg => HEX2, dadoHex => AUXUN_SEG);
	
	-- Dezena de Segundo
	display3 : entity work.conversorHex7seg
	Port map (saida7seg => HEX3, dadoHex => AUXDEZ_SEG);
	
	-- Unidade de Minuto
	display4 : entity work.conversorHex7seg
	Port map (saida7seg => HEX4, dadoHex => AUXUN_MIN);

	-- Dezena de Minuto
	display5 : entity work.conversorHex7seg
	Port map (saida7seg => HEX5, dadoHex => AUXDEZ_MIN);

	-- Unidade de Hora
	display6 : entity work.conversorHex7seg
	Port map (saida7seg => HEX6, dadoHex => AUXUN_HORA);

	-- Dezena de Hora
	display7 : entity work.conversorHex7seg
	Port map (saida7seg => HEX7, dadoHex => AUXDEZ_HORA);
	
	--Clock de 1 seg
	clock_1seg: entity work.clock_50_to_1s
   port map (clk_50 => CLOCK_50, clk_1s => auxclk_1seg);
	
--	process(auxclk_1seg)
--	begin
--		if(rising_edge(auxclk_1seg)) then
--			proximoEstado <= '1';
--		end if;
--		if(auxZeraProximo = '1') then
--			proximoEstado <= '0';
--		end if;
--	end process;
--	
	detectorSub0: entity work.edgeDetector(bordaSubida) 
	port map (clk => CLOCK_50, entrada => auxclk_1seg, saida => proximoEstado);
--	
	

	-- Botoes da Placa
--	auxLeituraA <= not(KEY(3)); --  Pressionando a tecla 3
--	auxZteste <= not(KEY(2)); --  Pressionando a tecla 2
	resetEstado <= not(KEY(1)); --  Pressionando a tecla 1
--	auxResetReg <= "11111" & not(KEY(0)); --  Pressionando a tecla 0
	--  Pressionando a tecla 3, carrega o valor definido nas chaves para a entrada A da ULA;
	--  Pressionando a tecla 2, carrega o valor definido nas chaves para a entrada B da ULA;
	--  Pressionando a tecla 1, reinicia a maquina de estados para o estado 1;
	--  Pressionando a tecla 0, faz um hard reset em todos os registradores.
	auxClock <= CLOCK_50;

end architecture;