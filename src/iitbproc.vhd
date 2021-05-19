library work;
use work.all;

library ieee;
use ieee.std_logic_1164.all;

entity iitbproc is
	port
		(
			wa, inst : in std_logic_vector(15 downto 0);
			clk : in std_logic;
			rst : in std_logic;
			mem_w : in std_logic
		);
end entity;

architecture behv of iitbproc is
signal m_we, m_rac, m_wac : std_logic;
signal upd_ir, upd_pc, trc, pc_c, upd_c, upd_z : std_logic;	
signal alu_op, alu_cin : std_logic;
signal alu_ac, alu_bc : std_logic_vector(1 downto 0);
signal rf_we : std_logic;
signal rf_rc : std_logic;
signal rf_wc, rf_dc : std_logic_vector(1 downto 0);
signal rf_master : std_logic_vector(2 downto 0);
signal zc : std_logic;
signal ir : std_logic_vector(15 downto 0);
signal c,z : std_logic;
signal z_imm : std_logic;

component datapath
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
end component;

component controller
	port 
		(
			clk, rst : in std_logic;
			
			-- controls pins
			m_we, m_rac, m_wac : out std_logic; -- memory controls
			
			upd_ir, upd_pc, trc, pc_c, upd_c, upd_z : out std_logic; -- update controls
			
			alu_op, alu_cin : out std_logic; -- alu internal controls
			alu_ac, alu_bc : out std_logic_vector(1 downto 0); -- alu input controls
			
			rf_we : out std_logic; -- rf enables
			rf_rc : out std_logic; -- rf read port 1 control
			rf_wc, rf_dc : out std_logic_vector(1 downto 0); -- rf write port and data controls
			rf_master : buffer std_logic_vector(2 downto 0) := "000"; -- rf master address
			
			zc : out std_logic;
			
			-- state inference pins
			ir : in std_logic_vector(15 downto 0);
			c,z : in std_logic;
			z_imm : in std_logic
		);
end component;

begin
	dp : datapath
		port map (clk => clk, master_data => inst, master_wa => wa, master_wc => mem_w, m_we => m_we, m_rac => m_rac, m_wac => m_wac, upd_ir => upd_ir, upd_pc => upd_pc, trc => trc, pc_c => pc_c, upd_c => upd_c, upd_z => upd_z, alu_op => alu_op, alu_cin => alu_cin, alu_ac => alu_ac, alu_bc => alu_bc, rf_we => rf_we, rf_rc => rf_rc, rf_wc => rf_wc, rf_dc => rf_dc, rf_master => rf_master, zc => zc, ir => ir, c => c, z => z, z_imm => z_imm);
	con : controller
		port map (clk => clk, rst => rst, m_we => m_we, m_rac => m_rac, m_wac => m_wac, upd_ir => upd_ir, upd_pc => upd_pc, trc => trc, pc_c => pc_c, upd_c => upd_c, upd_z => upd_z, alu_op => alu_op, alu_cin => alu_cin, alu_ac => alu_ac, alu_bc => alu_bc, rf_we => rf_we, rf_rc => rf_rc, rf_wc => rf_wc, rf_dc => rf_dc, rf_master => rf_master, zc => zc, ir => ir, c => c, z => z, z_imm => z_imm);
end architecture;