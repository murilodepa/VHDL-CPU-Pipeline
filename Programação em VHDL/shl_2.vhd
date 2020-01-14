library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;  


entity shl_2 is
 
 	PORT ( 
		in1 : IN STD_LOGIC_VECTOR(0 TO 31) ;--operandos
		out1 : OUT STD_LOGIC_VECTOR(0 TO 31) ) ;--saida
 
 
 
end shl_2;

architecture Behavioral of shl_2 is
begin
	 out1 <= in1(2 to 31) & "00";
end Behavioral;