library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity controller is
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
			rf_master : out std_logic_vector(2 downto 0); -- rf master address
			
			zc : out std_logic;
			
			-- state inference pins
			ir : in std_logic_vector(15 downto 0);
			c,z : in std_logic;
			z_imm : in std_logic;
		);
end entity;

architecture behv of controller is
	type state_labels is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9);
	signal state : state_labels := s0;
	signal next_state : state_labels;
	
	-- temporary control signals
	signal tm_we, tm_rac, tm_wac : std_logic; -- memory controls
			
	signal tupd_ir, tupd_pc, ttrc, tpc_c, tupd_c, tupd_z : std_logic; -- update controls
	
	signal talu_op, talu_cin : std_logic; -- alu internal controls
	signal talu_ac, talu_bc : std_logic_vector(1 downto 0); -- alu input controls
	
	signal trf_we : std_logic; -- rf enables
	signal trf_rc : std_logic; -- rf read port 1 control
	signal trf_wc, trf_dc : std_logic_vector(1 downto 0); -- rf write port and data controls
	signal trf_master : std_logic_vector(2 downto 0); -- rf master address
	
	signal tzc : std_logic;
	
begin
process(clk, ir, c, z)
	
	begin
		next_state <= state;
		tm_we <= '0';
		tm_rac <= '0';
		tm_wac <= '0';
		tupd_ir <= '0';
		tupd_pc <= '0';
		ttrc <= '0';
		tpc_c <= '0';
		tupd_c <= '0';
		tupd_z <= '0';
		talu_op <= '0';
		talu_cin <= '0';
		talu_ac <= "00";
		talu_bc <= "00";
		trf_we <= '0';
		trf_rc <= '0';
		trf_wc <= "00";
		trf_dc <= "00";
		tzc <= '0';
		
		case state is 
			when s0 => 
				next_state <= s1;
				
			when s1 => 
				tupd_ir <= '1';
				next_state <= s2;
				
			when s2 =>
				
				if (
				(ir(15 downto 12) = "0000" or ir(15 downto 12) = "0010") and
				( 	ir(1 downto 0) = "00" or 
					(ir(1 downto 0) = "10" and c = '1') or 
					(ir(1 downto 0) = "01" and z = '1') 
				) ) then
					tupd_c <= ir(13);
					tupd_z <= '1';
					trf_wc <= "10";
					trf_dc <= "01";
					trf_we <= '0';
					talu_op <= not ir(13);
					next_state <= s3;
				
				elsif (ir(15 downto 12) = "0001") then
					tupd_c <= '1';
					tupd_z <= '1';
					trf_wc <= "01";
					trf_dc <= "01";
					trf_we <= '1';
					talu_bc <= "10";
					next_state <= s3;
					
				elsif (ir(15 downto 12) = "0011") then
					trf_dc <= "11";
					talu_ac <= "10";
					talu_bc <= "01";
					trf_we <= '1';
					tupd_pc <= '1';
					next_state <= s0;
					
				elsif (ir(15 downto 12) = "0100") then
					talu_ac <= "01";
					next_state <= s4;
				
				elsif (ir(15 downto 12) = "0101") then
					talu_ac <= "01";
					next_state <= s6;
					
				elsif (ir(15 downto 12) = "0110") then
					ttrc <= '1';
					trf_master <= "111";
					next_state <= s8;
					
				elsif (ir(15 downto 12) = "0111") then
					ttrc <= '1';
					trf_master <= "111";
					next_state <= s9;
				
				elsif (ir(15 downto 12) = "1100") then
					talu_cin <= '1';
					next_state <= s7;
					
				elsif (ir(15 downto 12) = "1000") then
					trf_dc <= "10";
					trf_we <= '1';
					talu_ac <= "10";
					talu_bc <= "11";
					tupd_pc <= '1';
					next_state <= s0;
					
				elsif (ir(15 downto 12) = "1001") then
					trf_dc <= "10";
					trf_we <= '1';
					tpc_c <= '1';
					tupd_pc <= '1';
					next_state <= s0;
				else
					next_state <= s0;
				end if;
			
			when s3 =>
					talu_ac <= "10";
					talu_bc <= "01";
					tupd_pc <= '1';
					next_state <= s0;
			
			when s4 => 
				tm_rac <= '1';
				next_state <= s5;
			
			when s5 => 
				trf_we <= '1';
				tzc <= '1';
				tupd_pc <= '1';
				talu_ac <= "10";
				talu_bc <= "01";
				next_state <= s0;
			
			when s6 => 
				tm_wac <= '1';
				tm_we <= '1';
				tupd_pc <= '1';
				talu_ac <= "10";
				talu_bc <= "01";
				next_state <= s0;
		
			when s7 =>
				talu_ac <= "10";
				tupd_pc <= '1';
					
				if (z_imm = '1') then
					talu_bc <= "01";
				else 
					talu_bc <= "10";
				end if;
				next_state <= s0;
				
			when s8 =>
					tm_rac <= '1';
					trf_wc <= "11";
					trf_we <= '1';
					talu_ac <= "11";
					talu_bc <= "01";
					trf_master <= std_logic_vector( unsigned(trf_master) + 1);
					
					if(trf_master = "111")
						next_state <= s3;
					end if;
			
			when s9 =>
					trf_rc <= '1';
					tm_we <= '1';
					talu_ac <= "11";
					talu_bc <= "01";
					trf_master <= std_logic_vector( unsigned(trf_master) + 1);
					
					if(trf_master = "111")
						next_state <= s3;
					end if;
					
			when others => null;
			end case;
			
			m_we <= tm_we;
			m_rac <= tm_rac;
			m_wac <= tm_wac;
			upd_ir <= tupd_ir;
			upd_ic <= tupd_pc;
			trc <= ttrc;
			pc_c <= tpc_c;
			upd_c <= tupd_c;
			upd_z <= tupd_z;
			alu_op <= talu_op;
			alu_cin <= talu_cin;
			alu_ac <= talu_ac;
			alu_bc <= talu_bc;
			rf_we <= trf_we;
			rf_rc <= trf_rc;
			rf_wc <= trf_wc;
			rf_dc <= trf_dc;
			rf_master <= trf_master;
			zc <= tzc;
			
			if(rising_edge(clk)) then 
				if (rst = '1') then
					state <= s0;
				else
					state <= next_state;
				end if;
			end if;
		end process;
end architecture;