-- Declaração de todas as bibliotecas utilizadas
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Entity instruction_memory
entity instruction_memory is

	-- Declaração das portas utilizadas no instruction_memory
	port ( 
			instruction: out std_logic_vector(0 to 31) := "00000000000000000000000000000000"; 
			address: in std_logic_vector(0 to 31)
		  );
		  
 
 --Finalizando a entity instruction_memory
end instruction_memory;

-- Architecture instruction
architecture instruction of instruction_memory is
	
	--Declaração do tipo e sinal
	type memory_type is array(0 to 200) of std_logic_vector(0 to 7);
	signal memory: memory_type;

	begin
	
	-- ADDi $1, $3, 10 
	memory(0)  <= "00001100";
	memory(1)  <= "01100001";
	memory(2) <= "00000000";
	memory(3) <= "00001010";
	
	
			-- ADDi $3, $2, 15 
	memory(4)  <= "00001100";
	memory(5)  <= "01000011";
	memory(6) <= "00000000";
	memory(7) <= "00001111";
	
	
				-- ADDi $2, $4, 5 
	memory(8)  <= "00001100";
	memory(9)  <= "10000010";
	memory(10) <= "00000000";
	memory(11) <= "00000101";
	
		
	-- NOP
	memory(12) <= "00000000";
	memory(13) <= "00000000";
	memory(14) <= "00000000";
	memory(15) <= "00000000";
	
		
	-- NOP
	memory(16) <= "00000000";
	memory(17) <= "00000000";
	memory(18) <= "00000000";
	memory(19) <= "00000000";
	
		
	-- subi $4,$1,8
	memory(20) <= "00010000";
	memory(21) <= "00100100";
	memory(22) <= "00000000";
	memory(23) <= "00001000";
	
		
	-- NOP
	memory(24) <= "00000000";
	memory(25) <= "00000000";
	memory(26) <= "00000000";
	memory(27) <= "00000000";
	
		
	-- NOP
	memory(28) <= "00000000";
	memory(29) <= "00000000";
	memory(30) <= "00000000";
	memory(31) <= "00000000";
	
	-- SUB $6, $1, $3
memory(32) <= "00001000";
memory(33) <= "00100011";
memory(34) <= "00110000";
memory(35) <= "00000000";


	-- add $5,$2, $3 
	memory(36) <= "00000100";
	memory(37) <= "01000011";
	memory(38) <= "00101000";
	memory(39) <= "00000000";
	
		
	-- sw $3,0($16)
	memory(40) <= "00011010";
	memory(41) <= "00000011";
	memory(42) <= "00000000";
	memory(43) <= "00000000";
	
		
	-- NOP
	memory(44) <= "00000000";
	memory(45) <= "00000000";
	memory(46) <= "00000000";
	memory(47) <= "00000000";
	
		
	-- NOP
	memory(48) <= "00000000";
	memory(49) <= "00000000";
	memory(50) <= "00000000";
	memory(51) <= "00000000";
	
		-- NOP
	memory(52) <= "00000000";
	memory(53) <= "00000000";
	memory(54) <= "00000000";
	memory(55) <= "00000000";
	
		-- lw $7,0($16)
	memory(56) <= "00010110";
	memory(57) <= "00000111";
	memory(58) <= "00000000";
	memory(59) <= "00000000";
	
		-- and $8,$3,$1
	memory(60) <= "00011100";
	memory(61) <= "01100001";
	memory(62) <= "01000000";
	memory(63) <= "00000000";
	
		-- or $9,$5,$1 
	memory(64) <= "00100100";
	memory(65) <= "10100001";
	memory(66) <= "01001000";
	memory(67) <= "00000000";
	
	-- beq $7,$3
	memory(68) <= "00101100";
	memory(69) <= "11100011";
	memory(70) <= "00000000";
	memory(71) <= "00000100";
	
			-- NOP
	memory(72) <= "00000000";
	memory(73) <= "00000000";
	memory(74) <= "00000000";
	memory(75) <= "00000000";
	
				-- NOP
	memory(76) <= "00000000";
	memory(77) <= "00000000";
	memory(78) <= "00000000";
	memory(79) <= "00000000";
	
					-- NOP
	memory(80) <= "00000000";
	memory(81) <= "00000000";
	memory(82) <= "00000000";
	memory(83) <= "00000000";
	
	-- ADDi $1, $3, 10 
	memory(84)  <= "00001100";
	memory(85)  <= "01100001";
	memory(86) <= "00000000";
	memory(87) <= "00001010";
	
				-- andi $10,$6,16
	memory(88) <= "00100000";
	memory(89) <= "11001010";
	memory(90) <= "00000000";
	memory(91) <= "00010000";
	
	
				-- ori $11,$6,31
	memory(92) <= "00101000";
	memory(93) <= "11001011";
	memory(94) <= "00000000";
	memory(95) <= "00011111";
	
				-- addi $15,$16,136
	memory(96) <= "00001110";
	memory(97) <= "00001111";
	memory(98) <= "00000000";
	memory(99) <= "10001000";
	
	
	
					 --j 116
	memory(100) <= "00110000";
	memory(101) <= "00000000";
	memory(102) <= "00000000";
	memory(103) <= "00011101";
	
	
						-- NOP
	memory(104) <= "00000000";
	memory(105) <= "00000000";
	memory(106) <= "00000000";
	memory(107) <= "00000000";
	
						-- NOP
	memory(108) <= "00000000";
	memory(109) <= "00000000";
	memory(110) <= "00000000";
	memory(111) <= "00000000";
	
			-- ADDi $1, $3, 11 
	memory(112)  <= "00001100";
	memory(113)  <= "01100001";
	memory(114) <= "00000000";
	memory(115) <= "00001011";
	
			-- addi $3,$3,20
	memory(116) <= "00001100";
	memory(117) <= "01100011";
	memory(118) <= "00000000";
	memory(119) <= "00010100";
	
			-- jr 15
	memory(120) <= "00110101";
	memory(121) <= "11100000";
	memory(122) <= "00000000";
	memory(123) <= "00000000";
	
							-- NOP
	memory(124) <= "00000000";
	memory(125) <= "00000000";
	memory(126) <= "00000000";
	memory(127) <= "00000000";
	
						-- NOP
	memory(128) <= "00000000";
	memory(129) <= "00000000";
	memory(130) <= "00000000";
	memory(131) <= "00000000";
	
				-- ADDi $1, $3, 15 
	memory(132)  <= "00001100";
	memory(133)  <= "01100001";
	memory(134) <= "00000000";
	memory(135) <= "00001111";
	
							-- NOP
	memory(136) <= "00000000";
	memory(137) <= "00000000";
	memory(138) <= "00000000";
	memory(139) <= "00000000";
	
	


	
	




	
	-- Inicializando processo com endereço
	process (address)
	
	begin
		instruction <= memory(to_integer(unsigned(address))) & memory(to_integer(unsigned(address)) + 1) & memory(to_integer(unsigned(address)) + 2) & memory(to_integer(unsigned(address)) + 3);
	
	-- Finalizando processo com endereço
	end process;
end;