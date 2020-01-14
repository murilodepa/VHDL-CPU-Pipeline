-- Declaração de todas as bibliotecas utilizadas
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.STD_LOGIC_unsigned.all;
USE ieee.numeric_std.all;

-- Declaração de ENTITY Control, mesmo nome do arquivo
ENTITY CONTROL is
	PORT( -- Declaração de todas as "portas" utilizadas
		PCSRC: OUT STD_LOGIC := '0'; 
		ALUSrc: OUT STD_LOGIC := '0';
		RegDst: OUT STD_LOGIC := '0';
		JM: OUT STD_LOGIC := '0';
		
		ALUOp: OUT STD_LOGIC_VECTOR(0 TO 1):= "00";
		WB: OUT STD_LOGIC_VECTOR(0 TO 1) := "00";
		MEM: OUT STD_LOGIC_VECTOR(0 TO 2):= "000";
		
		OPCODE: in STD_LOGIC_vector(0 to 5)
	);
END CONTROL;

ARCHITECTURE CONTROL_UNIT OF CONTROL IS
BEGIN

	process(OPCODE)
		BEGIN
	
		CASE OPCODE is -- Caso o OPCODE for igual a...
			
			-- Enquanto for igual a 000000, realiza instrução NOP
			WHEN "000000" => 
				PCSRC       <= '0';
				ALUSrc      <= 'X';
				ALUOp       <= "XX";
				RegDst      <= 'X';
				MEM         <= "000";
				WB          <= "00";
				
			-- Enquanto for igual a 000001, realiza instrução ADD
			WHEN "000001" => 
				PCSRC       <= '0';
				ALUSrc      <= '0';
				ALUOp       <= "00";
				RegDst      <= '1';
				MEM         <= "000";
				WB          <= "01";
			
			-- Enquanto for igual a 000010, realiza instrução SUB
			WHEN "000010" => 
				PCSRC       <= '0';
				ALUSrc      <= '0';
				ALUOp       <= "01";
				RegDst      <= '1';
				MEM			<= "000";
				WB			<= "01";
			
			-- Enquanto for igual a 000011, realiza instrução ADDi
			WHEN "000011" => 
				PCSRC       <= '0';
				ALUSrc      <= '1';
				ALUOp       <= "00";
				RegDst      <= '0';
				MEM			<= "000";
				WB			<= "01";
			
			-- Enquanto for igual a 000100, realiza instrução SUBi
			WHEN "000100" => 
				PCSRC       <= '0';
				ALUSrc      <= '1';
				ALUOp       <= "01";
				RegDst      <= '0';
				MEM			<= "000";
				WB			<= "01";
			
			-- Enquanto for igual a 000101, realiza instrução LW
			WHEN "000101" => -- LW
				PCSRC       <= '0';
				ALUSrc      <= '1';
				ALUOp       <= "00";
				RegDst      <= '0';
				MEM			<= "010";
				WB			<= "11";
			
			-- Enquanto for igual a 000110, realiza instrução SW
			WHEN "000110" => -- SW
				PCSRC       <= '0';
				ALUSrc      <= '1';
				ALUOp       <= "00";
				RegDst      <= 'X';
				MEM			<= "100";
				WB			<= "00";
			
			-- Enquanto for igual a 000111, realiza instrução AND
			WHEN "000111" => -- AND
				PCSRC       <= '0';
				ALUSrc      <= '0';
				ALUOp       <= "10";
				RegDst      <= '1';
				MEM			<= "000";
				WB			<= "01";
			
			-- Enquanto for igual a 001000, realiza instrução ANDi
			WHEN "001000" => -- ANDi
				PCSRC       <= '0';
				ALUSrc      <= '1';
				ALUOp       <= "10";
				RegDst      <= '0';
				MEM			<= "000";
				WB			<= "01";
			
			-- Enquanto for igual a 001001, realiza instrução OR
			WHEN "001001" => -- OR
				PCSRC       <= '0';
				ALUSrc      <= '0';
				ALUOp       <= "11";
				RegDst      <= '1';
				MEM			<= "000";
				WB			<= "01";
			
			-- Enquanto for igual a 001010, realiza instrução ORi
			WHEN "001010" => -- ORi
				PCSRC       <= '0';
				ALUSrc      <= '1';
				ALUOp       <= "11";
				RegDst      <= '0';
				MEM			<= "000";
				WB			<= "01";
			
			-- Enquanto for igual a 001011, realiza instrução BEQ
			WHEN "001011" => -- BEQ
				PCSRC       <= '0';
				ALUSrc      <= '0';
				ALUOp       <= "01";
				RegDst      <= 'X';
				MEM			<= "001";
				WB			<= "00";
			
			-- Enquanto for igual a 001100, realiza instrução J
			WHEN "001100" => -- J
				PCSRC       <= '1';
				JM          <= '0';
				ALUSrc      <= 'X';
				ALUOp       <= "XX";
				RegDst      <= 'X';
				MEM			<= "000";
				WB			<= "00";
			
			-- Enquanto for igual a 001101, realiza instrução JR
			WHEN "001101" => -- JR
				PCSRC       <= '1';
				JM          <= '1';
				ALUSrc      <= 'X';
				ALUOp       <= "XX";
				RegDst      <= 'X';
				MEM			<= "000";
				WB		    <= "00";
			
			-- Enquanto não for nenhum desses casos, não realiza nenhuma instrução
			WHEN others =>
				PCSRC       <= '0';
				ALUSrc      <= 'X';
				ALUOp       <= "XX";
				RegDst      <= 'X';
				MEM			<= "000";
				WB		    <= "00";
			
			-- Finalizando o Case
			END CASE;
		
		-- Finalizando o Processo		
		END PROCESS;

-- Finalizando a ARCHITECTURE 
END;