library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity adder_prop is
	port
		(
			G1,P1 : in std_logic;
			G2,P2 : in std_logic;
			G,P : out std_logic
		);
end entity;

architecture behv of adder_prop is
	signal p : std_logic;
begin
	p <= P1 and G2;
	G <= p or G1;
	P <= P1 and P2;
end architecture;