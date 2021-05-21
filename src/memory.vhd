-------------------------------------Implementation of MEMORY ---------------------------------------
library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
   port
		(
			clk : in std_logic; --clock
			data : in std_logic_vector (15 downto 0); --data to be written
			wa : in std_logic_vector (15 downto 0); --writing address 
			ra : in std_logic_vector (15 downto 0); --reading address 
			we : in std_logic; --memory control to check if reading or writing is done
			o : out std_logic_vector (15 downto 0)
		);
end entity;

architecture behv of memory is
   type mem is array (0 to 2**16-1) of std_logic_vector(15 downto 0); --memory creation to store data, as 16 bit addresses are accepted, we create a total of 2^16 memory elements
   signal ram : mem := (others => (others => '0')); -- create ram and set everything to 0
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if (we = '1') then --if we =1 write data to memory element, otherwise read data from memory element
            ram (to_integer(unsigned(wa))) <= data;
         end if;
			o <= ram (to_integer(unsigned(ra)));
      end if;
	end process;
end architecture;