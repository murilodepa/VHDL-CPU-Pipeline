-- Declaração das bibliotecas utilizadas
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
USE ieee.numeric_std.all;

-- Entity ADDER_32_BITS
ENTITY somador is

	-- Declaração de todas as portas utilizadas
	PORT	(
			  A:	IN STD_LOGIC_VECTOR(0 TO 31);
			  B:	IN STD_LOGIC_VECTOR(0 TO 31);
			  X:	out STD_LOGIC_VECTOR(0 TO 31)
			);

-- Finalizando Entity		
END somador;

-- Architecture ADDER_32_BITS
ARCHITECTURE ADDER OF somador IS
BEGIN
	
	-- Saida recebe a soma das duas entradas
	X <= A+B;

-- Finalizando Architecture
END;
