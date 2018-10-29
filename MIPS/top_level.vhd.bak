library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UCFD is
	port
	(
      -- Input ports
		OP : in  std_logic_vector(5 downto 0);
		-- Output ports
		ULA_OP : out std_logic_vector(1 downto 0);
		HAB_ESC_MEM: out std_logic;
		HAB_LE_MEM: out std_logic;
		BEQ: out std_logic;
		MUX4: out std_logic;
		MUX3: out std_logic;
		MUX2: out std_logic;
		MUX1: out std_logic;
		HAB_ESC_REG: out std_logic
		);
end entity;

architecture arch_UC of UCFD is
begin
  
  ULA_OP(0) <= OP(2);
  ULA_OP(1) <= (NOT OP(1)) AND (NOT OP(2));
  HAB_ESC_MEM <= OP(3);
  HAB_LE_MEM <= OP(0) AND OP(1) AND (NOT OP(3));
  BEQ <= OP(2);
  MUX4 <= OP(0) AND OP(1) AND (NOT OP(3));
  MUX3 <= OP(0) AND OP(1);
  MUX2 <= (NOT OP(1)) AND (NOT OP(2));
  MUX1 <= OP(0) XOR OP(1);
  HAB_ESC_REG <= ((NOT OP(1)) AND (NOT OP(2))) OR (OP(0) AND OP(1) AND (NOT OP(3)));
end architecture;






