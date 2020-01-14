library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity reg_f is
	port	(regwrite: in std_logic;
			clock: in std_logic;
			read_register_1:	in  std_logic_vector(0 to 4);
			read_register_2:	in  std_logic_vector(0 to 4);
			write_register:	in  std_logic_vector(0 to 4);
			write_data:			in  std_logic_vector(0 to 31);
			read_data_1: 		out std_logic_vector(0 to 31);
			read_data_2: 		out std_logic_vector(0 to 31);
			reg1:	out std_logic_vector(0 to 31);
			reg2:	out std_logic_vector(0 to 31);
			reg3:	out std_logic_vector(0 to 31);
			reg4:	out std_logic_vector(0 to 31);
			reg5:	out std_logic_vector(0 to 31);
			reg6:	out std_logic_vector(0 to 31);
			reg7:	out std_logic_vector(0 to 31);
			reg8:	out std_logic_vector(0 to 31);
			reg9:	out std_logic_vector(0 to 31);
			reg10:	out std_logic_vector(0 to 31);
			reg11:	out std_logic_vector(0 to 31)
			);

end reg_f;

architecture regs of reg_f is
	type register_type is array(0 to 31) of std_logic_vector(0 to 31);
	signal registers: register_type;
begin

	
	process(clock)
	begin
		if (clock'EVENT and clock = '1' and regwrite = '1' and not (write_register = "00000") ) then
			registers(to_integer(unsigned(write_register))) <= write_data;
		end if;
	end process;
	
	read_data_1 <= registers(to_integer(unsigned(read_register_1)));
	read_data_2 <= registers(to_integer(unsigned(read_register_2)));
	reg1 <= registers(1);
	reg2 <= registers(2);
	reg3 <= registers(3);
	reg4 <= registers(4);
	reg5 <= registers(5);
	reg6 <= registers(6);
	reg7 <= registers(7);
	reg8 <= registers(8);
	reg9 <= registers(9);
	reg10 <= registers(10);
	reg11 <= registers(11);
end;