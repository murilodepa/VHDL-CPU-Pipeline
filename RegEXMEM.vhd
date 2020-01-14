library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RegEXMEM is
	port (clock:		in		std_logic;
			in_WB:		in		std_logic_vector(0 to 1);
			in_ME:		in		std_logic_vector(0 to 2);
			out_WB:		out	std_logic_vector(0 to 1) := "00";
			out_ME:		out	std_logic_vector(0 to 2) := "000";
			
			in_pc:		in		std_logic_vector(0 to 31);
			out_pc:		out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			in_result:	in		std_logic_vector(0 to 31);
			out_result:	out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			in_wrData:	in		std_logic_vector(0 to 31);
			out_wrData:	out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			in_regdst:	in		std_logic_vector(0 to 4);
			out_regdst:	out	std_logic_vector(0 to 4) := "00000");
end RegEXMEM;

architecture exe of RegEXMEM is

begin
	process(clock)
	begin
		if (clock'EVENT and clock = '1') then
			out_WB 		<= in_WB;
			out_ME 		<= in_ME;
			out_pc 		<= in_pc;
			out_result 	<= in_result;
			out_wrData 	<= in_wrData;
			out_regdst 	<= in_regdst;
		end if;
	end process;
end;