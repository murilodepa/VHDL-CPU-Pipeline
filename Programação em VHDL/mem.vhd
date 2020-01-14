library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem is
generic (N : integer := 8;
		   M : integer := 4);
port( clock, memwrite:	in std_logic;
      address:				in std_logic_vector(N-1 downto 0);
      writedata:			in std_logic_vector(N-1 downto 0);
      readdata:			out std_logic_vector(N-1 downto 0));
end mem;

architecture behaviour of mem is
  type memory_array is array (0 to M-1) of std_logic_vector(N-1 downto 0); 
  signal memory : memory_array;
begin
  process(clock)
  begin
    if(clock'event and clock='1') then
      if (memwrite = '1') then
        memory(to_integer(unsigned(address))) <= writedata;
      end if;
    end if;
  end process;
  readdata <= memory(to_integer(unsigned(address)));
end behaviour;