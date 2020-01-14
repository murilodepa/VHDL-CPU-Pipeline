-- Declaração de todas as bibliotecas utilizadas
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

-- Entity ALU
ENTITY ALU IS

	-- Declaração das portas utilizadas na ALU
	PORT ( 
			aluop : IN STD_LOGIC_VECTOR(0 TO 1) ;  -- Aluop
			A, B : IN STD_LOGIC_VECTOR(0 TO 31) ;  -- Operandos
			Saida : OUT STD_LOGIC_VECTOR(0 TO 31); -- Saída
			zero: out std_logic							-- Zero
		  );                     
 
--Finalizando a entity Ula		
END ALU ; 

-- Architecture Behavior
ARCHITECTURE Behavior OF ALU IS
	
	-- Declaração do "aux" um sinal do tipo vetor de 31 posições
	signal aux: std_logic_vector(0 to 31);

	BEGIN
	
		-- Inicializando o processo com Aluop, A e B
		PROCESS (aluop, A, B)
		
		BEGIN
		
			-- Caso aluop for igual a...
			CASE aluop IS 
			
				-- Enquanto for igual a 00, Realiza a soma entre operandos
				WHEN "00"=>
					aux <= (A + B);
			
				-- Enquanto for igual a 01, Realiza a subtração entre operandos
				WHEN "01"=>
					aux <= (A - B);
				
				-- Enquanto for igual a 10, Realiza and entre operandos
				WHEN "10"=>
					aux <= (A AND B); 
				
				-- Enquanto for igual a 11, Realiza or entre operandos
				WHEN "11"=>
					aux <= (A OR B); --OR
				
				-- Enquanto for outro alem desses, saida recebe 0
				WHEN others => Saida <= "00000000000000000000000000000000";	
			
			-- Fianlizando o Case
			END CASE ;
		
			-- Se Aux for igual a 0, zero recebe 1
			IF(aux = "00000000000000000000000000000000") THEN
				zero <= '1';
			
			-- Senão zero recebe 0
			ELSE 
				zero <= '0';
			
			-- Finalizando o If
			END IF;
			
			-- Saída recebe aux
			Saida <= aux;
		
		--Finalizando o processo
		END PROCESS;

-- Finalizando behavior
END Behavior;