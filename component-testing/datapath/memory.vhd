library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
   port
		(
			clk : in std_logic;
			data : in std_logic_vector (15 downto 0);
			wa : in std_logic_vector (15 downto 0);
			ra : in std_logic_vector (15 downto 0);
			re, we : in std_logic;
			o : out std_logic_vector (15 downto 0)
		);
end entity;

architecture behv of memory is
   type mem is array (0 to 2**16-1) of std_logic_vector(15 downto 0);
   signal ram : mem;
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if (we = '1') then
            ram (to_integer(unsigned(wa))) <= data;
         end if;
			if (re = '1') then
				o <= ram (to_integer(unsigned(ra)));
			end if;
      end if;
	end process;
end architecture;