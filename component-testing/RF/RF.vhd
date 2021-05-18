library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RF is
   port
		(
			clk : in std_logic;
			data : in std_logic_vector (15 downto 0);
			wa : in std_logic_vector (2 downto 0);
			we : in std_logic;
			ra1, ra2 : in std_logic_vector (2 downto 0);
			o1, o2 : out std_logic_vector (15 downto 0)
		);
end entity;

architecture behv OF RF is
   type mem is array (0 to 7) of std_logic_vector(15 downto 0);
   signal regfile : mem;
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if (we = '1') then
            regfile (to_integer(unsigned(wa))) <= data;
         end if;
         o1 <= regfile (to_integer(unsigned(ra1)));
			o2 <= regfile (to_integer(unsigned(ra2)));
      end if;
	end process;
end architecture;