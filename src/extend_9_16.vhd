library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity extend_9_16 is
	port
		(
			input : in std_logic_vector(8 downto 0);
			output : out std_logic_vector(15 downto 0)
		);
end entity;

architecture behv of extend_6_16 is
begin
	c1 : for I in 7 downto 0 generate
		output(I) <= input(I);
	end generate;
	c2 : for I in 15 downto 8 generate
		output(I) <= input(8);
	end generate;
end architecture;