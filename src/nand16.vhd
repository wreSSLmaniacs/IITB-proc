library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity nand16 is
	port
		(
			a,b : in std_logic_vector(15 downto 0);
			o : out std_logic_vector(15 downto 0)
		);
end entity;

architecture behv of nand16 is
begin
	main : for I in 15 downto 0 generate
		o(I) <= a(I) nand b(I);
	end generate main;
end;