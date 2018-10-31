--Banco de Registradores MIPS:

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity banco_reg is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC        : in std_logic := '0';
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0);
		  saidaTeste1     : out std_logic_vector((larguraDados -1) downto 0);
		  saidaTeste2     : out std_logic_vector((larguraDados -1) downto 0);
		  saidaTeste3     : out std_logic_vector((larguraDados -1) downto 0);
		  saidaTeste4     : out std_logic_vector((larguraDados -1) downto 0);
		  saidaTeste5     : out std_logic_vector((larguraDados -1) downto 0);
		  saidaTeste6     : out std_logic_vector((larguraDados -1) downto 0);
		  saidaTeste7     : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of banco_reg is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

-- So para teste:  ====================================================================

--  function inicializa_regs
--      return memoria_t is
--      variable tmp : memoria_t := (others => (others => '0'));
--  begin
--      tmp(0) := (others => '0');    -- $zero
--      return tmp;
--  end inicializa_regs;
    -- ===================================================================================

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;
--  shared variable registrador : memoria_t := inicializa_regs;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoA) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= registrador(to_integer(unsigned(enderecoA)));
         end if;
         if (unsigned(enderecoB) = 0) then
            saidaB <= (others => '0');
         else
            saidaB <= registrador(to_integer(unsigned(enderecoB)));
        end if;
     end process;
	  
	  saidaTeste1 <= registrador(1);
	  saidaTeste2 <= registrador(2);
	  saidaTeste3 <= registrador(3);
	  saidaTeste4 <= registrador(4);
	  saidaTeste5 <= registrador(5);
	  saidaTeste6 <= registrador(6);
	  saidaTeste7 <= registrador(7);
end architecture;