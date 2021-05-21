------------------------REGISTER FILE Implementation---------------------------

library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RF is
   port
		(
			clk : in std_logic; --clock
			data : in std_logic_vector (15 downto 0); --data to be written
			wa : in std_logic_vector (2 downto 0); --writing address
			we : in std_logic; --control for action 
			ra1, ra2 : in std_logic_vector (2 downto 0); --reading adress 1 and reading adress 2 
			o1, o2, o : out std_logic_vector (15 downto 0) --output 1 and output 2 + testbench reading output o
		);
end entity;

architecture behv OF RF is
   type mem is array (0 to 7) of std_logic_vector(15 downto 0);  
   signal regfile : mem := (others => (others => '0')); --register file with register of 16 bytes
begin
	o <= regfile(0); --asynchronously update outputs 
	o1 <= regfile (to_integer(unsigned(ra1)));
	o2 <= regfile (to_integer(unsigned(ra2)));
   process (clk)
   begin
      if rising_edge(clk) then
         if (we = '1') then --if writing flag is on write the data into given adress 
            regfile (to_integer(unsigned(wa))) <= data; 
         end if;
      end if;
	end process;
end architecture;