library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;  


entity shift_jump is
 
 	PORT ( 
		in1 : IN STD_LOGIC_VECTOR(0 TO 25) ;--operandos
		out1 : OUT STD_LOGIC_VECTOR(0 TO 27) ) ;--saida
 
 
 
end shift_jump;

architecture Behavioral of shift_jump is
begin
	 out1 <= in1(0 to 25) & "00";
end Behavioral;