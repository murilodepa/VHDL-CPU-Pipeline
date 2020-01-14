-- Declaração de todas as bibliotecas utilizadas
LIBRARY ieee;
USE ieee.numeric_std.all;
USE IEEE.STD_LOGIC_1164.ALL;

-- Entity extend
ENTITY extend is
 
	-- Declaração das portas utilizadas no extend
 	PORT ( 
		   in1 : IN STD_LOGIC_VECTOR(0 TO 15) ;-- Operandos
		   out1 : OUT STD_LOGIC_VECTOR(0 TO 31) -- Saída 
		  );
 
 --Finalizando a entity extend
END extend;


-- Architecture tb
ARCHITECTURE tb of extend is

begin
	
	-- Utilizado para verificar o tamanho que seria 32 bits e cocatenar os vetores
   out1 <= std_logic_vector(resize(signed(in1), out1'length));
	
-- Finalizando o tb
end tb;