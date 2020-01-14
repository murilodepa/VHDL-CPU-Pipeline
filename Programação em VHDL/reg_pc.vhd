library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Entidade reg_pc,registrador PC de 32 Bits
entity reg_pc is

	      -- Declaração da saída do registrador PC com 32 Bitis
	port	(pc:		out std_logic_vector(0 to 31) := "00000000000000000000000000000000";
	
			-- Declaração da entrada Clock, verificando nível de subida ou descida
			clock:	in  std_logic; 
			
			-- Declaração da entrada do próximo registrador PC com 32 Bitis
			prox_pc:	in  std_logic_vector(0 to 31));
			
end reg_pc; -- Finalizando a entidade reg_pc

architecture count of reg_pc is -- Architecture count
begin 
	process (clock, prox_pc)  -- Inicializando processo com clock e próximo registrador pc
	begin
	
		if (clock'event and clock = '1') then -- Se ocorrer um evento de clock na subida
		
			pc <= prox_pc; -- Registrador PC, recebe a instrução armazenada no registrador PC 
			
		end if; -- Finalizando if
		
	end process; -- Finalizando processo
	
end; -- Finalizando