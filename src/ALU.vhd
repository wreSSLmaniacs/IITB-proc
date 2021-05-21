
---------------------ALU (consists of ADD and NAND )-------------------------

-----ADDER (implementation style : KOGGE STONE) -----------------------------

library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

--Entity for generation and propagation logic 
entity adder_prop is
	port
		(
			G1,P1 : in std_logic;
			G2,P2 : in std_logic;
			G,P : out std_logic
		);
end entity;

architecture behv of adder_prop is
	signal p0 : std_logic;
begin
	p0 <= P1 and G2; 
	G <= p0 or G1; 	-- G = P1.G2 + G1
	P <= P1 and P2;	-- P = P1.P2
end architecture;

library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

--Implementation of 16 bit Kogge stone adder
entity adder is
	port
		(
			a,b : in std_logic_vector (15 downto 0); --inputs
			cin : in std_logic; --carry
			sum : out std_logic_vector (15 downto 0); -- output
			cout : out std_logic --carry output 
		);
end entity;

architecture behv of adder is
	component adder_prop
		port
			(
				G1,P1 : in std_logic;
				G2,P2 : in std_logic;
				G,P : out std_logic
			);
	end component;	
	
	signal bx : std_logic_vector (15 downto 0);
	signal g_0,p_0 : std_logic_vector (15 downto 0);
	signal g_1,p_1 : std_logic_vector (15 downto 0);
	signal g_2,p_2 : std_logic_vector (15 downto 0);
	signal g_3, p_3 : std_logic_vector (15 downto 0);
	signal g_4, p_4 : std_logic_vector (15 downto 0);
	signal c : std_logic_vector (16 downto 0);
begin

	c(0) <= cin;

	bxor : for I in 15 downto 0 generate
		bx(I) <= cin xor b(I);
	end generate bxor;
	
	-- level 0
	
	lvl0 : for I in 15 downto 0 generate
		g_0(I) <= a(I) and bx(I);
		p_0(I) <= a(I) xor bx(I);
	end generate lvl0;
	
	copy0 : for I in 0 to 0 generate
		g_1(I) <= g_0(I);
		p_1(I) <= p_0(I);
	end generate copy0;
	
	-- level 1
	
	lvl1 : for I in 15 downto 1 generate
		GP1 : adder_prop
			port map (G1 => g_0(I), P1 => p_0(I), G2 => g_0(I-1), P2 => p_0(I-1), G => g_1(I), P => p_1(I));
	end generate lvl1;
	
	copy1 : for I in 0 to 1 generate
		g_2(I) <= g_1(I);
		p_2(I) <= p_1(I);
	end generate copy1;
	
	-- level 2
	
	lvl2 : for I in 15 downto 2 generate
		GP2 : adder_prop
			port map (G1 => g_1(I), P1 => p_1(I), G2 => g_1(I-2), P2 => p_1(I-2), G => g_2(I), P => p_2(I));
	end generate lvl2;
	
	copy2 : for I in 0 to 3 generate
		g_3(I) <= g_2(I);
		p_3(I) <= p_2(I);
	end generate copy2;
	
	-- level 3
	
	lvl3 : for I in 15 downto 4 generate
		GP3 : adder_prop
			port map (G1 => g_2(I), P1 => p_2(I), G2 => g_2(I-4), P2 => p_2(I-4), G => g_3(I), P => p_3(I));
	end generate lvl3;
	
	copy3 : for I in 0 to 7 generate
		g_4(I) <= g_3(I);
		p_4(I) <= p_3(I);
	end generate copy3;
	
	-- level 4
	
	lvl4 : for I in 15 downto 8 generate
		GP4 : adder_prop
			port map (G1 => g_3(I), P1 => p_3(I), G2 => g_3(I-8), P2 => p_3(I-8), G => g_4(I), P => p_4(I));
	end generate lvl4;
	
	
	-- final computation
	
	final : for I in 15 downto 0 generate
		c(I+1) <= g_4(I) or (p_4(I) and cin);
		sum(I) <= p_0(I) xor c(I);
	end generate final;
			
	cout <= c(16);
			
end architecture;

---------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------

-- Implementation of 16 bit NANDer

library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity nand16 is
	port
		(
			a,b : in std_logic_vector(15 downto 0); --inputs
			o : out std_logic_vector(15 downto 0) --output
		);
end entity;

--Implementation of bitwise NAND
architecture behv of nand16 is
begin
	main : for I in 15 downto 0 generate
		o(I) <= a(I) nand b(I); 
	end generate main;
end;

---------------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------------

-- main ALU entity integrating adder and NANDer

library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
	port
		(
			a,b : in std_logic_vector (15 downto 0); --inputs
			cin, op : in std_logic; --cin is carry flag, op is operation flag
			o : out std_logic_vector (15 downto 0); --output
			cout, zero : out std_logic --cout is output carry, and zero is zero flag
		);
end entity;

architecture behv of ALU is

	component nand16
		port
		(
			a,b : in std_logic_vector(15 downto 0);
			o : out std_logic_vector(15 downto 0)
		);
	end component;

	component adder
			port
		(
			a,b : in std_logic_vector (15 downto 0);
			cin : in std_logic;
			sum : out std_logic_vector (15 downto 0);
			cout : out std_logic
		);
	end component;
	
	signal add_out, nand_out, f_out : std_logic_vector(15 downto 0);
begin
	add : adder
		port map ( a => a, b => b, cin => cin, sum => add_out, cout => cout );
	logic : nand16
		port map ( a => a, b => b, o => nand_out );
	f_out <= nand_out when op = '1' else add_out; --when op is 1 then NAND performed, when op is 0 ADD performed
	zero <= '1' when f_out = "0000000000000000" else '0'; -- set the zero flag when output is 0
	o <= f_out;
end architecture;

---------------------------------------------------------------------------------------------------------