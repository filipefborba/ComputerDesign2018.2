library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
	port
	(
      clk: in std_logic;
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
		 saidaPC: out std_logic_vector(31 downto 0);
		 saidaTeste1: out std_logic_vector(31 downto 0);
		 saidaTeste2: out std_logic_vector(31 downto 0)
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
		clk => clk,
		outTest2 => saidaTeste2,
		outTest1 => saidaTeste1,
		outPC => saidaPC,
		outROM => saidaROM,
		outRAM => saidaRAM,
		outULA => saidaULA
		);
		
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
		
end architecture;






