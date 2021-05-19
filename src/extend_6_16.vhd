library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity extend_6_16 is
	port
		(
			input : in std_logic_vector(5 downto 0);
			output : out std_logic_vector(15 downto 0)
		);
end entity;

architecture behv of extend_6_16 is
begin
	c1 : for I in 4 downto 0 generate
		output(I) <= input(I);
	end generate;
	c2 : for I in 15 downto 5 generate
		output(I) <= input(5);
	end generate;
end architecture;