library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;



entity soma32b is
    Port ( NUM1 : in  STD_LOGIC_VECTOR (0 to 31);
           out1  : out STD_LOGIC_VECTOR (0 to 31));
end soma32b ;

architecture Behavioral of soma32b  is 
    		Signal NUM2 :STD_LOGIC_VECTOR (0 to 31) := "00000000000000000000000000000100";
  
begin
    out1 <= NUM1 + NUM2;
    
end Behavioral;