library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity datapath is
	port
		(
			clk : in std_logic;
			
			-- controls pins
			m_dc, m_re, m_we, m_rac : in std_logic; -- memory controls
			
			upd_ir, upd_pc, upd_tr, upd_c, upd_z : in std_logic; -- update controls
			
			alu_op, alu_cin, alu_ext, alu_sa : in std_logic; -- alu internal controls
			alu_ac, alu_bc : in std_logic_vector(1 downto 0); -- alu input controls
			
			rf_re1, rf_re2, rf_we : in std_logic; -- rf enables
			rf_r1c : in std_logic; -- rf read port 1 control
			rf_wc, rf_dc : in std_logic_vector(1 downto 0); -- rf write port and data controls
			rf_wac, rf_r1ac : in std_logic_vector(2 downto 0); -- rf readwrite address controls (for readall and writeall)
			
			-- state inference pins
			ir : buffer std_logic_vector(15 downto 0);
			c,z : buffer std_logic;
			z_imm : out std_logic
		);
end entity;

architecture behv of datapath is
	
	component ALU
		port
		(
			a,b : in std_logic_vector (15 downto 0);
			imm : in std_logic_vector (5 downto 0);
			cin, op : in std_logic;
			ext, sa : in std_logic;
			o : out std_logic_vector (15 downto 0);
			cout, zero : out std_logic
		);
	end component;
	
	component memory
	   port
		(
			clk : in std_logic;
			data : in std_logic_vector (15 downto 0);
			wa : in std_logic_vector (15 downto 0);
			ra : in std_logic_vector (15 downto 0);
			we, re : in std_logic;
			o : out std_logic_vector (15 downto 0)
		);
	end component;
	
	component RF
	   port
		(
			clk : in std_logic;
			data : in std_logic_vector (15 downto 0);
			wa : in std_logic_vector (2 downto 0);
			we : in std_logic;
			re1, re2 : in std_logic;
			ra1, ra2 : in std_logic_vector (2 downto 0);
			o1, o2 : out std_logic_vector (15 downto 0)
		);
	end component;
	
	signal rf_r1, rf_r2, rf_w : std_logic_vector(2 downto 0);
	signal rf_data, rf_out1, rf_out2 : std_logic_vector(15 downto 0);
	
	signal alu_a, alu_b, alu_o : std_logic_vector(15 downto 0);
	signal alu_c, alu_z : std_logic;
	signal alu_imm : std_logic_vector(5 downto 0);
	
	signal m_read, m_write, m_data, m_out : std_logic_vector(15 downto 0);
	
	signal pc, tr : std_logic_vector(15 downto 0);
	
	signal ext9bit : std_logic_vector (15 downto 0) := "0000000000000000";
begin
	
	alu_instance : ALU
		port map (a => alu_a, b => alu_b, imm => alu_imm, cin => alu_cin, op => alu_op, ext => alu_ext, sa => alu_sa, o => alu_o, cout => alu_c, zero => alu_z);
	
	memory_instance : memory
		port map (clk => clk, data => m_data, wa => m_write, ra => m_read, we => m_we, re => m_re, o => m_out );
	
	rf_instance : RF
		port map (clk => clk, data => rf_data, wa => rf_w, ra1 => rf_r1, ra2 => rf_r2, we => rf_we, re1 => rf_re1, re2 => rf_re2, o1 => rf_out1, o2 => rf_out2);
		
	fg1 : for idx in 15 downto 7 generate
		ext9bit(idx) <= ir(idx - 7);
	end generate;
	
	fg2 : for idx in 5 downto 0 generate
		alu_imm(idx) <= ir(idx);
	end generate;

	
	m_data <= rf_out1 when ( m_dc = '1' ) else alu_o;
	m_write <= tr;
	m_read <= tr when (m_rac = '1') else pc;
	
	rf_r1 <= rf_r1ac when (rf_r1c = '1') else ir(11 downto 9);
	rf_r2 <= ir(8 downto 6);
	rf_w <=  ir(11 downto 9) when (rf_wc = "00") else
				ir(8 downto 6) when (rf_wc = "01") else
				ir(5 downto 3) when (rf_wc = "10") else
				rf_wac;
	rf_data <=  m_out when (rf_dc = "00") else
					alu_o when (rf_dc = "01") else
					pc when (rf_dc = "10") else
					ext9bit;

	alu_a <= pc when (alu_ac = "10") else
				tr when (alu_ac = "11") else
				rf_out1;
	alu_b <= "0000000000000000" when (alu_bc = "10") else
				"0000000000000001" when (alu_bc = "11") else
				rf_out2;
	
	main : process(clk)
	begin
		if rising_edge(clk) then
			z_imm <= alu_z;
			if upd_z = '1' then
				z <= alu_z;
			end if;
			if upd_c = '1' then
				c <= alu_c;
			end if;
			if upd_pc = '1' then
				pc <= alu_o;
			end if;
			if upd_tr = '1' then
				tr <= alu_o;
			end if;
			if upd_ir = '1' then
				ir <= m_out;
			end if;
		end if;
	end process;
end architecture;