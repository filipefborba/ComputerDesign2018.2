library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
	port
	(
      --clk: in std_logic;
		 CLOCK_50 : in STD_LOGIC;
		 KEY: in std_logic_vector(3 downto 0);
		 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0);
		 LEDR: out std_logic_vector(3 downto 0);
		 op: out std_logic_vector(5 downto 0);
		 ula_op: out std_logic_vector(1 downto 0);
		 hab_esc_mem: out std_logic;
		 hab_le_mem: out std_logic;
		 beq: out std_logic;
		 sel_mux_ula_mem: out std_logic;
		 sel_mux_rt_imm: out std_logic;
		 sel_MUX_rt_rd: out std_logic;
		 sel_mux_jump: out std_logic;
		 hab_esc_reg: out std_logic;
		 saidaROM: out std_logic_vector(31 downto 0);
		 saidaULA: out std_logic_vector(31 downto 0);
		 saidaRAM: out std_logic_vector(31 downto 0);
		 --saidaPC: out std_logic_vector(31 downto 0);
		 saidaTeste1: out std_logic_vector(31 downto 0);
		 saidaTeste2: out std_logic_vector(31 downto 0);
		 saidaTeste3: out std_logic_vector(31 downto 0);
		 saidaTeste4: out std_logic_vector(31 downto 0);
		 saidaTeste5: out std_logic_vector(31 downto 0);
		 saidaTeste6: out std_logic_vector(31 downto 0);
		 saidaTeste7: out std_logic_vector(31 downto 0)
	);
end entity;

architecture arch_UC of top_level is

signal aux_op: std_logic_vector(5 downto 0);
signal aux_ula_op: std_logic_vector(1 downto 0);
signal aux_hab_esc_mem: std_logic;
signal aux_hab_le_mem: std_logic;
signal aux_beq: std_logic;
signal aux_sel_mux_ula_mem:  std_logic;
signal aux_sel_mux_rt_imm: std_logic;
signal aux_sel_MUX_rt_rd: std_logic;
signal aux_sel_mux_jump: std_logic;
signal aux_hab_esc_reg: std_logic;
signal CLK, but: std_logic;
signal saidaPC: std_logic_vector(31 downto 0);

signal saidaReg1Banco, saidaReg2Banco, saidaReg3Banco, saidaReg4Banco: std_logic_vector(3 downto 0);
signal led0, led1, led2, led3: std_logic;

signal aux_saidaTeste1, aux_saidaTeste2, aux_saidaTeste3, aux_saidaTeste4: std_logic_vector(31 downto 0);

begin

	UCFD: entity work.UCFD
		port map(
		OP => aux_op,
		ULA_OP => aux_ula_op,
		HAB_ESC_MEM => aux_hab_esc_mem,
		HAB_LE_MEM => aux_hab_le_mem,
		BEQ => aux_beq,
		MUX4 => aux_sel_mux_ula_mem,
		MUX3 => aux_sel_mux_rt_imm,
		MUX2 => aux_sel_mux_rt_rd,
		MUX1 => aux_sel_mux_jump,
		HAB_ESC_REG => aux_hab_esc_reg
		);
	
	FD: entity work.fluxo_de_dados
		port map(
		OP => aux_op,
		ULA_OP => aux_ula_op,
		HAB_ESC_MEM => aux_hab_esc_mem,
		HAB_LE_MEM => aux_hab_le_mem,
		BEQ => aux_beq,
		sel_MUX_ULA_MEM => aux_sel_mux_ula_mem,
		sel_MUX_RT_IMM => aux_sel_mux_rt_imm,
		sel_MUX_RT_RD => aux_sel_MUX_rt_rd,
		sel_MUX_JUMP => aux_sel_mux_jump,
		HAB_ESC_REG => aux_hab_esc_reg,
		clk => CLK,
		outTest1 => aux_saidaTeste1,
		outTest2 => aux_saidaTeste2,
		outTest3 => aux_saidaTeste3,
		outTest4 => aux_saidaTeste4,
		outTest5 => saidaTeste5,
		outTest6 => saidaTeste6,
		outTest7 => saidaTeste7,
		outLedR0 => led0,
		outLedR1 => led1,
		outLedR2 => led2,
		outLedR3 => led3,
		outPC => saidaPC,
		outROM => saidaROM,
		outRAM => saidaRAM,
		outULA => saidaULA
		);
		
		display0 : entity work.conversorHex7seg
		--Port map (saida7seg => HEX0, dadoHex => saidaReg1Banco);
		Port map (saida7seg => HEX0, dadoHex => aux_saidaTeste1(3 downto 0));
		
		display1 : entity work.conversorHex7seg
		--Port map (saida7seg => HEX1, dadoHex => saidaReg2Banco);
		Port map (saida7seg => HEX1, dadoHex => aux_saidaTeste2(3 downto 0));
		
		display2 : entity work.conversorHex7seg
--		Port map (saida7seg => HEX2, dadoHex => saidaReg3Banco);
		Port map (saida7seg => HEX2, dadoHex => aux_saidaTeste3(3 downto 0));
		
		display3 : entity work.conversorHex7seg
--		Port map (saida7seg => HEX3, dadoHex => saidaReg4Banco);
		Port map (saida7seg => HEX3, dadoHex => aux_saidaTeste4(3 downto 0));
		
		display4 : entity work.conversorHex7seg
		Port map (saida7seg => HEX4, dadoHex => saidaPC(5 downto 2));
		
		op <= aux_op;
		ula_op <= aux_ula_op;
		hab_esc_mem <= aux_hab_esc_mem;
		hab_le_mem <= aux_hab_le_mem;
		beq <= aux_beq;
		sel_mux_ula_mem <= aux_sel_mux_ula_mem;
		sel_mux_rt_imm <= aux_sel_mux_rt_imm;
		sel_MUX_rt_rd <= aux_sel_MUX_rt_rd;
		sel_mux_jump <= aux_sel_mux_jump;
		hab_esc_reg <= aux_hab_esc_reg;
		
		--detectorSub0: entity work.edgeDetector(bordaSubida) 
		--port map (clk => CLOCK_50, entrada => but, saida => CLK);

		divisor1: entity work.divisorGenerico
		port map (clk => CLOCK_50, saida_clk => CLK);
		but <= (not KEY(0));
		
		LEDR(0) <= led0;
		LEDR(1) <= led1;
		LEDR(2) <= led2;
		LEDR(3) <= led3;
		
		saidaTeste1 <= aux_saidaTeste1;
		saidaTeste2 <= aux_saidaTeste2;
		saidaTeste3 <= aux_saidaTeste3;
		saidaTeste4 <= aux_saidaTeste4;
	
		
		
end architecture;
