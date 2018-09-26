library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxoDados is
    port (
        selectFuncaoULA: in std_logic;
        selectTempo:  in std_logic_vector (2 downto 0);
        selectConstante:  in std_logic_vector (2 downto 0);
        carregaSaida: in std_logic_vector(5 downto 0);
		  rst: in std_logic_vector(5 downto 0);
		  clk:  in std_logic;
		  
		  -- Saidas para os displays de 7 segmentos
		  un_segundo_atual, dez_segundo_atual: out std_logic_vector(3 downto 0);
		  un_minuto_atual, dez_minuto_atual: out std_logic_vector(3 downto 0);
		  un_hora_atual, dez_hora_atual: out std_logic_vector(3 downto 0);
		  Z: out std_logic
   );
end entity;

architecture simples of fluxoDados is
	signal un_segundo_prox, dez_segundo_prox: std_logic_vector(3 downto 0);
	signal un_minuto_prox, dez_minuto_prox: std_logic_vector(3 downto 0);
	signal un_hora_prox, dez_hora_prox: std_logic_vector(3 downto 0);
	
	signal auxun_segundo_atual, auxdez_segundo_atual: std_logic_vector(3 downto 0);
	signal auxun_minuto_atual, auxdez_minuto_atual: std_logic_vector(3 downto 0);
	signal auxun_hora_atual, auxdez_hora_atual: std_logic_vector(3 downto 0);
	
	signal saidaMuxTempo, saidaMuxConstante, saidaULA: std_logic_vector(3 downto 0);
begin
	muxTempo: entity work.mux6to1
		port map (unidade_s => auxun_segundo_atual, dezena_s => auxdez_segundo_atual,
		unidade_m => auxun_minuto_atual, dezena_m => auxdez_minuto_atual,
		unidade_h => auxun_hora_atual, dezena_h => auxdez_hora_atual,
		sel => selectTempo,
		output => saidaMuxTempo);

	muxConstante: entity work.mux5to1
		port map (sel_2 => selectConstante, output => saidaMuxConstante);
		
	ULA: entity work.ULA
		port map (A => saidaMuxTempo, B => saidaMuxConstante,
		Sel => selectFuncaoULA, result => saidaULA, z_ula => Z
	);

	un_segundo_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => un_segundo_prox, DOUT => un_segundo_atual,
							ENABLE => carregaSaida(0), CLK => clk, RST => rst(0));
	dez_segundo_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => dez_segundo_prox, DOUT => dez_segundo_atual,
							ENABLE => carregaSaida(1), CLK => clk, RST => rst(1));
	un_minuto_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => un_minuto_prox, DOUT => un_minuto_atual,
							ENABLE => carregaSaida(2), CLK => clk, RST => rst(2));
	dez_minuto_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => dez_minuto_prox, DOUT => dez_minuto_atual,
							ENABLE => carregaSaida(3), CLK => clk, RST => rst(3));
	un_hora_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => un_hora_prox, DOUT => un_hora_atual,
							ENABLE => carregaSaida(4), CLK => clk, RST => rst(4));
	dez_hora_reg: entity work.registradorGenerico 
						generic map (larguraDados => 4)
						port map (DIN => dez_hora_prox, DOUT => dez_hora_atual,
							ENABLE => carregaSaida(5), CLK => clk, RST => rst(5));
							
	auxun_segundo_atual <= un_segundo_atual;
	auxdez_segundo_atual <= dez_segundo_atual;
	auxun_minuto_atual <= un_minuto_atual;
	auxdez_minuto_atual <= dez_minuto_atual;
	auxun_hora_atual <= un_hora_atual;
	auxdez_hora_atual <= dez_hora_atual;
end architecture;