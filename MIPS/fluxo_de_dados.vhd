library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxo_de_dados is
	port
	(
      -- Input ports
		OP : out  std_logic_vector(5 downto 0);
		outTest1: out std_logic_vector(31 downto 0);
		outTest2: out std_logic_vector(31 downto 0);
		outPC: out std_logic_vector(31 downto 0);
		outROM: out std_logic_vector(31 downto 0);
		outRAM: out std_logic_vector(31 downto 0);
		outULA: out std_logic_vector(31 downto 0);
		-- Output ports
		ULA_OP : in std_logic_vector(1 downto 0);
		HAB_ESC_MEM: in std_logic;
		HAB_LE_MEM: in std_logic;
		BEQ: in std_logic;
		sel_MUX_ULA_MEM: in std_logic;
		sel_MUX_RT_IMM: in std_logic;
		sel_MUX_RT_RD: in std_logic;
		sel_MUX_JUMP: in std_logic;
		HAB_ESC_REG: in std_logic;
		clk: in std_logic
		);
end entity;

architecture arch_UC of fluxo_de_dados is

signal PROX_PC: std_logic_vector(31 downto 0);
signal saida_PC: std_logic_vector(31 downto 0);
signal saida_ROM: std_logic_vector(31 downto 0);
signal saida_SOMA_PC: std_logic_vector(31 downto 0);
signal saida_CARRYOUT_SOMA_PC: std_logic_vector(31 downto 0);
signal entrada0_MUX_JUMP: std_logic_vector(31 downto 0);
signal saida_MUX_RT_RD: std_logic_vector(4 downto 0);
signal saida_EXTENSOR: std_logic_vector(31 downto 0);
signal saida_REG2: std_logic_vector(31 downto 0);
signal saida_MUX_RT_IMM: std_logic_vector(31 downto 0);
signal ula_control: std_logic_vector(3 downto 0);
signal saida_REG1: std_logic_vector(31 downto 0);
signal saida_ULA: std_logic_vector(31 downto 0);
signal saida_Z_ULA: std_logic;
signal saida_COUT_ULA: std_logic_vector(31 downto 0);
signal saida_OVERFLOW_ULA: std_logic;
signal saida_RAM: std_logic_vector(31 downto 0);
signal saida_MUX_ULA_MEM: std_logic_vector(31 downto 0);
signal saida_SOMA_PC_IMM: std_logic_vector(31 downto 0);
signal saida_CARRYOUT_SOMA_PC_IMM: std_logic_vector(31 downto 0);

begin

	PC: entity work.registrador
		port map(DIN => PROX_PC, DOUT=> saida_PC, ENABLE=> '1', CLK => clk, RST => '0');
		
	MEM_INST: entity work.rom
		port map(clk => clk, addr => to_integer(unsigned(saida_PC)), q => saida_ROM);
		
	SOMA_PC: entity work.soma
		port map(A => "00000000000000000000000000000001", B => saida_PC, CarryIn => "00000000000000000000000000000000",
		SOMAOUT => saida_SOMA_PC, CarryOut => saida_CARRYOUT_SOMA_PC);
	
	MUX_JUMP: entity work.mux2
		port map(A => entrada0_MUX_JUMP, B => saida_SOMA_PC(31 downto 28) & saida_ROM(25 downto 0) & "00", 
		sel => sel_MUX_JUMP, q => PROX_PC);
  
	MUX_RT_RD: entity work.mux2
		generic map (larguraDados => 5)
		port map(A => saida_ROM(20 downto 16), B => saida_ROM(15 downto 11), sel => sel_MUX_RT_RD,
		q => saida_MUX_RT_RD);
	
	OP <= saida_ROM(31 downto 26);
	
	SIG_EXT: entity work.sig_ext
		port map(sig => saida_ROM(15 downto 0), q => saida_EXTENSOR);
			
	BANCO_REG: entity work.banco_reg
		port map(clk => clk, enderecoA => saida_ROM(25 downto 21), enderecoB => saida_ROM(20 downto 16),
		enderecoC => saida_MUX_RT_RD, dadoEscritaC => saida_MUX_ULA_MEM, escreveC => HAB_ESC_REG,
		saidaA => saida_REG1, saidaB => saida_REG2, saidaTeste1 => outTest1, saidaTeste2 => outTest2);
	
	MUX_RT_IMM: entity work.mux2
		port map(A => saida_REG2, B => saida_EXTENSOR, sel => sel_MUX_RT_IMM,
		q => saida_MUX_RT_IMM);
		
	UC_ULA: entity work.UC
		port map(OP => ULA_OP,F => saida_ROM(5 downto 0), q => ula_control);
		
	ULA: entity work.ULA
		port map(A => saida_REG1, B => saida_MUX_RT_IMM,
		selector => ula_control, CIn => "00000000000000000000000000000000", Z => saida_Z_ULA,
		r => saida_ULA, COut =>saida_COUT_ULA, overflow => saida_OVERFLOW_ULA);
		
	MUX_ULA_MEM: entity work.mux2
		port map(A => saida_ULA, B => saida_RAM, sel => sel_MUX_ULA_MEM, q => saida_MUX_ULA_MEM);
		
	RAM: entity work.ram
		port map(clock => clk, data => saida_REG2, write_address => to_integer(unsigned(saida_ULA)),
		read_address => to_integer(unsigned(saida_ULA)), we => HAB_ESC_MEM, re => HAB_LE_MEM, q => saida_RAM);
		
	SOMA_PC_IMM: entity work.soma
		port map(A => saida_SOMA_PC, B => std_logic_vector(shift_left(unsigned(saida_EXTENSOR), 2)),
		CarryIn => "00000000000000000000000000000000", SOMAOUT => saida_SOMA_PC_IMM, CarryOut => saida_CARRYOUT_SOMA_PC_IMM);
		
	MUX_BEQ: entity work.mux2
		port map(A => saida_SOMA_PC, B => saida_SOMA_PC_IMM, sel => (BEQ and saida_Z_ULA),
		q => entrada0_MUX_JUMP);
  outRAM <= saida_RAM;
  outPC <= saida_PC;
  outROM <= saida_ROM;
  outULA <= saida_ULA;
  
  
end architecture;

