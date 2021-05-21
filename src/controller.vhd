--------------------------------------------------CONTROLLER entity ------------------------------------------
library work;
use work.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

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
			rf_master : buffer std_logic_vector(2 downto 0) := "000"; -- rf master address
			
			zc : out std_logic;
			
			
			-- state inference pins
			ir : in std_logic_vector(15 downto 0);
			c,z : in std_logic;
			z_imm : in std_logic
		);
end entity;

architecture behv of controller is
	subtype state_labels is natural range 0 to 10; --defining states
	signal state : state_labels := 0; --current state
	signal next_state : state_labels; --next state 
begin
p1 : process(state, ir)
begin

--Initialize every control pin to default values(inactive pins)
	m_we <= '0';
	m_rac <= '0';
	m_wac <= '0';
	upd_ir <= '0';
	upd_pc <= '0';
	trc <= '0';
	pc_c <= '0';
	upd_c <= '0';
	upd_z <= '0';
	alu_op <= '0';
	alu_cin <= '0';
	alu_ac <= "00";
	alu_bc <= "00";
	rf_we <= '0';
	rf_rc <= '0';
	rf_wc <= "00";
	rf_dc <= "00";
	zc <= '0';
	
	--State transitions
	case state is 
		when 0 => --to make it sync
			next_state <= 1; 
			
		when 1 => --update instruction
			upd_ir <= '1';		
			next_state <= 2;
			
		when 2 => --understand instruction and proceed to compute in single state instructions
			--set appropriate controls for ADD, ADC, ADZ, NDU, NDC, NDZ
			if (
			(ir(15 downto 12) = "0000" or ir(15 downto 12) = "0010") and
			( 	ir(1 downto 0) = "00" or 
				(ir(1 downto 0) = "10" and c = '1') or 
				(ir(1 downto 0) = "01" and z = '1') 
			) ) then
				upd_c <= ir(13);
				upd_z <= '1';
				rf_wc <= "10";
				rf_dc <= "01";
				rf_we <= '1';
				alu_op <= ir(13);
				next_state <= 3;
			
			--set appropriate controls for ADI
			elsif (ir(15 downto 12) = "0001") then
				upd_c <= '1';
				upd_z <= '1';
				rf_wc <= "01";
				rf_dc <= "01";
				rf_we <= '1';
				alu_bc <= "10";
				next_state <= 3;
				
			--set appropriate controls for LHI	
			elsif (ir(15 downto 12) = "0011") then
				rf_dc <= "11";
				alu_ac <= "10";
				alu_bc <= "01";
				rf_we <= '1';
				upd_pc <= '1';
				next_state <= 0;
				
			--set appropriate controls for LW	
			elsif (ir(15 downto 12) = "0100") then
				alu_ac <= "01";
				next_state <= 4;
			
			--set appropriate controls for SW
			elsif (ir(15 downto 12) = "0101") then
				alu_ac <= "01";
				m_wac <= '1';
				m_we <= '1';
				next_state <= 3;
				
			--set appropriate controls for LA
			elsif (ir(15 downto 12) = "0110") then
				trc <= '1';
				next_state <= 8;
			
			--set appropriate controls for SA
			elsif (ir(15 downto 12) = "0111") then
				trc <= '1';
				next_state <= 7;
			
			--set appropriate controls for BEQ
			elsif (ir(15 downto 12) = "1100") then
				alu_cin <= '1';
				next_state <= 6;
			
			--set appropriate controls for JAL	
			elsif (ir(15 downto 12) = "1000") then
				rf_dc <= "10";
				rf_we <= '1';
				alu_ac <= "10";
				alu_bc <= "11";
				upd_pc <= '1';
				next_state <= 0;
			
			--set appropriate controls for JLR
			elsif (ir(15 downto 12) = "1001") then
				rf_dc <= "10";
				rf_we <= '1';
				pc_c <= '1';
				upd_pc <= '1';
				next_state <= 0;
			else
			-- If instruction is not matching in provided list then return
				next_state <= 0;
			end if;
		
		when 3 => --if it was a single state instruction, reset the FSM
				alu_ac <= "10";
				alu_bc <= "01";
				upd_pc <= '1';
				next_state <= 0;
		
		when 4 => -- For LW operation, activate memory read control
			m_rac <= '1';
			next_state <= 5;
		
		when 5 => --For LW operation final state, reset the FSM
			rf_we <= '1';
			zc <= '1';
			upd_pc <= '1';
			alu_ac <= "10";
			alu_bc <= "01";
			next_state <= 0;
		

		when 6 => --Final state for BEQ operation, change the branch accordingly and reset the FSM
			alu_ac <= "10";
			upd_pc <= '1';
				
			if (z_imm = '1') then
				alu_bc <= "10";
			else 
				alu_bc <= "01";
			end if;
			next_state <= 0;
			
		when 7 => --For SA operation 
			rf_rc <= '1';
			m_we <= '1';
			alu_ac <= "11";
			alu_bc <= "01";
		
		when 8 => --For LA operation read instruction from memory
			m_rac <= '1';
			alu_ac <= "11";
			alu_bc <= "01";
			next_state <= 9;
			 
		when 9 => --For LA update writing controls
			m_rac <= '1';
			alu_ac <= "11";
			alu_bc <= "01";
			rf_we <= '1';
			rf_wc <= "11";
			

		
		when 10 => --For LA update the register and go to state 3
			rf_we <= '1';
			rf_wc <= "11";
			next_state <= 3;
			
		when others => null;
	end case;
end process;

p2 : process(clk)
begin
--synchronous processes
	if rising_edge(clk) then
		if (rst = '1') then
			state <= 0;
		else
			case state is
				when 7 => --For SA store in the register
					if( rf_master = "111" ) then
						rf_master <= "000";
						state <= 3;
					else
						rf_master <= std_logic_vector( unsigned(rf_master) + 1);
					end if;
					
				when 9 =>  --For LA read from the register
					rf_master <= std_logic_vector( unsigned(rf_master) + 1);
					if( rf_master = "110" ) then
						state <= 10;
					end if;
				when others => 
					state <= next_state;
			end case;
		end if;
	end if;
end process;
end architecture;