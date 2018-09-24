library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_forba is
	port (
		-- Entradas (placa)
		CLOCK_50 : in STD_LOGIC;
		KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW: in STD_LOGIC_VECTOR(17 DOWNTO 0);
		proximoClock: in STD_LOGIC;
		
		-- Entradas HORAS
		--UN_SEG, DEZ_SEG, UN_MIN, DEZ_MIN, UN_HORA, DEZ_HORA: in STD_LOGIC_VECTOR(3 downto 0);

		-- Saidas (placa)
		--    LEDR  : out STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
		--    LEDG  : out STD_LOGIC_VECTOR(8 DOWNTO 0) := (others => '0');
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
	);
end entity;


architecture comportamento of clock_forba is
	signal auxOverFlow : std_logic := '0';
	signal auxClock : std_logic := '0';
	signal auxReset : std_logic := '0';
	signal pisca : std_logic := '0';
	signal auxSelectFuncaoULA: std_logic;
	signal auxSelectTempo:  std_logic_vector (2 downto 0);
	signal auxSelectConstante: std_logic_vector (2 downto 0);
	signal auxCarregaSaida: std_logic_vector(5 downto 0);
	signal auxResetReg: std_logic_vector(5 downto 0);
	signal auxZ: std_logic;
	signal AUXUN_SEG, AUXDEZ_SEG, AUXUN_MIN, AUXDEZ_MIN, AUXUN_HORA, AUXDEZ_HORA: std_logic_vector(3 downto 0);
	
begin
	FD : entity work.fluxoDados
	port map (
	selectFuncaoULA => auxSelectFuncaoULA,
	selectTempo => auxSelectTempo,
	selectConstante => auxSelectConstante,
	carregaSaida => auxCarregaSaida,
	clk => auxClock, rst => auxReset, Z => auxZ,
	un_segundo_atual => AUXUN_SEG, dez_segundo_atual => AUXDEZ_SEG,
	un_minuto_atual => AUXUN_MIN, dez_minuto_atual => AUXDEZ_MIN,
	un_hora_atual => AUXUN_HORA, dez_hora_atual => AUXDEZ_HORA);
	
	CU : entity work.ControlUnit
    port map (
        reset => auxReset,
        clock => auxClock,
        Z => auxZ,
        proximo => proximoClock,
        enable => auxCarregaSaida,
        selectTempo => auxSelectTempo,
        selectConstante => auxSelectConstante,
        selectFuncaoULA => auxSelectFuncaoULA,
        resetReg => auxResetReg
    );

	-- Displays e Leds:
	freqPisca : entity work.divisorGenerico (divisaoGenerica)  generic map (divisor => 25) --(divisaoGenerica) := 2^divisor  
	port map (clk =>  auxClock, saida_clk => pisca);
	
	-- Unidade de Segundo
	display2 : entity work.conversorHex7seg
	Port map (saida7seg => HEX2, dadoHex => AUXUN_SEG, apaga => auxOverFlow);
	
	-- Dezena de Segundo
	display3 : entity work.conversorHex7seg
	Port map (saida7seg => HEX3, dadoHex => AUXDEZ_SEG, apaga => auxOverFlow);
	
	-- Unidade de Minuto
	display4 : entity work.conversorHex7seg
	Port map (saida7seg => HEX4, dadoHex => AUXUN_MIN, apaga => auxOverFlow);

	-- Dezena de Minuto
	display5 : entity work.conversorHex7seg
	Port map (saida7seg => HEX5, dadoHex => AUXDEZ_MIN, apaga => auxOverFlow);

	-- Unidade de Hora
	display6 : entity work.conversorHex7seg
	Port map (saida7seg => HEX6, dadoHex => AUXUN_HORA, apaga => auxOverFlow);

	-- Dezena de Hora
	display7 : entity work.conversorHex7seg
	Port map (saida7seg => HEX7, dadoHex => AUXDEZ_HORA, apaga => auxOverFlow);
	
	
	--Instanciar a ControlUnit
	--Instanciar o fluxoDados
	--Com eles, podemos mandar os valores pros registradores e atualizar
	--os displays de 7 segmentos

	-- Instacia a maquina de estados:
--	sequenciador : entity work.ControlUnit
--	port map( reset => auxReset, clock => auxClock,
--	leituraA => auxLeituraA, leituraB => auxLeituraB,
--	controle => controle, passo => auxPasso,
--	auxReset => auxReset, reiniciaFSM => auxReiniciaFSM);

	-- Chaves da Placa
--	loNibble <= SW(3 downto 0);
--	hiNibble <= SW(7 downto 4);

	-- Botoes da Placa
--	auxLeituraA <= not(KEY(3)); --  Pressionando a tecla 3
--	auxLeituraB <= not(KEY(2)); --  Pressionando a tecla 2
--	auxReiniciaFSM <= not(KEY(1)); --  Pressionando a tecla 1
--	auxReset <= not(KEY(0)); --  Pressionando a tecla 0
	--  Pressionando a tecla 3, carrega o valor definido nas chaves para a entrada A da ULA;
	--  Pressionando a tecla 2, carrega o valor definido nas chaves para a entrada B da ULA;
	--  Pressionando a tecla 1, reinicia a maquina de estados para o estado 1;
	--  Pressionando a tecla 0, faz um hard reset em todos os registradores.

	-- conexoes do controle enviado pela FSM
--	ativaPisca  <= controle(0);
--	auxCarregaA  <= controle(2);
--	auxCarregaB  <= controle(4);
	-- Extras, para usar com o fluxo de dados mais complexo.
	--      <= controle(5);
	--      <= controle(6);
	--      <= controle(7);
	--      <= controle(8);
	--      <= controle(9);
	--      <= controle(10);
	--      <= controle(11);
	--      <= controle(12);
	--      <= controle(13);
	--      <= controle(14);
--	auxCarregaSaida <= controle(15);

	--Estado 1: controle(0)  = 1 (valor decimal = 1) = ativaPisca;
	--Estado 2: controle(2)  = 1 (valor decimal = 4) = auxCarregaA;
	--Estado 3: controle(4)  = 1 (valor decimal = 16) = auxCarregaB;
	--Estado 4: controle(15) = 1 (valor decimal = 32768) = auxCarregaSaida;

	auxClock <= CLOCK_50;
--	UN_SEG <= AUXUN_SEG;
--	DEZ_SEG <= AUXDEZ_SEG;
--	
--	UN_MIN <= AUXUN_MIN;
--	UN_MIN <= AUXDEZ_MIN;
--	UN_HORA <= AUXUN_HORA;
--	DEZ_HORA <= AUXDEZ_HORA;

end architecture;