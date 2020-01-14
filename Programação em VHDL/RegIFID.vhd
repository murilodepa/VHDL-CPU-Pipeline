library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RegIFID is
	port (clock:		in		std_logic;
	
			in_pc:		in		std_logic_vector(0 to 31);
			out_pc:		out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			in_instr:	in		std_logic_vector(0 to 31);
			out_instr:	out	std_logic_vector(0 to 31) := "00000000000000000000000000000000");
end RegIFID;

architecture exe of RegIFID is

begin
	process(clock)
	begin
		if (clock'EVENT and clock = '1') then
			out_instr	<= in_instr;
			out_pc 		<= in_pc;
		end if;
	end process;
end;