
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RegMEMWB is
	port (clock:		in		std_logic;
			in_WB:		in		std_logic_vector(0 to 1);
			out_WB:		out	std_logic_vector(0 to 1) := "00";
			
			in_rdData:	in		std_logic_vector(0 to 31);
			out_rdData:	out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			in_addr:		in		std_logic_vector(0 to 31);
			out_addr:	out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			in_regdst:	in		std_logic_vector(0 to 4);
			out_regdst:	out	std_logic_vector(0 to 4) := "00000");
end RegMEMWB;

architecture exe of RegMEMWB is

begin
	process(clock)
	begin
		if (clock'EVENT and clock = '1') then
			out_WB 		<= in_WB;
			out_rdData	<= in_rdData;
			out_addr 	<= in_addr;
			out_regdst	<= in_regdst;
		end if;
	end process;
end;