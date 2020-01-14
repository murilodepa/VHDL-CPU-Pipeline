LIBRARY ieee ;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity register_16_bits is
	GENERIC (N: INTEGER := 16 ) ;
	port( input: in std_logic_vector(0 to 15);
			Enable: in std_logic;
			Clock: in std_logic;
			Reset: in std_logic;
			Output: out std_logic_vector(0 to 15));
end register_16_bits;


architecture reg of register_16_bits is
	begin
		process(Reset, Clock)
		begin
			if(Reset = '1') then
				Output <= "0000000000000000";
			
			elsif(Clock'event and Clock = '1' and Enable = '1') then
				Output <= input;
			end if;
		end process;
		end reg;