library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity datapath is
	port
		(
			clk : in std_logic;
			-- user control pins
			master_data, master_wa : in std_logic_vector (15 downto 0);
			master_wc : in std_logic;
			
			-- controls pins
			m_we, m_rac, m_wac : in std_logic; -- memory controls
			
			upd_ir, upd_pc, trc, pc_c, upd_c, upd_z : in std_logic; -- update controls
			
			alu_op, alu_cin : in std_logic; -- alu internal controls
			alu_ac, alu_bc : in std_logic_vector(1 downto 0); -- alu input controls
			
			rf_we : in std_logic; -- rf enables
			rf_rc : in std_logic; -- rf read port 1 control
			rf_wc, rf_dc : in std_logic_vector(1 downto 0); -- rf write port and data controls
			rf_master : in std_logic_vector(2 downto 0); -- rf master address
			
			zc : in std_logic;
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
			cin, op : in std_logic;
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
			we : in std_logic;
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
			ra1, ra2 : in std_logic_vector (2 downto 0);
			o1, o2 : out std_logic_vector (15 downto 0)
		);
	end component;
	
	signal rf_r1, rf_r2, rf_w : std_logic_vector(2 downto 0);
	signal rf_data, rf_out1, rf_out2 : std_logic_vector(15 downto 0);
	
	signal alu_a, alu_b, alu_o : std_logic_vector(15 downto 0);
	signal alu_c, alu_z : std_logic;
	
	signal m_read, m_write, m_data, m_out : std_logic_vector(15 downto 0);
	
	signal pc, tr : std_logic_vector(15 downto 0) := (others => '0');
	
	signal ext9bit : std_logic_vector (15 downto 0) := "0000000000000000";
	
	signal signext9, signext6 : std_logic_vector (15 downto 0);
	
	signal mem0, z_combine : std_logic;
	
	signal tr_combine, pc_combine : std_logic_vector(15 downto 0);
	
	signal mem_we : std_logic;
begin
	
	mem_we <= master_wc or m_we;
	
	alu_instance : ALU
		port map (a => alu_a, b => alu_b, cin => alu_cin, op => alu_op, o => alu_o, cout => alu_c, zero => alu_z);
	
	memory_instance : memory
		port map (clk => clk, data => m_data, wa => m_write, ra => m_read, we => mem_we, o => m_out );
	
	rf_instance : RF
		port map (clk => clk, data => rf_data, wa => rf_w, ra1 => rf_r1, ra2 => rf_r2, we => rf_we, o1 => rf_out1, o2 => rf_out2);
		
	-- 9 bit imm to most significant
	fg1 : for idx in 15 downto 7 generate
		ext9bit(idx) <= ir(idx - 7);
	end generate;
	
	-- 6 bit imm to sign extended
	fg2_1 : for idx in 4 downto 0 generate
		signext6(idx) <= ir(idx);
	end generate;
	fg2_2 : for idx in 15 downto 5 generate
		signext6(idx) <= ir(5);
	end generate;
	
	-- 9 bit imm to sign extended
	fg3_1 : for idx in 7 downto 0 generate
		signext9(idx) <= ir(idx);
	end generate;
	fg3_2 : for idx in 15 downto 8 generate
		signext9(idx) <= ir(8);
	end generate;
	
	m_data <= master_data when(master_wc = '1') else rf_out1;
	m_write <= master_wa when (master_wc = '1') else
					alu_o when (m_wac = '1') else tr;
	m_read <= tr when (m_rac = '1') else pc;
	
	rf_r1 <= rf_master when (rf_rc = '1') else ir(11 downto 9);
	rf_r2 <= ir(8 downto 6);
	rf_w <=  ir(11 downto 9) when (rf_wc = "00") else
				ir(8 downto 6) when (rf_wc = "01") else
				ir(5 downto 3) when (rf_wc = "10") else
				rf_master;
	rf_data <=  m_out when (rf_dc = "00") else
					alu_o when (rf_dc = "01") else
					pc when (rf_dc = "10") else
					ext9bit;

	alu_a <= rf_out1 when (alu_ac = "00") else
				signext6 when (alu_ac = "01") else
				pc when (alu_ac = "10") else
				tr;
	alu_b <= rf_out2 when (alu_bc = "00") else
				"0000000000000001" when (alu_bc = "01") else
				signext6 when (alu_bc = "10") else
				signext9;

	mem0 <= '1' when (m_out = "0000000000000000") else '0';
	z_combine <= mem0 when (zc = '1') else alu_z;
	
	tr_combine <= rf_out1 when (trc = '1') else alu_o;
	pc_combine <= rf_out2 when (pc_c = '1') else alu_o;
	z_imm <= alu_z;
	main : process(clk)
	begin
		if rising_edge(clk) then
			tr <= tr_combine;
			if upd_z = '1' then
				z <= z_combine;
			end if;
			if upd_c = '1' then
				c <= alu_c;
			end if;
			if upd_pc = '1' then
				pc <= pc_combine;
			end if;
			if upd_ir = '1' then
				ir <= m_out;
			end if;
		end if;
	end process;
end architecture;