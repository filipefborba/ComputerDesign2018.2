library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxoDados is
    port (
        selectFuncaoULA: in std_logic_vector(1 downto 0);
        selectTempo:  in std_logic_vector (2 downto 0);
        selectConstante:  in std_logic_vector (2 downto 0);
        carregaSaida: in std_logic;
		  clk, rst:  in std_logic;
		  
		  -- Saidas para os displays de 7 segmentos
		  un_segundo_atual, dez_segundo_atual: out std_logic_vector(3 downto 0);
		  un_minuto_atual, dez_minuto_atual: out std_logic_vector(3 downto 0);
		  un_hora_atual, dez_hora_atual: out std_logic_vector(3 downto 0);
		  Z: out std_logic;
   );
end entity;

architecture simples of fluxoDados is
	signal un_segundo_prox, dez_segundo_prox: std_logic_vector(3 downto 0);
	signal un_minuto_prox, dez_minuto_prox: std_logic_vector(3 downto 0);
	signal un_hora_prox, dez_hora_prox: std_logic_vector(3 downto 0);
	
	signal saidaMuxTempo, saidaMuxConstante: std_logic_vector(3 downto 0);
	signal 
begin
	muxTempo: entity work.
	
	muxConstante: entity work.
	
	ULA: entity work.ULA
		port map (A => saidaMuxTempo, B => saidaMuxConstante, overflow => Z --verificar o Z, nao e overflow
		Sel => selectFuncaoULA,
		C => --podemos mandar pra um mux pra facilitar
	);

	un_segundo_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => un_segundo_prox, DOUT => un_segundo_atual,
							ENABLE => carregaSaida, CLK => clk, RST => rst);
	dez_segundo_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => dez_segundo_prox, DOUT => dez_segundo_atual,
							ENABLE => carregaSaida, CLK => clk, RST => rst);
	un_minuto_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => un_minuto_prox, DOUT => un_minuto_atual,
							ENABLE => carregaSaida, CLK => clk, RST => rst);
	dez_minuto_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => dez_minuto_prox, DOUT => dez_minuto_atual,
							ENABLE => carregaSaida, CLK => clk, RST => rst);
	un_hora_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => un_hora_prox, DOUT => un_hora_atual,
							ENABLE => carregaSaida, CLK => clk, RST => rst);
	dez_hora_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => dez_hora_prox, DOUT => dez_hora_atual,
							ENABLE => carregaSaida, CLK => clk, RST => rst);
end architecture;