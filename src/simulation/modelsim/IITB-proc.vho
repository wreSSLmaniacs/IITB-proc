-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/20/2021 08:45:59"

-- 
-- Device: Altera 10CL055YF484C6G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	clk : IN std_logic;
	m_we : IN std_logic;
	m_rac : IN std_logic;
	m_wac : IN std_logic;
	upd_ir : IN std_logic;
	upd_pc : IN std_logic;
	trc : IN std_logic;
	pc_c : IN std_logic;
	upd_c : IN std_logic;
	upd_z : IN std_logic;
	alu_op : IN std_logic;
	alu_cin : IN std_logic;
	alu_ac : IN std_logic_vector(1 DOWNTO 0);
	alu_bc : IN std_logic_vector(1 DOWNTO 0);
	rf_we : IN std_logic;
	rf_rc : IN std_logic;
	rf_wc : IN std_logic_vector(1 DOWNTO 0);
	rf_dc : IN std_logic_vector(1 DOWNTO 0);
	rf_master : IN std_logic_vector(2 DOWNTO 0);
	zc : IN std_logic;
	ir : BUFFER std_logic_vector(15 DOWNTO 0);
	c : BUFFER std_logic;
	z : BUFFER std_logic;
	z_imm : OUT std_logic
	);
END datapath;

-- Design Ports Information
-- ir[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[1]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[11]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[12]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[13]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[14]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir[15]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_imm	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upd_ir	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_bc[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_bc[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ac[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_ac[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_master[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_rc	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_master[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_master[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upd_c	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_cin	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upd_z	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zc	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_wac	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_we	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rac	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_dc[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_dc[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_we	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_wc[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rf_wc[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_c	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upd_pc	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trc	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_m_we : std_logic;
SIGNAL ww_m_rac : std_logic;
SIGNAL ww_m_wac : std_logic;
SIGNAL ww_upd_ir : std_logic;
SIGNAL ww_upd_pc : std_logic;
SIGNAL ww_trc : std_logic;
SIGNAL ww_pc_c : std_logic;
SIGNAL ww_upd_c : std_logic;
SIGNAL ww_upd_z : std_logic;
SIGNAL ww_alu_op : std_logic;
SIGNAL ww_alu_cin : std_logic;
SIGNAL ww_alu_ac : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_alu_bc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rf_we : std_logic;
SIGNAL ww_rf_rc : std_logic;
SIGNAL ww_rf_wc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rf_dc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rf_master : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_zc : std_logic;
SIGNAL ww_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_c : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_z_imm : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ir[0]~output_o\ : std_logic;
SIGNAL \ir[1]~output_o\ : std_logic;
SIGNAL \ir[2]~output_o\ : std_logic;
SIGNAL \ir[3]~output_o\ : std_logic;
SIGNAL \ir[4]~output_o\ : std_logic;
SIGNAL \ir[5]~output_o\ : std_logic;
SIGNAL \ir[6]~output_o\ : std_logic;
SIGNAL \ir[7]~output_o\ : std_logic;
SIGNAL \ir[8]~output_o\ : std_logic;
SIGNAL \ir[9]~output_o\ : std_logic;
SIGNAL \ir[10]~output_o\ : std_logic;
SIGNAL \ir[11]~output_o\ : std_logic;
SIGNAL \ir[12]~output_o\ : std_logic;
SIGNAL \ir[13]~output_o\ : std_logic;
SIGNAL \ir[14]~output_o\ : std_logic;
SIGNAL \ir[15]~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \z_imm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rf_dc[1]~input_o\ : std_logic;
SIGNAL \m_rac~input_o\ : std_logic;
SIGNAL \alu_op~input_o\ : std_logic;
SIGNAL \alu_bc[0]~input_o\ : std_logic;
SIGNAL \alu_bc[1]~input_o\ : std_logic;
SIGNAL \rf_dc[0]~input_o\ : std_logic;
SIGNAL \rf_master[2]~input_o\ : std_logic;
SIGNAL \rf_rc~input_o\ : std_logic;
SIGNAL \m_wac~input_o\ : std_logic;
SIGNAL \m_write[14]~1_combout\ : std_logic;
SIGNAL \m_we~input_o\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\ : std_logic;
SIGNAL \rf_wc[1]~input_o\ : std_logic;
SIGNAL \rf_wc[0]~input_o\ : std_logic;
SIGNAL \rf_w[2]~2_combout\ : std_logic;
SIGNAL \rf_w[2]~3_combout\ : std_logic;
SIGNAL \rf_we~input_o\ : std_logic;
SIGNAL \rf_master[1]~input_o\ : std_logic;
SIGNAL \alu_ac[1]~input_o\ : std_logic;
SIGNAL \rf_instance|regfile~56feeder_combout\ : std_logic;
SIGNAL \rf_master[0]~input_o\ : std_logic;
SIGNAL \rf_w[0]~4_combout\ : std_logic;
SIGNAL \rf_instance|regfile~135_q\ : std_logic;
SIGNAL \rf_instance|regfile~119feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~297_combout\ : std_logic;
SIGNAL \rf_instance|regfile~119_q\ : std_logic;
SIGNAL \rf_instance|regfile~298_combout\ : std_logic;
SIGNAL \rf_instance|regfile~87_q\ : std_logic;
SIGNAL \rf_instance|regfile~272_combout\ : std_logic;
SIGNAL \rf_instance|regfile~273_combout\ : std_logic;
SIGNAL \rf_instance|regfile~71feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~295_combout\ : std_logic;
SIGNAL \rf_instance|regfile~71_q\ : std_logic;
SIGNAL \rf_instance|regfile~55feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~55_q\ : std_logic;
SIGNAL \rf_instance|regfile~39feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~293_combout\ : std_logic;
SIGNAL \rf_instance|regfile~39_q\ : std_logic;
SIGNAL \rf_instance|regfile~294_combout\ : std_logic;
SIGNAL \rf_instance|regfile~23_q\ : std_logic;
SIGNAL \rf_instance|regfile~270_combout\ : std_logic;
SIGNAL \rf_instance|regfile~271_combout\ : std_logic;
SIGNAL \pc[3]~3_combout\ : std_logic;
SIGNAL \alu_b[3]~17_combout\ : std_logic;
SIGNAL \alu_ac[0]~input_o\ : std_logic;
SIGNAL \trc~input_o\ : std_logic;
SIGNAL \pc_c~input_o\ : std_logic;
SIGNAL \upd_pc~input_o\ : std_logic;
SIGNAL \alu_a[3]~26_combout\ : std_logic;
SIGNAL \alu_a[3]~27_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~3_combout\ : std_logic;
SIGNAL \rf_instance|regfile~142_q\ : std_logic;
SIGNAL \rf_instance|regfile~296_combout\ : std_logic;
SIGNAL \rf_instance|regfile~110_q\ : std_logic;
SIGNAL \rf_instance|regfile~94_q\ : std_logic;
SIGNAL \rf_instance|regfile~126_q\ : std_logic;
SIGNAL \rf_instance|regfile~209_combout\ : std_logic;
SIGNAL \rf_instance|regfile~210_combout\ : std_logic;
SIGNAL \rf_instance|regfile~62_q\ : std_logic;
SIGNAL \rf_instance|regfile~30_q\ : std_logic;
SIGNAL \rf_instance|regfile~46_q\ : std_logic;
SIGNAL \rf_instance|regfile~207_combout\ : std_logic;
SIGNAL \rf_instance|regfile~208_combout\ : std_logic;
SIGNAL \pc[10]~10_combout\ : std_logic;
SIGNAL \alu_b[10]~8_combout\ : std_logic;
SIGNAL \alu_a[10]~12_combout\ : std_logic;
SIGNAL \alu_a[10]~13_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~10_combout\ : std_logic;
SIGNAL \alu_b[9]~9_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~9_combout\ : std_logic;
SIGNAL \alu_cin~input_o\ : std_logic;
SIGNAL \pc[0]~feeder_combout\ : std_logic;
SIGNAL \rf_data[0]~28_combout\ : std_logic;
SIGNAL \rf_data[0]~29_combout\ : std_logic;
SIGNAL \rf_instance|regfile~100_q\ : std_logic;
SIGNAL \rf_instance|regfile~132feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~132_q\ : std_logic;
SIGNAL \rf_instance|regfile~84_q\ : std_logic;
SIGNAL \rf_instance|regfile~116_q\ : std_logic;
SIGNAL \rf_instance|regfile~276_combout\ : std_logic;
SIGNAL \rf_instance|regfile~277_combout\ : std_logic;
SIGNAL \rf_instance|regfile~52_q\ : std_logic;
SIGNAL \rf_instance|regfile~68_q\ : std_logic;
SIGNAL \rf_instance|regfile~20_q\ : std_logic;
SIGNAL \rf_instance|regfile~36_q\ : std_logic;
SIGNAL \rf_instance|regfile~274_combout\ : std_logic;
SIGNAL \rf_instance|regfile~275_combout\ : std_logic;
SIGNAL \pc[0]~0_combout\ : std_logic;
SIGNAL \alu_b[0]~18_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~0_combout\ : std_logic;
SIGNAL \tr[0]~0_combout\ : std_logic;
SIGNAL \rf_instance|regfile~280_combout\ : std_logic;
SIGNAL \rf_instance|regfile~281_combout\ : std_logic;
SIGNAL \rf_instance|regfile~278_combout\ : std_logic;
SIGNAL \rf_instance|regfile~279_combout\ : std_logic;
SIGNAL \rf_instance|regfile~282_combout\ : std_logic;
SIGNAL \alu_a[0]~28_combout\ : std_logic;
SIGNAL \alu_a[0]~29_combout\ : std_logic;
SIGNAL \alu_instance|add|c~9_combout\ : std_logic;
SIGNAL \alu_a[1]~31_combout\ : std_logic;
SIGNAL \rf_instance|regfile~69_q\ : std_logic;
SIGNAL \rf_instance|regfile~53_q\ : std_logic;
SIGNAL \rf_instance|regfile~37feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~37_q\ : std_logic;
SIGNAL \rf_instance|regfile~21_q\ : std_logic;
SIGNAL \rf_instance|regfile~283_combout\ : std_logic;
SIGNAL \rf_instance|regfile~284_combout\ : std_logic;
SIGNAL \alu_a[1]~30_combout\ : std_logic;
SIGNAL \alu_a[1]~32_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:1:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~2_combout\ : std_logic;
SIGNAL \tr[2]~2_combout\ : std_logic;
SIGNAL \rf_data[2]~24_combout\ : std_logic;
SIGNAL \rf_data[2]~25_combout\ : std_logic;
SIGNAL \rf_instance|regfile~102_q\ : std_logic;
SIGNAL \rf_instance|regfile~134_q\ : std_logic;
SIGNAL \rf_instance|regfile~86_q\ : std_logic;
SIGNAL \rf_instance|regfile~118feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~118_q\ : std_logic;
SIGNAL \rf_instance|regfile~258_combout\ : std_logic;
SIGNAL \rf_instance|regfile~259_combout\ : std_logic;
SIGNAL \rf_instance|regfile~70_q\ : std_logic;
SIGNAL \rf_instance|regfile~54_q\ : std_logic;
SIGNAL \rf_instance|regfile~38_q\ : std_logic;
SIGNAL \rf_instance|regfile~22_q\ : std_logic;
SIGNAL \rf_instance|regfile~256_combout\ : std_logic;
SIGNAL \rf_instance|regfile~257_combout\ : std_logic;
SIGNAL \pc[2]~2_combout\ : std_logic;
SIGNAL \alu_a[2]~24_combout\ : std_logic;
SIGNAL \alu_a[2]~25_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:2:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_b[4]~14_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:4:GP1|G~0_combout\ : std_logic;
SIGNAL \rf_data[5]~22_combout\ : std_logic;
SIGNAL \rf_data[5]~23_combout\ : std_logic;
SIGNAL \rf_instance|regfile~137_q\ : std_logic;
SIGNAL \rf_instance|regfile~105_q\ : std_logic;
SIGNAL \rf_instance|regfile~89_q\ : std_logic;
SIGNAL \rf_instance|regfile~121_q\ : std_logic;
SIGNAL \rf_instance|regfile~254_combout\ : std_logic;
SIGNAL \rf_instance|regfile~255_combout\ : std_logic;
SIGNAL \rf_instance|regfile~57_q\ : std_logic;
SIGNAL \rf_instance|regfile~73_q\ : std_logic;
SIGNAL \rf_instance|regfile~25_q\ : std_logic;
SIGNAL \rf_instance|regfile~41_q\ : std_logic;
SIGNAL \rf_instance|regfile~252_combout\ : std_logic;
SIGNAL \rf_instance|regfile~253_combout\ : std_logic;
SIGNAL \pc[5]~5_combout\ : std_logic;
SIGNAL \alu_b[5]~15_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~5_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:4:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[5]~14_combout\ : std_logic;
SIGNAL \alu_instance|add|c[5]~15_combout\ : std_logic;
SIGNAL \tr[5]~5_combout\ : std_logic;
SIGNAL \alu_a[5]~22_combout\ : std_logic;
SIGNAL \alu_a[5]~23_combout\ : std_logic;
SIGNAL \rf_instance|regfile~28_q\ : std_logic;
SIGNAL \rf_instance|regfile~44_q\ : std_logic;
SIGNAL \rf_instance|regfile~189_combout\ : std_logic;
SIGNAL \rf_instance|regfile~60_q\ : std_logic;
SIGNAL \rf_instance|regfile~190_combout\ : std_logic;
SIGNAL \rf_instance|regfile~140_q\ : std_logic;
SIGNAL \rf_instance|regfile~108_q\ : std_logic;
SIGNAL \rf_instance|regfile~92_q\ : std_logic;
SIGNAL \rf_instance|regfile~124_q\ : std_logic;
SIGNAL \rf_instance|regfile~191_combout\ : std_logic;
SIGNAL \rf_instance|regfile~192_combout\ : std_logic;
SIGNAL \pc[8]~8_combout\ : std_logic;
SIGNAL \alu_b[8]~6_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~8_combout\ : std_logic;
SIGNAL \alu_b[6]~10_combout\ : std_logic;
SIGNAL \rf_data[6]~16_combout\ : std_logic;
SIGNAL \rf_data[6]~17_combout\ : std_logic;
SIGNAL \rf_instance|regfile~74_q\ : std_logic;
SIGNAL \rf_instance|regfile~58_q\ : std_logic;
SIGNAL \rf_instance|regfile~42feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~42_q\ : std_logic;
SIGNAL \rf_instance|regfile~26_q\ : std_logic;
SIGNAL \rf_instance|regfile~220_combout\ : std_logic;
SIGNAL \rf_instance|regfile~221_combout\ : std_logic;
SIGNAL \rf_instance|regfile~138_q\ : std_logic;
SIGNAL \rf_instance|regfile~106_q\ : std_logic;
SIGNAL \rf_instance|regfile~122feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~122_q\ : std_logic;
SIGNAL \rf_instance|regfile~90feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~90_q\ : std_logic;
SIGNAL \rf_instance|regfile~222_combout\ : std_logic;
SIGNAL \rf_instance|regfile~223_combout\ : std_logic;
SIGNAL \pc[6]~6_combout\ : std_logic;
SIGNAL \alu_b[6]~11_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~6_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl3:7:GP3|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[4]~13_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:5:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:3:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:5:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[6]~16_combout\ : std_logic;
SIGNAL \tr[6]~6_combout\ : std_logic;
SIGNAL \rf_instance|regfile~226_combout\ : std_logic;
SIGNAL \rf_instance|regfile~227_combout\ : std_logic;
SIGNAL \rf_instance|regfile~224_combout\ : std_logic;
SIGNAL \rf_instance|regfile~225_combout\ : std_logic;
SIGNAL \rf_instance|regfile~228_combout\ : std_logic;
SIGNAL \alu_a[6]~16_combout\ : std_logic;
SIGNAL \alu_a[6]~17_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:6:GP2|P~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c~25_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:6:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl3:6:GP3|G~3_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:6:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl3:6:GP3|G~2_combout\ : std_logic;
SIGNAL \alu_b[7]~12_combout\ : std_logic;
SIGNAL \rf_data[7]~18_combout\ : std_logic;
SIGNAL \rf_data[7]~19_combout\ : std_logic;
SIGNAL \rf_instance|regfile~123_q\ : std_logic;
SIGNAL \rf_instance|regfile~91_q\ : std_logic;
SIGNAL \rf_instance|regfile~236_combout\ : std_logic;
SIGNAL \rf_instance|regfile~107_q\ : std_logic;
SIGNAL \rf_instance|regfile~139_q\ : std_logic;
SIGNAL \rf_instance|regfile~237_combout\ : std_logic;
SIGNAL \rf_instance|regfile~59_q\ : std_logic;
SIGNAL \rf_instance|regfile~75_q\ : std_logic;
SIGNAL \rf_instance|regfile~27_q\ : std_logic;
SIGNAL \rf_instance|regfile~43_q\ : std_logic;
SIGNAL \rf_instance|regfile~234_combout\ : std_logic;
SIGNAL \rf_instance|regfile~235_combout\ : std_logic;
SIGNAL \pc[7]~7_combout\ : std_logic;
SIGNAL \alu_b[7]~13_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~7_combout\ : std_logic;
SIGNAL \tr[7]~7_combout\ : std_logic;
SIGNAL \rf_instance|regfile~229_combout\ : std_logic;
SIGNAL \rf_instance|regfile~230_combout\ : std_logic;
SIGNAL \rf_instance|regfile~231_combout\ : std_logic;
SIGNAL \rf_instance|regfile~232_combout\ : std_logic;
SIGNAL \rf_instance|regfile~233_combout\ : std_logic;
SIGNAL \alu_a[7]~18_combout\ : std_logic;
SIGNAL \alu_a[7]~19_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:7:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:7:GP2|p0~1_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:7:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:7:GP2|P~4_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl3:7:GP3|G~1_combout\ : std_logic;
SIGNAL \alu_instance|add|c[8]~10_combout\ : std_logic;
SIGNAL \tr[8]~8_combout\ : std_logic;
SIGNAL \alu_a[8]~8_combout\ : std_logic;
SIGNAL \alu_a[8]~9_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:8:GP2|P~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[9]~17_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:8:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[13]~26_combout\ : std_logic;
SIGNAL \alu_instance|add|c[9]~18_combout\ : std_logic;
SIGNAL \tr[9]~9_combout\ : std_logic;
SIGNAL \tr[9]~feeder_combout\ : std_logic;
SIGNAL \alu_a[9]~14_combout\ : std_logic;
SIGNAL \alu_a[9]~15_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:9:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:9:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[10]~4_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:9:GP2|P~0_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[10]~5_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[10]~6_combout\ : std_logic;
SIGNAL \tr[10]~10_combout\ : std_logic;
SIGNAL \rf_data[10]~12_combout\ : std_logic;
SIGNAL \rf_data[10]~13_combout\ : std_logic;
SIGNAL \rf_instance|regfile~78_q\ : std_logic;
SIGNAL \rf_instance|regfile~204_combout\ : std_logic;
SIGNAL \rf_instance|regfile~205_combout\ : std_logic;
SIGNAL \rf_instance|regfile~202_combout\ : std_logic;
SIGNAL \rf_instance|regfile~203_combout\ : std_logic;
SIGNAL \rf_instance|regfile~206_combout\ : std_logic;
SIGNAL \m_write[0]~2_combout\ : std_logic;
SIGNAL \m_write[1]~3_combout\ : std_logic;
SIGNAL \m_write[2]~4_combout\ : std_logic;
SIGNAL \m_write[3]~5_combout\ : std_logic;
SIGNAL \m_write[4]~6_combout\ : std_logic;
SIGNAL \m_write[5]~7_combout\ : std_logic;
SIGNAL \m_write[6]~8_combout\ : std_logic;
SIGNAL \m_write[7]~9_combout\ : std_logic;
SIGNAL \m_write[8]~10_combout\ : std_logic;
SIGNAL \m_write[9]~11_combout\ : std_logic;
SIGNAL \m_write[10]~12_combout\ : std_logic;
SIGNAL \rf_data[11]~10_combout\ : std_logic;
SIGNAL \rf_data[11]~11_combout\ : std_logic;
SIGNAL \rf_instance|regfile~95_q\ : std_logic;
SIGNAL \rf_instance|regfile~127_q\ : std_logic;
SIGNAL \rf_instance|regfile~200_combout\ : std_logic;
SIGNAL \rf_instance|regfile~111feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~111_q\ : std_logic;
SIGNAL \rf_instance|regfile~143_q\ : std_logic;
SIGNAL \rf_instance|regfile~201_combout\ : std_logic;
SIGNAL \rf_instance|regfile~63_q\ : std_logic;
SIGNAL \rf_instance|regfile~79_q\ : std_logic;
SIGNAL \rf_instance|regfile~47_q\ : std_logic;
SIGNAL \rf_instance|regfile~31_q\ : std_logic;
SIGNAL \rf_instance|regfile~198_combout\ : std_logic;
SIGNAL \rf_instance|regfile~199_combout\ : std_logic;
SIGNAL \pc[11]~11_combout\ : std_logic;
SIGNAL \alu_b[11]~7_combout\ : std_logic;
SIGNAL \tr[11]~feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~195_combout\ : std_logic;
SIGNAL \rf_instance|regfile~196_combout\ : std_logic;
SIGNAL \rf_instance|regfile~193_combout\ : std_logic;
SIGNAL \rf_instance|regfile~194_combout\ : std_logic;
SIGNAL \rf_instance|regfile~197_combout\ : std_logic;
SIGNAL \alu_a[11]~10_combout\ : std_logic;
SIGNAL \alu_a[11]~11_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~11_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:11:GP2|P~4_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:10:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:10:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:10:GP2|P~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[11]~20_combout\ : std_logic;
SIGNAL \alu_instance|add|c[11]~19_combout\ : std_logic;
SIGNAL \tr[11]~11_combout\ : std_logic;
SIGNAL \m_write[11]~13_combout\ : std_logic;
SIGNAL \rf_instance|regfile~64_q\ : std_logic;
SIGNAL \rf_instance|regfile~80_q\ : std_logic;
SIGNAL \rf_instance|regfile~48_q\ : std_logic;
SIGNAL \rf_instance|regfile~32_q\ : std_logic;
SIGNAL \rf_instance|regfile~172_combout\ : std_logic;
SIGNAL \rf_instance|regfile~173_combout\ : std_logic;
SIGNAL \rf_instance|regfile~144feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~144_q\ : std_logic;
SIGNAL \rf_instance|regfile~128_q\ : std_logic;
SIGNAL \rf_instance|regfile~96_q\ : std_logic;
SIGNAL \rf_instance|regfile~170_combout\ : std_logic;
SIGNAL \rf_instance|regfile~171_combout\ : std_logic;
SIGNAL \rf_instance|regfile~174_combout\ : std_logic;
SIGNAL \m_read[0]~0_combout\ : std_logic;
SIGNAL \m_read[1]~1_combout\ : std_logic;
SIGNAL \m_read[2]~2_combout\ : std_logic;
SIGNAL \m_read[3]~3_combout\ : std_logic;
SIGNAL \m_read[4]~4_combout\ : std_logic;
SIGNAL \m_read[5]~5_combout\ : std_logic;
SIGNAL \m_read[6]~6_combout\ : std_logic;
SIGNAL \m_read[7]~7_combout\ : std_logic;
SIGNAL \m_read[8]~8_combout\ : std_logic;
SIGNAL \m_read[9]~9_combout\ : std_logic;
SIGNAL \m_read[10]~10_combout\ : std_logic;
SIGNAL \m_read[11]~11_combout\ : std_logic;
SIGNAL \m_read[12]~12_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a92~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a76~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~75_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a124~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a108~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~76_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~72_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a60~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~73_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~74_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\ : std_logic;
SIGNAL \rf_data[12]~4_combout\ : std_logic;
SIGNAL \rf_data[12]~5_combout\ : std_logic;
SIGNAL \rf_instance|regfile~112_q\ : std_logic;
SIGNAL \rf_instance|regfile~168_combout\ : std_logic;
SIGNAL \rf_instance|regfile~169_combout\ : std_logic;
SIGNAL \rf_instance|regfile~166_combout\ : std_logic;
SIGNAL \rf_instance|regfile~167_combout\ : std_logic;
SIGNAL \pc[12]~12_combout\ : std_logic;
SIGNAL \alu_a[12]~4_combout\ : std_logic;
SIGNAL \alu_a[12]~5_combout\ : std_logic;
SIGNAL \alu_b[12]~4_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~12_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:11:GP2|P~5_combout\ : std_logic;
SIGNAL \alu_instance|add|c[12]~21_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:11:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:11:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[12]~11_combout\ : std_logic;
SIGNAL \alu_instance|add|c[12]~22_combout\ : std_logic;
SIGNAL \tr[12]~12_combout\ : std_logic;
SIGNAL \m_write[12]~14_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a106~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a122~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~64_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~60_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a58~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~61_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~62_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a90~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a74~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~63_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\ : std_logic;
SIGNAL \upd_ir~input_o\ : std_logic;
SIGNAL \ir[10]~reg0_q\ : std_logic;
SIGNAL \rf_r1[1]~1_combout\ : std_logic;
SIGNAL \rf_instance|regfile~262_combout\ : std_logic;
SIGNAL \rf_instance|regfile~263_combout\ : std_logic;
SIGNAL \rf_instance|regfile~260_combout\ : std_logic;
SIGNAL \rf_instance|regfile~261_combout\ : std_logic;
SIGNAL \rf_instance|regfile~264_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a66~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a82~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a98~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a114~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a50~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ : std_logic;
SIGNAL \ir[2]~reg0feeder_combout\ : std_logic;
SIGNAL \ir[2]~reg0_q\ : std_logic;
SIGNAL \alu_b[2]~16_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:4:GP2|P~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[3]~12_combout\ : std_logic;
SIGNAL \tr[3]~3_combout\ : std_logic;
SIGNAL \rf_data[3]~26_combout\ : std_logic;
SIGNAL \rf_data[3]~27_combout\ : std_logic;
SIGNAL \rf_instance|regfile~103_q\ : std_logic;
SIGNAL \rf_instance|regfile~265_combout\ : std_logic;
SIGNAL \rf_instance|regfile~266_combout\ : std_logic;
SIGNAL \rf_instance|regfile~267_combout\ : std_logic;
SIGNAL \rf_instance|regfile~268_combout\ : std_logic;
SIGNAL \rf_instance|regfile~269_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a115~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a99~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~22_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a67~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a83~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~21_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~18_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a51~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~19_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~20_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\ : std_logic;
SIGNAL \ir[3]~reg0_q\ : std_logic;
SIGNAL \rf_w[0]~5_combout\ : std_logic;
SIGNAL \rf_instance|regfile~292_combout\ : std_logic;
SIGNAL \rf_instance|regfile~56_q\ : std_logic;
SIGNAL \rf_instance|regfile~40feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~40_q\ : std_logic;
SIGNAL \rf_instance|regfile~24_q\ : std_logic;
SIGNAL \rf_instance|regfile~238_combout\ : std_logic;
SIGNAL \rf_instance|regfile~239_combout\ : std_logic;
SIGNAL \rf_instance|regfile~104_q\ : std_logic;
SIGNAL \rf_instance|regfile~136_q\ : std_logic;
SIGNAL \rf_instance|regfile~120feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~120_q\ : std_logic;
SIGNAL \rf_instance|regfile~88_q\ : std_logic;
SIGNAL \rf_instance|regfile~240_combout\ : std_logic;
SIGNAL \rf_instance|regfile~241_combout\ : std_logic;
SIGNAL \pc[4]~4_combout\ : std_logic;
SIGNAL \alu_a[4]~20_combout\ : std_logic;
SIGNAL \alu_a[4]~21_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~4_combout\ : std_logic;
SIGNAL \tr[4]~4_combout\ : std_logic;
SIGNAL \rf_data[4]~20_combout\ : std_logic;
SIGNAL \rf_data[4]~21_combout\ : std_logic;
SIGNAL \rf_instance|regfile~72feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~72_q\ : std_logic;
SIGNAL \rf_instance|regfile~244_combout\ : std_logic;
SIGNAL \rf_instance|regfile~245_combout\ : std_logic;
SIGNAL \rf_instance|regfile~242_combout\ : std_logic;
SIGNAL \rf_instance|regfile~243_combout\ : std_logic;
SIGNAL \rf_instance|regfile~246_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a116~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a100~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~28_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a84~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a68~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~27_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a52~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~25_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~24_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~26_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\ : std_logic;
SIGNAL \ir[4]~reg0_q\ : std_logic;
SIGNAL \rf_w[1]~0_combout\ : std_logic;
SIGNAL \rf_w[1]~1_combout\ : std_logic;
SIGNAL \rf_instance|regfile~299_combout\ : std_logic;
SIGNAL \rf_instance|regfile~133_q\ : std_logic;
SIGNAL \rf_instance|regfile~85_q\ : std_logic;
SIGNAL \rf_instance|regfile~117feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~117_q\ : std_logic;
SIGNAL \rf_instance|regfile~289_combout\ : std_logic;
SIGNAL \rf_instance|regfile~290_combout\ : std_logic;
SIGNAL \rf_instance|regfile~287_combout\ : std_logic;
SIGNAL \rf_instance|regfile~288_combout\ : std_logic;
SIGNAL \pc[1]~1_combout\ : std_logic;
SIGNAL \alu_b[1]~19_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~1_combout\ : std_logic;
SIGNAL \tr[1]~1_combout\ : std_logic;
SIGNAL \rf_data[1]~30_combout\ : std_logic;
SIGNAL \rf_data[1]~31_combout\ : std_logic;
SIGNAL \rf_instance|regfile~101_q\ : std_logic;
SIGNAL \rf_instance|regfile~285_combout\ : std_logic;
SIGNAL \rf_instance|regfile~286_combout\ : std_logic;
SIGNAL \rf_instance|regfile~291_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~6_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a49~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a113~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a97~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a81~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a65~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\ : std_logic;
SIGNAL \ir[1]~reg0_q\ : std_logic;
SIGNAL \rf_data[8]~8_combout\ : std_logic;
SIGNAL \rf_data[8]~9_combout\ : std_logic;
SIGNAL \rf_instance|regfile~76_q\ : std_logic;
SIGNAL \rf_instance|regfile~186_combout\ : std_logic;
SIGNAL \rf_instance|regfile~187_combout\ : std_logic;
SIGNAL \rf_instance|regfile~184_combout\ : std_logic;
SIGNAL \rf_instance|regfile~185_combout\ : std_logic;
SIGNAL \rf_instance|regfile~188_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a104~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a120~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~52_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a88~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a72~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~51_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~48_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a56~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~49_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~50_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\ : std_logic;
SIGNAL \ir[8]~reg0feeder_combout\ : std_logic;
SIGNAL \ir[8]~reg0_q\ : std_logic;
SIGNAL \rf_instance|regfile~141_q\ : std_logic;
SIGNAL \rf_instance|regfile~93_q\ : std_logic;
SIGNAL \rf_instance|regfile~125_q\ : std_logic;
SIGNAL \rf_instance|regfile~218_combout\ : std_logic;
SIGNAL \rf_instance|regfile~219_combout\ : std_logic;
SIGNAL \rf_instance|regfile~77_q\ : std_logic;
SIGNAL \rf_instance|regfile~61_q\ : std_logic;
SIGNAL \rf_instance|regfile~29_q\ : std_logic;
SIGNAL \rf_instance|regfile~45_q\ : std_logic;
SIGNAL \rf_instance|regfile~216_combout\ : std_logic;
SIGNAL \rf_instance|regfile~217_combout\ : std_logic;
SIGNAL \pc[9]~9_combout\ : std_logic;
SIGNAL \pc[9]~feeder_combout\ : std_logic;
SIGNAL \rf_data[9]~14_combout\ : std_logic;
SIGNAL \rf_data[9]~15_combout\ : std_logic;
SIGNAL \rf_instance|regfile~109_q\ : std_logic;
SIGNAL \rf_instance|regfile~211_combout\ : std_logic;
SIGNAL \rf_instance|regfile~212_combout\ : std_logic;
SIGNAL \rf_instance|regfile~213_combout\ : std_logic;
SIGNAL \rf_instance|regfile~214_combout\ : std_logic;
SIGNAL \rf_instance|regfile~215_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a89~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a73~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~57_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~54_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a57~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~55_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~56_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a121~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a105~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~58_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\ : std_logic;
SIGNAL \ir[9]~reg0_q\ : std_logic;
SIGNAL \rf_r1[0]~0_combout\ : std_logic;
SIGNAL \rf_instance|regfile~247_combout\ : std_logic;
SIGNAL \rf_instance|regfile~248_combout\ : std_logic;
SIGNAL \rf_instance|regfile~249_combout\ : std_logic;
SIGNAL \rf_instance|regfile~250_combout\ : std_logic;
SIGNAL \rf_instance|regfile~251_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a117~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a101~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~34_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a69~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a85~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~33_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a53~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~31_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~30_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~32_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\ : std_logic;
SIGNAL \ir[5]~reg0_q\ : std_logic;
SIGNAL \alu_b[14]~0_combout\ : std_logic;
SIGNAL \alu_b[13]~5_combout\ : std_logic;
SIGNAL \rf_instance|regfile~113_q\ : std_logic;
SIGNAL \rf_instance|regfile~145_q\ : std_logic;
SIGNAL \rf_instance|regfile~129_q\ : std_logic;
SIGNAL \rf_instance|regfile~97_q\ : std_logic;
SIGNAL \rf_instance|regfile~175_combout\ : std_logic;
SIGNAL \rf_instance|regfile~176_combout\ : std_logic;
SIGNAL \rf_instance|regfile~65_q\ : std_logic;
SIGNAL \rf_instance|regfile~49_q\ : std_logic;
SIGNAL \rf_instance|regfile~33_q\ : std_logic;
SIGNAL \rf_instance|regfile~177_combout\ : std_logic;
SIGNAL \rf_instance|regfile~178_combout\ : std_logic;
SIGNAL \rf_instance|regfile~179_combout\ : std_logic;
SIGNAL \alu_a[13]~6_combout\ : std_logic;
SIGNAL \alu_a[13]~7_combout\ : std_logic;
SIGNAL \tr[13]~18_combout\ : std_logic;
SIGNAL \tr[13]~22_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:12:GP1|G~0_combout\ : std_logic;
SIGNAL \tr[13]~20_combout\ : std_logic;
SIGNAL \tr[13]~21_combout\ : std_logic;
SIGNAL \tr[13]~19_combout\ : std_logic;
SIGNAL \tr[13]~13_combout\ : std_logic;
SIGNAL \tr[13]~feeder_combout\ : std_logic;
SIGNAL \m_write[13]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a75~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a91~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~69_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a123~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a107~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~70_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~66_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a59~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~67_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~68_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\ : std_logic;
SIGNAL \ir[11]~reg0feeder_combout\ : std_logic;
SIGNAL \ir[11]~reg0_q\ : std_logic;
SIGNAL \rf_r1[2]~2_combout\ : std_logic;
SIGNAL \rf_instance|regfile~66feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~66_q\ : std_logic;
SIGNAL \rf_instance|regfile~82feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~82_q\ : std_logic;
SIGNAL \rf_instance|regfile~50feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~50_q\ : std_logic;
SIGNAL \rf_instance|regfile~34_q\ : std_logic;
SIGNAL \rf_instance|regfile~154_combout\ : std_logic;
SIGNAL \rf_instance|regfile~155_combout\ : std_logic;
SIGNAL \rf_instance|regfile~146_q\ : std_logic;
SIGNAL \rf_instance|regfile~114_q\ : std_logic;
SIGNAL \rf_instance|regfile~98_q\ : std_logic;
SIGNAL \rf_instance|regfile~152_combout\ : std_logic;
SIGNAL \rf_instance|regfile~153_combout\ : std_logic;
SIGNAL \rf_instance|regfile~156_combout\ : std_logic;
SIGNAL \alu_a[14]~0_combout\ : std_logic;
SIGNAL \alu_a[14]~1_combout\ : std_logic;
SIGNAL \alu_b[14]~1_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~13_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:13:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c[14]~8_combout\ : std_logic;
SIGNAL \alu_instance|add|c[14]~23_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[14]~7_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[14]~8_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[14]~9_combout\ : std_logic;
SIGNAL \tr[14]~14_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a78~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a94~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~87_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a126~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a110~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~88_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~84_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a62~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~85_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~86_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\ : std_logic;
SIGNAL \rf_data[14]~0_combout\ : std_logic;
SIGNAL \rf_data[14]~1_combout\ : std_logic;
SIGNAL \rf_instance|regfile~130feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~130_q\ : std_logic;
SIGNAL \rf_instance|regfile~150_combout\ : std_logic;
SIGNAL \rf_instance|regfile~151_combout\ : std_logic;
SIGNAL \rf_instance|regfile~148_combout\ : std_logic;
SIGNAL \rf_instance|regfile~149_combout\ : std_logic;
SIGNAL \pc[14]~14_combout\ : std_logic;
SIGNAL \m_read[14]~14_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a103~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a119~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~46_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~42_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a55~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~43_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~44_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a71~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a87~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~45_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\ : std_logic;
SIGNAL \ir[7]~reg0feeder_combout\ : std_logic;
SIGNAL \ir[7]~reg0_q\ : std_logic;
SIGNAL \rf_instance|regfile~51feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~51_q\ : std_logic;
SIGNAL \rf_instance|regfile~35feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~35_q\ : std_logic;
SIGNAL \rf_instance|regfile~159_combout\ : std_logic;
SIGNAL \rf_instance|regfile~83_q\ : std_logic;
SIGNAL \rf_instance|regfile~160_combout\ : std_logic;
SIGNAL \rf_instance|regfile~115feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~115_q\ : std_logic;
SIGNAL \rf_instance|regfile~147feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~147_q\ : std_logic;
SIGNAL \rf_instance|regfile~131_q\ : std_logic;
SIGNAL \rf_instance|regfile~99_q\ : std_logic;
SIGNAL \rf_instance|regfile~157_combout\ : std_logic;
SIGNAL \rf_instance|regfile~158_combout\ : std_logic;
SIGNAL \rf_instance|regfile~161_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a95~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a79~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~93_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~90_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a63~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~91_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~92_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a127~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a111~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~94_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\ : std_logic;
SIGNAL \rf_data[15]~2_combout\ : std_logic;
SIGNAL \rf_data[15]~3_combout\ : std_logic;
SIGNAL \rf_instance|regfile~67feeder_combout\ : std_logic;
SIGNAL \rf_instance|regfile~67_q\ : std_logic;
SIGNAL \rf_instance|regfile~162_combout\ : std_logic;
SIGNAL \rf_instance|regfile~163_combout\ : std_logic;
SIGNAL \rf_instance|regfile~164_combout\ : std_logic;
SIGNAL \rf_instance|regfile~165_combout\ : std_logic;
SIGNAL \pc[15]~15_combout\ : std_logic;
SIGNAL \alu_b[15]~2_combout\ : std_logic;
SIGNAL \alu_b[15]~3_combout\ : std_logic;
SIGNAL \alu_a[15]~2_combout\ : std_logic;
SIGNAL \alu_a[15]~3_combout\ : std_logic;
SIGNAL \alu_instance|logic|o~14_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl1:14:GP1|G~0_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl3:14:GP3|p0~4_combout\ : std_logic;
SIGNAL \alu_instance|add|lvl2:14:GP2|p0~0_combout\ : std_logic;
SIGNAL \alu_instance|add|c~24_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[15]~10_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[15]~11_combout\ : std_logic;
SIGNAL \alu_instance|add|sum[15]~12_combout\ : std_logic;
SIGNAL \tr[15]~15_combout\ : std_logic;
SIGNAL \m_read[15]~15_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a102~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a118~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~40_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~36_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a54~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~37_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~38_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a86~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a70~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~39_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\ : std_logic;
SIGNAL \ir[6]~reg0feeder_combout\ : std_logic;
SIGNAL \ir[6]~reg0_q\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a93~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a77~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~81_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a125~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a109~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~82_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~78_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a61~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~79_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~80_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\ : std_logic;
SIGNAL \rf_data[13]~6_combout\ : std_logic;
SIGNAL \rf_data[13]~7_combout\ : std_logic;
SIGNAL \rf_instance|regfile~81_q\ : std_logic;
SIGNAL \rf_instance|regfile~180_combout\ : std_logic;
SIGNAL \rf_instance|regfile~181_combout\ : std_logic;
SIGNAL \rf_instance|regfile~182_combout\ : std_logic;
SIGNAL \rf_instance|regfile~183_combout\ : std_logic;
SIGNAL \pc[13]~13_combout\ : std_logic;
SIGNAL \pc[13]~feeder_combout\ : std_logic;
SIGNAL \m_read[13]~13_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a64~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a80~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a112~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a96~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a48~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ : std_logic;
SIGNAL \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ : std_logic;
SIGNAL \ir[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ir[0]~reg0_q\ : std_logic;
SIGNAL \ir[12]~reg0_q\ : std_logic;
SIGNAL \ir[13]~reg0_q\ : std_logic;
SIGNAL \ir[14]~reg0_q\ : std_logic;
SIGNAL \ir[15]~reg0_q\ : std_logic;
SIGNAL \upd_c~input_o\ : std_logic;
SIGNAL \alu_instance|add|lvl1:15:GP1|G~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \c~reg0_q\ : std_logic;
SIGNAL \upd_z~input_o\ : std_logic;
SIGNAL \z~2_combout\ : std_logic;
SIGNAL \z~1_combout\ : std_logic;
SIGNAL \z~3_combout\ : std_logic;
SIGNAL \z~4_combout\ : std_logic;
SIGNAL \zc~input_o\ : std_logic;
SIGNAL \alu_instance|Equal0~0_combout\ : std_logic;
SIGNAL \alu_instance|Equal0~3_combout\ : std_logic;
SIGNAL \alu_instance|Equal0~2_combout\ : std_logic;
SIGNAL \alu_instance|Equal0~1_combout\ : std_logic;
SIGNAL \alu_instance|Equal0~4_combout\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \z~5_combout\ : std_logic;
SIGNAL \z~6_combout\ : std_logic;
SIGNAL \z~reg0_q\ : std_logic;
SIGNAL \z_imm~reg0_q\ : std_logic;
SIGNAL \alu_instance|add|c\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \alu_instance|add|sum\ : std_logic_vector(15 DOWNTO 0);
SIGNAL pc : std_logic_vector(15 DOWNTO 0);
SIGNAL \alu_instance|add|p_0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL tr : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory_instance|ram_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_pc_c~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_m_we <= m_we;
ww_m_rac <= m_rac;
ww_m_wac <= m_wac;
ww_upd_ir <= upd_ir;
ww_upd_pc <= upd_pc;
ww_trc <= trc;
ww_pc_c <= pc_c;
ww_upd_c <= upd_c;
ww_upd_z <= upd_z;
ww_alu_op <= alu_op;
ww_alu_cin <= alu_cin;
ww_alu_ac <= alu_ac;
ww_alu_bc <= alu_bc;
ww_rf_we <= rf_we;
ww_rf_rc <= rf_rc;
ww_rf_wc <= rf_wc;
ww_rf_dc <= rf_dc;
ww_rf_master <= rf_master;
ww_zc <= zc;
ir <= ww_ir;
c <= ww_c;
z <= ww_z;
z_imm <= ww_z_imm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a48~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a80~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a64~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a112~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTADATAIN_bus\(0) <= \rf_instance|regfile~282_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a96~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a49~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a81~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a65~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a113~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTADATAIN_bus\(0) <= \rf_instance|regfile~291_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a97~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a50~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a82~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a66~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a114~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTADATAIN_bus\(0) <= \rf_instance|regfile~264_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a98~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a51~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a83~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a67~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a115~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTADATAIN_bus\(0) <= \rf_instance|regfile~269_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a99~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a52~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a84~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a68~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a116~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTADATAIN_bus\(0) <= \rf_instance|regfile~246_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a100~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a53~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a85~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a69~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a117~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTADATAIN_bus\(0) <= \rf_instance|regfile~251_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a101~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a54~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a86~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a70~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a118~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTADATAIN_bus\(0) <= \rf_instance|regfile~228_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a102~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a55~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a87~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a71~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a119~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTADATAIN_bus\(0) <= \rf_instance|regfile~233_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a103~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a56~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a88~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a72~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a120~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTADATAIN_bus\(0) <= \rf_instance|regfile~188_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a104~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a57~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a89~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a73~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a121~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTADATAIN_bus\(0) <= \rf_instance|regfile~215_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a105~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a58~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a90~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a74~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a122~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTADATAIN_bus\(0) <= \rf_instance|regfile~206_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a106~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a59~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a91~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a75~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a123~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTADATAIN_bus\(0) <= \rf_instance|regfile~197_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a107~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a60~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a92~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a76~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a124~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTADATAIN_bus\(0) <= \rf_instance|regfile~174_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a108~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a61~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a93~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a77~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a125~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTADATAIN_bus\(0) <= \rf_instance|regfile~179_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a109~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a62~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a94~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a78~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a126~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTADATAIN_bus\(0) <= \rf_instance|regfile~156_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a110~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a63~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a95~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & \m_write[6]~8_combout\
& \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a79~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a127~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTBDATAOUT_bus\(0);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTADATAIN_bus\(0) <= \rf_instance|regfile~161_combout\;

\memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTAADDR_bus\ <= (\m_write[12]~14_combout\ & \m_write[11]~13_combout\ & \m_write[10]~12_combout\ & \m_write[9]~11_combout\ & \m_write[8]~10_combout\ & \m_write[7]~9_combout\ & 
\m_write[6]~8_combout\ & \m_write[5]~7_combout\ & \m_write[4]~6_combout\ & \m_write[3]~5_combout\ & \m_write[2]~4_combout\ & \m_write[1]~3_combout\ & \m_write[0]~2_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTBADDR_bus\ <= (\m_read[12]~12_combout\ & \m_read[11]~11_combout\ & \m_read[10]~10_combout\ & \m_read[9]~9_combout\ & \m_read[8]~8_combout\ & \m_read[7]~7_combout\ & \m_read[6]~6_combout\ & 
\m_read[5]~5_combout\ & \m_read[4]~4_combout\ & \m_read[3]~3_combout\ & \m_read[2]~2_combout\ & \m_read[1]~1_combout\ & \m_read[0]~0_combout\);

\memory_instance|ram_rtl_0|auto_generated|ram_block1a111~portbdataout\ <= \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTBDATAOUT_bus\(0);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pc_c~input_o\ <= NOT \pc_c~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X77_Y23_N23
\ir[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[0]~output_o\);

-- Location: IOOBUF_X77_Y17_N23
\ir[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[1]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\ir[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[2]~output_o\);

-- Location: IOOBUF_X55_Y0_N23
\ir[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[3]~output_o\);

-- Location: IOOBUF_X57_Y0_N23
\ir[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[4]~output_o\);

-- Location: IOOBUF_X77_Y18_N23
\ir[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\ir[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[6]~output_o\);

-- Location: IOOBUF_X77_Y18_N2
\ir[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[7]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\ir[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[8]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[8]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\ir[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[9]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[9]~output_o\);

-- Location: IOOBUF_X77_Y16_N9
\ir[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[10]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[10]~output_o\);

-- Location: IOOBUF_X77_Y16_N2
\ir[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[11]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[11]~output_o\);

-- Location: IOOBUF_X57_Y0_N16
\ir[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[12]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[12]~output_o\);

-- Location: IOOBUF_X77_Y26_N2
\ir[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[13]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\ir[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[14]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[14]~output_o\);

-- Location: IOOBUF_X77_Y22_N9
\ir[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir[15]~reg0_q\,
	devoe => ww_devoe,
	o => \ir[15]~output_o\);

-- Location: IOOBUF_X48_Y0_N16
\c~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~reg0_q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\z~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~reg0_q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X50_Y0_N23
\z_imm~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z_imm~reg0_q\,
	devoe => ww_devoe,
	o => \z_imm~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X37_Y0_N22
\rf_dc[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_dc(1),
	o => \rf_dc[1]~input_o\);

-- Location: IOIBUF_X77_Y21_N22
\m_rac~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_rac,
	o => \m_rac~input_o\);

-- Location: IOIBUF_X77_Y19_N15
\alu_op~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op,
	o => \alu_op~input_o\);

-- Location: IOIBUF_X77_Y20_N15
\alu_bc[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_bc(0),
	o => \alu_bc[0]~input_o\);

-- Location: IOIBUF_X77_Y20_N22
\alu_bc[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_bc(1),
	o => \alu_bc[1]~input_o\);

-- Location: IOIBUF_X77_Y18_N8
\rf_dc[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_dc(0),
	o => \rf_dc[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N8
\rf_master[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_master(2),
	o => \rf_master[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\rf_rc~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_rc,
	o => \rf_rc~input_o\);

-- Location: IOIBUF_X59_Y0_N8
\m_wac~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_wac,
	o => \m_wac~input_o\);

-- Location: LCCOMB_X49_Y21_N22
\m_write[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[14]~1_combout\ = (\m_wac~input_o\ & ((\tr[14]~14_combout\))) # (!\m_wac~input_o\ & (tr(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(14),
	datab => \m_wac~input_o\,
	datad => \tr[14]~14_combout\,
	combout => \m_write[14]~1_combout\);

-- Location: IOIBUF_X39_Y0_N8
\m_we~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_we,
	o => \m_we~input_o\);

-- Location: LCCOMB_X48_Y21_N18
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\ = (\m_we~input_o\ & ((\m_wac~input_o\ & ((\tr[15]~15_combout\))) # (!\m_wac~input_o\ & (tr(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(15),
	datab => \m_we~input_o\,
	datac => \m_wac~input_o\,
	datad => \tr[15]~15_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\);

-- Location: LCCOMB_X48_Y21_N14
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\ = (\m_write[14]~1_combout\ & (\m_write[13]~0_combout\ & \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_write[14]~1_combout\,
	datac => \m_write[13]~0_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\);

-- Location: LCCOMB_X48_Y21_N20
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\ = (\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\ & (\m_write[13]~0_combout\ & !\m_write[14]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\,
	datac => \m_write[13]~0_combout\,
	datad => \m_write[14]~1_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\);

-- Location: LCCOMB_X48_Y21_N16
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\ = (\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\ & (!\m_write[13]~0_combout\ & \m_write[14]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\,
	datac => \m_write[13]~0_combout\,
	datad => \m_write[14]~1_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\);

-- Location: LCCOMB_X49_Y21_N0
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\ = (\m_we~input_o\ & ((\m_wac~input_o\ & ((!\tr[15]~15_combout\))) # (!\m_wac~input_o\ & (!tr(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_we~input_o\,
	datab => \m_wac~input_o\,
	datac => tr(15),
	datad => \tr[15]~15_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\);

-- Location: LCCOMB_X49_Y21_N6
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\ = (!\m_write[13]~0_combout\ & (!\m_write[14]~1_combout\ & \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_write[13]~0_combout\,
	datac => \m_write[14]~1_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\rf_wc[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_wc(1),
	o => \rf_wc[1]~input_o\);

-- Location: IOIBUF_X55_Y0_N15
\rf_wc[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_wc(0),
	o => \rf_wc[0]~input_o\);

-- Location: LCCOMB_X52_Y17_N20
\rf_w[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_w[2]~2_combout\ = (\rf_wc[0]~input_o\ & ((\ir[8]~reg0_q\) # ((\rf_wc[1]~input_o\)))) # (!\rf_wc[0]~input_o\ & (((\ir[11]~reg0_q\ & !\rf_wc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[8]~reg0_q\,
	datab => \ir[11]~reg0_q\,
	datac => \rf_wc[0]~input_o\,
	datad => \rf_wc[1]~input_o\,
	combout => \rf_w[2]~2_combout\);

-- Location: LCCOMB_X52_Y17_N14
\rf_w[2]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_w[2]~3_combout\ = (\rf_wc[1]~input_o\ & ((\rf_w[2]~2_combout\ & (\rf_master[2]~input_o\)) # (!\rf_w[2]~2_combout\ & ((\ir[5]~reg0_q\))))) # (!\rf_wc[1]~input_o\ & (((\rf_w[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_wc[1]~input_o\,
	datab => \rf_master[2]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \rf_w[2]~2_combout\,
	combout => \rf_w[2]~3_combout\);

-- Location: IOIBUF_X50_Y0_N15
\rf_we~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_we,
	o => \rf_we~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\rf_master[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_master(1),
	o => \rf_master[1]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\alu_ac[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ac(1),
	o => \alu_ac[1]~input_o\);

-- Location: LCCOMB_X55_Y18_N16
\rf_instance|regfile~56feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~56feeder_combout\ = \rf_data[4]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[4]~21_combout\,
	combout => \rf_instance|regfile~56feeder_combout\);

-- Location: IOIBUF_X59_Y0_N22
\rf_master[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_master(0),
	o => \rf_master[0]~input_o\);

-- Location: LCCOMB_X52_Y17_N4
\rf_w[0]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_w[0]~4_combout\ = (\rf_wc[1]~input_o\ & (((\rf_wc[0]~input_o\)))) # (!\rf_wc[1]~input_o\ & ((\rf_wc[0]~input_o\ & (\ir[6]~reg0_q\)) # (!\rf_wc[0]~input_o\ & ((\ir[9]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_wc[1]~input_o\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_wc[0]~input_o\,
	datad => \ir[9]~reg0_q\,
	combout => \rf_w[0]~4_combout\);

-- Location: FF_X50_Y17_N19
\rf_instance|regfile~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[3]~27_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~135_q\);

-- Location: LCCOMB_X49_Y17_N4
\rf_instance|regfile~119feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~119feeder_combout\ = \rf_data[3]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[3]~27_combout\,
	combout => \rf_instance|regfile~119feeder_combout\);

-- Location: LCCOMB_X48_Y19_N20
\rf_instance|regfile~297\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~297_combout\ = (\rf_w[2]~3_combout\ & (!\rf_w[0]~5_combout\ & (\rf_we~input_o\ & \rf_w[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_w[0]~5_combout\,
	datac => \rf_we~input_o\,
	datad => \rf_w[1]~1_combout\,
	combout => \rf_instance|regfile~297_combout\);

-- Location: FF_X49_Y17_N5
\rf_instance|regfile~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~119feeder_combout\,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~119_q\);

-- Location: LCCOMB_X48_Y19_N22
\rf_instance|regfile~298\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~298_combout\ = (\rf_w[2]~3_combout\ & (!\rf_w[0]~5_combout\ & (\rf_we~input_o\ & !\rf_w[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_w[0]~5_combout\,
	datac => \rf_we~input_o\,
	datad => \rf_w[1]~1_combout\,
	combout => \rf_instance|regfile~298_combout\);

-- Location: FF_X50_Y17_N13
\rf_instance|regfile~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[3]~27_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~87_q\);

-- Location: LCCOMB_X49_Y17_N10
\rf_instance|regfile~272\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~272_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & (\rf_instance|regfile~119_q\)) # (!\ir[7]~reg0_q\ & ((\rf_instance|regfile~87_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~119_q\,
	datac => \rf_instance|regfile~87_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~272_combout\);

-- Location: LCCOMB_X49_Y17_N26
\rf_instance|regfile~273\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~273_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~272_combout\ & (\rf_instance|regfile~135_q\)) # (!\rf_instance|regfile~272_combout\ & ((\rf_instance|regfile~103_q\))))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~135_q\,
	datac => \rf_instance|regfile~103_q\,
	datad => \rf_instance|regfile~272_combout\,
	combout => \rf_instance|regfile~273_combout\);

-- Location: LCCOMB_X50_Y22_N26
\rf_instance|regfile~71feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~71feeder_combout\ = \rf_data[3]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[3]~27_combout\,
	combout => \rf_instance|regfile~71feeder_combout\);

-- Location: LCCOMB_X52_Y17_N22
\rf_instance|regfile~295\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~295_combout\ = (!\rf_w[2]~3_combout\ & (\rf_we~input_o\ & (\rf_w[1]~1_combout\ & \rf_w[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_we~input_o\,
	datac => \rf_w[1]~1_combout\,
	datad => \rf_w[0]~5_combout\,
	combout => \rf_instance|regfile~295_combout\);

-- Location: FF_X50_Y22_N27
\rf_instance|regfile~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~71feeder_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~71_q\);

-- Location: LCCOMB_X50_Y22_N24
\rf_instance|regfile~55feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~55feeder_combout\ = \rf_data[3]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[3]~27_combout\,
	combout => \rf_instance|regfile~55feeder_combout\);

-- Location: FF_X50_Y22_N25
\rf_instance|regfile~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~55feeder_combout\,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~55_q\);

-- Location: LCCOMB_X49_Y18_N16
\rf_instance|regfile~39feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~39feeder_combout\ = \rf_data[3]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[3]~27_combout\,
	combout => \rf_instance|regfile~39feeder_combout\);

-- Location: LCCOMB_X52_Y17_N2
\rf_instance|regfile~293\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~293_combout\ = (!\rf_w[2]~3_combout\ & (\rf_we~input_o\ & (!\rf_w[1]~1_combout\ & \rf_w[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_we~input_o\,
	datac => \rf_w[1]~1_combout\,
	datad => \rf_w[0]~5_combout\,
	combout => \rf_instance|regfile~293_combout\);

-- Location: FF_X49_Y18_N17
\rf_instance|regfile~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~39feeder_combout\,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~39_q\);

-- Location: LCCOMB_X52_Y17_N8
\rf_instance|regfile~294\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~294_combout\ = (!\rf_w[2]~3_combout\ & (\rf_we~input_o\ & (!\rf_w[1]~1_combout\ & !\rf_w[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_we~input_o\,
	datac => \rf_w[1]~1_combout\,
	datad => \rf_w[0]~5_combout\,
	combout => \rf_instance|regfile~294_combout\);

-- Location: FF_X51_Y18_N5
\rf_instance|regfile~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[3]~27_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~23_q\);

-- Location: LCCOMB_X49_Y18_N14
\rf_instance|regfile~270\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~270_combout\ = (\ir[7]~reg0_q\ & (((\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & ((\ir[6]~reg0_q\ & (\rf_instance|regfile~39_q\)) # (!\ir[6]~reg0_q\ & ((\rf_instance|regfile~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~39_q\,
	datac => \ir[6]~reg0_q\,
	datad => \rf_instance|regfile~23_q\,
	combout => \rf_instance|regfile~270_combout\);

-- Location: LCCOMB_X50_Y22_N14
\rf_instance|regfile~271\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~271_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~270_combout\ & (\rf_instance|regfile~71_q\)) # (!\rf_instance|regfile~270_combout\ & ((\rf_instance|regfile~55_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~71_q\,
	datab => \rf_instance|regfile~55_q\,
	datac => \ir[7]~reg0_q\,
	datad => \rf_instance|regfile~270_combout\,
	combout => \rf_instance|regfile~271_combout\);

-- Location: LCCOMB_X53_Y19_N12
\pc[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[3]~3_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~273_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~273_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~271_combout\,
	combout => \pc[3]~3_combout\);

-- Location: LCCOMB_X53_Y19_N14
\alu_b[3]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[3]~17_combout\ = (\alu_bc[1]~input_o\ & (((\ir[3]~reg0_q\)))) # (!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & ((\pc[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[0]~input_o\,
	datab => \ir[3]~reg0_q\,
	datac => \alu_bc[1]~input_o\,
	datad => \pc[3]~3_combout\,
	combout => \alu_b[3]~17_combout\);

-- Location: IOIBUF_X39_Y0_N22
\alu_ac[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_ac(0),
	o => \alu_ac[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\trc~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trc,
	o => \trc~input_o\);

-- Location: FF_X50_Y19_N19
\tr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[3]~3_combout\,
	asdata => \rf_instance|regfile~269_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(3));

-- Location: IOIBUF_X59_Y0_N1
\pc_c~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_c,
	o => \pc_c~input_o\);

-- Location: IOIBUF_X77_Y21_N15
\upd_pc~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upd_pc,
	o => \upd_pc~input_o\);

-- Location: FF_X53_Y19_N13
\pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[3]~3_combout\,
	asdata => \tr[3]~3_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(3));

-- Location: LCCOMB_X51_Y19_N6
\alu_a[3]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[3]~26_combout\ = (\alu_ac[0]~input_o\ & (((\alu_ac[1]~input_o\)))) # (!\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\ & (pc(3))) # (!\alu_ac[1]~input_o\ & ((\rf_instance|regfile~269_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => pc(3),
	datac => \alu_ac[1]~input_o\,
	datad => \rf_instance|regfile~269_combout\,
	combout => \alu_a[3]~26_combout\);

-- Location: LCCOMB_X51_Y19_N0
\alu_a[3]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[3]~27_combout\ = (\alu_ac[0]~input_o\ & ((\alu_a[3]~26_combout\ & (tr(3))) # (!\alu_a[3]~26_combout\ & ((\ir[3]~reg0_q\))))) # (!\alu_ac[0]~input_o\ & (((\alu_a[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => tr(3),
	datac => \ir[3]~reg0_q\,
	datad => \alu_a[3]~26_combout\,
	combout => \alu_a[3]~27_combout\);

-- Location: LCCOMB_X53_Y19_N20
\alu_instance|logic|o~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~3_combout\ = (!\alu_a[3]~27_combout\) # (!\alu_b[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b[3]~17_combout\,
	datac => \alu_a[3]~27_combout\,
	combout => \alu_instance|logic|o~3_combout\);

-- Location: FF_X50_Y20_N9
\rf_instance|regfile~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[10]~13_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~142_q\);

-- Location: LCCOMB_X52_Y17_N16
\rf_instance|regfile~296\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~296_combout\ = (\rf_w[2]~3_combout\ & (\rf_we~input_o\ & (!\rf_w[1]~1_combout\ & \rf_w[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_we~input_o\,
	datac => \rf_w[1]~1_combout\,
	datad => \rf_w[0]~5_combout\,
	combout => \rf_instance|regfile~296_combout\);

-- Location: FF_X49_Y17_N21
\rf_instance|regfile~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[10]~13_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~110_q\);

-- Location: FF_X50_Y17_N17
\rf_instance|regfile~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[10]~13_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~94_q\);

-- Location: FF_X49_Y17_N19
\rf_instance|regfile~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[10]~13_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~126_q\);

-- Location: LCCOMB_X49_Y17_N18
\rf_instance|regfile~209\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~209_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & ((\rf_instance|regfile~126_q\))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~94_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~94_q\,
	datac => \rf_instance|regfile~126_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~209_combout\);

-- Location: LCCOMB_X49_Y17_N20
\rf_instance|regfile~210\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~210_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~209_combout\ & (\rf_instance|regfile~142_q\)) # (!\rf_instance|regfile~209_combout\ & ((\rf_instance|regfile~110_q\))))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~142_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~110_q\,
	datad => \rf_instance|regfile~209_combout\,
	combout => \rf_instance|regfile~210_combout\);

-- Location: FF_X50_Y20_N23
\rf_instance|regfile~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[10]~13_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~62_q\);

-- Location: FF_X51_Y18_N9
\rf_instance|regfile~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[10]~13_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~30_q\);

-- Location: FF_X51_Y17_N1
\rf_instance|regfile~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[10]~13_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~46_q\);

-- Location: LCCOMB_X51_Y17_N0
\rf_instance|regfile~207\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~207_combout\ = (\ir[6]~reg0_q\ & (((\rf_instance|regfile~46_q\) # (\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~30_q\ & ((!\ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~30_q\,
	datac => \rf_instance|regfile~46_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~207_combout\);

-- Location: LCCOMB_X51_Y17_N16
\rf_instance|regfile~208\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~208_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~207_combout\ & ((\rf_instance|regfile~78_q\))) # (!\rf_instance|regfile~207_combout\ & (\rf_instance|regfile~62_q\)))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~62_q\,
	datac => \rf_instance|regfile~78_q\,
	datad => \rf_instance|regfile~207_combout\,
	combout => \rf_instance|regfile~208_combout\);

-- Location: LCCOMB_X52_Y18_N16
\pc[10]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[10]~10_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~210_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~210_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~208_combout\,
	combout => \pc[10]~10_combout\);

-- Location: LCCOMB_X51_Y22_N20
\alu_b[10]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[10]~8_combout\ = ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[10]~10_combout\))) # (!\alu_b[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[14]~0_combout\,
	datad => \pc[10]~10_combout\,
	combout => \alu_b[10]~8_combout\);

-- Location: FF_X52_Y21_N1
\tr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[10]~10_combout\,
	asdata => \rf_instance|regfile~206_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(10));

-- Location: LCCOMB_X50_Y20_N6
\alu_a[10]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[10]~12_combout\ = (\alu_ac[1]~input_o\ & (\alu_ac[0]~input_o\)) # (!\alu_ac[1]~input_o\ & ((\alu_ac[0]~input_o\ & (\ir[5]~reg0_q\)) # (!\alu_ac[0]~input_o\ & ((\rf_instance|regfile~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[1]~input_o\,
	datab => \alu_ac[0]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \rf_instance|regfile~206_combout\,
	combout => \alu_a[10]~12_combout\);

-- Location: LCCOMB_X50_Y20_N16
\alu_a[10]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[10]~13_combout\ = (\alu_ac[1]~input_o\ & ((\alu_a[10]~12_combout\ & ((tr(10)))) # (!\alu_a[10]~12_combout\ & (pc(10))))) # (!\alu_ac[1]~input_o\ & (((\alu_a[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[1]~input_o\,
	datab => pc(10),
	datac => tr(10),
	datad => \alu_a[10]~12_combout\,
	combout => \alu_a[10]~13_combout\);

-- Location: LCCOMB_X51_Y22_N18
\alu_instance|logic|o~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~10_combout\ = (!\alu_a[10]~13_combout\) # (!\alu_b[10]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b[10]~8_combout\,
	datad => \alu_a[10]~13_combout\,
	combout => \alu_instance|logic|o~10_combout\);

-- Location: LCCOMB_X51_Y22_N6
\alu_b[9]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[9]~9_combout\ = ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[9]~9_combout\))) # (!\alu_b[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[14]~0_combout\,
	datad => \pc[9]~9_combout\,
	combout => \alu_b[9]~9_combout\);

-- Location: LCCOMB_X55_Y21_N8
\alu_instance|logic|o~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~9_combout\ = (!\alu_b[9]~9_combout\) # (!\alu_a[9]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_a[9]~15_combout\,
	datad => \alu_b[9]~9_combout\,
	combout => \alu_instance|logic|o~9_combout\);

-- Location: LCCOMB_X52_Y19_N4
\alu_instance|add|p_0[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(2) = \alu_b[2]~16_combout\ $ (\alu_a[2]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[2]~16_combout\,
	datad => \alu_a[2]~25_combout\,
	combout => \alu_instance|add|p_0\(2));

-- Location: IOIBUF_X62_Y0_N8
\alu_cin~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_cin,
	o => \alu_cin~input_o\);

-- Location: LCCOMB_X52_Y18_N8
\pc[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[0]~feeder_combout\ = \pc[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~0_combout\,
	combout => \pc[0]~feeder_combout\);

-- Location: FF_X52_Y18_N9
\pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[0]~feeder_combout\,
	asdata => \tr[0]~0_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(0));

-- Location: LCCOMB_X48_Y22_N18
\rf_data[0]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[0]~28_combout\ = (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & (pc(0))) # (!\rf_dc[1]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => pc(0),
	datac => \rf_dc[0]~input_o\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\,
	combout => \rf_data[0]~28_combout\);

-- Location: LCCOMB_X48_Y22_N0
\rf_data[0]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[0]~29_combout\ = (\rf_data[0]~28_combout\) # ((\rf_dc[0]~input_o\ & (!\rf_dc[1]~input_o\ & \tr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[0]~input_o\,
	datab => \rf_dc[1]~input_o\,
	datac => \tr[0]~0_combout\,
	datad => \rf_data[0]~28_combout\,
	combout => \rf_data[0]~29_combout\);

-- Location: FF_X51_Y19_N31
\rf_instance|regfile~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[0]~29_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~100_q\);

-- Location: LCCOMB_X48_Y22_N6
\rf_instance|regfile~132feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~132feeder_combout\ = \rf_data[0]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[0]~29_combout\,
	combout => \rf_instance|regfile~132feeder_combout\);

-- Location: FF_X48_Y22_N7
\rf_instance|regfile~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~132feeder_combout\,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~132_q\);

-- Location: FF_X48_Y18_N1
\rf_instance|regfile~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[0]~29_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~84_q\);

-- Location: FF_X48_Y18_N11
\rf_instance|regfile~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[0]~29_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~116_q\);

-- Location: LCCOMB_X48_Y18_N10
\rf_instance|regfile~276\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~276_combout\ = (\ir[7]~reg0_q\ & (((\rf_instance|regfile~116_q\) # (\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~84_q\ & ((!\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~84_q\,
	datac => \rf_instance|regfile~116_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~276_combout\);

-- Location: LCCOMB_X48_Y18_N26
\rf_instance|regfile~277\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~277_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~276_combout\ & ((\rf_instance|regfile~132_q\))) # (!\rf_instance|regfile~276_combout\ & (\rf_instance|regfile~100_q\)))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~100_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~132_q\,
	datad => \rf_instance|regfile~276_combout\,
	combout => \rf_instance|regfile~277_combout\);

-- Location: FF_X53_Y18_N1
\rf_instance|regfile~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[0]~29_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~52_q\);

-- Location: FF_X51_Y19_N5
\rf_instance|regfile~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[0]~29_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~68_q\);

-- Location: FF_X51_Y18_N15
\rf_instance|regfile~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[0]~29_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~20_q\);

-- Location: FF_X50_Y18_N15
\rf_instance|regfile~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[0]~29_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~36_q\);

-- Location: LCCOMB_X50_Y18_N14
\rf_instance|regfile~274\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~274_combout\ = (\ir[7]~reg0_q\ & (((\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & ((\ir[6]~reg0_q\ & ((\rf_instance|regfile~36_q\))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~20_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~20_q\,
	datac => \rf_instance|regfile~36_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~274_combout\);

-- Location: LCCOMB_X53_Y18_N26
\rf_instance|regfile~275\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~275_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~274_combout\ & ((\rf_instance|regfile~68_q\))) # (!\rf_instance|regfile~274_combout\ & (\rf_instance|regfile~52_q\)))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~52_q\,
	datac => \rf_instance|regfile~68_q\,
	datad => \rf_instance|regfile~274_combout\,
	combout => \rf_instance|regfile~275_combout\);

-- Location: LCCOMB_X52_Y18_N22
\pc[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[0]~0_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~277_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[8]~reg0_q\,
	datac => \rf_instance|regfile~277_combout\,
	datad => \rf_instance|regfile~275_combout\,
	combout => \pc[0]~0_combout\);

-- Location: LCCOMB_X51_Y21_N10
\alu_b[0]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[0]~18_combout\ = (\alu_bc[1]~input_o\ & (((\ir[0]~reg0_q\)))) # (!\alu_bc[1]~input_o\ & ((\alu_bc[0]~input_o\) # ((\pc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[0]~input_o\,
	datab => \alu_bc[1]~input_o\,
	datac => \ir[0]~reg0_q\,
	datad => \pc[0]~0_combout\,
	combout => \alu_b[0]~18_combout\);

-- Location: LCCOMB_X51_Y21_N22
\alu_instance|add|sum[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(0) = \alu_cin~input_o\ $ (\alu_a[0]~29_combout\ $ (\alu_b[0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_cin~input_o\,
	datab => \alu_a[0]~29_combout\,
	datad => \alu_b[0]~18_combout\,
	combout => \alu_instance|add|sum\(0));

-- Location: LCCOMB_X51_Y21_N4
\alu_instance|logic|o~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~0_combout\ = (!\alu_a[0]~29_combout\) # (!\alu_b[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[0]~18_combout\,
	datad => \alu_a[0]~29_combout\,
	combout => \alu_instance|logic|o~0_combout\);

-- Location: LCCOMB_X50_Y19_N20
\tr[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[0]~0_combout\ = (\alu_op~input_o\ & ((\alu_instance|logic|o~0_combout\))) # (!\alu_op~input_o\ & (\alu_instance|add|sum\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|add|sum\(0),
	datad => \alu_instance|logic|o~0_combout\,
	combout => \tr[0]~0_combout\);

-- Location: LCCOMB_X51_Y18_N14
\rf_instance|regfile~280\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~280_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~36_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~36_q\,
	datac => \rf_instance|regfile~20_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~280_combout\);

-- Location: LCCOMB_X51_Y19_N4
\rf_instance|regfile~281\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~281_combout\ = (\rf_instance|regfile~280_combout\ & (((\rf_instance|regfile~68_q\) # (!\rf_r1[1]~1_combout\)))) # (!\rf_instance|regfile~280_combout\ & (\rf_instance|regfile~52_q\ & ((\rf_r1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~280_combout\,
	datab => \rf_instance|regfile~52_q\,
	datac => \rf_instance|regfile~68_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~281_combout\);

-- Location: LCCOMB_X48_Y18_N0
\rf_instance|regfile~278\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~278_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~116_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~116_q\,
	datac => \rf_instance|regfile~84_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~278_combout\);

-- Location: LCCOMB_X51_Y19_N30
\rf_instance|regfile~279\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~279_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~278_combout\ & (\rf_instance|regfile~132_q\)) # (!\rf_instance|regfile~278_combout\ & ((\rf_instance|regfile~100_q\))))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~132_q\,
	datac => \rf_instance|regfile~100_q\,
	datad => \rf_instance|regfile~278_combout\,
	combout => \rf_instance|regfile~279_combout\);

-- Location: LCCOMB_X51_Y19_N20
\rf_instance|regfile~282\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~282_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~279_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[2]~2_combout\,
	datab => \rf_instance|regfile~281_combout\,
	datac => \rf_instance|regfile~279_combout\,
	combout => \rf_instance|regfile~282_combout\);

-- Location: FF_X50_Y19_N21
\tr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[0]~0_combout\,
	asdata => \rf_instance|regfile~282_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(0));

-- Location: LCCOMB_X51_Y19_N2
\alu_a[0]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[0]~28_combout\ = (\alu_ac[0]~input_o\ & ((\ir[0]~reg0_q\) # ((\alu_ac[1]~input_o\)))) # (!\alu_ac[0]~input_o\ & (((!\alu_ac[1]~input_o\ & \rf_instance|regfile~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \ir[0]~reg0_q\,
	datac => \alu_ac[1]~input_o\,
	datad => \rf_instance|regfile~282_combout\,
	combout => \alu_a[0]~28_combout\);

-- Location: LCCOMB_X51_Y19_N24
\alu_a[0]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[0]~29_combout\ = (\alu_ac[1]~input_o\ & ((\alu_a[0]~28_combout\ & (tr(0))) # (!\alu_a[0]~28_combout\ & ((pc(0)))))) # (!\alu_ac[1]~input_o\ & (((\alu_a[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[1]~input_o\,
	datab => tr(0),
	datac => pc(0),
	datad => \alu_a[0]~28_combout\,
	combout => \alu_a[0]~29_combout\);

-- Location: LCCOMB_X51_Y19_N14
\alu_instance|add|c~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c~9_combout\ = (\alu_cin~input_o\ & (\alu_a[0]~29_combout\ $ (\alu_b[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_cin~input_o\,
	datab => \alu_a[0]~29_combout\,
	datad => \alu_b[0]~18_combout\,
	combout => \alu_instance|add|c~9_combout\);

-- Location: FF_X53_Y19_N23
\pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[1]~1_combout\,
	asdata => \tr[1]~1_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(1));

-- Location: FF_X50_Y19_N15
\tr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[1]~1_combout\,
	asdata => \rf_instance|regfile~291_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(1));

-- Location: LCCOMB_X52_Y19_N30
\alu_a[1]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[1]~31_combout\ = (\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\ & ((tr(1)))) # (!\alu_ac[1]~input_o\ & (\ir[1]~reg0_q\)))) # (!\alu_ac[0]~input_o\ & (((\alu_ac[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \ir[1]~reg0_q\,
	datac => tr(1),
	datad => \alu_ac[1]~input_o\,
	combout => \alu_a[1]~31_combout\);

-- Location: FF_X52_Y19_N17
\rf_instance|regfile~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[1]~31_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~69_q\);

-- Location: FF_X52_Y17_N25
\rf_instance|regfile~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[1]~31_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~53_q\);

-- Location: LCCOMB_X51_Y17_N10
\rf_instance|regfile~37feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~37feeder_combout\ = \rf_data[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[1]~31_combout\,
	combout => \rf_instance|regfile~37feeder_combout\);

-- Location: FF_X51_Y17_N11
\rf_instance|regfile~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~37feeder_combout\,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~37_q\);

-- Location: FF_X52_Y17_N19
\rf_instance|regfile~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[1]~31_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~21_q\);

-- Location: LCCOMB_X51_Y17_N12
\rf_instance|regfile~283\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~283_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~37_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~37_q\,
	datab => \rf_instance|regfile~21_q\,
	datac => \rf_r1[1]~1_combout\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~283_combout\);

-- Location: LCCOMB_X52_Y19_N14
\rf_instance|regfile~284\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~284_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~283_combout\ & (\rf_instance|regfile~69_q\)) # (!\rf_instance|regfile~283_combout\ & ((\rf_instance|regfile~53_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~69_q\,
	datac => \rf_instance|regfile~53_q\,
	datad => \rf_instance|regfile~283_combout\,
	combout => \rf_instance|regfile~284_combout\);

-- Location: LCCOMB_X52_Y19_N12
\alu_a[1]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[1]~30_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~286_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~284_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~284_combout\,
	datad => \rf_instance|regfile~286_combout\,
	combout => \alu_a[1]~30_combout\);

-- Location: LCCOMB_X52_Y19_N8
\alu_a[1]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[1]~32_combout\ = (\alu_ac[0]~input_o\ & (((\alu_a[1]~31_combout\)))) # (!\alu_ac[0]~input_o\ & ((\alu_a[1]~31_combout\ & (pc(1))) # (!\alu_a[1]~31_combout\ & ((\alu_a[1]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => pc(1),
	datac => \alu_a[1]~31_combout\,
	datad => \alu_a[1]~30_combout\,
	combout => \alu_a[1]~32_combout\);

-- Location: LCCOMB_X51_Y19_N10
\alu_instance|add|lvl1:1:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:1:GP1|G~0_combout\ = (\alu_a[1]~32_combout\ & ((\alu_b[1]~19_combout\) # ((\alu_a[0]~29_combout\ & \alu_b[0]~18_combout\)))) # (!\alu_a[1]~32_combout\ & (\alu_a[0]~29_combout\ & (\alu_b[1]~19_combout\ & \alu_b[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[0]~29_combout\,
	datab => \alu_a[1]~32_combout\,
	datac => \alu_b[1]~19_combout\,
	datad => \alu_b[0]~18_combout\,
	combout => \alu_instance|add|lvl1:1:GP1|G~0_combout\);

-- Location: LCCOMB_X50_Y19_N22
\alu_instance|add|sum[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(2) = \alu_instance|add|p_0\(2) $ (((\alu_instance|add|lvl1:1:GP1|G~0_combout\) # ((\alu_instance|add|p_0\(1) & \alu_instance|add|c~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|p_0\(1),
	datab => \alu_instance|add|p_0\(2),
	datac => \alu_instance|add|c~9_combout\,
	datad => \alu_instance|add|lvl1:1:GP1|G~0_combout\,
	combout => \alu_instance|add|sum\(2));

-- Location: LCCOMB_X50_Y19_N16
\alu_instance|logic|o~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~2_combout\ = (!\alu_a[2]~25_combout\) # (!\alu_b[2]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b[2]~16_combout\,
	datad => \alu_a[2]~25_combout\,
	combout => \alu_instance|logic|o~2_combout\);

-- Location: LCCOMB_X50_Y19_N8
\tr[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[2]~2_combout\ = (\alu_op~input_o\ & ((\alu_instance|logic|o~2_combout\))) # (!\alu_op~input_o\ & (\alu_instance|add|sum\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|sum\(2),
	datab => \alu_instance|logic|o~2_combout\,
	datad => \alu_op~input_o\,
	combout => \tr[2]~2_combout\);

-- Location: LCCOMB_X53_Y18_N24
\rf_data[2]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[2]~24_combout\ = (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & (pc(2))) # (!\rf_dc[1]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(2),
	datab => \rf_dc[1]~input_o\,
	datac => \rf_dc[0]~input_o\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\,
	combout => \rf_data[2]~24_combout\);

-- Location: LCCOMB_X53_Y18_N30
\rf_data[2]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[2]~25_combout\ = (\rf_data[2]~24_combout\) # ((\tr[2]~2_combout\ & (!\rf_dc[1]~input_o\ & \rf_dc[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[2]~2_combout\,
	datab => \rf_dc[1]~input_o\,
	datac => \rf_dc[0]~input_o\,
	datad => \rf_data[2]~24_combout\,
	combout => \rf_data[2]~25_combout\);

-- Location: FF_X52_Y19_N21
\rf_instance|regfile~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[2]~25_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~102_q\);

-- Location: FF_X53_Y18_N7
\rf_instance|regfile~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[2]~25_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~134_q\);

-- Location: FF_X48_Y19_N31
\rf_instance|regfile~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[2]~25_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~86_q\);

-- Location: LCCOMB_X48_Y19_N8
\rf_instance|regfile~118feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~118feeder_combout\ = \rf_data[2]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[2]~25_combout\,
	combout => \rf_instance|regfile~118feeder_combout\);

-- Location: FF_X48_Y19_N9
\rf_instance|regfile~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~118feeder_combout\,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~118_q\);

-- Location: LCCOMB_X48_Y19_N16
\rf_instance|regfile~258\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~258_combout\ = (\ir[7]~reg0_q\ & (((\rf_instance|regfile~118_q\) # (\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~86_q\ & ((!\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~86_q\,
	datab => \rf_instance|regfile~118_q\,
	datac => \ir[7]~reg0_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~258_combout\);

-- Location: LCCOMB_X53_Y19_N28
\rf_instance|regfile~259\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~259_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~258_combout\ & ((\rf_instance|regfile~134_q\))) # (!\rf_instance|regfile~258_combout\ & (\rf_instance|regfile~102_q\)))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~102_q\,
	datac => \rf_instance|regfile~134_q\,
	datad => \rf_instance|regfile~258_combout\,
	combout => \rf_instance|regfile~259_combout\);

-- Location: FF_X51_Y17_N29
\rf_instance|regfile~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[2]~25_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~70_q\);

-- Location: FF_X52_Y17_N13
\rf_instance|regfile~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[2]~25_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~54_q\);

-- Location: FF_X51_Y17_N27
\rf_instance|regfile~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[2]~25_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~38_q\);

-- Location: FF_X52_Y17_N11
\rf_instance|regfile~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[2]~25_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~22_q\);

-- Location: LCCOMB_X52_Y17_N10
\rf_instance|regfile~256\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~256_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~38_q\) # ((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & (((\rf_instance|regfile~22_q\ & !\ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~38_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~22_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~256_combout\);

-- Location: LCCOMB_X52_Y17_N12
\rf_instance|regfile~257\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~257_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~256_combout\ & (\rf_instance|regfile~70_q\)) # (!\rf_instance|regfile~256_combout\ & ((\rf_instance|regfile~54_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~70_q\,
	datac => \rf_instance|regfile~54_q\,
	datad => \rf_instance|regfile~256_combout\,
	combout => \rf_instance|regfile~257_combout\);

-- Location: LCCOMB_X53_Y19_N18
\pc[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[2]~2_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~259_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~257_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[8]~reg0_q\,
	datab => \rf_instance|regfile~259_combout\,
	datad => \rf_instance|regfile~257_combout\,
	combout => \pc[2]~2_combout\);

-- Location: FF_X53_Y19_N19
\pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[2]~2_combout\,
	asdata => \tr[2]~2_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(2));

-- Location: FF_X50_Y19_N9
\tr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[2]~2_combout\,
	asdata => \rf_instance|regfile~264_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(2));

-- Location: LCCOMB_X50_Y19_N24
\alu_a[2]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[2]~24_combout\ = (\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\ & (tr(2))) # (!\alu_ac[1]~input_o\ & ((\ir[2]~reg0_q\))))) # (!\alu_ac[0]~input_o\ & (((!\alu_ac[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(2),
	datab => \alu_ac[0]~input_o\,
	datac => \alu_ac[1]~input_o\,
	datad => \ir[2]~reg0_q\,
	combout => \alu_a[2]~24_combout\);

-- Location: LCCOMB_X52_Y19_N6
\alu_a[2]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[2]~25_combout\ = (\alu_ac[0]~input_o\ & (((\alu_a[2]~24_combout\)))) # (!\alu_ac[0]~input_o\ & ((\alu_a[2]~24_combout\ & ((\rf_instance|regfile~264_combout\))) # (!\alu_a[2]~24_combout\ & (pc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => pc(2),
	datac => \alu_a[2]~24_combout\,
	datad => \rf_instance|regfile~264_combout\,
	combout => \alu_a[2]~25_combout\);

-- Location: LCCOMB_X52_Y19_N26
\alu_instance|add|lvl1:2:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:2:GP1|G~0_combout\ = (\alu_a[2]~25_combout\ & ((\alu_b[2]~16_combout\) # ((\alu_a[1]~32_combout\ & \alu_b[1]~19_combout\)))) # (!\alu_a[2]~25_combout\ & (\alu_a[1]~32_combout\ & (\alu_b[2]~16_combout\ & \alu_b[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[2]~25_combout\,
	datab => \alu_a[1]~32_combout\,
	datac => \alu_b[2]~16_combout\,
	datad => \alu_b[1]~19_combout\,
	combout => \alu_instance|add|lvl1:2:GP1|G~0_combout\);

-- Location: LCCOMB_X53_Y19_N6
\alu_b[4]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[4]~14_combout\ = (\alu_bc[1]~input_o\ & (((\ir[4]~reg0_q\)))) # (!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & ((\pc[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[0]~input_o\,
	datab => \ir[4]~reg0_q\,
	datac => \alu_bc[1]~input_o\,
	datad => \pc[4]~4_combout\,
	combout => \alu_b[4]~14_combout\);

-- Location: LCCOMB_X52_Y20_N28
\alu_instance|add|lvl1:4:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:4:GP1|G~0_combout\ = (\alu_b[4]~14_combout\ & ((\alu_a[4]~21_combout\) # ((\alu_a[3]~27_combout\ & \alu_b[3]~17_combout\)))) # (!\alu_b[4]~14_combout\ & (\alu_a[4]~21_combout\ & (\alu_a[3]~27_combout\ & \alu_b[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[4]~14_combout\,
	datab => \alu_a[4]~21_combout\,
	datac => \alu_a[3]~27_combout\,
	datad => \alu_b[3]~17_combout\,
	combout => \alu_instance|add|lvl1:4:GP1|G~0_combout\);

-- Location: FF_X53_Y20_N29
\pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[5]~5_combout\,
	asdata => \tr[5]~5_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(5));

-- Location: LCCOMB_X52_Y22_N6
\rf_data[5]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[5]~22_combout\ = (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & (pc(5))) # (!\rf_dc[1]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => pc(5),
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\,
	combout => \rf_data[5]~22_combout\);

-- Location: LCCOMB_X52_Y22_N30
\rf_data[5]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[5]~23_combout\ = (\rf_data[5]~22_combout\) # ((!\rf_dc[1]~input_o\ & (\rf_dc[0]~input_o\ & \tr[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => \rf_data[5]~22_combout\,
	datad => \tr[5]~5_combout\,
	combout => \rf_data[5]~23_combout\);

-- Location: FF_X52_Y20_N23
\rf_instance|regfile~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[5]~23_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~137_q\);

-- Location: FF_X49_Y17_N31
\rf_instance|regfile~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[5]~23_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~105_q\);

-- Location: FF_X50_Y17_N11
\rf_instance|regfile~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[5]~23_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~89_q\);

-- Location: FF_X49_Y17_N13
\rf_instance|regfile~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[5]~23_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~121_q\);

-- Location: LCCOMB_X49_Y17_N12
\rf_instance|regfile~254\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~254_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & ((\rf_instance|regfile~121_q\))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~89_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~89_q\,
	datac => \rf_instance|regfile~121_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~254_combout\);

-- Location: LCCOMB_X49_Y17_N30
\rf_instance|regfile~255\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~255_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~254_combout\ & (\rf_instance|regfile~137_q\)) # (!\rf_instance|regfile~254_combout\ & ((\rf_instance|regfile~105_q\))))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~137_q\,
	datac => \rf_instance|regfile~105_q\,
	datad => \rf_instance|regfile~254_combout\,
	combout => \rf_instance|regfile~255_combout\);

-- Location: FF_X52_Y20_N5
\rf_instance|regfile~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[5]~23_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~57_q\);

-- Location: FF_X52_Y22_N31
\rf_instance|regfile~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[5]~23_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~73_q\);

-- Location: FF_X51_Y18_N11
\rf_instance|regfile~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[5]~23_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~25_q\);

-- Location: FF_X49_Y18_N23
\rf_instance|regfile~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[5]~23_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~41_q\);

-- Location: LCCOMB_X49_Y18_N2
\rf_instance|regfile~252\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~252_combout\ = (\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\) # ((\rf_instance|regfile~41_q\)))) # (!\ir[6]~reg0_q\ & (!\ir[7]~reg0_q\ & (\rf_instance|regfile~25_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~25_q\,
	datad => \rf_instance|regfile~41_q\,
	combout => \rf_instance|regfile~252_combout\);

-- Location: LCCOMB_X53_Y20_N12
\rf_instance|regfile~253\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~253_combout\ = (\rf_instance|regfile~252_combout\ & (((\rf_instance|regfile~73_q\) # (!\ir[7]~reg0_q\)))) # (!\rf_instance|regfile~252_combout\ & (\rf_instance|regfile~57_q\ & ((\ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~57_q\,
	datab => \rf_instance|regfile~73_q\,
	datac => \rf_instance|regfile~252_combout\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~253_combout\);

-- Location: LCCOMB_X53_Y20_N28
\pc[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[5]~5_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~255_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~253_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~255_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~253_combout\,
	combout => \pc[5]~5_combout\);

-- Location: LCCOMB_X53_Y20_N14
\alu_b[5]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[5]~15_combout\ = (\alu_bc[1]~input_o\ & (((\ir[5]~reg0_q\)))) # (!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & ((\pc[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \pc[5]~5_combout\,
	combout => \alu_b[5]~15_combout\);

-- Location: LCCOMB_X53_Y20_N6
\alu_instance|logic|o~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~5_combout\ = (!\alu_a[5]~23_combout\) # (!\alu_b[5]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_b[5]~15_combout\,
	datad => \alu_a[5]~23_combout\,
	combout => \alu_instance|logic|o~5_combout\);

-- Location: LCCOMB_X53_Y19_N26
\alu_instance|add|lvl2:4:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:4:GP2|p0~0_combout\ = (\alu_b[4]~14_combout\ & (!\alu_a[4]~21_combout\ & (\alu_b[3]~17_combout\ $ (\alu_a[3]~27_combout\)))) # (!\alu_b[4]~14_combout\ & (\alu_a[4]~21_combout\ & (\alu_b[3]~17_combout\ $ (\alu_a[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[4]~14_combout\,
	datab => \alu_b[3]~17_combout\,
	datac => \alu_a[3]~27_combout\,
	datad => \alu_a[4]~21_combout\,
	combout => \alu_instance|add|lvl2:4:GP2|p0~0_combout\);

-- Location: LCCOMB_X53_Y21_N6
\alu_instance|add|c[5]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[5]~14_combout\ = (\alu_instance|add|lvl2:4:GP2|P~0_combout\ & (\alu_instance|add|lvl2:4:GP2|p0~0_combout\ & ((\alu_instance|add|c~9_combout\) # (!\alu_instance|logic|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|logic|o~0_combout\,
	datab => \alu_instance|add|lvl2:4:GP2|P~0_combout\,
	datac => \alu_instance|add|c~9_combout\,
	datad => \alu_instance|add|lvl2:4:GP2|p0~0_combout\,
	combout => \alu_instance|add|c[5]~14_combout\);

-- Location: LCCOMB_X53_Y21_N12
\alu_instance|add|c[5]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[5]~15_combout\ = (\alu_instance|add|lvl1:4:GP1|G~0_combout\) # ((\alu_instance|add|c[5]~14_combout\) # ((\alu_instance|add|lvl2:4:GP2|p0~0_combout\ & \alu_instance|add|lvl1:2:GP1|G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:4:GP2|p0~0_combout\,
	datab => \alu_instance|add|lvl1:4:GP1|G~0_combout\,
	datac => \alu_instance|add|lvl1:2:GP1|G~0_combout\,
	datad => \alu_instance|add|c[5]~14_combout\,
	combout => \alu_instance|add|c[5]~15_combout\);

-- Location: LCCOMB_X53_Y21_N26
\alu_instance|add|sum[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(5) = \alu_a[5]~23_combout\ $ (\alu_b[5]~15_combout\ $ (\alu_instance|add|c[5]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[5]~23_combout\,
	datac => \alu_b[5]~15_combout\,
	datad => \alu_instance|add|c[5]~15_combout\,
	combout => \alu_instance|add|sum\(5));

-- Location: LCCOMB_X52_Y21_N30
\tr[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[5]~5_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~5_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~5_combout\,
	datad => \alu_instance|add|sum\(5),
	combout => \tr[5]~5_combout\);

-- Location: FF_X52_Y21_N31
\tr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[5]~5_combout\,
	asdata => \rf_instance|regfile~251_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(5));

-- Location: LCCOMB_X52_Y20_N12
\alu_a[5]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[5]~22_combout\ = (\alu_ac[1]~input_o\ & ((pc(5)) # ((\alu_ac[0]~input_o\)))) # (!\alu_ac[1]~input_o\ & (((!\alu_ac[0]~input_o\ & \rf_instance|regfile~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[1]~input_o\,
	datab => pc(5),
	datac => \alu_ac[0]~input_o\,
	datad => \rf_instance|regfile~251_combout\,
	combout => \alu_a[5]~22_combout\);

-- Location: LCCOMB_X52_Y20_N30
\alu_a[5]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[5]~23_combout\ = (\alu_ac[0]~input_o\ & ((\alu_a[5]~22_combout\ & (tr(5))) # (!\alu_a[5]~22_combout\ & ((\ir[5]~reg0_q\))))) # (!\alu_ac[0]~input_o\ & (((\alu_a[5]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(5),
	datab => \ir[5]~reg0_q\,
	datac => \alu_ac[0]~input_o\,
	datad => \alu_a[5]~22_combout\,
	combout => \alu_a[5]~23_combout\);

-- Location: FF_X51_Y18_N3
\rf_instance|regfile~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[8]~9_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~28_q\);

-- Location: FF_X50_Y18_N27
\rf_instance|regfile~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[8]~9_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~44_q\);

-- Location: LCCOMB_X50_Y18_N26
\rf_instance|regfile~189\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~189_combout\ = (\ir[6]~reg0_q\ & (((\rf_instance|regfile~44_q\) # (\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~28_q\ & ((!\ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~28_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~44_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~189_combout\);

-- Location: FF_X50_Y20_N13
\rf_instance|regfile~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[8]~9_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~60_q\);

-- Location: LCCOMB_X50_Y18_N24
\rf_instance|regfile~190\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~190_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~189_combout\ & (\rf_instance|regfile~76_q\)) # (!\rf_instance|regfile~189_combout\ & ((\rf_instance|regfile~60_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~76_q\,
	datac => \rf_instance|regfile~189_combout\,
	datad => \rf_instance|regfile~60_q\,
	combout => \rf_instance|regfile~190_combout\);

-- Location: FF_X50_Y20_N11
\rf_instance|regfile~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[8]~9_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~140_q\);

-- Location: FF_X50_Y18_N13
\rf_instance|regfile~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[8]~9_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~108_q\);

-- Location: FF_X48_Y18_N13
\rf_instance|regfile~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[8]~9_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~92_q\);

-- Location: FF_X48_Y18_N23
\rf_instance|regfile~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[8]~9_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~124_q\);

-- Location: LCCOMB_X48_Y18_N22
\rf_instance|regfile~191\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~191_combout\ = (\ir[7]~reg0_q\ & (((\rf_instance|regfile~124_q\) # (\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~92_q\ & ((!\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~92_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~124_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~191_combout\);

-- Location: LCCOMB_X50_Y18_N12
\rf_instance|regfile~192\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~192_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~191_combout\ & (\rf_instance|regfile~140_q\)) # (!\rf_instance|regfile~191_combout\ & ((\rf_instance|regfile~108_q\))))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~140_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~108_q\,
	datad => \rf_instance|regfile~191_combout\,
	combout => \rf_instance|regfile~192_combout\);

-- Location: LCCOMB_X52_Y18_N20
\pc[8]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[8]~8_combout\ = (\ir[8]~reg0_q\ & ((\rf_instance|regfile~192_combout\))) # (!\ir[8]~reg0_q\ & (\rf_instance|regfile~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[8]~reg0_q\,
	datab => \rf_instance|regfile~190_combout\,
	datad => \rf_instance|regfile~192_combout\,
	combout => \pc[8]~8_combout\);

-- Location: LCCOMB_X51_Y22_N30
\alu_b[8]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[8]~6_combout\ = ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[8]~8_combout\))) # (!\alu_b[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[14]~0_combout\,
	datad => \pc[8]~8_combout\,
	combout => \alu_b[8]~6_combout\);

-- Location: LCCOMB_X51_Y22_N22
\alu_instance|logic|o~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~8_combout\ = (!\alu_a[8]~9_combout\) # (!\alu_b[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_b[8]~6_combout\,
	datad => \alu_a[8]~9_combout\,
	combout => \alu_instance|logic|o~8_combout\);

-- Location: LCCOMB_X53_Y20_N4
\alu_b[6]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[6]~10_combout\ = (\alu_bc[1]~input_o\ & ((\alu_bc[0]~input_o\ & ((\ir[6]~reg0_q\))) # (!\alu_bc[0]~input_o\ & (\ir[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \ir[6]~reg0_q\,
	combout => \alu_b[6]~10_combout\);

-- Location: FF_X53_Y20_N17
\pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[6]~6_combout\,
	asdata => \tr[6]~6_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(6));

-- Location: LCCOMB_X50_Y17_N24
\rf_data[6]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[6]~16_combout\ = (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & ((pc(6)))) # (!\rf_dc[1]~input_o\ & (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\,
	datac => pc(6),
	datad => \rf_dc[0]~input_o\,
	combout => \rf_data[6]~16_combout\);

-- Location: LCCOMB_X50_Y17_N2
\rf_data[6]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[6]~17_combout\ = (\rf_data[6]~16_combout\) # ((!\rf_dc[1]~input_o\ & (\rf_dc[0]~input_o\ & \tr[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => \tr[6]~6_combout\,
	datad => \rf_data[6]~16_combout\,
	combout => \rf_data[6]~17_combout\);

-- Location: FF_X51_Y20_N15
\rf_instance|regfile~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[6]~17_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~74_q\);

-- Location: FF_X50_Y20_N19
\rf_instance|regfile~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[6]~17_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~58_q\);

-- Location: LCCOMB_X49_Y18_N26
\rf_instance|regfile~42feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~42feeder_combout\ = \rf_data[6]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[6]~17_combout\,
	combout => \rf_instance|regfile~42feeder_combout\);

-- Location: FF_X49_Y18_N27
\rf_instance|regfile~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~42feeder_combout\,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~42_q\);

-- Location: FF_X51_Y18_N21
\rf_instance|regfile~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[6]~17_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~26_q\);

-- Location: LCCOMB_X49_Y18_N24
\rf_instance|regfile~220\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~220_combout\ = (\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\) # ((\rf_instance|regfile~42_q\)))) # (!\ir[6]~reg0_q\ & (!\ir[7]~reg0_q\ & ((\rf_instance|regfile~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~42_q\,
	datad => \rf_instance|regfile~26_q\,
	combout => \rf_instance|regfile~220_combout\);

-- Location: LCCOMB_X50_Y20_N18
\rf_instance|regfile~221\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~221_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~220_combout\ & (\rf_instance|regfile~74_q\)) # (!\rf_instance|regfile~220_combout\ & ((\rf_instance|regfile~58_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~74_q\,
	datac => \rf_instance|regfile~58_q\,
	datad => \rf_instance|regfile~220_combout\,
	combout => \rf_instance|regfile~221_combout\);

-- Location: FF_X50_Y17_N3
\rf_instance|regfile~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[6]~17_combout\,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~138_q\);

-- Location: FF_X51_Y20_N21
\rf_instance|regfile~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[6]~17_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~106_q\);

-- Location: LCCOMB_X49_Y17_N16
\rf_instance|regfile~122feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~122feeder_combout\ = \rf_data[6]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[6]~17_combout\,
	combout => \rf_instance|regfile~122feeder_combout\);

-- Location: FF_X49_Y17_N17
\rf_instance|regfile~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~122feeder_combout\,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~122_q\);

-- Location: LCCOMB_X50_Y17_N8
\rf_instance|regfile~90feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~90feeder_combout\ = \rf_data[6]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[6]~17_combout\,
	combout => \rf_instance|regfile~90feeder_combout\);

-- Location: FF_X50_Y17_N9
\rf_instance|regfile~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~90feeder_combout\,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~90_q\);

-- Location: LCCOMB_X49_Y17_N14
\rf_instance|regfile~222\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~222_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & (\rf_instance|regfile~122_q\)) # (!\ir[7]~reg0_q\ & ((\rf_instance|regfile~90_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~122_q\,
	datac => \rf_instance|regfile~90_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~222_combout\);

-- Location: LCCOMB_X50_Y17_N20
\rf_instance|regfile~223\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~223_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~222_combout\ & (\rf_instance|regfile~138_q\)) # (!\rf_instance|regfile~222_combout\ & ((\rf_instance|regfile~106_q\))))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~138_q\,
	datac => \rf_instance|regfile~106_q\,
	datad => \rf_instance|regfile~222_combout\,
	combout => \rf_instance|regfile~223_combout\);

-- Location: LCCOMB_X53_Y20_N16
\pc[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[6]~6_combout\ = (\ir[8]~reg0_q\ & ((\rf_instance|regfile~223_combout\))) # (!\ir[8]~reg0_q\ & (\rf_instance|regfile~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~221_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~223_combout\,
	combout => \pc[6]~6_combout\);

-- Location: LCCOMB_X53_Y20_N26
\alu_b[6]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[6]~11_combout\ = (\alu_b[6]~10_combout\) # ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[6]~10_combout\,
	datad => \pc[6]~6_combout\,
	combout => \alu_b[6]~11_combout\);

-- Location: LCCOMB_X52_Y22_N14
\alu_instance|logic|o~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~6_combout\ = (!\alu_a[6]~17_combout\) # (!\alu_b[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b[6]~11_combout\,
	datad => \alu_a[6]~17_combout\,
	combout => \alu_instance|logic|o~6_combout\);

-- Location: LCCOMB_X51_Y19_N16
\alu_instance|add|lvl3:7:GP3|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl3:7:GP3|G~0_combout\ = (\alu_a[2]~25_combout\ & (!\alu_b[2]~16_combout\ & (\alu_a[3]~27_combout\ $ (\alu_b[3]~17_combout\)))) # (!\alu_a[2]~25_combout\ & (\alu_b[2]~16_combout\ & (\alu_a[3]~27_combout\ $ (\alu_b[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[2]~25_combout\,
	datab => \alu_a[3]~27_combout\,
	datac => \alu_b[2]~16_combout\,
	datad => \alu_b[3]~17_combout\,
	combout => \alu_instance|add|lvl3:7:GP3|G~0_combout\);

-- Location: LCCOMB_X51_Y19_N8
\alu_instance|add|c[4]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[4]~13_combout\ = (\alu_instance|add|lvl3:7:GP3|G~0_combout\ & ((\alu_instance|add|lvl1:1:GP1|G~0_combout\) # ((\alu_instance|add|p_0\(1) & \alu_instance|add|c~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:1:GP1|G~0_combout\,
	datab => \alu_instance|add|p_0\(1),
	datac => \alu_instance|add|c~9_combout\,
	datad => \alu_instance|add|lvl3:7:GP3|G~0_combout\,
	combout => \alu_instance|add|c[4]~13_combout\);

-- Location: LCCOMB_X52_Y20_N10
\alu_instance|add|lvl2:5:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:5:GP2|p0~0_combout\ = (\alu_a[5]~23_combout\ & (!\alu_b[5]~15_combout\ & (\alu_b[4]~14_combout\ $ (\alu_a[4]~21_combout\)))) # (!\alu_a[5]~23_combout\ & (\alu_b[5]~15_combout\ & (\alu_b[4]~14_combout\ $ (\alu_a[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[5]~23_combout\,
	datab => \alu_b[5]~15_combout\,
	datac => \alu_b[4]~14_combout\,
	datad => \alu_a[4]~21_combout\,
	combout => \alu_instance|add|lvl2:5:GP2|p0~0_combout\);

-- Location: LCCOMB_X51_Y20_N6
\alu_instance|add|p_0[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(6) = \alu_b[6]~11_combout\ $ (\alu_a[6]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_b[6]~11_combout\,
	datad => \alu_a[6]~17_combout\,
	combout => \alu_instance|add|p_0\(6));

-- Location: LCCOMB_X51_Y19_N22
\alu_instance|add|lvl1:3:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:3:GP1|G~0_combout\ = (\alu_a[3]~27_combout\ & ((\alu_b[3]~17_combout\) # ((\alu_a[2]~25_combout\ & \alu_b[2]~16_combout\)))) # (!\alu_a[3]~27_combout\ & (\alu_a[2]~25_combout\ & (\alu_b[2]~16_combout\ & \alu_b[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[2]~25_combout\,
	datab => \alu_a[3]~27_combout\,
	datac => \alu_b[2]~16_combout\,
	datad => \alu_b[3]~17_combout\,
	combout => \alu_instance|add|lvl1:3:GP1|G~0_combout\);

-- Location: LCCOMB_X52_Y20_N0
\alu_instance|add|lvl1:5:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:5:GP1|G~0_combout\ = (\alu_a[5]~23_combout\ & ((\alu_b[5]~15_combout\) # ((\alu_b[4]~14_combout\ & \alu_a[4]~21_combout\)))) # (!\alu_a[5]~23_combout\ & (\alu_b[5]~15_combout\ & (\alu_b[4]~14_combout\ & \alu_a[4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[5]~23_combout\,
	datab => \alu_b[5]~15_combout\,
	datac => \alu_b[4]~14_combout\,
	datad => \alu_a[4]~21_combout\,
	combout => \alu_instance|add|lvl1:5:GP1|G~0_combout\);

-- Location: LCCOMB_X51_Y21_N6
\alu_instance|add|c[6]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[6]~16_combout\ = (\alu_instance|add|lvl1:5:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:5:GP2|p0~0_combout\ & \alu_instance|add|lvl1:3:GP1|G~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:5:GP2|p0~0_combout\,
	datac => \alu_instance|add|lvl1:3:GP1|G~0_combout\,
	datad => \alu_instance|add|lvl1:5:GP1|G~0_combout\,
	combout => \alu_instance|add|c[6]~16_combout\);

-- Location: LCCOMB_X52_Y22_N20
\alu_instance|add|sum[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(6) = \alu_instance|add|p_0\(6) $ (((\alu_instance|add|c[6]~16_combout\) # ((\alu_instance|add|c[4]~13_combout\ & \alu_instance|add|lvl2:5:GP2|p0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|c[4]~13_combout\,
	datab => \alu_instance|add|lvl2:5:GP2|p0~0_combout\,
	datac => \alu_instance|add|p_0\(6),
	datad => \alu_instance|add|c[6]~16_combout\,
	combout => \alu_instance|add|sum\(6));

-- Location: LCCOMB_X52_Y22_N24
\tr[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[6]~6_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~6_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~6_combout\,
	datad => \alu_instance|add|sum\(6),
	combout => \tr[6]~6_combout\);

-- Location: LCCOMB_X51_Y18_N20
\rf_instance|regfile~226\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~226_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~42_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~26_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~42_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~26_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~226_combout\);

-- Location: LCCOMB_X51_Y20_N14
\rf_instance|regfile~227\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~227_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~226_combout\ & ((\rf_instance|regfile~74_q\))) # (!\rf_instance|regfile~226_combout\ & (\rf_instance|regfile~58_q\)))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~58_q\,
	datac => \rf_instance|regfile~74_q\,
	datad => \rf_instance|regfile~226_combout\,
	combout => \rf_instance|regfile~227_combout\);

-- Location: LCCOMB_X50_Y17_N26
\rf_instance|regfile~224\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~224_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~122_q\))) # (!\rf_r1[1]~1_combout\ & (\rf_instance|regfile~90_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~90_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~122_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~224_combout\);

-- Location: LCCOMB_X51_Y20_N20
\rf_instance|regfile~225\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~225_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~224_combout\ & (\rf_instance|regfile~138_q\)) # (!\rf_instance|regfile~224_combout\ & ((\rf_instance|regfile~106_q\))))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~138_q\,
	datac => \rf_instance|regfile~106_q\,
	datad => \rf_instance|regfile~224_combout\,
	combout => \rf_instance|regfile~225_combout\);

-- Location: LCCOMB_X51_Y20_N18
\rf_instance|regfile~228\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~228_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~225_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~227_combout\,
	datad => \rf_instance|regfile~225_combout\,
	combout => \rf_instance|regfile~228_combout\);

-- Location: FF_X52_Y22_N25
\tr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[6]~6_combout\,
	asdata => \rf_instance|regfile~228_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(6));

-- Location: LCCOMB_X51_Y20_N24
\alu_a[6]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[6]~16_combout\ = (\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\) # ((\ir[5]~reg0_q\)))) # (!\alu_ac[0]~input_o\ & (!\alu_ac[1]~input_o\ & ((\rf_instance|regfile~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \alu_ac[1]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \rf_instance|regfile~228_combout\,
	combout => \alu_a[6]~16_combout\);

-- Location: LCCOMB_X51_Y20_N10
\alu_a[6]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[6]~17_combout\ = (\alu_ac[1]~input_o\ & ((\alu_a[6]~16_combout\ & (tr(6))) # (!\alu_a[6]~16_combout\ & ((pc(6)))))) # (!\alu_ac[1]~input_o\ & (((\alu_a[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(6),
	datab => \alu_ac[1]~input_o\,
	datac => pc(6),
	datad => \alu_a[6]~16_combout\,
	combout => \alu_a[6]~17_combout\);

-- Location: LCCOMB_X52_Y20_N6
\alu_instance|add|lvl2:6:GP2|P~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:6:GP2|P~0_combout\ = (\alu_instance|add|p_0\(6) & (\alu_instance|add|lvl2:5:GP2|p0~0_combout\ & (\alu_b[3]~17_combout\ $ (\alu_a[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[3]~17_combout\,
	datab => \alu_a[3]~27_combout\,
	datac => \alu_instance|add|p_0\(6),
	datad => \alu_instance|add|lvl2:5:GP2|p0~0_combout\,
	combout => \alu_instance|add|lvl2:6:GP2|P~0_combout\);

-- Location: LCCOMB_X51_Y21_N0
\alu_instance|add|c~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c~25_combout\ = (\alu_cin~input_o\ & (\alu_instance|add|lvl2:4:GP2|P~0_combout\ & (\alu_a[0]~29_combout\ $ (\alu_b[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_cin~input_o\,
	datab => \alu_a[0]~29_combout\,
	datac => \alu_b[0]~18_combout\,
	datad => \alu_instance|add|lvl2:4:GP2|P~0_combout\,
	combout => \alu_instance|add|c~25_combout\);

-- Location: LCCOMB_X53_Y20_N0
\alu_instance|add|lvl1:6:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:6:GP1|G~0_combout\ = (\alu_b[6]~11_combout\ & ((\alu_a[6]~17_combout\) # ((\alu_b[5]~15_combout\ & \alu_a[5]~23_combout\)))) # (!\alu_b[6]~11_combout\ & (\alu_b[5]~15_combout\ & (\alu_a[6]~17_combout\ & \alu_a[5]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[6]~11_combout\,
	datab => \alu_b[5]~15_combout\,
	datac => \alu_a[6]~17_combout\,
	datad => \alu_a[5]~23_combout\,
	combout => \alu_instance|add|lvl1:6:GP1|G~0_combout\);

-- Location: LCCOMB_X52_Y20_N26
\alu_instance|add|lvl3:6:GP3|G~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl3:6:GP3|G~3_combout\ = (\alu_instance|add|lvl1:2:GP1|G~0_combout\) # ((\alu_b[0]~18_combout\ & (\alu_a[0]~29_combout\ & \alu_instance|add|lvl2:4:GP2|P~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[0]~18_combout\,
	datab => \alu_a[0]~29_combout\,
	datac => \alu_instance|add|lvl1:2:GP1|G~0_combout\,
	datad => \alu_instance|add|lvl2:4:GP2|P~0_combout\,
	combout => \alu_instance|add|lvl3:6:GP3|G~3_combout\);

-- Location: LCCOMB_X52_Y20_N16
\alu_instance|add|lvl2:6:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:6:GP2|p0~0_combout\ = (\alu_instance|add|p_0\(6) & (\alu_instance|add|lvl1:4:GP1|G~0_combout\ & (\alu_a[5]~23_combout\ $ (\alu_b[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[5]~23_combout\,
	datab => \alu_b[5]~15_combout\,
	datac => \alu_instance|add|p_0\(6),
	datad => \alu_instance|add|lvl1:4:GP1|G~0_combout\,
	combout => \alu_instance|add|lvl2:6:GP2|p0~0_combout\);

-- Location: LCCOMB_X52_Y20_N14
\alu_instance|add|lvl3:6:GP3|G~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl3:6:GP3|G~2_combout\ = (\alu_instance|add|lvl1:6:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:6:GP2|p0~0_combout\) # ((\alu_instance|add|lvl2:6:GP2|P~0_combout\ & \alu_instance|add|lvl3:6:GP3|G~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:6:GP2|P~0_combout\,
	datab => \alu_instance|add|lvl1:6:GP1|G~0_combout\,
	datac => \alu_instance|add|lvl3:6:GP3|G~3_combout\,
	datad => \alu_instance|add|lvl2:6:GP2|p0~0_combout\,
	combout => \alu_instance|add|lvl3:6:GP3|G~2_combout\);

-- Location: LCCOMB_X53_Y20_N8
\alu_b[7]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[7]~12_combout\ = (\alu_bc[1]~input_o\ & ((\alu_bc[0]~input_o\ & ((\ir[7]~reg0_q\))) # (!\alu_bc[0]~input_o\ & (\ir[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \ir[7]~reg0_q\,
	combout => \alu_b[7]~12_combout\);

-- Location: LCCOMB_X52_Y22_N16
\rf_data[7]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[7]~18_combout\ = (\rf_dc[1]~input_o\ & (\rf_dc[0]~input_o\)) # (!\rf_dc[1]~input_o\ & ((\rf_dc[0]~input_o\ & ((\tr[7]~7_combout\))) # (!\rf_dc[0]~input_o\ & (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\,
	datad => \tr[7]~7_combout\,
	combout => \rf_data[7]~18_combout\);

-- Location: FF_X53_Y20_N19
\pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[7]~7_combout\,
	asdata => \tr[7]~7_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(7));

-- Location: LCCOMB_X51_Y21_N14
\rf_data[7]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[7]~19_combout\ = (\rf_data[7]~18_combout\ & (((\ir[0]~reg0_q\)) # (!\rf_dc[1]~input_o\))) # (!\rf_data[7]~18_combout\ & (\rf_dc[1]~input_o\ & ((pc(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_data[7]~18_combout\,
	datab => \rf_dc[1]~input_o\,
	datac => \ir[0]~reg0_q\,
	datad => pc(7),
	combout => \rf_data[7]~19_combout\);

-- Location: FF_X49_Y17_N23
\rf_instance|regfile~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[7]~19_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~123_q\);

-- Location: FF_X50_Y17_N29
\rf_instance|regfile~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[7]~19_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~91_q\);

-- Location: LCCOMB_X49_Y17_N22
\rf_instance|regfile~236\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~236_combout\ = (\ir[6]~reg0_q\ & (\ir[7]~reg0_q\)) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & (\rf_instance|regfile~123_q\)) # (!\ir[7]~reg0_q\ & ((\rf_instance|regfile~91_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~123_q\,
	datad => \rf_instance|regfile~91_q\,
	combout => \rf_instance|regfile~236_combout\);

-- Location: FF_X49_Y17_N9
\rf_instance|regfile~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[7]~19_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~107_q\);

-- Location: FF_X50_Y17_N23
\rf_instance|regfile~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[7]~19_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~139_q\);

-- Location: LCCOMB_X49_Y17_N8
\rf_instance|regfile~237\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~237_combout\ = (\rf_instance|regfile~236_combout\ & (((\rf_instance|regfile~139_q\)) # (!\ir[6]~reg0_q\))) # (!\rf_instance|regfile~236_combout\ & (\ir[6]~reg0_q\ & (\rf_instance|regfile~107_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~236_combout\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~107_q\,
	datad => \rf_instance|regfile~139_q\,
	combout => \rf_instance|regfile~237_combout\);

-- Location: FF_X51_Y21_N17
\rf_instance|regfile~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[7]~19_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~59_q\);

-- Location: FF_X51_Y21_N15
\rf_instance|regfile~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[7]~19_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~75_q\);

-- Location: FF_X51_Y18_N23
\rf_instance|regfile~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[7]~19_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~27_q\);

-- Location: FF_X50_Y18_N17
\rf_instance|regfile~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[7]~19_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~43_q\);

-- Location: LCCOMB_X50_Y18_N16
\rf_instance|regfile~234\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~234_combout\ = (\ir[7]~reg0_q\ & (((\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & ((\ir[6]~reg0_q\ & ((\rf_instance|regfile~43_q\))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~27_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~27_q\,
	datac => \rf_instance|regfile~43_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~234_combout\);

-- Location: LCCOMB_X51_Y21_N24
\rf_instance|regfile~235\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~235_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~234_combout\ & ((\rf_instance|regfile~75_q\))) # (!\rf_instance|regfile~234_combout\ & (\rf_instance|regfile~59_q\)))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~59_q\,
	datac => \rf_instance|regfile~75_q\,
	datad => \rf_instance|regfile~234_combout\,
	combout => \rf_instance|regfile~235_combout\);

-- Location: LCCOMB_X53_Y20_N18
\pc[7]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[7]~7_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~237_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~235_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~237_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~235_combout\,
	combout => \pc[7]~7_combout\);

-- Location: LCCOMB_X53_Y20_N22
\alu_b[7]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[7]~13_combout\ = (\alu_b[7]~12_combout\) # ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[7]~12_combout\,
	datad => \pc[7]~7_combout\,
	combout => \alu_b[7]~13_combout\);

-- Location: LCCOMB_X53_Y20_N24
\alu_instance|add|p_0[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(7) = \alu_b[7]~13_combout\ $ (\alu_a[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_b[7]~13_combout\,
	datad => \alu_a[7]~19_combout\,
	combout => \alu_instance|add|p_0\(7));

-- Location: LCCOMB_X52_Y22_N8
\alu_instance|add|sum[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(7) = \alu_instance|add|p_0\(7) $ (((\alu_instance|add|lvl3:6:GP3|G~2_combout\) # ((\alu_instance|add|lvl2:6:GP2|P~0_combout\ & \alu_instance|add|c~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:6:GP2|P~0_combout\,
	datab => \alu_instance|add|c~25_combout\,
	datac => \alu_instance|add|lvl3:6:GP3|G~2_combout\,
	datad => \alu_instance|add|p_0\(7),
	combout => \alu_instance|add|sum\(7));

-- Location: LCCOMB_X52_Y22_N10
\alu_instance|logic|o~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~7_combout\ = (!\alu_a[7]~19_combout\) # (!\alu_b[7]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[7]~13_combout\,
	datad => \alu_a[7]~19_combout\,
	combout => \alu_instance|logic|o~7_combout\);

-- Location: LCCOMB_X52_Y22_N18
\tr[7]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[7]~7_combout\ = (\alu_op~input_o\ & ((\alu_instance|logic|o~7_combout\))) # (!\alu_op~input_o\ & (\alu_instance|add|sum\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|add|sum\(7),
	datad => \alu_instance|logic|o~7_combout\,
	combout => \tr[7]~7_combout\);

-- Location: LCCOMB_X50_Y17_N28
\rf_instance|regfile~229\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~229_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~123_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~91_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~123_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~91_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~229_combout\);

-- Location: LCCOMB_X50_Y17_N22
\rf_instance|regfile~230\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~230_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~229_combout\ & ((\rf_instance|regfile~139_q\))) # (!\rf_instance|regfile~229_combout\ & (\rf_instance|regfile~107_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~107_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~139_q\,
	datad => \rf_instance|regfile~229_combout\,
	combout => \rf_instance|regfile~230_combout\);

-- Location: LCCOMB_X51_Y18_N22
\rf_instance|regfile~231\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~231_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~43_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~27_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~43_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~27_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~231_combout\);

-- Location: LCCOMB_X51_Y21_N16
\rf_instance|regfile~232\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~232_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~231_combout\ & (\rf_instance|regfile~75_q\)) # (!\rf_instance|regfile~231_combout\ & ((\rf_instance|regfile~59_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~75_q\,
	datac => \rf_instance|regfile~59_q\,
	datad => \rf_instance|regfile~231_combout\,
	combout => \rf_instance|regfile~232_combout\);

-- Location: LCCOMB_X51_Y20_N28
\rf_instance|regfile~233\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~233_combout\ = (\rf_r1[2]~2_combout\ & (\rf_instance|regfile~230_combout\)) # (!\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~230_combout\,
	datad => \rf_instance|regfile~232_combout\,
	combout => \rf_instance|regfile~233_combout\);

-- Location: FF_X52_Y22_N19
\tr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[7]~7_combout\,
	asdata => \rf_instance|regfile~233_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(7));

-- Location: LCCOMB_X51_Y20_N22
\alu_a[7]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[7]~18_combout\ = (\alu_ac[0]~input_o\ & (\alu_ac[1]~input_o\)) # (!\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\ & (pc(7))) # (!\alu_ac[1]~input_o\ & ((\rf_instance|regfile~233_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \alu_ac[1]~input_o\,
	datac => pc(7),
	datad => \rf_instance|regfile~233_combout\,
	combout => \alu_a[7]~18_combout\);

-- Location: LCCOMB_X51_Y20_N8
\alu_a[7]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[7]~19_combout\ = (\alu_a[7]~18_combout\ & ((tr(7)) # ((!\alu_ac[0]~input_o\)))) # (!\alu_a[7]~18_combout\ & (((\ir[5]~reg0_q\ & \alu_ac[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(7),
	datab => \ir[5]~reg0_q\,
	datac => \alu_a[7]~18_combout\,
	datad => \alu_ac[0]~input_o\,
	combout => \alu_a[7]~19_combout\);

-- Location: LCCOMB_X51_Y20_N4
\alu_instance|add|lvl2:7:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:7:GP2|p0~0_combout\ = (\alu_a[6]~17_combout\ & (!\alu_b[6]~11_combout\ & (\alu_a[7]~19_combout\ $ (\alu_b[7]~13_combout\)))) # (!\alu_a[6]~17_combout\ & (\alu_b[6]~11_combout\ & (\alu_a[7]~19_combout\ $ (\alu_b[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[6]~17_combout\,
	datab => \alu_b[6]~11_combout\,
	datac => \alu_a[7]~19_combout\,
	datad => \alu_b[7]~13_combout\,
	combout => \alu_instance|add|lvl2:7:GP2|p0~0_combout\);

-- Location: LCCOMB_X52_Y21_N28
\alu_instance|add|lvl2:7:GP2|p0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:7:GP2|p0~1_combout\ = (\alu_instance|add|lvl2:7:GP2|p0~0_combout\ & \alu_instance|add|lvl1:5:GP1|G~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_instance|add|lvl2:7:GP2|p0~0_combout\,
	datad => \alu_instance|add|lvl1:5:GP1|G~0_combout\,
	combout => \alu_instance|add|lvl2:7:GP2|p0~1_combout\);

-- Location: LCCOMB_X51_Y20_N26
\alu_instance|add|lvl1:7:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:7:GP1|G~0_combout\ = (\alu_a[7]~19_combout\ & ((\alu_b[7]~13_combout\) # ((\alu_a[6]~17_combout\ & \alu_b[6]~11_combout\)))) # (!\alu_a[7]~19_combout\ & (\alu_a[6]~17_combout\ & (\alu_b[6]~11_combout\ & \alu_b[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[6]~17_combout\,
	datab => \alu_b[6]~11_combout\,
	datac => \alu_a[7]~19_combout\,
	datad => \alu_b[7]~13_combout\,
	combout => \alu_instance|add|lvl1:7:GP1|G~0_combout\);

-- Location: LCCOMB_X53_Y19_N10
\alu_instance|add|p_0[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(3) = \alu_b[3]~17_combout\ $ (\alu_a[3]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_b[3]~17_combout\,
	datac => \alu_a[3]~27_combout\,
	combout => \alu_instance|add|p_0\(3));

-- Location: LCCOMB_X52_Y20_N8
\alu_instance|add|lvl2:7:GP2|P~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:7:GP2|P~4_combout\ = (\alu_instance|add|p_0\(6) & (\alu_instance|add|lvl2:5:GP2|p0~0_combout\ & (\alu_a[7]~19_combout\ $ (\alu_b[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[7]~19_combout\,
	datab => \alu_b[7]~13_combout\,
	datac => \alu_instance|add|p_0\(6),
	datad => \alu_instance|add|lvl2:5:GP2|p0~0_combout\,
	combout => \alu_instance|add|lvl2:7:GP2|P~4_combout\);

-- Location: LCCOMB_X52_Y19_N24
\alu_instance|add|lvl3:7:GP3|G~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl3:7:GP3|G~1_combout\ = (\alu_instance|add|lvl1:3:GP1|G~0_combout\) # ((\alu_instance|add|lvl3:7:GP3|G~0_combout\ & \alu_instance|add|lvl1:1:GP1|G~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl3:7:GP3|G~0_combout\,
	datab => \alu_instance|add|lvl1:3:GP1|G~0_combout\,
	datad => \alu_instance|add|lvl1:1:GP1|G~0_combout\,
	combout => \alu_instance|add|lvl3:7:GP3|G~1_combout\);

-- Location: LCCOMB_X52_Y21_N18
\alu_instance|add|c[8]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[8]~10_combout\ = (\alu_instance|add|lvl2:7:GP2|P~4_combout\ & ((\alu_instance|add|lvl3:7:GP3|G~1_combout\) # ((\alu_instance|add|c~25_combout\ & \alu_instance|add|p_0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|c~25_combout\,
	datab => \alu_instance|add|p_0\(3),
	datac => \alu_instance|add|lvl2:7:GP2|P~4_combout\,
	datad => \alu_instance|add|lvl3:7:GP3|G~1_combout\,
	combout => \alu_instance|add|c[8]~10_combout\);

-- Location: LCCOMB_X52_Y21_N16
\alu_instance|add|sum[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(8) = \alu_instance|add|p_0\(8) $ (((\alu_instance|add|lvl2:7:GP2|p0~1_combout\) # ((\alu_instance|add|lvl1:7:GP1|G~0_combout\) # (\alu_instance|add|c[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|p_0\(8),
	datab => \alu_instance|add|lvl2:7:GP2|p0~1_combout\,
	datac => \alu_instance|add|lvl1:7:GP1|G~0_combout\,
	datad => \alu_instance|add|c[8]~10_combout\,
	combout => \alu_instance|add|sum\(8));

-- Location: LCCOMB_X52_Y21_N22
\tr[8]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[8]~8_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~8_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~8_combout\,
	datad => \alu_instance|add|sum\(8),
	combout => \tr[8]~8_combout\);

-- Location: FF_X52_Y18_N21
\pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[8]~8_combout\,
	asdata => \tr[8]~8_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(8));

-- Location: FF_X52_Y21_N23
\tr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[8]~8_combout\,
	asdata => \rf_instance|regfile~188_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(8));

-- Location: LCCOMB_X51_Y20_N12
\alu_a[8]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[8]~8_combout\ = (\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\) # ((\ir[5]~reg0_q\)))) # (!\alu_ac[0]~input_o\ & (!\alu_ac[1]~input_o\ & ((\rf_instance|regfile~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \alu_ac[1]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \rf_instance|regfile~188_combout\,
	combout => \alu_a[8]~8_combout\);

-- Location: LCCOMB_X51_Y20_N2
\alu_a[8]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[8]~9_combout\ = (\alu_ac[1]~input_o\ & ((\alu_a[8]~8_combout\ & ((tr(8)))) # (!\alu_a[8]~8_combout\ & (pc(8))))) # (!\alu_ac[1]~input_o\ & (((\alu_a[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(8),
	datab => \alu_ac[1]~input_o\,
	datac => tr(8),
	datad => \alu_a[8]~8_combout\,
	combout => \alu_a[8]~9_combout\);

-- Location: LCCOMB_X51_Y20_N0
\alu_instance|add|p_0[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(8) = \alu_a[8]~9_combout\ $ (\alu_b[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_a[8]~9_combout\,
	datad => \alu_b[8]~6_combout\,
	combout => \alu_instance|add|p_0\(8));

-- Location: LCCOMB_X53_Y21_N4
\alu_instance|add|lvl2:8:GP2|P~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:8:GP2|P~0_combout\ = (\alu_instance|add|p_0\(8) & (\alu_instance|add|lvl2:7:GP2|p0~0_combout\ & (\alu_a[5]~23_combout\ $ (\alu_b[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[5]~23_combout\,
	datab => \alu_instance|add|p_0\(8),
	datac => \alu_b[5]~15_combout\,
	datad => \alu_instance|add|lvl2:7:GP2|p0~0_combout\,
	combout => \alu_instance|add|lvl2:8:GP2|P~0_combout\);

-- Location: LCCOMB_X53_Y21_N14
\alu_instance|add|c[9]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[9]~17_combout\ = (\alu_instance|add|lvl2:8:GP2|P~0_combout\ & ((\alu_instance|add|lvl1:4:GP1|G~0_combout\) # ((\alu_instance|add|lvl1:2:GP1|G~0_combout\ & \alu_instance|add|lvl2:4:GP2|p0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:2:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl1:4:GP1|G~0_combout\,
	datac => \alu_instance|add|lvl2:8:GP2|P~0_combout\,
	datad => \alu_instance|add|lvl2:4:GP2|p0~0_combout\,
	combout => \alu_instance|add|c[9]~17_combout\);

-- Location: LCCOMB_X51_Y21_N12
\alu_instance|add|lvl1:8:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:8:GP1|G~0_combout\ = (\alu_b[8]~6_combout\ & ((\alu_a[8]~9_combout\) # ((\alu_b[7]~13_combout\ & \alu_a[7]~19_combout\)))) # (!\alu_b[8]~6_combout\ & (\alu_b[7]~13_combout\ & (\alu_a[8]~9_combout\ & \alu_a[7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[7]~13_combout\,
	datab => \alu_b[8]~6_combout\,
	datac => \alu_a[8]~9_combout\,
	datad => \alu_a[7]~19_combout\,
	combout => \alu_instance|add|lvl1:8:GP1|G~0_combout\);

-- Location: LCCOMB_X53_Y20_N2
\alu_instance|add|c[13]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[13]~26_combout\ = (\alu_instance|add|lvl1:6:GP1|G~0_combout\ & (\alu_instance|add|p_0\(7) & (\alu_b[8]~6_combout\ $ (\alu_a[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[8]~6_combout\,
	datab => \alu_instance|add|lvl1:6:GP1|G~0_combout\,
	datac => \alu_a[8]~9_combout\,
	datad => \alu_instance|add|p_0\(7),
	combout => \alu_instance|add|c[13]~26_combout\);

-- Location: LCCOMB_X53_Y21_N16
\alu_instance|add|c[9]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[9]~18_combout\ = (\alu_instance|add|lvl1:8:GP1|G~0_combout\) # ((\alu_instance|add|c[13]~26_combout\) # ((\alu_instance|add|lvl2:8:GP2|P~0_combout\ & \alu_instance|add|c[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:8:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl2:8:GP2|P~0_combout\,
	datac => \alu_instance|add|c[13]~26_combout\,
	datad => \alu_instance|add|c[5]~14_combout\,
	combout => \alu_instance|add|c[9]~18_combout\);

-- Location: LCCOMB_X53_Y21_N30
\alu_instance|add|sum[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(9) = \alu_b[9]~9_combout\ $ (\alu_a[9]~15_combout\ $ (((\alu_instance|add|c[9]~17_combout\) # (\alu_instance|add|c[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[9]~9_combout\,
	datab => \alu_a[9]~15_combout\,
	datac => \alu_instance|add|c[9]~17_combout\,
	datad => \alu_instance|add|c[9]~18_combout\,
	combout => \alu_instance|add|sum\(9));

-- Location: LCCOMB_X55_Y21_N4
\tr[9]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[9]~9_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~9_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~input_o\,
	datac => \alu_instance|logic|o~9_combout\,
	datad => \alu_instance|add|sum\(9),
	combout => \tr[9]~9_combout\);

-- Location: LCCOMB_X55_Y21_N6
\tr[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[9]~feeder_combout\ = \tr[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr[9]~9_combout\,
	combout => \tr[9]~feeder_combout\);

-- Location: FF_X55_Y21_N7
\tr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[9]~feeder_combout\,
	asdata => \rf_instance|regfile~215_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(9));

-- Location: LCCOMB_X50_Y20_N20
\alu_a[9]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[9]~14_combout\ = (\alu_ac[1]~input_o\ & ((\alu_ac[0]~input_o\) # ((pc(9))))) # (!\alu_ac[1]~input_o\ & (!\alu_ac[0]~input_o\ & ((\rf_instance|regfile~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[1]~input_o\,
	datab => \alu_ac[0]~input_o\,
	datac => pc(9),
	datad => \rf_instance|regfile~215_combout\,
	combout => \alu_a[9]~14_combout\);

-- Location: LCCOMB_X50_Y20_N26
\alu_a[9]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[9]~15_combout\ = (\alu_ac[0]~input_o\ & ((\alu_a[9]~14_combout\ & (tr(9))) # (!\alu_a[9]~14_combout\ & ((\ir[5]~reg0_q\))))) # (!\alu_ac[0]~input_o\ & (((\alu_a[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(9),
	datab => \alu_ac[0]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \alu_a[9]~14_combout\,
	combout => \alu_a[9]~15_combout\);

-- Location: LCCOMB_X51_Y22_N4
\alu_instance|add|lvl1:9:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:9:GP1|G~0_combout\ = (\alu_b[9]~9_combout\ & ((\alu_a[9]~15_combout\) # ((\alu_b[8]~6_combout\ & \alu_a[8]~9_combout\)))) # (!\alu_b[9]~9_combout\ & (\alu_a[9]~15_combout\ & (\alu_b[8]~6_combout\ & \alu_a[8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[9]~9_combout\,
	datab => \alu_a[9]~15_combout\,
	datac => \alu_b[8]~6_combout\,
	datad => \alu_a[8]~9_combout\,
	combout => \alu_instance|add|lvl1:9:GP1|G~0_combout\);

-- Location: LCCOMB_X51_Y20_N30
\alu_instance|add|lvl2:9:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:9:GP2|p0~0_combout\ = (\alu_instance|add|lvl1:7:GP1|G~0_combout\ & (\alu_instance|add|p_0\(8) & (\alu_a[9]~15_combout\ $ (\alu_b[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[9]~15_combout\,
	datab => \alu_b[9]~9_combout\,
	datac => \alu_instance|add|lvl1:7:GP1|G~0_combout\,
	datad => \alu_instance|add|p_0\(8),
	combout => \alu_instance|add|lvl2:9:GP2|p0~0_combout\);

-- Location: LCCOMB_X51_Y19_N26
\alu_instance|add|sum[10]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[10]~4_combout\ = (\alu_instance|add|lvl2:5:GP2|p0~0_combout\ & ((\alu_instance|add|lvl1:3:GP1|G~0_combout\) # (\alu_instance|add|c[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:3:GP1|G~0_combout\,
	datac => \alu_instance|add|c[4]~13_combout\,
	datad => \alu_instance|add|lvl2:5:GP2|p0~0_combout\,
	combout => \alu_instance|add|sum[10]~4_combout\);

-- Location: LCCOMB_X51_Y20_N16
\alu_instance|add|lvl2:9:GP2|P~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:9:GP2|P~0_combout\ = (\alu_instance|add|lvl2:7:GP2|p0~0_combout\ & (\alu_instance|add|p_0\(8) & (\alu_a[9]~15_combout\ $ (\alu_b[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[9]~15_combout\,
	datab => \alu_b[9]~9_combout\,
	datac => \alu_instance|add|lvl2:7:GP2|p0~0_combout\,
	datad => \alu_instance|add|p_0\(8),
	combout => \alu_instance|add|lvl2:9:GP2|P~0_combout\);

-- Location: LCCOMB_X51_Y19_N28
\alu_instance|add|sum[10]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[10]~5_combout\ = (\alu_instance|add|lvl2:9:GP2|p0~0_combout\) # ((\alu_instance|add|lvl2:9:GP2|P~0_combout\ & ((\alu_instance|add|lvl1:5:GP1|G~0_combout\) # (\alu_instance|add|sum[10]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:9:GP2|p0~0_combout\,
	datab => \alu_instance|add|lvl1:5:GP1|G~0_combout\,
	datac => \alu_instance|add|sum[10]~4_combout\,
	datad => \alu_instance|add|lvl2:9:GP2|P~0_combout\,
	combout => \alu_instance|add|sum[10]~5_combout\);

-- Location: LCCOMB_X51_Y19_N18
\alu_instance|add|sum[10]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[10]~6_combout\ = \alu_b[10]~8_combout\ $ (\alu_a[10]~13_combout\ $ (((\alu_instance|add|lvl1:9:GP1|G~0_combout\) # (\alu_instance|add|sum[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[10]~8_combout\,
	datab => \alu_a[10]~13_combout\,
	datac => \alu_instance|add|lvl1:9:GP1|G~0_combout\,
	datad => \alu_instance|add|sum[10]~5_combout\,
	combout => \alu_instance|add|sum[10]~6_combout\);

-- Location: LCCOMB_X52_Y21_N0
\tr[10]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[10]~10_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~10_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~10_combout\,
	datad => \alu_instance|add|sum[10]~6_combout\,
	combout => \tr[10]~10_combout\);

-- Location: FF_X52_Y18_N17
\pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[10]~10_combout\,
	asdata => \tr[10]~10_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(10));

-- Location: LCCOMB_X51_Y17_N4
\rf_data[10]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[10]~12_combout\ = (\rf_dc[1]~input_o\ & ((\rf_dc[0]~input_o\) # ((pc(10))))) # (!\rf_dc[1]~input_o\ & (!\rf_dc[0]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => pc(10),
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\,
	combout => \rf_data[10]~12_combout\);

-- Location: LCCOMB_X51_Y17_N14
\rf_data[10]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[10]~13_combout\ = (\rf_dc[0]~input_o\ & ((\rf_data[10]~12_combout\ & (\ir[3]~reg0_q\)) # (!\rf_data[10]~12_combout\ & ((\tr[10]~10_combout\))))) # (!\rf_dc[0]~input_o\ & (((\rf_data[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[3]~reg0_q\,
	datab => \rf_dc[0]~input_o\,
	datac => \rf_data[10]~12_combout\,
	datad => \tr[10]~10_combout\,
	combout => \rf_data[10]~13_combout\);

-- Location: FF_X51_Y17_N15
\rf_instance|regfile~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[10]~13_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~78_q\);

-- Location: LCCOMB_X51_Y18_N8
\rf_instance|regfile~204\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~204_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~46_q\) # ((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & (((\rf_instance|regfile~30_q\ & !\rf_r1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~46_q\,
	datac => \rf_instance|regfile~30_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~204_combout\);

-- Location: LCCOMB_X50_Y20_N22
\rf_instance|regfile~205\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~205_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~204_combout\ & (\rf_instance|regfile~78_q\)) # (!\rf_instance|regfile~204_combout\ & ((\rf_instance|regfile~62_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~78_q\,
	datac => \rf_instance|regfile~62_q\,
	datad => \rf_instance|regfile~204_combout\,
	combout => \rf_instance|regfile~205_combout\);

-- Location: LCCOMB_X50_Y17_N16
\rf_instance|regfile~202\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~202_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~126_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~94_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~126_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~94_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~202_combout\);

-- Location: LCCOMB_X50_Y20_N8
\rf_instance|regfile~203\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~203_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~202_combout\ & ((\rf_instance|regfile~142_q\))) # (!\rf_instance|regfile~202_combout\ & (\rf_instance|regfile~110_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~110_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~142_q\,
	datad => \rf_instance|regfile~202_combout\,
	combout => \rf_instance|regfile~203_combout\);

-- Location: LCCOMB_X50_Y20_N24
\rf_instance|regfile~206\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~206_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~203_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~205_combout\,
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~203_combout\,
	combout => \rf_instance|regfile~206_combout\);

-- Location: LCCOMB_X50_Y19_N6
\m_write[0]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[0]~2_combout\ = (\m_wac~input_o\ & (\tr[0]~0_combout\)) # (!\m_wac~input_o\ & ((tr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_wac~input_o\,
	datac => \tr[0]~0_combout\,
	datad => tr(0),
	combout => \m_write[0]~2_combout\);

-- Location: LCCOMB_X50_Y19_N4
\m_write[1]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[1]~3_combout\ = (\m_wac~input_o\ & (\tr[1]~1_combout\)) # (!\m_wac~input_o\ & ((tr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_wac~input_o\,
	datac => \tr[1]~1_combout\,
	datad => tr(1),
	combout => \m_write[1]~3_combout\);

-- Location: LCCOMB_X49_Y19_N22
\m_write[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[2]~4_combout\ = (\m_wac~input_o\ & ((\tr[2]~2_combout\))) # (!\m_wac~input_o\ & (tr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tr(2),
	datac => \tr[2]~2_combout\,
	datad => \m_wac~input_o\,
	combout => \m_write[2]~4_combout\);

-- Location: LCCOMB_X50_Y19_N30
\m_write[3]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[3]~5_combout\ = (\m_wac~input_o\ & ((\tr[3]~3_combout\))) # (!\m_wac~input_o\ & (tr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_wac~input_o\,
	datac => tr(3),
	datad => \tr[3]~3_combout\,
	combout => \m_write[3]~5_combout\);

-- Location: FF_X52_Y22_N1
\tr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[4]~4_combout\,
	asdata => \rf_instance|regfile~246_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(4));

-- Location: LCCOMB_X52_Y22_N22
\m_write[4]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[4]~6_combout\ = (\m_wac~input_o\ & (\tr[4]~4_combout\)) # (!\m_wac~input_o\ & ((tr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[4]~4_combout\,
	datab => tr(4),
	datac => \m_wac~input_o\,
	combout => \m_write[4]~6_combout\);

-- Location: LCCOMB_X56_Y21_N4
\m_write[5]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[5]~7_combout\ = (\m_wac~input_o\ & ((\tr[5]~5_combout\))) # (!\m_wac~input_o\ & (tr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(5),
	datac => \tr[5]~5_combout\,
	datad => \m_wac~input_o\,
	combout => \m_write[5]~7_combout\);

-- Location: LCCOMB_X52_Y22_N4
\m_write[6]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[6]~8_combout\ = (\m_wac~input_o\ & ((\tr[6]~6_combout\))) # (!\m_wac~input_o\ & (tr(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_wac~input_o\,
	datab => tr(6),
	datad => \tr[6]~6_combout\,
	combout => \m_write[6]~8_combout\);

-- Location: LCCOMB_X52_Y22_N26
\m_write[7]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[7]~9_combout\ = (\m_wac~input_o\ & ((\tr[7]~7_combout\))) # (!\m_wac~input_o\ & (tr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(7),
	datac => \m_wac~input_o\,
	datad => \tr[7]~7_combout\,
	combout => \m_write[7]~9_combout\);

-- Location: LCCOMB_X52_Y21_N4
\m_write[8]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[8]~10_combout\ = (\m_wac~input_o\ & ((\tr[8]~8_combout\))) # (!\m_wac~input_o\ & (tr(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tr(8),
	datac => \tr[8]~8_combout\,
	datad => \m_wac~input_o\,
	combout => \m_write[8]~10_combout\);

-- Location: LCCOMB_X55_Y21_N12
\m_write[9]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[9]~11_combout\ = (\m_wac~input_o\ & ((\tr[9]~9_combout\))) # (!\m_wac~input_o\ & (tr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(9),
	datac => \tr[9]~9_combout\,
	datad => \m_wac~input_o\,
	combout => \m_write[9]~11_combout\);

-- Location: LCCOMB_X52_Y21_N10
\m_write[10]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[10]~12_combout\ = (\m_wac~input_o\ & ((\tr[10]~10_combout\))) # (!\m_wac~input_o\ & (tr(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_wac~input_o\,
	datab => tr(10),
	datad => \tr[10]~10_combout\,
	combout => \m_write[10]~12_combout\);

-- Location: FF_X52_Y18_N3
\pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[11]~11_combout\,
	asdata => \tr[11]~11_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(11));

-- Location: LCCOMB_X51_Y17_N6
\rf_data[11]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[11]~10_combout\ = (\rf_dc[0]~input_o\ & ((\tr[11]~11_combout\) # ((\rf_dc[1]~input_o\)))) # (!\rf_dc[0]~input_o\ & (((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\ & !\rf_dc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[11]~11_combout\,
	datab => \rf_dc[0]~input_o\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\,
	datad => \rf_dc[1]~input_o\,
	combout => \rf_data[11]~10_combout\);

-- Location: LCCOMB_X51_Y17_N30
\rf_data[11]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[11]~11_combout\ = (\rf_dc[1]~input_o\ & ((\rf_data[11]~10_combout\ & ((\ir[4]~reg0_q\))) # (!\rf_data[11]~10_combout\ & (pc(11))))) # (!\rf_dc[1]~input_o\ & (((\rf_data[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => pc(11),
	datac => \ir[4]~reg0_q\,
	datad => \rf_data[11]~10_combout\,
	combout => \rf_data[11]~11_combout\);

-- Location: FF_X48_Y18_N17
\rf_instance|regfile~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[11]~11_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~95_q\);

-- Location: FF_X48_Y18_N7
\rf_instance|regfile~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[11]~11_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~127_q\);

-- Location: LCCOMB_X48_Y18_N6
\rf_instance|regfile~200\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~200_combout\ = (\ir[7]~reg0_q\ & (((\rf_instance|regfile~127_q\) # (\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~95_q\ & ((!\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~95_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~127_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~200_combout\);

-- Location: LCCOMB_X50_Y18_N30
\rf_instance|regfile~111feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~111feeder_combout\ = \rf_data[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[11]~11_combout\,
	combout => \rf_instance|regfile~111feeder_combout\);

-- Location: FF_X50_Y18_N31
\rf_instance|regfile~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~111feeder_combout\,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~111_q\);

-- Location: FF_X53_Y18_N3
\rf_instance|regfile~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[11]~11_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~143_q\);

-- Location: LCCOMB_X50_Y18_N22
\rf_instance|regfile~201\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~201_combout\ = (\rf_instance|regfile~200_combout\ & (((\rf_instance|regfile~143_q\)) # (!\ir[6]~reg0_q\))) # (!\rf_instance|regfile~200_combout\ & (\ir[6]~reg0_q\ & (\rf_instance|regfile~111_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~200_combout\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~111_q\,
	datad => \rf_instance|regfile~143_q\,
	combout => \rf_instance|regfile~201_combout\);

-- Location: FF_X51_Y22_N19
\rf_instance|regfile~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[11]~11_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~63_q\);

-- Location: FF_X51_Y17_N31
\rf_instance|regfile~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[11]~11_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~79_q\);

-- Location: FF_X50_Y18_N29
\rf_instance|regfile~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[11]~11_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~47_q\);

-- Location: FF_X51_Y22_N17
\rf_instance|regfile~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[11]~11_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~31_q\);

-- Location: LCCOMB_X50_Y18_N28
\rf_instance|regfile~198\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~198_combout\ = (\ir[7]~reg0_q\ & (\ir[6]~reg0_q\)) # (!\ir[7]~reg0_q\ & ((\ir[6]~reg0_q\ & (\rf_instance|regfile~47_q\)) # (!\ir[6]~reg0_q\ & ((\rf_instance|regfile~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~47_q\,
	datad => \rf_instance|regfile~31_q\,
	combout => \rf_instance|regfile~198_combout\);

-- Location: LCCOMB_X52_Y18_N12
\rf_instance|regfile~199\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~199_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~198_combout\ & ((\rf_instance|regfile~79_q\))) # (!\rf_instance|regfile~198_combout\ & (\rf_instance|regfile~63_q\)))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~63_q\,
	datab => \rf_instance|regfile~79_q\,
	datac => \ir[7]~reg0_q\,
	datad => \rf_instance|regfile~198_combout\,
	combout => \rf_instance|regfile~199_combout\);

-- Location: LCCOMB_X52_Y18_N2
\pc[11]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[11]~11_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~201_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~201_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~199_combout\,
	combout => \pc[11]~11_combout\);

-- Location: LCCOMB_X51_Y22_N26
\alu_b[11]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[11]~7_combout\ = ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[11]~11_combout\))) # (!\alu_b[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[14]~0_combout\,
	datad => \pc[11]~11_combout\,
	combout => \alu_b[11]~7_combout\);

-- Location: LCCOMB_X55_Y21_N0
\tr[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[11]~feeder_combout\ = \tr[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[11]~11_combout\,
	combout => \tr[11]~feeder_combout\);

-- Location: LCCOMB_X51_Y22_N0
\rf_instance|regfile~195\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~195_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_instance|regfile~79_q\) # (!\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & (\rf_instance|regfile~63_q\ & (\rf_r1[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~63_q\,
	datac => \rf_r1[1]~1_combout\,
	datad => \rf_instance|regfile~79_q\,
	combout => \rf_instance|regfile~195_combout\);

-- Location: LCCOMB_X51_Y22_N14
\rf_instance|regfile~196\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~196_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_instance|regfile~195_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~195_combout\ & ((\rf_instance|regfile~47_q\))) # (!\rf_instance|regfile~195_combout\ & 
-- (\rf_instance|regfile~31_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~31_q\,
	datac => \rf_instance|regfile~47_q\,
	datad => \rf_instance|regfile~195_combout\,
	combout => \rf_instance|regfile~196_combout\);

-- Location: LCCOMB_X48_Y18_N16
\rf_instance|regfile~193\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~193_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~127_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~95_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~127_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~95_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~193_combout\);

-- Location: LCCOMB_X53_Y18_N8
\rf_instance|regfile~194\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~194_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~193_combout\ & ((\rf_instance|regfile~143_q\))) # (!\rf_instance|regfile~193_combout\ & (\rf_instance|regfile~111_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~111_q\,
	datab => \rf_instance|regfile~143_q\,
	datac => \rf_r1[0]~0_combout\,
	datad => \rf_instance|regfile~193_combout\,
	combout => \rf_instance|regfile~194_combout\);

-- Location: LCCOMB_X51_Y22_N28
\rf_instance|regfile~197\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~197_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~194_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~196_combout\,
	datad => \rf_instance|regfile~194_combout\,
	combout => \rf_instance|regfile~197_combout\);

-- Location: FF_X55_Y21_N1
\tr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[11]~feeder_combout\,
	asdata => \rf_instance|regfile~197_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(11));

-- Location: LCCOMB_X51_Y22_N2
\alu_a[11]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[11]~10_combout\ = (\alu_ac[0]~input_o\ & (\alu_ac[1]~input_o\)) # (!\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\ & (pc(11))) # (!\alu_ac[1]~input_o\ & ((\rf_instance|regfile~197_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \alu_ac[1]~input_o\,
	datac => pc(11),
	datad => \rf_instance|regfile~197_combout\,
	combout => \alu_a[11]~10_combout\);

-- Location: LCCOMB_X51_Y22_N8
\alu_a[11]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[11]~11_combout\ = (\alu_ac[0]~input_o\ & ((\alu_a[11]~10_combout\ & (tr(11))) # (!\alu_a[11]~10_combout\ & ((\ir[5]~reg0_q\))))) # (!\alu_ac[0]~input_o\ & (((\alu_a[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => tr(11),
	datac => \ir[5]~reg0_q\,
	datad => \alu_a[11]~10_combout\,
	combout => \alu_a[11]~11_combout\);

-- Location: LCCOMB_X51_Y22_N10
\alu_instance|logic|o~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~11_combout\ = (!\alu_a[11]~11_combout\) # (!\alu_b[11]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[11]~7_combout\,
	datac => \alu_a[11]~11_combout\,
	combout => \alu_instance|logic|o~11_combout\);

-- Location: LCCOMB_X50_Y20_N0
\alu_instance|add|lvl2:11:GP2|P~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:11:GP2|P~4_combout\ = (\alu_b[10]~8_combout\ & (!\alu_a[10]~13_combout\ & (\alu_a[9]~15_combout\ $ (\alu_b[9]~9_combout\)))) # (!\alu_b[10]~8_combout\ & (\alu_a[10]~13_combout\ & (\alu_a[9]~15_combout\ $ (\alu_b[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[10]~8_combout\,
	datab => \alu_a[10]~13_combout\,
	datac => \alu_a[9]~15_combout\,
	datad => \alu_b[9]~9_combout\,
	combout => \alu_instance|add|lvl2:11:GP2|P~4_combout\);

-- Location: LCCOMB_X51_Y21_N30
\alu_instance|add|lvl2:10:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:10:GP2|p0~0_combout\ = (\alu_instance|add|lvl2:11:GP2|P~4_combout\ & \alu_instance|add|lvl1:8:GP1|G~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_instance|add|lvl2:11:GP2|P~4_combout\,
	datad => \alu_instance|add|lvl1:8:GP1|G~0_combout\,
	combout => \alu_instance|add|lvl2:10:GP2|p0~0_combout\);

-- Location: LCCOMB_X51_Y22_N24
\alu_instance|add|lvl1:10:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:10:GP1|G~0_combout\ = (\alu_b[10]~8_combout\ & ((\alu_a[10]~13_combout\) # ((\alu_b[9]~9_combout\ & \alu_a[9]~15_combout\)))) # (!\alu_b[10]~8_combout\ & (\alu_b[9]~9_combout\ & (\alu_a[9]~15_combout\ & \alu_a[10]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[9]~9_combout\,
	datab => \alu_b[10]~8_combout\,
	datac => \alu_a[9]~15_combout\,
	datad => \alu_a[10]~13_combout\,
	combout => \alu_instance|add|lvl1:10:GP1|G~0_combout\);

-- Location: LCCOMB_X51_Y21_N18
\alu_instance|add|lvl2:10:GP2|P~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:10:GP2|P~0_combout\ = (\alu_instance|add|lvl2:11:GP2|P~4_combout\ & (\alu_instance|add|p_0\(8) & (\alu_b[7]~13_combout\ $ (\alu_a[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[7]~13_combout\,
	datab => \alu_a[7]~19_combout\,
	datac => \alu_instance|add|lvl2:11:GP2|P~4_combout\,
	datad => \alu_instance|add|p_0\(8),
	combout => \alu_instance|add|lvl2:10:GP2|P~0_combout\);

-- Location: LCCOMB_X51_Y21_N8
\alu_instance|add|c[11]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[11]~20_combout\ = (\alu_instance|add|lvl2:10:GP2|p0~0_combout\) # ((\alu_instance|add|lvl1:10:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:6:GP2|p0~0_combout\ & \alu_instance|add|lvl2:10:GP2|P~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:10:GP2|p0~0_combout\,
	datab => \alu_instance|add|lvl1:10:GP1|G~0_combout\,
	datac => \alu_instance|add|lvl2:6:GP2|p0~0_combout\,
	datad => \alu_instance|add|lvl2:10:GP2|P~0_combout\,
	combout => \alu_instance|add|c[11]~20_combout\);

-- Location: LCCOMB_X51_Y21_N28
\alu_instance|add|c[11]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[11]~19_combout\ = (\alu_instance|add|lvl2:10:GP2|P~0_combout\ & ((\alu_instance|add|lvl1:6:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:6:GP2|P~0_combout\ & \alu_instance|add|c[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:6:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl2:10:GP2|P~0_combout\,
	datac => \alu_instance|add|lvl2:6:GP2|P~0_combout\,
	datad => \alu_instance|add|c[3]~12_combout\,
	combout => \alu_instance|add|c[11]~19_combout\);

-- Location: LCCOMB_X51_Y21_N2
\alu_instance|add|sum[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(11) = \alu_a[11]~11_combout\ $ (\alu_b[11]~7_combout\ $ (((\alu_instance|add|c[11]~20_combout\) # (\alu_instance|add|c[11]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[11]~11_combout\,
	datab => \alu_b[11]~7_combout\,
	datac => \alu_instance|add|c[11]~20_combout\,
	datad => \alu_instance|add|c[11]~19_combout\,
	combout => \alu_instance|add|sum\(11));

-- Location: LCCOMB_X55_Y21_N22
\tr[11]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[11]~11_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~11_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~input_o\,
	datac => \alu_instance|logic|o~11_combout\,
	datad => \alu_instance|add|sum\(11),
	combout => \tr[11]~11_combout\);

-- Location: LCCOMB_X55_Y21_N30
\m_write[11]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[11]~13_combout\ = (\m_wac~input_o\ & (\tr[11]~11_combout\)) # (!\m_wac~input_o\ & ((tr(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_wac~input_o\,
	datac => \tr[11]~11_combout\,
	datad => tr(11),
	combout => \m_write[11]~13_combout\);

-- Location: FF_X49_Y21_N29
\rf_instance|regfile~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[12]~5_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~64_q\);

-- Location: FF_X49_Y21_N19
\rf_instance|regfile~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[12]~5_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~80_q\);

-- Location: FF_X50_Y18_N3
\rf_instance|regfile~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[12]~5_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~48_q\);

-- Location: FF_X51_Y18_N27
\rf_instance|regfile~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[12]~5_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~32_q\);

-- Location: LCCOMB_X51_Y18_N26
\rf_instance|regfile~172\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~172_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~48_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~48_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~32_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~172_combout\);

-- Location: LCCOMB_X49_Y21_N18
\rf_instance|regfile~173\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~173_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~172_combout\ & ((\rf_instance|regfile~80_q\))) # (!\rf_instance|regfile~172_combout\ & (\rf_instance|regfile~64_q\)))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~64_q\,
	datac => \rf_instance|regfile~80_q\,
	datad => \rf_instance|regfile~172_combout\,
	combout => \rf_instance|regfile~173_combout\);

-- Location: LCCOMB_X53_Y18_N28
\rf_instance|regfile~144feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~144feeder_combout\ = \rf_data[12]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[12]~5_combout\,
	combout => \rf_instance|regfile~144feeder_combout\);

-- Location: FF_X53_Y18_N29
\rf_instance|regfile~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~144feeder_combout\,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~144_q\);

-- Location: FF_X48_Y18_N3
\rf_instance|regfile~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[12]~5_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~128_q\);

-- Location: FF_X48_Y18_N25
\rf_instance|regfile~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[12]~5_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~96_q\);

-- Location: LCCOMB_X48_Y18_N24
\rf_instance|regfile~170\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~170_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~128_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~96_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~128_q\,
	datac => \rf_instance|regfile~96_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~170_combout\);

-- Location: LCCOMB_X50_Y18_N4
\rf_instance|regfile~171\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~171_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~170_combout\ & (\rf_instance|regfile~144_q\)) # (!\rf_instance|regfile~170_combout\ & ((\rf_instance|regfile~112_q\))))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~144_q\,
	datac => \rf_instance|regfile~112_q\,
	datad => \rf_instance|regfile~170_combout\,
	combout => \rf_instance|regfile~171_combout\);

-- Location: LCCOMB_X49_Y22_N18
\rf_instance|regfile~174\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~174_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~171_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~173_combout\,
	datad => \rf_instance|regfile~171_combout\,
	combout => \rf_instance|regfile~174_combout\);

-- Location: LCCOMB_X48_Y22_N28
\m_read[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[0]~0_combout\ = (\m_rac~input_o\ & (tr(0))) # (!\m_rac~input_o\ & ((pc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datac => tr(0),
	datad => pc(0),
	combout => \m_read[0]~0_combout\);

-- Location: LCCOMB_X48_Y19_N18
\m_read[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[1]~1_combout\ = (\m_rac~input_o\ & (tr(1))) # (!\m_rac~input_o\ & ((pc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(1),
	datab => pc(1),
	datad => \m_rac~input_o\,
	combout => \m_read[1]~1_combout\);

-- Location: LCCOMB_X53_Y18_N6
\m_read[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[2]~2_combout\ = (\m_rac~input_o\ & (tr(2))) # (!\m_rac~input_o\ & ((pc(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datab => tr(2),
	datad => pc(2),
	combout => \m_read[2]~2_combout\);

-- Location: LCCOMB_X48_Y19_N30
\m_read[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[3]~3_combout\ = (\m_rac~input_o\ & ((tr(3)))) # (!\m_rac~input_o\ & (pc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datab => pc(3),
	datad => tr(3),
	combout => \m_read[3]~3_combout\);

-- Location: LCCOMB_X53_Y18_N14
\m_read[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[4]~4_combout\ = (\m_rac~input_o\ & ((tr(4)))) # (!\m_rac~input_o\ & (pc(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datab => pc(4),
	datad => tr(4),
	combout => \m_read[4]~4_combout\);

-- Location: LCCOMB_X53_Y20_N10
\m_read[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[5]~5_combout\ = (\m_rac~input_o\ & ((tr(5)))) # (!\m_rac~input_o\ & (pc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(5),
	datab => tr(5),
	datac => \m_rac~input_o\,
	combout => \m_read[5]~5_combout\);

-- Location: LCCOMB_X53_Y18_N2
\m_read[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[6]~6_combout\ = (\m_rac~input_o\ & (tr(6))) # (!\m_rac~input_o\ & ((pc(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datab => tr(6),
	datad => pc(6),
	combout => \m_read[6]~6_combout\);

-- Location: LCCOMB_X53_Y20_N20
\m_read[7]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[7]~7_combout\ = (\m_rac~input_o\ & ((tr(7)))) # (!\m_rac~input_o\ & (pc(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datac => pc(7),
	datad => tr(7),
	combout => \m_read[7]~7_combout\);

-- Location: LCCOMB_X52_Y18_N0
\m_read[8]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[8]~8_combout\ = (\m_rac~input_o\ & (tr(8))) # (!\m_rac~input_o\ & ((pc(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tr(8),
	datac => pc(8),
	datad => \m_rac~input_o\,
	combout => \m_read[8]~8_combout\);

-- Location: LCCOMB_X55_Y21_N24
\m_read[9]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[9]~9_combout\ = (\m_rac~input_o\ & ((tr(9)))) # (!\m_rac~input_o\ & (pc(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_rac~input_o\,
	datac => pc(9),
	datad => tr(9),
	combout => \m_read[9]~9_combout\);

-- Location: LCCOMB_X52_Y18_N26
\m_read[10]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[10]~10_combout\ = (\m_rac~input_o\ & (tr(10))) # (!\m_rac~input_o\ & ((pc(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(10),
	datab => pc(10),
	datad => \m_rac~input_o\,
	combout => \m_read[10]~10_combout\);

-- Location: LCCOMB_X51_Y22_N16
\m_read[11]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[11]~11_combout\ = (\m_rac~input_o\ & ((tr(11)))) # (!\m_rac~input_o\ & (pc(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datab => pc(11),
	datad => tr(11),
	combout => \m_read[11]~11_combout\);

-- Location: LCCOMB_X53_Y18_N0
\m_read[12]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[12]~12_combout\ = (\m_rac~input_o\ & (tr(12))) # (!\m_rac~input_o\ & ((pc(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datab => tr(12),
	datad => pc(12),
	combout => \m_read[12]~12_combout\);

-- Location: M9K_X47_Y29_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a92\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a92_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y13_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a76\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a76_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N16
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~75\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~75_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a92~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a76~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a92~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a76~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~75_combout\);

-- Location: M9K_X61_Y40_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a124\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a124_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y22_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a108\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a108_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X60_Y22_N8
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~76_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a124~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a108~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a124~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a108~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~76_combout\);

-- Location: M9K_X27_Y19_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a12\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y21_N4
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\ = (\m_write[13]~0_combout\ & (!\m_write[14]~1_combout\ & \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_write[13]~0_combout\,
	datac => \m_write[14]~1_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\);

-- Location: M9K_X68_Y12_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a28\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N22
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~72_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~72_combout\);

-- Location: LCCOMB_X49_Y21_N12
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\ = (\m_write[13]~0_combout\ & (\m_write[14]~1_combout\ & \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_write[13]~0_combout\,
	datac => \m_write[14]~1_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\);

-- Location: M9K_X68_Y37_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a60\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y21_N14
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\ = (!\m_write[13]~0_combout\ & (\m_write[14]~1_combout\ & \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_write[13]~0_combout\,
	datac => \m_write[14]~1_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~0_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\);

-- Location: M9K_X68_Y16_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a44\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~73\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~73_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a60~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a60~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~73_combout\);

-- Location: LCCOMB_X56_Y18_N18
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~74_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~72_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~72_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~73_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~74_combout\);

-- Location: LCCOMB_X56_Y18_N20
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~74_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~75_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~75_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~76_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~74_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\);

-- Location: LCCOMB_X53_Y18_N12
\rf_data[12]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[12]~4_combout\ = (\rf_dc[1]~input_o\ & ((pc(12)) # ((\rf_dc[0]~input_o\)))) # (!\rf_dc[1]~input_o\ & (((!\rf_dc[0]~input_o\ & \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(12),
	datab => \rf_dc[1]~input_o\,
	datac => \rf_dc[0]~input_o\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\,
	combout => \rf_data[12]~4_combout\);

-- Location: LCCOMB_X53_Y18_N18
\rf_data[12]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[12]~5_combout\ = (\rf_data[12]~4_combout\ & ((\ir[5]~reg0_q\) # ((!\rf_dc[0]~input_o\)))) # (!\rf_data[12]~4_combout\ & (((\rf_dc[0]~input_o\ & \tr[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_data[12]~4_combout\,
	datab => \ir[5]~reg0_q\,
	datac => \rf_dc[0]~input_o\,
	datad => \tr[12]~12_combout\,
	combout => \rf_data[12]~5_combout\);

-- Location: FF_X50_Y18_N5
\rf_instance|regfile~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[12]~5_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~112_q\);

-- Location: LCCOMB_X48_Y18_N2
\rf_instance|regfile~168\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~168_combout\ = (\ir[7]~reg0_q\ & (((\rf_instance|regfile~128_q\) # (\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~96_q\ & ((!\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~96_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~128_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~168_combout\);

-- Location: LCCOMB_X49_Y19_N16
\rf_instance|regfile~169\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~169_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~168_combout\ & ((\rf_instance|regfile~144_q\))) # (!\rf_instance|regfile~168_combout\ & (\rf_instance|regfile~112_q\)))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~112_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~144_q\,
	datad => \rf_instance|regfile~168_combout\,
	combout => \rf_instance|regfile~169_combout\);

-- Location: LCCOMB_X50_Y18_N2
\rf_instance|regfile~166\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~166_combout\ = (\ir[7]~reg0_q\ & (((\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & ((\ir[6]~reg0_q\ & ((\rf_instance|regfile~48_q\))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~32_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~32_q\,
	datac => \rf_instance|regfile~48_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~166_combout\);

-- Location: LCCOMB_X49_Y21_N28
\rf_instance|regfile~167\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~167_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~166_combout\ & (\rf_instance|regfile~80_q\)) # (!\rf_instance|regfile~166_combout\ & ((\rf_instance|regfile~64_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~80_q\,
	datac => \rf_instance|regfile~64_q\,
	datad => \rf_instance|regfile~166_combout\,
	combout => \rf_instance|regfile~167_combout\);

-- Location: LCCOMB_X49_Y19_N26
\pc[12]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[12]~12_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~169_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[8]~reg0_q\,
	datab => \rf_instance|regfile~169_combout\,
	datad => \rf_instance|regfile~167_combout\,
	combout => \pc[12]~12_combout\);

-- Location: FF_X49_Y19_N27
\pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[12]~12_combout\,
	asdata => \tr[12]~12_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(12));

-- Location: LCCOMB_X49_Y22_N28
\alu_a[12]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[12]~4_combout\ = (\alu_ac[0]~input_o\ & ((\ir[5]~reg0_q\) # ((\alu_ac[1]~input_o\)))) # (!\alu_ac[0]~input_o\ & (((!\alu_ac[1]~input_o\ & \rf_instance|regfile~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \ir[5]~reg0_q\,
	datac => \alu_ac[1]~input_o\,
	datad => \rf_instance|regfile~174_combout\,
	combout => \alu_a[12]~4_combout\);

-- Location: LCCOMB_X49_Y22_N26
\alu_a[12]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[12]~5_combout\ = (\alu_ac[1]~input_o\ & ((\alu_a[12]~4_combout\ & ((tr(12)))) # (!\alu_a[12]~4_combout\ & (pc(12))))) # (!\alu_ac[1]~input_o\ & (((\alu_a[12]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(12),
	datab => tr(12),
	datac => \alu_ac[1]~input_o\,
	datad => \alu_a[12]~4_combout\,
	combout => \alu_a[12]~5_combout\);

-- Location: LCCOMB_X49_Y22_N8
\alu_b[12]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[12]~4_combout\ = ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[12]~12_combout\))) # (!\alu_b[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[14]~0_combout\,
	datad => \pc[12]~12_combout\,
	combout => \alu_b[12]~4_combout\);

-- Location: LCCOMB_X50_Y22_N8
\alu_instance|logic|o~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~12_combout\ = (!\alu_b[12]~4_combout\) # (!\alu_a[12]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[12]~5_combout\,
	datac => \alu_b[12]~4_combout\,
	combout => \alu_instance|logic|o~12_combout\);

-- Location: LCCOMB_X50_Y21_N28
\alu_instance|add|p_0[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(11) = \alu_a[11]~11_combout\ $ (\alu_b[11]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_a[11]~11_combout\,
	datac => \alu_b[11]~7_combout\,
	combout => \alu_instance|add|p_0\(11));

-- Location: LCCOMB_X52_Y21_N14
\alu_instance|add|lvl2:11:GP2|P~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:11:GP2|P~5_combout\ = (\alu_instance|add|lvl2:11:GP2|P~4_combout\ & (\alu_instance|add|p_0\(11) & (\alu_a[8]~9_combout\ $ (\alu_b[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:11:GP2|P~4_combout\,
	datab => \alu_a[8]~9_combout\,
	datac => \alu_instance|add|p_0\(11),
	datad => \alu_b[8]~6_combout\,
	combout => \alu_instance|add|lvl2:11:GP2|P~5_combout\);

-- Location: LCCOMB_X52_Y21_N26
\alu_instance|add|c[12]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[12]~21_combout\ = (\alu_instance|add|lvl2:7:GP2|P~4_combout\ & (\alu_instance|add|lvl2:11:GP2|P~5_combout\ & ((\alu_instance|add|lvl1:3:GP1|G~0_combout\) # (\alu_instance|add|c[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:3:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl2:7:GP2|P~4_combout\,
	datac => \alu_instance|add|lvl2:11:GP2|P~5_combout\,
	datad => \alu_instance|add|c[4]~13_combout\,
	combout => \alu_instance|add|c[12]~21_combout\);

-- Location: LCCOMB_X51_Y21_N20
\alu_instance|add|lvl1:11:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:11:GP1|G~0_combout\ = (\alu_b[11]~7_combout\ & ((\alu_a[11]~11_combout\) # ((\alu_a[10]~13_combout\ & \alu_b[10]~8_combout\)))) # (!\alu_b[11]~7_combout\ & (\alu_a[10]~13_combout\ & (\alu_b[10]~8_combout\ & \alu_a[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[10]~13_combout\,
	datab => \alu_b[11]~7_combout\,
	datac => \alu_b[10]~8_combout\,
	datad => \alu_a[11]~11_combout\,
	combout => \alu_instance|add|lvl1:11:GP1|G~0_combout\);

-- Location: LCCOMB_X52_Y21_N24
\alu_instance|add|lvl2:11:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:11:GP2|p0~0_combout\ = (\alu_instance|add|p_0\(11) & (\alu_instance|add|lvl1:9:GP1|G~0_combout\ & (\alu_a[10]~13_combout\ $ (\alu_b[10]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[10]~13_combout\,
	datab => \alu_b[10]~8_combout\,
	datac => \alu_instance|add|p_0\(11),
	datad => \alu_instance|add|lvl1:9:GP1|G~0_combout\,
	combout => \alu_instance|add|lvl2:11:GP2|p0~0_combout\);

-- Location: LCCOMB_X52_Y21_N2
\alu_instance|add|c[12]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[12]~11_combout\ = (!\alu_instance|add|lvl1:11:GP1|G~0_combout\ & !\alu_instance|add|lvl2:11:GP2|p0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_instance|add|lvl1:11:GP1|G~0_combout\,
	datad => \alu_instance|add|lvl2:11:GP2|p0~0_combout\,
	combout => \alu_instance|add|c[12]~11_combout\);

-- Location: LCCOMB_X52_Y21_N20
\alu_instance|add|c[12]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[12]~22_combout\ = ((\alu_instance|add|lvl2:11:GP2|P~5_combout\ & ((\alu_instance|add|lvl1:7:GP1|G~0_combout\) # (\alu_instance|add|lvl2:7:GP2|p0~1_combout\)))) # (!\alu_instance|add|c[12]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:7:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl2:7:GP2|p0~1_combout\,
	datac => \alu_instance|add|lvl2:11:GP2|P~5_combout\,
	datad => \alu_instance|add|c[12]~11_combout\,
	combout => \alu_instance|add|c[12]~22_combout\);

-- Location: LCCOMB_X52_Y21_N6
\alu_instance|add|sum[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(12) = \alu_b[12]~4_combout\ $ (\alu_a[12]~5_combout\ $ (((\alu_instance|add|c[12]~21_combout\) # (\alu_instance|add|c[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[12]~4_combout\,
	datab => \alu_a[12]~5_combout\,
	datac => \alu_instance|add|c[12]~21_combout\,
	datad => \alu_instance|add|c[12]~22_combout\,
	combout => \alu_instance|add|sum\(12));

-- Location: LCCOMB_X52_Y21_N12
\tr[12]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[12]~12_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~12_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~12_combout\,
	datad => \alu_instance|add|sum\(12),
	combout => \tr[12]~12_combout\);

-- Location: FF_X52_Y21_N13
\tr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[12]~12_combout\,
	asdata => \rf_instance|regfile~174_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(12));

-- Location: LCCOMB_X52_Y21_N8
\m_write[12]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[12]~14_combout\ = (\m_wac~input_o\ & ((\tr[12]~12_combout\))) # (!\m_wac~input_o\ & (tr(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_wac~input_o\,
	datab => tr(12),
	datad => \tr[12]~12_combout\,
	combout => \m_write[12]~14_combout\);

-- Location: M9K_X61_Y11_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a106\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a106_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y2_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a122\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a122_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X59_Y18_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~64_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a122~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a106~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a106~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a122~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~64_combout\);

-- Location: M9K_X68_Y19_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a26\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y3_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a10\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N8
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~60_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~60_combout\);

-- Location: M9K_X61_Y12_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a42\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y5_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a58\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N6
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~61\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~61_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a58~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a58~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~61_combout\);

-- Location: LCCOMB_X56_Y18_N24
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~62_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~60_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~60_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~61_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~62_combout\);

-- Location: M9K_X68_Y13_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a90\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a90_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y10_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a74\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a74_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X55_Y18_N26
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~63\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~63_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a90~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a74~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a90~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a74~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~63_combout\);

-- Location: LCCOMB_X51_Y18_N18
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~62_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~64_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~64_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~62_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~63_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\);

-- Location: IOIBUF_X62_Y0_N1
\upd_ir~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upd_ir,
	o => \upd_ir~input_o\);

-- Location: FF_X51_Y18_N19
\ir[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[10]~reg0_q\);

-- Location: LCCOMB_X51_Y18_N28
\rf_r1[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_r1[1]~1_combout\ = (\rf_rc~input_o\ & (\rf_master[1]~input_o\)) # (!\rf_rc~input_o\ & ((\ir[10]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_rc~input_o\,
	datab => \rf_master[1]~input_o\,
	datad => \ir[10]~reg0_q\,
	combout => \rf_r1[1]~1_combout\);

-- Location: LCCOMB_X51_Y17_N28
\rf_instance|regfile~262\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~262_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~70_q\))) # (!\rf_r1[0]~0_combout\ & (\rf_instance|regfile~54_q\)))) # (!\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~54_q\,
	datac => \rf_instance|regfile~70_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~262_combout\);

-- Location: LCCOMB_X51_Y17_N26
\rf_instance|regfile~263\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~263_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_instance|regfile~262_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~262_combout\ & ((\rf_instance|regfile~38_q\))) # (!\rf_instance|regfile~262_combout\ & 
-- (\rf_instance|regfile~22_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~22_q\,
	datac => \rf_instance|regfile~38_q\,
	datad => \rf_instance|regfile~262_combout\,
	combout => \rf_instance|regfile~263_combout\);

-- Location: LCCOMB_X48_Y19_N10
\rf_instance|regfile~260\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~260_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~118_q\))) # (!\rf_r1[1]~1_combout\ & (\rf_instance|regfile~86_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~86_q\,
	datab => \rf_instance|regfile~118_q\,
	datac => \rf_r1[0]~0_combout\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~260_combout\);

-- Location: LCCOMB_X52_Y19_N20
\rf_instance|regfile~261\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~261_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~260_combout\ & (\rf_instance|regfile~134_q\)) # (!\rf_instance|regfile~260_combout\ & ((\rf_instance|regfile~102_q\))))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~134_q\,
	datac => \rf_instance|regfile~102_q\,
	datad => \rf_instance|regfile~260_combout\,
	combout => \rf_instance|regfile~261_combout\);

-- Location: LCCOMB_X52_Y19_N28
\rf_instance|regfile~264\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~264_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~261_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~263_combout\,
	datad => \rf_instance|regfile~261_combout\,
	combout => \rf_instance|regfile~264_combout\);

-- Location: M9K_X47_Y34_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a66\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a66_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y16_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a82\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a82_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y20_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a82~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a66~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a66~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a82~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\);

-- Location: M9K_X47_Y36_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a98\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a98_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y27_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a114\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a114_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N22
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a114~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a98~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a98~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a114~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\);

-- Location: M9K_X47_Y8_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a2\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y23_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a18\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y20_N8
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\);

-- Location: M9K_X47_Y25_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a34\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y24_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a50\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y20_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a50~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a50~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\);

-- Location: LCCOMB_X48_Y20_N24
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\);

-- Location: LCCOMB_X49_Y20_N12
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\);

-- Location: LCCOMB_X49_Y20_N8
\ir[2]~reg0feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ir[2]~reg0feeder_combout\ = \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\,
	combout => \ir[2]~reg0feeder_combout\);

-- Location: FF_X49_Y20_N9
\ir[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[2]~reg0feeder_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[2]~reg0_q\);

-- Location: LCCOMB_X52_Y19_N22
\alu_b[2]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[2]~16_combout\ = (\alu_bc[1]~input_o\ & (\ir[2]~reg0_q\)) # (!\alu_bc[1]~input_o\ & (((!\alu_bc[0]~input_o\ & \pc[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[2]~reg0_q\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_bc[1]~input_o\,
	datad => \pc[2]~2_combout\,
	combout => \alu_b[2]~16_combout\);

-- Location: LCCOMB_X52_Y19_N2
\alu_instance|add|lvl2:4:GP2|P~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:4:GP2|P~0_combout\ = (\alu_b[2]~16_combout\ & (!\alu_a[2]~25_combout\ & (\alu_a[1]~32_combout\ $ (\alu_b[1]~19_combout\)))) # (!\alu_b[2]~16_combout\ & (\alu_a[2]~25_combout\ & (\alu_a[1]~32_combout\ $ (\alu_b[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[2]~16_combout\,
	datab => \alu_a[2]~25_combout\,
	datac => \alu_a[1]~32_combout\,
	datad => \alu_b[1]~19_combout\,
	combout => \alu_instance|add|lvl2:4:GP2|P~0_combout\);

-- Location: LCCOMB_X50_Y19_N10
\alu_instance|add|c[3]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[3]~12_combout\ = (\alu_instance|add|lvl1:2:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:4:GP2|P~0_combout\ & ((\alu_instance|add|c~9_combout\) # (!\alu_instance|logic|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:4:GP2|P~0_combout\,
	datab => \alu_instance|add|lvl1:2:GP1|G~0_combout\,
	datac => \alu_instance|add|c~9_combout\,
	datad => \alu_instance|logic|o~0_combout\,
	combout => \alu_instance|add|c[3]~12_combout\);

-- Location: LCCOMB_X50_Y19_N2
\alu_instance|add|sum[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(3) = \alu_b[3]~17_combout\ $ (\alu_a[3]~27_combout\ $ (\alu_instance|add|c[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[3]~17_combout\,
	datab => \alu_a[3]~27_combout\,
	datad => \alu_instance|add|c[3]~12_combout\,
	combout => \alu_instance|add|sum\(3));

-- Location: LCCOMB_X50_Y19_N18
\tr[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[3]~3_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~3_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|logic|o~3_combout\,
	datab => \alu_op~input_o\,
	datad => \alu_instance|add|sum\(3),
	combout => \tr[3]~3_combout\);

-- Location: LCCOMB_X50_Y22_N16
\rf_data[3]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[3]~26_combout\ = (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & (pc(3))) # (!\rf_dc[1]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => pc(3),
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\,
	combout => \rf_data[3]~26_combout\);

-- Location: LCCOMB_X50_Y22_N2
\rf_data[3]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[3]~27_combout\ = (\rf_data[3]~26_combout\) # ((!\rf_dc[1]~input_o\ & (\rf_dc[0]~input_o\ & \tr[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => \tr[3]~3_combout\,
	datad => \rf_data[3]~26_combout\,
	combout => \rf_data[3]~27_combout\);

-- Location: FF_X49_Y17_N27
\rf_instance|regfile~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[3]~27_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~103_q\);

-- Location: LCCOMB_X50_Y17_N12
\rf_instance|regfile~265\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~265_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~119_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~87_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~119_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~87_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~265_combout\);

-- Location: LCCOMB_X50_Y17_N18
\rf_instance|regfile~266\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~266_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~265_combout\ & ((\rf_instance|regfile~135_q\))) # (!\rf_instance|regfile~265_combout\ & (\rf_instance|regfile~103_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~103_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~135_q\,
	datad => \rf_instance|regfile~265_combout\,
	combout => \rf_instance|regfile~266_combout\);

-- Location: LCCOMB_X51_Y18_N4
\rf_instance|regfile~267\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~267_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~39_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~39_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~23_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~267_combout\);

-- Location: LCCOMB_X50_Y22_N28
\rf_instance|regfile~268\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~268_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~267_combout\ & ((\rf_instance|regfile~71_q\))) # (!\rf_instance|regfile~267_combout\ & (\rf_instance|regfile~55_q\)))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~55_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~71_q\,
	datad => \rf_instance|regfile~267_combout\,
	combout => \rf_instance|regfile~268_combout\);

-- Location: LCCOMB_X51_Y19_N12
\rf_instance|regfile~269\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~269_combout\ = (\rf_r1[2]~2_combout\ & (\rf_instance|regfile~266_combout\)) # (!\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~268_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~266_combout\,
	datad => \rf_instance|regfile~268_combout\,
	combout => \rf_instance|regfile~269_combout\);

-- Location: M9K_X47_Y2_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a115\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a115_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y27_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a99\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a99_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y19_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~22_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a115~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a99~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|ram_block1a115~portbdataout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a99~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~22_combout\);

-- Location: M9K_X61_Y17_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a67\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a67_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y26_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a83\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a83_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y18_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~21_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a83~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a67~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a67~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a83~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~21_combout\);

-- Location: M9K_X61_Y6_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a19\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y3_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a3\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y19_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~18_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~18_combout\);

-- Location: M9K_X47_Y11_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a51\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y13_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a35\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y19_N16
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~19_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a51~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|ram_block1a51~portbdataout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~19_combout\);

-- Location: LCCOMB_X53_Y19_N2
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~20_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~18_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~18_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~19_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~20_combout\);

-- Location: LCCOMB_X53_Y19_N24
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~20_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~22_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~22_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~21_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~20_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\);

-- Location: FF_X53_Y19_N25
\ir[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[3]~reg0_q\);

-- Location: LCCOMB_X52_Y17_N6
\rf_w[0]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_w[0]~5_combout\ = (\rf_w[0]~4_combout\ & ((\rf_master[0]~input_o\) # ((!\rf_wc[1]~input_o\)))) # (!\rf_w[0]~4_combout\ & (((\ir[3]~reg0_q\ & \rf_wc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_master[0]~input_o\,
	datab => \rf_w[0]~4_combout\,
	datac => \ir[3]~reg0_q\,
	datad => \rf_wc[1]~input_o\,
	combout => \rf_w[0]~5_combout\);

-- Location: LCCOMB_X52_Y17_N0
\rf_instance|regfile~292\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~292_combout\ = (!\rf_w[2]~3_combout\ & (\rf_we~input_o\ & (\rf_w[1]~1_combout\ & !\rf_w[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_we~input_o\,
	datac => \rf_w[1]~1_combout\,
	datad => \rf_w[0]~5_combout\,
	combout => \rf_instance|regfile~292_combout\);

-- Location: FF_X55_Y18_N17
\rf_instance|regfile~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~56feeder_combout\,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~56_q\);

-- Location: LCCOMB_X50_Y18_N6
\rf_instance|regfile~40feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~40feeder_combout\ = \rf_data[4]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[4]~21_combout\,
	combout => \rf_instance|regfile~40feeder_combout\);

-- Location: FF_X50_Y18_N7
\rf_instance|regfile~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~40feeder_combout\,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~40_q\);

-- Location: FF_X51_Y18_N13
\rf_instance|regfile~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[4]~21_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~24_q\);

-- Location: LCCOMB_X50_Y18_N20
\rf_instance|regfile~238\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~238_combout\ = (\ir[7]~reg0_q\ & (((\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & ((\ir[6]~reg0_q\ & (\rf_instance|regfile~40_q\)) # (!\ir[6]~reg0_q\ & ((\rf_instance|regfile~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~40_q\,
	datac => \rf_instance|regfile~24_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~238_combout\);

-- Location: LCCOMB_X55_Y18_N0
\rf_instance|regfile~239\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~239_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~238_combout\ & (\rf_instance|regfile~72_q\)) # (!\rf_instance|regfile~238_combout\ & ((\rf_instance|regfile~56_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~72_q\,
	datab => \rf_instance|regfile~56_q\,
	datac => \ir[7]~reg0_q\,
	datad => \rf_instance|regfile~238_combout\,
	combout => \rf_instance|regfile~239_combout\);

-- Location: FF_X49_Y17_N25
\rf_instance|regfile~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[4]~21_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~104_q\);

-- Location: FF_X50_Y17_N15
\rf_instance|regfile~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[4]~21_combout\,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~136_q\);

-- Location: LCCOMB_X49_Y17_N6
\rf_instance|regfile~120feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~120feeder_combout\ = \rf_data[4]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[4]~21_combout\,
	combout => \rf_instance|regfile~120feeder_combout\);

-- Location: FF_X49_Y17_N7
\rf_instance|regfile~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~120feeder_combout\,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~120_q\);

-- Location: FF_X50_Y17_N5
\rf_instance|regfile~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[4]~21_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~88_q\);

-- Location: LCCOMB_X49_Y17_N28
\rf_instance|regfile~240\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~240_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & (\rf_instance|regfile~120_q\)) # (!\ir[7]~reg0_q\ & ((\rf_instance|regfile~88_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~120_q\,
	datab => \rf_instance|regfile~88_q\,
	datac => \ir[6]~reg0_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~240_combout\);

-- Location: LCCOMB_X50_Y17_N0
\rf_instance|regfile~241\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~241_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~240_combout\ & ((\rf_instance|regfile~136_q\))) # (!\rf_instance|regfile~240_combout\ & (\rf_instance|regfile~104_q\)))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~104_q\,
	datac => \rf_instance|regfile~136_q\,
	datad => \rf_instance|regfile~240_combout\,
	combout => \rf_instance|regfile~241_combout\);

-- Location: LCCOMB_X53_Y19_N0
\pc[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[4]~4_combout\ = (\ir[8]~reg0_q\ & ((\rf_instance|regfile~241_combout\))) # (!\ir[8]~reg0_q\ & (\rf_instance|regfile~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~239_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~241_combout\,
	combout => \pc[4]~4_combout\);

-- Location: FF_X53_Y19_N1
\pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[4]~4_combout\,
	asdata => \tr[4]~4_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(4));

-- Location: LCCOMB_X52_Y20_N18
\alu_a[4]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[4]~20_combout\ = (\alu_ac[1]~input_o\ & (((\alu_ac[0]~input_o\)))) # (!\alu_ac[1]~input_o\ & ((\alu_ac[0]~input_o\ & (\ir[4]~reg0_q\)) # (!\alu_ac[0]~input_o\ & ((\rf_instance|regfile~246_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[1]~input_o\,
	datab => \ir[4]~reg0_q\,
	datac => \alu_ac[0]~input_o\,
	datad => \rf_instance|regfile~246_combout\,
	combout => \alu_a[4]~20_combout\);

-- Location: LCCOMB_X52_Y20_N24
\alu_a[4]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[4]~21_combout\ = (\alu_ac[1]~input_o\ & ((\alu_a[4]~20_combout\ & ((tr(4)))) # (!\alu_a[4]~20_combout\ & (pc(4))))) # (!\alu_ac[1]~input_o\ & (((\alu_a[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[1]~input_o\,
	datab => pc(4),
	datac => tr(4),
	datad => \alu_a[4]~20_combout\,
	combout => \alu_a[4]~21_combout\);

-- Location: LCCOMB_X52_Y22_N2
\alu_instance|logic|o~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~4_combout\ = (!\alu_b[4]~14_combout\) # (!\alu_a[4]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_a[4]~21_combout\,
	datad => \alu_b[4]~14_combout\,
	combout => \alu_instance|logic|o~4_combout\);

-- Location: LCCOMB_X52_Y22_N28
\alu_instance|add|sum[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(4) = \alu_b[4]~14_combout\ $ (\alu_a[4]~21_combout\ $ (((\alu_instance|add|lvl1:3:GP1|G~0_combout\) # (\alu_instance|add|c[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[4]~14_combout\,
	datab => \alu_instance|add|lvl1:3:GP1|G~0_combout\,
	datac => \alu_a[4]~21_combout\,
	datad => \alu_instance|add|c[4]~13_combout\,
	combout => \alu_instance|add|sum\(4));

-- Location: LCCOMB_X52_Y22_N0
\tr[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[4]~4_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~4_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~4_combout\,
	datad => \alu_instance|add|sum\(4),
	combout => \tr[4]~4_combout\);

-- Location: LCCOMB_X50_Y17_N6
\rf_data[4]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[4]~20_combout\ = (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & (pc(4))) # (!\rf_dc[1]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => pc(4),
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\,
	combout => \rf_data[4]~20_combout\);

-- Location: LCCOMB_X50_Y17_N14
\rf_data[4]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[4]~21_combout\ = (\rf_data[4]~20_combout\) # ((\tr[4]~4_combout\ & (\rf_dc[0]~input_o\ & !\rf_dc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[4]~4_combout\,
	datab => \rf_dc[0]~input_o\,
	datac => \rf_dc[1]~input_o\,
	datad => \rf_data[4]~20_combout\,
	combout => \rf_data[4]~21_combout\);

-- Location: LCCOMB_X55_Y18_N30
\rf_instance|regfile~72feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~72feeder_combout\ = \rf_data[4]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[4]~21_combout\,
	combout => \rf_instance|regfile~72feeder_combout\);

-- Location: FF_X55_Y18_N31
\rf_instance|regfile~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~72feeder_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~72_q\);

-- Location: LCCOMB_X51_Y18_N12
\rf_instance|regfile~244\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~244_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~40_q\) # ((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & (((\rf_instance|regfile~24_q\ & !\rf_r1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~40_q\,
	datac => \rf_instance|regfile~24_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~244_combout\);

-- Location: LCCOMB_X55_Y18_N22
\rf_instance|regfile~245\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~245_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~244_combout\ & (\rf_instance|regfile~72_q\)) # (!\rf_instance|regfile~244_combout\ & ((\rf_instance|regfile~56_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~72_q\,
	datab => \rf_instance|regfile~56_q\,
	datac => \rf_r1[1]~1_combout\,
	datad => \rf_instance|regfile~244_combout\,
	combout => \rf_instance|regfile~245_combout\);

-- Location: LCCOMB_X50_Y17_N4
\rf_instance|regfile~242\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~242_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~120_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~88_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~120_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~88_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~242_combout\);

-- Location: LCCOMB_X49_Y17_N24
\rf_instance|regfile~243\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~243_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~242_combout\ & (\rf_instance|regfile~136_q\)) # (!\rf_instance|regfile~242_combout\ & ((\rf_instance|regfile~104_q\))))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~136_q\,
	datac => \rf_instance|regfile~104_q\,
	datad => \rf_instance|regfile~242_combout\,
	combout => \rf_instance|regfile~243_combout\);

-- Location: LCCOMB_X52_Y20_N20
\rf_instance|regfile~246\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~246_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~243_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~245_combout\,
	datad => \rf_instance|regfile~243_combout\,
	combout => \rf_instance|regfile~246_combout\);

-- Location: M9K_X47_Y15_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a116\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a116_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y11_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a100\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a100_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y18_N18
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~28_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a116~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a100~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a116~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a100~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~28_combout\);

-- Location: M9K_X47_Y12_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a84\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a84_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y17_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a68\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a68_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y18_N20
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~27_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a84~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a68~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a84~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a68~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~27_combout\);

-- Location: M9K_X68_Y18_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a36\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y15_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a52\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y18_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~25_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a52~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a52~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~25_combout\);

-- Location: M9K_X27_Y14_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a4\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y14_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a20\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y18_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~24_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~24_combout\);

-- Location: LCCOMB_X57_Y18_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~26_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~25_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~25_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~24_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~26_combout\);

-- Location: LCCOMB_X49_Y18_N0
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~26_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~28_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~28_combout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~27_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~26_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\);

-- Location: FF_X49_Y18_N1
\ir[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[4]~reg0_q\);

-- Location: LCCOMB_X52_Y17_N28
\rf_w[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_w[1]~0_combout\ = (\rf_wc[0]~input_o\ & (((\rf_wc[1]~input_o\)))) # (!\rf_wc[0]~input_o\ & ((\rf_wc[1]~input_o\ & (\ir[4]~reg0_q\)) # (!\rf_wc[1]~input_o\ & ((\ir[10]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[4]~reg0_q\,
	datab => \ir[10]~reg0_q\,
	datac => \rf_wc[0]~input_o\,
	datad => \rf_wc[1]~input_o\,
	combout => \rf_w[1]~0_combout\);

-- Location: LCCOMB_X52_Y17_N30
\rf_w[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_w[1]~1_combout\ = (\rf_wc[0]~input_o\ & ((\rf_w[1]~0_combout\ & ((\rf_master[1]~input_o\))) # (!\rf_w[1]~0_combout\ & (\ir[7]~reg0_q\)))) # (!\rf_wc[0]~input_o\ & (((\rf_w[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_wc[0]~input_o\,
	datac => \rf_master[1]~input_o\,
	datad => \rf_w[1]~0_combout\,
	combout => \rf_w[1]~1_combout\);

-- Location: LCCOMB_X52_Y17_N26
\rf_instance|regfile~299\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~299_combout\ = (\rf_w[2]~3_combout\ & (\rf_we~input_o\ & (\rf_w[1]~1_combout\ & \rf_w[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_w[2]~3_combout\,
	datab => \rf_we~input_o\,
	datac => \rf_w[1]~1_combout\,
	datad => \rf_w[0]~5_combout\,
	combout => \rf_instance|regfile~299_combout\);

-- Location: FF_X50_Y19_N27
\rf_instance|regfile~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[1]~31_combout\,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~133_q\);

-- Location: FF_X48_Y19_N27
\rf_instance|regfile~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[1]~31_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~85_q\);

-- Location: LCCOMB_X48_Y19_N4
\rf_instance|regfile~117feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~117feeder_combout\ = \rf_data[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[1]~31_combout\,
	combout => \rf_instance|regfile~117feeder_combout\);

-- Location: FF_X48_Y19_N5
\rf_instance|regfile~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~117feeder_combout\,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~117_q\);

-- Location: LCCOMB_X48_Y19_N6
\rf_instance|regfile~289\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~289_combout\ = (\ir[7]~reg0_q\ & (((\rf_instance|regfile~117_q\) # (\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~85_q\ & ((!\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~85_q\,
	datab => \rf_instance|regfile~117_q\,
	datac => \ir[7]~reg0_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~289_combout\);

-- Location: LCCOMB_X53_Y19_N8
\rf_instance|regfile~290\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~290_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~289_combout\ & ((\rf_instance|regfile~133_q\))) # (!\rf_instance|regfile~289_combout\ & (\rf_instance|regfile~101_q\)))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~101_q\,
	datac => \rf_instance|regfile~133_q\,
	datad => \rf_instance|regfile~289_combout\,
	combout => \rf_instance|regfile~290_combout\);

-- Location: LCCOMB_X52_Y17_N18
\rf_instance|regfile~287\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~287_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~37_q\) # ((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & (((\rf_instance|regfile~21_q\ & !\ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~37_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~21_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~287_combout\);

-- Location: LCCOMB_X52_Y17_N24
\rf_instance|regfile~288\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~288_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~287_combout\ & (\rf_instance|regfile~69_q\)) # (!\rf_instance|regfile~287_combout\ & ((\rf_instance|regfile~53_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~69_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~53_q\,
	datad => \rf_instance|regfile~287_combout\,
	combout => \rf_instance|regfile~288_combout\);

-- Location: LCCOMB_X53_Y19_N22
\pc[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[1]~1_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~290_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~288_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[8]~reg0_q\,
	datab => \rf_instance|regfile~290_combout\,
	datad => \rf_instance|regfile~288_combout\,
	combout => \pc[1]~1_combout\);

-- Location: LCCOMB_X52_Y19_N10
\alu_b[1]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[1]~19_combout\ = (\alu_bc[1]~input_o\ & (((\ir[1]~reg0_q\)))) # (!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & ((\pc[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \ir[1]~reg0_q\,
	datad => \pc[1]~1_combout\,
	combout => \alu_b[1]~19_combout\);

-- Location: LCCOMB_X52_Y19_N0
\alu_instance|add|p_0[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(1) = \alu_b[1]~19_combout\ $ (\alu_a[1]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~19_combout\,
	datac => \alu_a[1]~32_combout\,
	combout => \alu_instance|add|p_0\(1));

-- Location: LCCOMB_X50_Y19_N12
\alu_instance|add|sum[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum\(1) = \alu_instance|add|p_0\(1) $ (((\alu_cin~input_o\ & ((\alu_a[0]~29_combout\) # (\alu_b[0]~18_combout\))) # (!\alu_cin~input_o\ & (\alu_a[0]~29_combout\ & \alu_b[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|p_0\(1),
	datab => \alu_cin~input_o\,
	datac => \alu_a[0]~29_combout\,
	datad => \alu_b[0]~18_combout\,
	combout => \alu_instance|add|sum\(1));

-- Location: LCCOMB_X52_Y19_N16
\alu_instance|logic|o~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~1_combout\ = (!\alu_a[1]~32_combout\) # (!\alu_b[1]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~19_combout\,
	datab => \alu_a[1]~32_combout\,
	combout => \alu_instance|logic|o~1_combout\);

-- Location: LCCOMB_X50_Y19_N14
\tr[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[1]~1_combout\ = (\alu_op~input_o\ & ((\alu_instance|logic|o~1_combout\))) # (!\alu_op~input_o\ & (\alu_instance|add|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|sum\(1),
	datab => \alu_op~input_o\,
	datad => \alu_instance|logic|o~1_combout\,
	combout => \tr[1]~1_combout\);

-- Location: LCCOMB_X50_Y19_N28
\rf_data[1]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[1]~30_combout\ = (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & (pc(1))) # (!\rf_dc[1]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[0]~input_o\,
	datab => pc(1),
	datac => \rf_dc[1]~input_o\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\,
	combout => \rf_data[1]~30_combout\);

-- Location: LCCOMB_X50_Y19_N26
\rf_data[1]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[1]~31_combout\ = (\rf_data[1]~30_combout\) # ((\rf_dc[0]~input_o\ & (\tr[1]~1_combout\ & !\rf_dc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[0]~input_o\,
	datab => \tr[1]~1_combout\,
	datac => \rf_dc[1]~input_o\,
	datad => \rf_data[1]~30_combout\,
	combout => \rf_data[1]~31_combout\);

-- Location: FF_X52_Y19_N5
\rf_instance|regfile~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[1]~31_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~101_q\);

-- Location: LCCOMB_X48_Y19_N28
\rf_instance|regfile~285\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~285_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~117_q\))) # (!\rf_r1[1]~1_combout\ & (\rf_instance|regfile~85_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~85_q\,
	datab => \rf_instance|regfile~117_q\,
	datac => \rf_r1[0]~0_combout\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~285_combout\);

-- Location: LCCOMB_X52_Y19_N18
\rf_instance|regfile~286\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~286_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~285_combout\ & ((\rf_instance|regfile~133_q\))) # (!\rf_instance|regfile~285_combout\ & (\rf_instance|regfile~101_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~101_q\,
	datac => \rf_instance|regfile~133_q\,
	datad => \rf_instance|regfile~285_combout\,
	combout => \rf_instance|regfile~286_combout\);

-- Location: LCCOMB_X48_Y19_N26
\rf_instance|regfile~291\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~291_combout\ = (\rf_r1[2]~2_combout\ & (\rf_instance|regfile~286_combout\)) # (!\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~286_combout\,
	datab => \rf_instance|regfile~284_combout\,
	datad => \rf_r1[2]~2_combout\,
	combout => \rf_instance|regfile~291_combout\);

-- Location: M9K_X68_Y33_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a1\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y30_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a17\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~6_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~6_combout\);

-- Location: M9K_X47_Y37_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a49\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y28_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a33\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N18
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a49~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a49~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\);

-- Location: LCCOMB_X53_Y22_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~6_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~6_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\);

-- Location: M9K_X27_Y24_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a113\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a113_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y38_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a97\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a97_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N26
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a113~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a97~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a113~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a97~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\);

-- Location: M9K_X27_Y16_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a81\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a81_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y18_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a65\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a65_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y22_N16
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a81~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a65~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a81~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a65~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\);

-- Location: LCCOMB_X53_Y22_N14
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\);

-- Location: FF_X53_Y22_N15
\ir[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[1]~reg0_q\);

-- Location: LCCOMB_X51_Y17_N20
\rf_data[8]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[8]~8_combout\ = (\rf_dc[0]~input_o\ & (((\rf_dc[1]~input_o\)))) # (!\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\ & (pc(8))) # (!\rf_dc[1]~input_o\ & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(8),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\,
	datac => \rf_dc[0]~input_o\,
	datad => \rf_dc[1]~input_o\,
	combout => \rf_data[8]~8_combout\);

-- Location: LCCOMB_X51_Y17_N8
\rf_data[8]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[8]~9_combout\ = (\rf_dc[0]~input_o\ & ((\rf_data[8]~8_combout\ & (\ir[1]~reg0_q\)) # (!\rf_data[8]~8_combout\ & ((\tr[8]~8_combout\))))) # (!\rf_dc[0]~input_o\ & (((\rf_data[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[1]~reg0_q\,
	datab => \rf_dc[0]~input_o\,
	datac => \tr[8]~8_combout\,
	datad => \rf_data[8]~8_combout\,
	combout => \rf_data[8]~9_combout\);

-- Location: FF_X51_Y17_N9
\rf_instance|regfile~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[8]~9_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~76_q\);

-- Location: LCCOMB_X51_Y18_N2
\rf_instance|regfile~186\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~186_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~44_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~44_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~28_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~186_combout\);

-- Location: LCCOMB_X50_Y20_N12
\rf_instance|regfile~187\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~187_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~186_combout\ & (\rf_instance|regfile~76_q\)) # (!\rf_instance|regfile~186_combout\ & ((\rf_instance|regfile~60_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~76_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~60_q\,
	datad => \rf_instance|regfile~186_combout\,
	combout => \rf_instance|regfile~187_combout\);

-- Location: LCCOMB_X48_Y18_N12
\rf_instance|regfile~184\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~184_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~124_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~92_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~124_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~92_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~184_combout\);

-- Location: LCCOMB_X50_Y20_N10
\rf_instance|regfile~185\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~185_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~184_combout\ & ((\rf_instance|regfile~140_q\))) # (!\rf_instance|regfile~184_combout\ & (\rf_instance|regfile~108_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~108_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~140_q\,
	datad => \rf_instance|regfile~184_combout\,
	combout => \rf_instance|regfile~185_combout\);

-- Location: LCCOMB_X50_Y20_N14
\rf_instance|regfile~188\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~188_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~185_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~187_combout\,
	datac => \rf_r1[2]~2_combout\,
	datad => \rf_instance|regfile~185_combout\,
	combout => \rf_instance|regfile~188_combout\);

-- Location: M9K_X68_Y7_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a104\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a104_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y8_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a120\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a120_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y18_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~52_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a120~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a104~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a104~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a120~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~52_combout\);

-- Location: M9K_X27_Y18_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a88\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a88_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y32_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a72\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a72_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y18_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~51_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a88~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a72~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|ram_block1a88~portbdataout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a72~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~51_combout\);

-- Location: M9K_X61_Y32_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a24\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y8_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a8\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y18_N2
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~48_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~48_combout\);

-- Location: M9K_X68_Y32_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a40\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y31_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a56\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y18_N24
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~49_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a56~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a56~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~49_combout\);

-- Location: LCCOMB_X52_Y18_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~50_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~48_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~48_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~49_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~50_combout\);

-- Location: LCCOMB_X52_Y18_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~50_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~52_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~52_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~51_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~50_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\);

-- Location: LCCOMB_X52_Y18_N18
\ir[8]~reg0feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ir[8]~reg0feeder_combout\ = \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\,
	combout => \ir[8]~reg0feeder_combout\);

-- Location: FF_X52_Y18_N19
\ir[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[8]~reg0feeder_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[8]~reg0_q\);

-- Location: FF_X50_Y20_N31
\rf_instance|regfile~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[9]~15_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~141_q\);

-- Location: FF_X50_Y17_N31
\rf_instance|regfile~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[9]~15_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~93_q\);

-- Location: FF_X49_Y17_N3
\rf_instance|regfile~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[9]~15_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~125_q\);

-- Location: LCCOMB_X49_Y17_N2
\rf_instance|regfile~218\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~218_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & ((\rf_instance|regfile~125_q\))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~93_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~93_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~125_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~218_combout\);

-- Location: LCCOMB_X49_Y17_N0
\rf_instance|regfile~219\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~219_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~218_combout\ & (\rf_instance|regfile~141_q\)) # (!\rf_instance|regfile~218_combout\ & ((\rf_instance|regfile~109_q\))))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~141_q\,
	datac => \rf_instance|regfile~109_q\,
	datad => \rf_instance|regfile~218_combout\,
	combout => \rf_instance|regfile~219_combout\);

-- Location: FF_X51_Y17_N25
\rf_instance|regfile~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[9]~15_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~77_q\);

-- Location: FF_X50_Y20_N29
\rf_instance|regfile~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[9]~15_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~61_q\);

-- Location: FF_X51_Y18_N31
\rf_instance|regfile~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[9]~15_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~29_q\);

-- Location: FF_X51_Y17_N19
\rf_instance|regfile~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[9]~15_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~45_q\);

-- Location: LCCOMB_X51_Y17_N18
\rf_instance|regfile~216\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~216_combout\ = (\ir[6]~reg0_q\ & (((\rf_instance|regfile~45_q\) # (\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~29_q\ & ((!\ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~29_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~45_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~216_combout\);

-- Location: LCCOMB_X52_Y18_N6
\rf_instance|regfile~217\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~217_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~216_combout\ & (\rf_instance|regfile~77_q\)) # (!\rf_instance|regfile~216_combout\ & ((\rf_instance|regfile~61_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~77_q\,
	datab => \ir[7]~reg0_q\,
	datac => \rf_instance|regfile~61_q\,
	datad => \rf_instance|regfile~216_combout\,
	combout => \rf_instance|regfile~217_combout\);

-- Location: LCCOMB_X52_Y18_N28
\pc[9]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[9]~9_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~219_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~217_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir[8]~reg0_q\,
	datac => \rf_instance|regfile~219_combout\,
	datad => \rf_instance|regfile~217_combout\,
	combout => \pc[9]~9_combout\);

-- Location: LCCOMB_X52_Y18_N14
\pc[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[9]~feeder_combout\ = \pc[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc[9]~9_combout\,
	combout => \pc[9]~feeder_combout\);

-- Location: FF_X52_Y18_N15
\pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[9]~feeder_combout\,
	asdata => \tr[9]~9_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(9));

-- Location: LCCOMB_X51_Y17_N22
\rf_data[9]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[9]~14_combout\ = (\rf_dc[1]~input_o\ & (((\rf_dc[0]~input_o\)))) # (!\rf_dc[1]~input_o\ & ((\rf_dc[0]~input_o\ & ((\tr[9]~9_combout\))) # (!\rf_dc[0]~input_o\ & (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\,
	datac => \rf_dc[0]~input_o\,
	datad => \tr[9]~9_combout\,
	combout => \rf_data[9]~14_combout\);

-- Location: LCCOMB_X51_Y17_N24
\rf_data[9]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[9]~15_combout\ = (\rf_data[9]~14_combout\ & (((\ir[2]~reg0_q\) # (!\rf_dc[1]~input_o\)))) # (!\rf_data[9]~14_combout\ & (pc(9) & ((\rf_dc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(9),
	datab => \ir[2]~reg0_q\,
	datac => \rf_data[9]~14_combout\,
	datad => \rf_dc[1]~input_o\,
	combout => \rf_data[9]~15_combout\);

-- Location: FF_X49_Y17_N1
\rf_instance|regfile~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[9]~15_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~109_q\);

-- Location: LCCOMB_X50_Y17_N30
\rf_instance|regfile~211\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~211_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~125_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~93_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~125_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~93_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~211_combout\);

-- Location: LCCOMB_X50_Y20_N30
\rf_instance|regfile~212\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~212_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~211_combout\ & ((\rf_instance|regfile~141_q\))) # (!\rf_instance|regfile~211_combout\ & (\rf_instance|regfile~109_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~109_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~141_q\,
	datad => \rf_instance|regfile~211_combout\,
	combout => \rf_instance|regfile~212_combout\);

-- Location: LCCOMB_X51_Y18_N30
\rf_instance|regfile~213\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~213_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~45_q\) # ((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & (((\rf_instance|regfile~29_q\ & !\rf_r1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~45_q\,
	datac => \rf_instance|regfile~29_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~213_combout\);

-- Location: LCCOMB_X50_Y20_N28
\rf_instance|regfile~214\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~214_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~213_combout\ & (\rf_instance|regfile~77_q\)) # (!\rf_instance|regfile~213_combout\ & ((\rf_instance|regfile~61_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~77_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~61_q\,
	datad => \rf_instance|regfile~213_combout\,
	combout => \rf_instance|regfile~214_combout\);

-- Location: LCCOMB_X50_Y20_N2
\rf_instance|regfile~215\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~215_combout\ = (\rf_r1[2]~2_combout\ & (\rf_instance|regfile~212_combout\)) # (!\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~214_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~212_combout\,
	datad => \rf_instance|regfile~214_combout\,
	combout => \rf_instance|regfile~215_combout\);

-- Location: M9K_X27_Y29_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a89\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a89_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y21_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a73\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a73_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X55_Y18_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~57\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~57_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a89~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a73~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a89~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a73~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~57_combout\);

-- Location: M9K_X47_Y5_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a9\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y4_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a25\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~54_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~54_combout\);

-- Location: M9K_X68_Y5_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a57\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y10_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a41\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N12
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~55_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a57~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a57~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~55_combout\);

-- Location: LCCOMB_X56_Y18_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~56_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~54_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~54_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~55_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~56_combout\);

-- Location: M9K_X68_Y34_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a121\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a121_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y34_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a105\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a105_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X59_Y18_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~58_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a121~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a105~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a121~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a105~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~58_combout\);

-- Location: LCCOMB_X51_Y18_N0
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~56_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~57_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~57_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~56_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~58_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\);

-- Location: FF_X51_Y18_N1
\ir[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[9]~reg0_q\);

-- Location: LCCOMB_X51_Y18_N6
\rf_r1[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_r1[0]~0_combout\ = (\rf_rc~input_o\ & ((\rf_master[0]~input_o\))) # (!\rf_rc~input_o\ & (\ir[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_rc~input_o\,
	datab => \ir[9]~reg0_q\,
	datad => \rf_master[0]~input_o\,
	combout => \rf_r1[0]~0_combout\);

-- Location: LCCOMB_X50_Y17_N10
\rf_instance|regfile~247\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~247_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~121_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~89_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~121_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~89_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~247_combout\);

-- Location: LCCOMB_X52_Y20_N22
\rf_instance|regfile~248\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~248_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~247_combout\ & ((\rf_instance|regfile~137_q\))) # (!\rf_instance|regfile~247_combout\ & (\rf_instance|regfile~105_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~105_q\,
	datac => \rf_instance|regfile~137_q\,
	datad => \rf_instance|regfile~247_combout\,
	combout => \rf_instance|regfile~248_combout\);

-- Location: LCCOMB_X51_Y18_N10
\rf_instance|regfile~249\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~249_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~41_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~41_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~25_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~249_combout\);

-- Location: LCCOMB_X52_Y20_N4
\rf_instance|regfile~250\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~250_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~249_combout\ & (\rf_instance|regfile~73_q\)) # (!\rf_instance|regfile~249_combout\ & ((\rf_instance|regfile~57_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~73_q\,
	datac => \rf_instance|regfile~57_q\,
	datad => \rf_instance|regfile~249_combout\,
	combout => \rf_instance|regfile~250_combout\);

-- Location: LCCOMB_X52_Y20_N2
\rf_instance|regfile~251\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~251_combout\ = (\rf_r1[2]~2_combout\ & (\rf_instance|regfile~248_combout\)) # (!\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~250_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~248_combout\,
	datad => \rf_instance|regfile~250_combout\,
	combout => \rf_instance|regfile~251_combout\);

-- Location: M9K_X68_Y27_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a117\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a117_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y36_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a101\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a101_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~34_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a117~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a101~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a117~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a101~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~34_combout\);

-- Location: M9K_X61_Y24_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a69\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a69_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y26_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a85\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a85_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X60_Y22_N18
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~33_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a85~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a69~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a69~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a85~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~33_combout\);

-- Location: M9K_X68_Y31_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a37\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y35_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a53\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N22
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~31_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a53~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a53~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~31_combout\);

-- Location: M9K_X47_Y33_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a5\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y29_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a21\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N20
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~30_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~30_combout\);

-- Location: LCCOMB_X53_Y22_N12
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~32_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~31_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~31_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~30_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~32_combout\);

-- Location: LCCOMB_X53_Y22_N24
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~32_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~34_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~34_combout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~33_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~32_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\);

-- Location: FF_X53_Y22_N25
\ir[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[5]~reg0_q\);

-- Location: LCCOMB_X51_Y22_N12
\alu_b[14]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[14]~0_combout\ = ((\alu_bc[0]~input_o\ & ((!\ir[8]~reg0_q\))) # (!\alu_bc[0]~input_o\ & (!\ir[5]~reg0_q\))) # (!\alu_bc[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \ir[5]~reg0_q\,
	datad => \ir[8]~reg0_q\,
	combout => \alu_b[14]~0_combout\);

-- Location: LCCOMB_X49_Y19_N10
\alu_b[13]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[13]~5_combout\ = ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[13]~13_combout\))) # (!\alu_b[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[14]~0_combout\,
	datad => \pc[13]~13_combout\,
	combout => \alu_b[13]~5_combout\);

-- Location: FF_X50_Y18_N11
\rf_instance|regfile~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[13]~7_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~113_q\);

-- Location: FF_X49_Y22_N5
\rf_instance|regfile~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[13]~7_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~145_q\);

-- Location: FF_X48_Y18_N19
\rf_instance|regfile~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[13]~7_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~129_q\);

-- Location: FF_X48_Y18_N5
\rf_instance|regfile~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[13]~7_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~97_q\);

-- Location: LCCOMB_X48_Y18_N4
\rf_instance|regfile~175\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~175_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~129_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~97_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~129_q\,
	datac => \rf_instance|regfile~97_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~175_combout\);

-- Location: LCCOMB_X49_Y22_N4
\rf_instance|regfile~176\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~176_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~175_combout\ & ((\rf_instance|regfile~145_q\))) # (!\rf_instance|regfile~175_combout\ & (\rf_instance|regfile~113_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~113_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~145_q\,
	datad => \rf_instance|regfile~175_combout\,
	combout => \rf_instance|regfile~176_combout\);

-- Location: FF_X53_Y21_N23
\rf_instance|regfile~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[13]~7_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~65_q\);

-- Location: FF_X50_Y18_N9
\rf_instance|regfile~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[13]~7_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~49_q\);

-- Location: FF_X51_Y18_N25
\rf_instance|regfile~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[13]~7_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~33_q\);

-- Location: LCCOMB_X51_Y18_N24
\rf_instance|regfile~177\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~177_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~49_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~33_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~49_q\,
	datab => \rf_r1[1]~1_combout\,
	datac => \rf_instance|regfile~33_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~177_combout\);

-- Location: LCCOMB_X53_Y21_N22
\rf_instance|regfile~178\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~178_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~177_combout\ & (\rf_instance|regfile~81_q\)) # (!\rf_instance|regfile~177_combout\ & ((\rf_instance|regfile~65_q\))))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~81_q\,
	datac => \rf_instance|regfile~65_q\,
	datad => \rf_instance|regfile~177_combout\,
	combout => \rf_instance|regfile~178_combout\);

-- Location: LCCOMB_X49_Y22_N10
\rf_instance|regfile~179\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~179_combout\ = (\rf_r1[2]~2_combout\ & (\rf_instance|regfile~176_combout\)) # (!\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~176_combout\,
	datad => \rf_instance|regfile~178_combout\,
	combout => \rf_instance|regfile~179_combout\);

-- Location: LCCOMB_X49_Y22_N0
\alu_a[13]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[13]~6_combout\ = (\alu_ac[0]~input_o\ & (\alu_ac[1]~input_o\)) # (!\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\ & (pc(13))) # (!\alu_ac[1]~input_o\ & ((\rf_instance|regfile~179_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \alu_ac[1]~input_o\,
	datac => pc(13),
	datad => \rf_instance|regfile~179_combout\,
	combout => \alu_a[13]~6_combout\);

-- Location: LCCOMB_X49_Y22_N2
\alu_a[13]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[13]~7_combout\ = (\alu_ac[0]~input_o\ & ((\alu_a[13]~6_combout\ & ((tr(13)))) # (!\alu_a[13]~6_combout\ & (\ir[5]~reg0_q\)))) # (!\alu_ac[0]~input_o\ & (((\alu_a[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \ir[5]~reg0_q\,
	datac => tr(13),
	datad => \alu_a[13]~6_combout\,
	combout => \alu_a[13]~7_combout\);

-- Location: LCCOMB_X49_Y19_N2
\tr[13]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[13]~18_combout\ = (\alu_b[13]~5_combout\ & (\alu_a[13]~7_combout\ $ (\alu_op~input_o\))) # (!\alu_b[13]~5_combout\ & ((\alu_op~input_o\) # (!\alu_a[13]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[13]~5_combout\,
	datab => \alu_a[13]~7_combout\,
	datac => \alu_op~input_o\,
	combout => \tr[13]~18_combout\);

-- Location: LCCOMB_X53_Y21_N18
\tr[13]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[13]~22_combout\ = (\alu_b[11]~7_combout\ & (!\alu_a[11]~11_combout\ & (\alu_b[12]~4_combout\ $ (\alu_a[12]~5_combout\)))) # (!\alu_b[11]~7_combout\ & (\alu_a[11]~11_combout\ & (\alu_b[12]~4_combout\ $ (\alu_a[12]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[11]~7_combout\,
	datab => \alu_b[12]~4_combout\,
	datac => \alu_a[12]~5_combout\,
	datad => \alu_a[11]~11_combout\,
	combout => \tr[13]~22_combout\);

-- Location: LCCOMB_X49_Y22_N16
\alu_instance|add|lvl1:12:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:12:GP1|G~0_combout\ = (\alu_b[12]~4_combout\ & ((\alu_a[12]~5_combout\) # ((\alu_b[11]~7_combout\ & \alu_a[11]~11_combout\)))) # (!\alu_b[12]~4_combout\ & (\alu_b[11]~7_combout\ & (\alu_a[12]~5_combout\ & \alu_a[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[11]~7_combout\,
	datab => \alu_b[12]~4_combout\,
	datac => \alu_a[12]~5_combout\,
	datad => \alu_a[11]~11_combout\,
	combout => \alu_instance|add|lvl1:12:GP1|G~0_combout\);

-- Location: LCCOMB_X53_Y21_N2
\tr[13]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[13]~20_combout\ = (\alu_op~input_o\) # ((\alu_instance|add|lvl1:12:GP1|G~0_combout\) # ((\alu_instance|add|lvl1:10:GP1|G~0_combout\ & \tr[13]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|add|lvl1:10:GP1|G~0_combout\,
	datac => \alu_instance|add|lvl1:12:GP1|G~0_combout\,
	datad => \tr[13]~22_combout\,
	combout => \tr[13]~20_combout\);

-- Location: LCCOMB_X53_Y21_N8
\tr[13]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[13]~21_combout\ = (\tr[13]~20_combout\) # ((\tr[13]~22_combout\ & (\alu_instance|add|lvl2:11:GP2|P~4_combout\ & \alu_instance|add|c[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[13]~22_combout\,
	datab => \alu_instance|add|lvl2:11:GP2|P~4_combout\,
	datac => \alu_instance|add|c[13]~26_combout\,
	datad => \tr[13]~20_combout\,
	combout => \tr[13]~21_combout\);

-- Location: LCCOMB_X53_Y21_N0
\tr[13]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[13]~19_combout\ = (\alu_instance|add|lvl2:11:GP2|P~4_combout\ & ((\alu_instance|add|lvl1:8:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:8:GP2|P~0_combout\ & \alu_instance|add|c[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:8:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl2:11:GP2|P~4_combout\,
	datac => \alu_instance|add|lvl2:8:GP2|P~0_combout\,
	datad => \alu_instance|add|c[5]~15_combout\,
	combout => \tr[13]~19_combout\);

-- Location: LCCOMB_X53_Y21_N28
\tr[13]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[13]~13_combout\ = \tr[13]~18_combout\ $ (((!\tr[13]~21_combout\ & ((!\tr[13]~19_combout\) # (!\tr[13]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[13]~18_combout\,
	datab => \tr[13]~22_combout\,
	datac => \tr[13]~21_combout\,
	datad => \tr[13]~19_combout\,
	combout => \tr[13]~13_combout\);

-- Location: LCCOMB_X53_Y22_N16
\tr[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[13]~feeder_combout\ = \tr[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tr[13]~13_combout\,
	combout => \tr[13]~feeder_combout\);

-- Location: FF_X53_Y22_N17
\tr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[13]~feeder_combout\,
	asdata => \rf_instance|regfile~179_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(13));

-- Location: LCCOMB_X53_Y21_N10
\m_write[13]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_write[13]~0_combout\ = (\m_wac~input_o\ & ((\tr[13]~13_combout\))) # (!\m_wac~input_o\ & (tr(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tr(13),
	datac => \m_wac~input_o\,
	datad => \tr[13]~13_combout\,
	combout => \m_write[13]~0_combout\);

-- Location: LCCOMB_X49_Y21_N8
\memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\ = (!\m_write[13]~0_combout\ & (!\m_write[14]~1_combout\ & \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_write[13]~0_combout\,
	datac => \m_write[14]~1_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~0_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\);

-- Location: M9K_X61_Y20_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a75\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a75_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y28_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a91\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a91_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N20
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~69\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~69_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a91~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a75~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a75~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a91~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~69_combout\);

-- Location: M9K_X47_Y26_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a123\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a123_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y35_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a107\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a107_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y20_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~70_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a123~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a107~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a123~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a107~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~70_combout\);

-- Location: M9K_X68_Y35_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a11\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y9_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a27\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N26
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~66_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~66_combout\);

-- Location: M9K_X68_Y20_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a59\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y14_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a43\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N0
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~67\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~67_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a59~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a59~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~67_combout\);

-- Location: LCCOMB_X49_Y20_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~68_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~66_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~66_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~67_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~68_combout\);

-- Location: LCCOMB_X49_Y20_N2
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~68_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~69_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~69_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~70_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~68_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\);

-- Location: LCCOMB_X49_Y20_N30
\ir[11]~reg0feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ir[11]~reg0feeder_combout\ = \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\,
	combout => \ir[11]~reg0feeder_combout\);

-- Location: FF_X49_Y20_N31
\ir[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[11]~reg0feeder_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[11]~reg0_q\);

-- Location: LCCOMB_X50_Y20_N4
\rf_r1[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_r1[2]~2_combout\ = (\rf_rc~input_o\ & (\rf_master[2]~input_o\)) # (!\rf_rc~input_o\ & ((\ir[11]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_master[2]~input_o\,
	datac => \rf_rc~input_o\,
	datad => \ir[11]~reg0_q\,
	combout => \rf_r1[2]~2_combout\);

-- Location: LCCOMB_X53_Y18_N22
\rf_instance|regfile~66feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~66feeder_combout\ = \rf_data[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[14]~1_combout\,
	combout => \rf_instance|regfile~66feeder_combout\);

-- Location: FF_X53_Y18_N23
\rf_instance|regfile~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~66feeder_combout\,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~66_q\);

-- Location: LCCOMB_X55_Y18_N24
\rf_instance|regfile~82feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~82feeder_combout\ = \rf_data[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[14]~1_combout\,
	combout => \rf_instance|regfile~82feeder_combout\);

-- Location: FF_X55_Y18_N25
\rf_instance|regfile~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~82feeder_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~82_q\);

-- Location: LCCOMB_X49_Y18_N6
\rf_instance|regfile~50feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~50feeder_combout\ = \rf_data[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[14]~1_combout\,
	combout => \rf_instance|regfile~50feeder_combout\);

-- Location: FF_X49_Y18_N7
\rf_instance|regfile~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~50feeder_combout\,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~50_q\);

-- Location: FF_X51_Y18_N17
\rf_instance|regfile~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[14]~1_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~34_q\);

-- Location: LCCOMB_X51_Y18_N16
\rf_instance|regfile~154\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~154_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~50_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~50_q\,
	datac => \rf_instance|regfile~34_q\,
	datad => \rf_r1[0]~0_combout\,
	combout => \rf_instance|regfile~154_combout\);

-- Location: LCCOMB_X55_Y18_N18
\rf_instance|regfile~155\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~155_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~154_combout\ & ((\rf_instance|regfile~82_q\))) # (!\rf_instance|regfile~154_combout\ & (\rf_instance|regfile~66_q\)))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~66_q\,
	datab => \rf_instance|regfile~82_q\,
	datac => \rf_r1[1]~1_combout\,
	datad => \rf_instance|regfile~154_combout\,
	combout => \rf_instance|regfile~155_combout\);

-- Location: FF_X53_Y18_N15
\rf_instance|regfile~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[14]~1_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~146_q\);

-- Location: FF_X50_Y18_N1
\rf_instance|regfile~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[14]~1_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~114_q\);

-- Location: FF_X48_Y19_N19
\rf_instance|regfile~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[14]~1_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~98_q\);

-- Location: LCCOMB_X48_Y19_N14
\rf_instance|regfile~152\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~152_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~130_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~98_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~130_q\,
	datab => \rf_instance|regfile~98_q\,
	datac => \rf_r1[0]~0_combout\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~152_combout\);

-- Location: LCCOMB_X50_Y18_N0
\rf_instance|regfile~153\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~153_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~152_combout\ & (\rf_instance|regfile~146_q\)) # (!\rf_instance|regfile~152_combout\ & ((\rf_instance|regfile~114_q\))))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~146_q\,
	datac => \rf_instance|regfile~114_q\,
	datad => \rf_instance|regfile~152_combout\,
	combout => \rf_instance|regfile~153_combout\);

-- Location: LCCOMB_X49_Y22_N24
\rf_instance|regfile~156\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~156_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~153_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_r1[2]~2_combout\,
	datac => \rf_instance|regfile~155_combout\,
	datad => \rf_instance|regfile~153_combout\,
	combout => \rf_instance|regfile~156_combout\);

-- Location: FF_X50_Y21_N17
\tr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[14]~14_combout\,
	asdata => \rf_instance|regfile~156_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(14));

-- Location: LCCOMB_X49_Y22_N6
\alu_a[14]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[14]~0_combout\ = (\alu_ac[0]~input_o\ & ((\ir[5]~reg0_q\) # ((\alu_ac[1]~input_o\)))) # (!\alu_ac[0]~input_o\ & (((!\alu_ac[1]~input_o\ & \rf_instance|regfile~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \ir[5]~reg0_q\,
	datac => \alu_ac[1]~input_o\,
	datad => \rf_instance|regfile~156_combout\,
	combout => \alu_a[14]~0_combout\);

-- Location: LCCOMB_X49_Y22_N20
\alu_a[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[14]~1_combout\ = (\alu_ac[1]~input_o\ & ((\alu_a[14]~0_combout\ & (tr(14))) # (!\alu_a[14]~0_combout\ & ((pc(14)))))) # (!\alu_ac[1]~input_o\ & (((\alu_a[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tr(14),
	datab => \alu_ac[1]~input_o\,
	datac => pc(14),
	datad => \alu_a[14]~0_combout\,
	combout => \alu_a[14]~1_combout\);

-- Location: LCCOMB_X49_Y19_N20
\alu_b[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[14]~1_combout\ = ((!\alu_bc[1]~input_o\ & (!\alu_bc[0]~input_o\ & \pc[14]~14_combout\))) # (!\alu_b[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[1]~input_o\,
	datab => \alu_bc[0]~input_o\,
	datac => \alu_b[14]~0_combout\,
	datad => \pc[14]~14_combout\,
	combout => \alu_b[14]~1_combout\);

-- Location: LCCOMB_X49_Y19_N28
\alu_instance|logic|o~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~13_combout\ = (!\alu_b[14]~1_combout\) # (!\alu_a[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_a[14]~1_combout\,
	datad => \alu_b[14]~1_combout\,
	combout => \alu_instance|logic|o~13_combout\);

-- Location: LCCOMB_X49_Y22_N14
\alu_instance|add|p_0[14]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|p_0\(14) = \alu_b[14]~1_combout\ $ (\alu_a[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_b[14]~1_combout\,
	datad => \alu_a[14]~1_combout\,
	combout => \alu_instance|add|p_0\(14));

-- Location: LCCOMB_X49_Y22_N12
\alu_instance|add|lvl1:13:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:13:GP1|G~0_combout\ = (\alu_a[13]~7_combout\ & ((\alu_b[13]~5_combout\) # ((\alu_a[12]~5_combout\ & \alu_b[12]~4_combout\)))) # (!\alu_a[13]~7_combout\ & (\alu_a[12]~5_combout\ & (\alu_b[12]~4_combout\ & \alu_b[13]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[12]~5_combout\,
	datab => \alu_a[13]~7_combout\,
	datac => \alu_b[12]~4_combout\,
	datad => \alu_b[13]~5_combout\,
	combout => \alu_instance|add|lvl1:13:GP1|G~0_combout\);

-- Location: LCCOMB_X49_Y22_N30
\alu_instance|add|c[14]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[14]~8_combout\ = (\alu_b[13]~5_combout\ & (!\alu_a[13]~7_combout\ & (\alu_b[12]~4_combout\ $ (\alu_a[12]~5_combout\)))) # (!\alu_b[13]~5_combout\ & (\alu_a[13]~7_combout\ & (\alu_b[12]~4_combout\ $ (\alu_a[12]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[13]~5_combout\,
	datab => \alu_b[12]~4_combout\,
	datac => \alu_a[12]~5_combout\,
	datad => \alu_a[13]~7_combout\,
	combout => \alu_instance|add|c[14]~8_combout\);

-- Location: LCCOMB_X50_Y21_N18
\alu_instance|add|c[14]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c[14]~23_combout\ = (\alu_instance|add|lvl2:9:GP2|P~0_combout\ & ((\alu_instance|add|c[6]~16_combout\) # ((\alu_instance|add|lvl2:5:GP2|p0~0_combout\ & \alu_instance|add|c[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:5:GP2|p0~0_combout\,
	datab => \alu_instance|add|c[4]~13_combout\,
	datac => \alu_instance|add|lvl2:9:GP2|P~0_combout\,
	datad => \alu_instance|add|c[6]~16_combout\,
	combout => \alu_instance|add|c[14]~23_combout\);

-- Location: LCCOMB_X50_Y21_N20
\alu_instance|add|sum[14]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[14]~7_combout\ = (\alu_instance|add|p_0\(11) & ((\alu_instance|add|lvl1:9:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:9:GP2|p0~0_combout\) # (\alu_instance|add|c[14]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:9:GP1|G~0_combout\,
	datab => \alu_instance|add|p_0\(11),
	datac => \alu_instance|add|lvl2:9:GP2|p0~0_combout\,
	datad => \alu_instance|add|c[14]~23_combout\,
	combout => \alu_instance|add|sum[14]~7_combout\);

-- Location: LCCOMB_X50_Y21_N6
\alu_instance|add|sum[14]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[14]~8_combout\ = (\alu_instance|add|lvl1:11:GP1|G~0_combout\) # ((\alu_instance|add|sum[14]~7_combout\ & (\alu_b[10]~8_combout\ $ (\alu_a[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[10]~8_combout\,
	datab => \alu_a[10]~13_combout\,
	datac => \alu_instance|add|lvl1:11:GP1|G~0_combout\,
	datad => \alu_instance|add|sum[14]~7_combout\,
	combout => \alu_instance|add|sum[14]~8_combout\);

-- Location: LCCOMB_X50_Y21_N12
\alu_instance|add|sum[14]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[14]~9_combout\ = \alu_instance|add|p_0\(14) $ (((\alu_instance|add|lvl1:13:GP1|G~0_combout\) # ((\alu_instance|add|c[14]~8_combout\ & \alu_instance|add|sum[14]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|p_0\(14),
	datab => \alu_instance|add|lvl1:13:GP1|G~0_combout\,
	datac => \alu_instance|add|c[14]~8_combout\,
	datad => \alu_instance|add|sum[14]~8_combout\,
	combout => \alu_instance|add|sum[14]~9_combout\);

-- Location: LCCOMB_X50_Y21_N16
\tr[14]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[14]~14_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~13_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum[14]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~13_combout\,
	datad => \alu_instance|add|sum[14]~9_combout\,
	combout => \tr[14]~14_combout\);

-- Location: M9K_X47_Y9_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a78\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a78_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y17_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a94\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a94_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N14
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~87\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~87_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a94~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a78~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a78~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a94~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~87_combout\);

-- Location: M9K_X68_Y29_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a126\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a126_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y7_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a110\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a110_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~88_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a126~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a110~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a126~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a110~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~88_combout\);

-- Location: M9K_X47_Y4_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a30\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y6_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a14\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N16
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~84_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~84_combout\);

-- Location: M9K_X68_Y24_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a46\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y7_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a62\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y20_N18
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~85\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~85_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a62~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a62~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~85_combout\);

-- Location: LCCOMB_X49_Y20_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~86_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~84_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~84_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~85_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~86_combout\);

-- Location: LCCOMB_X49_Y20_N24
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~86_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~87_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~87_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~88_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~86_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\);

-- Location: LCCOMB_X53_Y18_N16
\rf_data[14]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[14]~0_combout\ = (\rf_dc[1]~input_o\ & ((pc(14)) # ((\rf_dc[0]~input_o\)))) # (!\rf_dc[1]~input_o\ & (((!\rf_dc[0]~input_o\ & \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(14),
	datab => \rf_dc[1]~input_o\,
	datac => \rf_dc[0]~input_o\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\,
	combout => \rf_data[14]~0_combout\);

-- Location: LCCOMB_X53_Y18_N10
\rf_data[14]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[14]~1_combout\ = (\rf_dc[0]~input_o\ & ((\rf_data[14]~0_combout\ & (\ir[7]~reg0_q\)) # (!\rf_data[14]~0_combout\ & ((\tr[14]~14_combout\))))) # (!\rf_dc[0]~input_o\ & (((\rf_data[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_dc[0]~input_o\,
	datac => \tr[14]~14_combout\,
	datad => \rf_data[14]~0_combout\,
	combout => \rf_data[14]~1_combout\);

-- Location: LCCOMB_X48_Y19_N0
\rf_instance|regfile~130feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~130feeder_combout\ = \rf_data[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[14]~1_combout\,
	combout => \rf_instance|regfile~130feeder_combout\);

-- Location: FF_X48_Y19_N1
\rf_instance|regfile~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~130feeder_combout\,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~130_q\);

-- Location: LCCOMB_X48_Y19_N12
\rf_instance|regfile~150\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~150_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~130_q\) # ((\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (((\rf_instance|regfile~98_q\ & !\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~130_q\,
	datab => \rf_instance|regfile~98_q\,
	datac => \ir[7]~reg0_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~150_combout\);

-- Location: LCCOMB_X49_Y19_N6
\rf_instance|regfile~151\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~151_combout\ = (\rf_instance|regfile~150_combout\ & (((\rf_instance|regfile~146_q\)) # (!\ir[6]~reg0_q\))) # (!\rf_instance|regfile~150_combout\ & (\ir[6]~reg0_q\ & ((\rf_instance|regfile~114_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~150_combout\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~146_q\,
	datad => \rf_instance|regfile~114_q\,
	combout => \rf_instance|regfile~151_combout\);

-- Location: LCCOMB_X49_Y18_N20
\rf_instance|regfile~148\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~148_combout\ = (\ir[7]~reg0_q\ & (((\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & ((\ir[6]~reg0_q\ & (\rf_instance|regfile~50_q\)) # (!\ir[6]~reg0_q\ & ((\rf_instance|regfile~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~50_q\,
	datab => \ir[7]~reg0_q\,
	datac => \ir[6]~reg0_q\,
	datad => \rf_instance|regfile~34_q\,
	combout => \rf_instance|regfile~148_combout\);

-- Location: LCCOMB_X53_Y18_N20
\rf_instance|regfile~149\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~149_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~148_combout\ & (\rf_instance|regfile~82_q\)) # (!\rf_instance|regfile~148_combout\ & ((\rf_instance|regfile~66_q\))))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~82_q\,
	datac => \rf_instance|regfile~66_q\,
	datad => \rf_instance|regfile~148_combout\,
	combout => \rf_instance|regfile~149_combout\);

-- Location: LCCOMB_X49_Y19_N0
\pc[14]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[14]~14_combout\ = (\ir[8]~reg0_q\ & (\rf_instance|regfile~151_combout\)) # (!\ir[8]~reg0_q\ & ((\rf_instance|regfile~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~151_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~149_combout\,
	combout => \pc[14]~14_combout\);

-- Location: FF_X49_Y19_N1
\pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[14]~14_combout\,
	asdata => \tr[14]~14_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(14));

-- Location: LCCOMB_X55_Y21_N26
\m_read[14]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[14]~14_combout\ = (\m_rac~input_o\ & ((tr(14)))) # (!\m_rac~input_o\ & (pc(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(14),
	datac => \m_rac~input_o\,
	datad => tr(14),
	combout => \m_read[14]~14_combout\);

-- Location: FF_X55_Y21_N27
\memory_instance|ram_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_read[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1));

-- Location: M9K_X61_Y18_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a103\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a103_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y16_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a119\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a119_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y18_N20
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~46_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a119~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a103~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a103~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a119~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~46_combout\);

-- Location: M9K_X47_Y22_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a7\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y19_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a23\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y21_N0
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~42_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~42_combout\);

-- Location: M9K_X47_Y21_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a55\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y17_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a39\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y21_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~43_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a55~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|ram_block1a55~portbdataout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~43_combout\);

-- Location: LCCOMB_X48_Y21_N8
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~44_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~42_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~42_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~43_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~44_combout\);

-- Location: M9K_X27_Y21_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a71\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a71_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y23_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a87\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a87_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y21_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~45_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a87~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a71~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a71~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a87~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~45_combout\);

-- Location: LCCOMB_X49_Y18_N4
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~44_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~46_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~46_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~44_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~45_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\);

-- Location: LCCOMB_X49_Y18_N12
\ir[7]~reg0feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ir[7]~reg0feeder_combout\ = \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\,
	combout => \ir[7]~reg0feeder_combout\);

-- Location: FF_X49_Y18_N13
\ir[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[7]~reg0feeder_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[7]~reg0_q\);

-- Location: FF_X48_Y21_N5
\pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[15]~15_combout\,
	asdata => \tr[15]~15_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(15));

-- Location: LCCOMB_X48_Y20_N2
\rf_instance|regfile~51feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~51feeder_combout\ = \rf_data[15]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[15]~3_combout\,
	combout => \rf_instance|regfile~51feeder_combout\);

-- Location: FF_X48_Y20_N3
\rf_instance|regfile~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~51feeder_combout\,
	ena => \rf_instance|regfile~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~51_q\);

-- Location: LCCOMB_X48_Y20_N28
\rf_instance|regfile~35feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~35feeder_combout\ = \rf_data[15]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[15]~3_combout\,
	combout => \rf_instance|regfile~35feeder_combout\);

-- Location: FF_X48_Y20_N29
\rf_instance|regfile~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~35feeder_combout\,
	ena => \rf_instance|regfile~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~35_q\);

-- Location: LCCOMB_X48_Y20_N18
\rf_instance|regfile~159\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~159_combout\ = (\rf_r1[1]~1_combout\ & (((\rf_r1[0]~0_combout\)))) # (!\rf_r1[1]~1_combout\ & ((\rf_r1[0]~0_combout\ & (\rf_instance|regfile~51_q\)) # (!\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~35_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~51_q\,
	datac => \rf_r1[0]~0_combout\,
	datad => \rf_instance|regfile~35_q\,
	combout => \rf_instance|regfile~159_combout\);

-- Location: FF_X49_Y21_N31
\rf_instance|regfile~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[15]~3_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~83_q\);

-- Location: LCCOMB_X49_Y21_N24
\rf_instance|regfile~160\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~160_combout\ = (\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~159_combout\ & ((\rf_instance|regfile~83_q\))) # (!\rf_instance|regfile~159_combout\ & (\rf_instance|regfile~67_q\)))) # (!\rf_r1[1]~1_combout\ & 
-- (((\rf_instance|regfile~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[1]~1_combout\,
	datab => \rf_instance|regfile~67_q\,
	datac => \rf_instance|regfile~159_combout\,
	datad => \rf_instance|regfile~83_q\,
	combout => \rf_instance|regfile~160_combout\);

-- Location: LCCOMB_X46_Y21_N20
\rf_instance|regfile~115feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~115feeder_combout\ = \rf_data[15]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[15]~3_combout\,
	combout => \rf_instance|regfile~115feeder_combout\);

-- Location: FF_X46_Y21_N21
\rf_instance|regfile~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~115feeder_combout\,
	ena => \rf_instance|regfile~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~115_q\);

-- Location: LCCOMB_X46_Y21_N14
\rf_instance|regfile~147feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~147feeder_combout\ = \rf_data[15]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_data[15]~3_combout\,
	combout => \rf_instance|regfile~147feeder_combout\);

-- Location: FF_X46_Y21_N15
\rf_instance|regfile~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~147feeder_combout\,
	ena => \rf_instance|regfile~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~147_q\);

-- Location: FF_X48_Y18_N15
\rf_instance|regfile~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[15]~3_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~131_q\);

-- Location: FF_X48_Y18_N9
\rf_instance|regfile~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rf_data[15]~3_combout\,
	sload => VCC,
	ena => \rf_instance|regfile~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~99_q\);

-- Location: LCCOMB_X48_Y18_N8
\rf_instance|regfile~157\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~157_combout\ = (\rf_r1[0]~0_combout\ & (((\rf_r1[1]~1_combout\)))) # (!\rf_r1[0]~0_combout\ & ((\rf_r1[1]~1_combout\ & (\rf_instance|regfile~131_q\)) # (!\rf_r1[1]~1_combout\ & ((\rf_instance|regfile~99_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_r1[0]~0_combout\,
	datab => \rf_instance|regfile~131_q\,
	datac => \rf_instance|regfile~99_q\,
	datad => \rf_r1[1]~1_combout\,
	combout => \rf_instance|regfile~157_combout\);

-- Location: LCCOMB_X48_Y21_N28
\rf_instance|regfile~158\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~158_combout\ = (\rf_r1[0]~0_combout\ & ((\rf_instance|regfile~157_combout\ & ((\rf_instance|regfile~147_q\))) # (!\rf_instance|regfile~157_combout\ & (\rf_instance|regfile~115_q\)))) # (!\rf_r1[0]~0_combout\ & 
-- (((\rf_instance|regfile~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~115_q\,
	datab => \rf_r1[0]~0_combout\,
	datac => \rf_instance|regfile~147_q\,
	datad => \rf_instance|regfile~157_combout\,
	combout => \rf_instance|regfile~158_combout\);

-- Location: LCCOMB_X49_Y21_N26
\rf_instance|regfile~161\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~161_combout\ = (\rf_r1[2]~2_combout\ & ((\rf_instance|regfile~158_combout\))) # (!\rf_r1[2]~2_combout\ & (\rf_instance|regfile~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_instance|regfile~160_combout\,
	datac => \rf_instance|regfile~158_combout\,
	datad => \rf_r1[2]~2_combout\,
	combout => \rf_instance|regfile~161_combout\);

-- Location: M9K_X27_Y25_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a95\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a95_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y15_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a79\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a79_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y22_N24
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~93\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~93_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a95~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a79~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a95~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a79~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~93_combout\);

-- Location: M9K_X68_Y21_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a15\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y20_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a31\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y22_N26
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~90_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~90_combout\);

-- Location: M9K_X68_Y23_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a63\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y25_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a47\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y22_N12
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~91\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~91_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a63~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a63~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~91_combout\);

-- Location: LCCOMB_X56_Y22_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~92_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~90_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~90_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~91_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~92_combout\);

-- Location: M9K_X68_Y8_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a127\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a127_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y9_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a111\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a111_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y22_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~94\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~94_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a127~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a111~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a127~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a111~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~94_combout\);

-- Location: LCCOMB_X56_Y22_N18
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~92_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~93_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~93_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~92_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~94_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\);

-- Location: LCCOMB_X49_Y21_N2
\rf_data[15]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[15]~2_combout\ = (\rf_dc[0]~input_o\ & ((\rf_dc[1]~input_o\) # ((\tr[15]~15_combout\)))) # (!\rf_dc[0]~input_o\ & (!\rf_dc[1]~input_o\ & (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[0]~input_o\,
	datab => \rf_dc[1]~input_o\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\,
	datad => \tr[15]~15_combout\,
	combout => \rf_data[15]~2_combout\);

-- Location: LCCOMB_X49_Y21_N30
\rf_data[15]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[15]~3_combout\ = (\rf_dc[1]~input_o\ & ((\rf_data[15]~2_combout\ & (\ir[8]~reg0_q\)) # (!\rf_data[15]~2_combout\ & ((pc(15)))))) # (!\rf_dc[1]~input_o\ & (((\rf_data[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[8]~reg0_q\,
	datab => \rf_dc[1]~input_o\,
	datac => pc(15),
	datad => \rf_data[15]~2_combout\,
	combout => \rf_data[15]~3_combout\);

-- Location: LCCOMB_X49_Y21_N16
\rf_instance|regfile~67feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~67feeder_combout\ = \rf_data[15]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_data[15]~3_combout\,
	combout => \rf_instance|regfile~67feeder_combout\);

-- Location: FF_X49_Y21_N17
\rf_instance|regfile~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_instance|regfile~67feeder_combout\,
	ena => \rf_instance|regfile~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~67_q\);

-- Location: LCCOMB_X48_Y20_N0
\rf_instance|regfile~162\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~162_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\) # (\rf_instance|regfile~51_q\)))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~35_q\ & (!\ir[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[6]~reg0_q\,
	datab => \rf_instance|regfile~35_q\,
	datac => \ir[7]~reg0_q\,
	datad => \rf_instance|regfile~51_q\,
	combout => \rf_instance|regfile~162_combout\);

-- Location: LCCOMB_X48_Y21_N6
\rf_instance|regfile~163\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~163_combout\ = (\ir[7]~reg0_q\ & ((\rf_instance|regfile~162_combout\ & ((\rf_instance|regfile~83_q\))) # (!\rf_instance|regfile~162_combout\ & (\rf_instance|regfile~67_q\)))) # (!\ir[7]~reg0_q\ & 
-- (((\rf_instance|regfile~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~67_q\,
	datac => \rf_instance|regfile~83_q\,
	datad => \rf_instance|regfile~162_combout\,
	combout => \rf_instance|regfile~163_combout\);

-- Location: LCCOMB_X48_Y18_N14
\rf_instance|regfile~164\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~164_combout\ = (\ir[7]~reg0_q\ & (((\rf_instance|regfile~131_q\) # (\ir[6]~reg0_q\)))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~99_q\ & ((!\ir[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir[7]~reg0_q\,
	datab => \rf_instance|regfile~99_q\,
	datac => \rf_instance|regfile~131_q\,
	datad => \ir[6]~reg0_q\,
	combout => \rf_instance|regfile~164_combout\);

-- Location: LCCOMB_X48_Y21_N12
\rf_instance|regfile~165\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~165_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~164_combout\ & ((\rf_instance|regfile~147_q\))) # (!\rf_instance|regfile~164_combout\ & (\rf_instance|regfile~115_q\)))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~115_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~147_q\,
	datad => \rf_instance|regfile~164_combout\,
	combout => \rf_instance|regfile~165_combout\);

-- Location: LCCOMB_X48_Y21_N4
\pc[15]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[15]~15_combout\ = (\ir[8]~reg0_q\ & ((\rf_instance|regfile~165_combout\))) # (!\ir[8]~reg0_q\ & (\rf_instance|regfile~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~163_combout\,
	datab => \ir[8]~reg0_q\,
	datad => \rf_instance|regfile~165_combout\,
	combout => \pc[15]~15_combout\);

-- Location: LCCOMB_X48_Y21_N26
\alu_b[15]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[15]~2_combout\ = (!\alu_bc[0]~input_o\ & ((\alu_bc[1]~input_o\ & ((\ir[5]~reg0_q\))) # (!\alu_bc[1]~input_o\ & (\pc[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[0]~input_o\,
	datab => \alu_bc[1]~input_o\,
	datac => \pc[15]~15_combout\,
	datad => \ir[5]~reg0_q\,
	combout => \alu_b[15]~2_combout\);

-- Location: LCCOMB_X48_Y21_N24
\alu_b[15]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_b[15]~3_combout\ = (\alu_b[15]~2_combout\) # ((\alu_bc[0]~input_o\ & (\alu_bc[1]~input_o\ & \ir[8]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_bc[0]~input_o\,
	datab => \alu_bc[1]~input_o\,
	datac => \alu_b[15]~2_combout\,
	datad => \ir[8]~reg0_q\,
	combout => \alu_b[15]~3_combout\);

-- Location: LCCOMB_X49_Y21_N20
\alu_a[15]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[15]~2_combout\ = (\alu_ac[0]~input_o\ & (((\alu_ac[1]~input_o\)))) # (!\alu_ac[0]~input_o\ & ((\alu_ac[1]~input_o\ & (pc(15))) # (!\alu_ac[1]~input_o\ & ((\rf_instance|regfile~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => pc(15),
	datac => \rf_instance|regfile~161_combout\,
	datad => \alu_ac[1]~input_o\,
	combout => \alu_a[15]~2_combout\);

-- Location: LCCOMB_X49_Y21_N10
\alu_a[15]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_a[15]~3_combout\ = (\alu_ac[0]~input_o\ & ((\alu_a[15]~2_combout\ & ((tr(15)))) # (!\alu_a[15]~2_combout\ & (\ir[5]~reg0_q\)))) # (!\alu_ac[0]~input_o\ & (((\alu_a[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ac[0]~input_o\,
	datab => \ir[5]~reg0_q\,
	datac => tr(15),
	datad => \alu_a[15]~2_combout\,
	combout => \alu_a[15]~3_combout\);

-- Location: LCCOMB_X50_Y21_N8
\alu_instance|logic|o~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|logic|o~14_combout\ = (!\alu_a[15]~3_combout\) # (!\alu_b[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_b[15]~3_combout\,
	datad => \alu_a[15]~3_combout\,
	combout => \alu_instance|logic|o~14_combout\);

-- Location: LCCOMB_X50_Y22_N22
\alu_instance|add|lvl1:14:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:14:GP1|G~0_combout\ = (\alu_a[14]~1_combout\ & ((\alu_b[14]~1_combout\) # ((\alu_b[13]~5_combout\ & \alu_a[13]~7_combout\)))) # (!\alu_a[14]~1_combout\ & (\alu_b[14]~1_combout\ & (\alu_b[13]~5_combout\ & \alu_a[13]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[14]~1_combout\,
	datab => \alu_b[14]~1_combout\,
	datac => \alu_b[13]~5_combout\,
	datad => \alu_a[13]~7_combout\,
	combout => \alu_instance|add|lvl1:14:GP1|G~0_combout\);

-- Location: LCCOMB_X50_Y21_N14
\alu_instance|add|lvl3:14:GP3|p0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl3:14:GP3|p0~4_combout\ = (\alu_instance|add|c[14]~8_combout\ & (\alu_instance|add|p_0\(14) & (\alu_b[11]~7_combout\ $ (\alu_a[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[11]~7_combout\,
	datab => \alu_a[11]~11_combout\,
	datac => \alu_instance|add|c[14]~8_combout\,
	datad => \alu_instance|add|p_0\(14),
	combout => \alu_instance|add|lvl3:14:GP3|p0~4_combout\);

-- Location: LCCOMB_X49_Y22_N22
\alu_instance|add|lvl2:14:GP2|p0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl2:14:GP2|p0~0_combout\ = (\alu_instance|add|p_0\(14) & (\alu_instance|add|lvl1:12:GP1|G~0_combout\ & (\alu_b[13]~5_combout\ $ (\alu_a[13]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[13]~5_combout\,
	datab => \alu_a[13]~7_combout\,
	datac => \alu_instance|add|p_0\(14),
	datad => \alu_instance|add|lvl1:12:GP1|G~0_combout\,
	combout => \alu_instance|add|lvl2:14:GP2|p0~0_combout\);

-- Location: LCCOMB_X50_Y21_N26
\alu_instance|add|c~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c~24_combout\ = (\alu_instance|add|lvl2:6:GP2|P~0_combout\ & (\alu_instance|add|c~25_combout\ & (\alu_instance|add|lvl3:14:GP3|p0~4_combout\ & \alu_instance|add|lvl2:10:GP2|P~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:6:GP2|P~0_combout\,
	datab => \alu_instance|add|c~25_combout\,
	datac => \alu_instance|add|lvl3:14:GP3|p0~4_combout\,
	datad => \alu_instance|add|lvl2:10:GP2|P~0_combout\,
	combout => \alu_instance|add|c~24_combout\);

-- Location: LCCOMB_X51_Y21_N26
\alu_instance|add|sum[15]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[15]~10_combout\ = (\alu_instance|add|lvl1:10:GP1|G~0_combout\) # ((\alu_instance|add|lvl2:10:GP2|p0~0_combout\) # ((\alu_instance|add|lvl2:10:GP2|P~0_combout\ & \alu_instance|add|lvl3:6:GP3|G~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:10:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl2:10:GP2|P~0_combout\,
	datac => \alu_instance|add|lvl2:10:GP2|p0~0_combout\,
	datad => \alu_instance|add|lvl3:6:GP3|G~2_combout\,
	combout => \alu_instance|add|sum[15]~10_combout\);

-- Location: LCCOMB_X50_Y21_N0
\alu_instance|add|sum[15]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[15]~11_combout\ = (\alu_instance|add|lvl2:14:GP2|p0~0_combout\) # ((\alu_instance|add|c~24_combout\) # ((\alu_instance|add|lvl3:14:GP3|p0~4_combout\ & \alu_instance|add|sum[15]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl3:14:GP3|p0~4_combout\,
	datab => \alu_instance|add|lvl2:14:GP2|p0~0_combout\,
	datac => \alu_instance|add|c~24_combout\,
	datad => \alu_instance|add|sum[15]~10_combout\,
	combout => \alu_instance|add|sum[15]~11_combout\);

-- Location: LCCOMB_X50_Y21_N10
\alu_instance|add|sum[15]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|sum[15]~12_combout\ = \alu_a[15]~3_combout\ $ (\alu_b[15]~3_combout\ $ (((\alu_instance|add|lvl1:14:GP1|G~0_combout\) # (\alu_instance|add|sum[15]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[15]~3_combout\,
	datab => \alu_instance|add|lvl1:14:GP1|G~0_combout\,
	datac => \alu_b[15]~3_combout\,
	datad => \alu_instance|add|sum[15]~11_combout\,
	combout => \alu_instance|add|sum[15]~12_combout\);

-- Location: LCCOMB_X50_Y21_N22
\tr[15]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \tr[15]~15_combout\ = (\alu_op~input_o\ & (\alu_instance|logic|o~14_combout\)) # (!\alu_op~input_o\ & ((\alu_instance|add|sum[15]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~input_o\,
	datab => \alu_instance|logic|o~14_combout\,
	datad => \alu_instance|add|sum[15]~12_combout\,
	combout => \tr[15]~15_combout\);

-- Location: FF_X50_Y21_N23
\tr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr[15]~15_combout\,
	asdata => \rf_instance|regfile~161_combout\,
	sload => \trc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tr(15));

-- Location: LCCOMB_X48_Y21_N22
\m_read[15]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[15]~15_combout\ = (\m_rac~input_o\ & (tr(15))) # (!\m_rac~input_o\ & ((pc(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rac~input_o\,
	datab => tr(15),
	datac => pc(15),
	combout => \m_read[15]~15_combout\);

-- Location: FF_X48_Y21_N23
\memory_instance|ram_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_read[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2));

-- Location: M9K_X47_Y14_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a102\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a102_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y40_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a118\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a118_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y18_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~40_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a118~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a102~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a102~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a118~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~40_combout\);

-- Location: M9K_X68_Y15_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a22\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y10_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a6\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y18_N8
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~36_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~36_combout\);

-- Location: M9K_X61_Y31_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a38\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y37_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a54\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y18_N22
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~37_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a54~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a54~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~37_combout\);

-- Location: LCCOMB_X49_Y18_N22
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~38_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~36_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~36_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~37_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~38_combout\);

-- Location: M9K_X47_Y13_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a86\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a86_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y10_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a70\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a70_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X49_Y18_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~39_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a86~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a70~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \memory_instance|ram_rtl_0|auto_generated|ram_block1a86~portbdataout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a70~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~39_combout\);

-- Location: LCCOMB_X49_Y18_N10
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~38_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~40_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~40_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~38_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~39_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\);

-- Location: LCCOMB_X49_Y18_N30
\ir[6]~reg0feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ir[6]~reg0feeder_combout\ = \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\,
	combout => \ir[6]~reg0feeder_combout\);

-- Location: FF_X49_Y18_N31
\ir[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[6]~reg0feeder_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[6]~reg0_q\);

-- Location: M9K_X27_Y22_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a93\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a93_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y25_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a77\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a77_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N2
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~81\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~81_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a93~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a77~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a93~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a77~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~81_combout\);

-- Location: M9K_X47_Y20_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a125\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a125_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y28_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a109\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a109_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y20_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~82_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a125~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a109~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|ram_block1a125~portbdataout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a109~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~82_combout\);

-- Location: M9K_X27_Y28_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a29\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y30_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a13\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N8
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~78_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~78_combout\);

-- Location: M9K_X68_Y26_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a61\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\);

-- Location: M9K_X68_Y30_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a45\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y22_N6
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~79\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~79_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a61~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a61~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~79_combout\);

-- Location: LCCOMB_X53_Y22_N0
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~80_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~78_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~78_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~79_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~80_combout\);

-- Location: LCCOMB_X53_Y22_N30
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~80_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~81_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~81_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~82_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~80_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\);

-- Location: LCCOMB_X53_Y21_N20
\rf_data[13]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[13]~6_combout\ = (\rf_dc[1]~input_o\ & (\rf_dc[0]~input_o\)) # (!\rf_dc[1]~input_o\ & ((\rf_dc[0]~input_o\ & ((\tr[13]~13_combout\))) # (!\rf_dc[0]~input_o\ & (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => \rf_dc[0]~input_o\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\,
	datad => \tr[13]~13_combout\,
	combout => \rf_data[13]~6_combout\);

-- Location: LCCOMB_X53_Y21_N24
\rf_data[13]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_data[13]~7_combout\ = (\rf_dc[1]~input_o\ & ((\rf_data[13]~6_combout\ & ((\ir[6]~reg0_q\))) # (!\rf_data[13]~6_combout\ & (pc(13))))) # (!\rf_dc[1]~input_o\ & (((\rf_data[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_dc[1]~input_o\,
	datab => pc(13),
	datac => \ir[6]~reg0_q\,
	datad => \rf_data[13]~6_combout\,
	combout => \rf_data[13]~7_combout\);

-- Location: FF_X53_Y21_N25
\rf_instance|regfile~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rf_data[13]~7_combout\,
	ena => \rf_instance|regfile~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_instance|regfile~81_q\);

-- Location: LCCOMB_X50_Y18_N8
\rf_instance|regfile~180\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~180_combout\ = (\ir[6]~reg0_q\ & (((\rf_instance|regfile~49_q\) # (\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & (\rf_instance|regfile~33_q\ & ((!\ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~33_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~49_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~180_combout\);

-- Location: LCCOMB_X50_Y18_N18
\rf_instance|regfile~181\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~181_combout\ = (\rf_instance|regfile~180_combout\ & ((\rf_instance|regfile~81_q\) # ((!\ir[7]~reg0_q\)))) # (!\rf_instance|regfile~180_combout\ & (((\rf_instance|regfile~65_q\ & \ir[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~81_q\,
	datab => \rf_instance|regfile~65_q\,
	datac => \rf_instance|regfile~180_combout\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~181_combout\);

-- Location: LCCOMB_X48_Y18_N18
\rf_instance|regfile~182\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~182_combout\ = (\ir[6]~reg0_q\ & (((\ir[7]~reg0_q\)))) # (!\ir[6]~reg0_q\ & ((\ir[7]~reg0_q\ & ((\rf_instance|regfile~129_q\))) # (!\ir[7]~reg0_q\ & (\rf_instance|regfile~97_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~97_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~129_q\,
	datad => \ir[7]~reg0_q\,
	combout => \rf_instance|regfile~182_combout\);

-- Location: LCCOMB_X50_Y18_N10
\rf_instance|regfile~183\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \rf_instance|regfile~183_combout\ = (\ir[6]~reg0_q\ & ((\rf_instance|regfile~182_combout\ & (\rf_instance|regfile~145_q\)) # (!\rf_instance|regfile~182_combout\ & ((\rf_instance|regfile~113_q\))))) # (!\ir[6]~reg0_q\ & 
-- (((\rf_instance|regfile~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~145_q\,
	datab => \ir[6]~reg0_q\,
	datac => \rf_instance|regfile~113_q\,
	datad => \rf_instance|regfile~182_combout\,
	combout => \rf_instance|regfile~183_combout\);

-- Location: LCCOMB_X49_Y19_N18
\pc[13]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[13]~13_combout\ = (\ir[8]~reg0_q\ & ((\rf_instance|regfile~183_combout\))) # (!\ir[8]~reg0_q\ & (\rf_instance|regfile~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_instance|regfile~181_combout\,
	datab => \ir[8]~reg0_q\,
	datac => \rf_instance|regfile~183_combout\,
	combout => \pc[13]~13_combout\);

-- Location: LCCOMB_X49_Y19_N4
\pc[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \pc[13]~feeder_combout\ = \pc[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc[13]~13_combout\,
	combout => \pc[13]~feeder_combout\);

-- Location: FF_X49_Y19_N5
\pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[13]~feeder_combout\,
	asdata => \tr[13]~13_combout\,
	sload => \ALT_INV_pc_c~input_o\,
	ena => \upd_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc(13));

-- Location: LCCOMB_X55_Y21_N16
\m_read[13]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \m_read[13]~13_combout\ = (\m_rac~input_o\ & ((tr(13)))) # (!\m_rac~input_o\ & (pc(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pc(13),
	datac => \m_rac~input_o\,
	datad => tr(13),
	combout => \m_read[13]~13_combout\);

-- Location: FF_X55_Y21_N17
\memory_instance|ram_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_read[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0));

-- Location: M9K_X61_Y23_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a64\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1110w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a64_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y22_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a80\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1120w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a80_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X60_Y22_N20
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a80~portbdataout\))) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & (\memory_instance|ram_rtl_0|auto_generated|ram_block1a64~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a64~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a80~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\);

-- Location: M9K_X61_Y39_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a112\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1140w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a112_PORTBDATAOUT_bus\);

-- Location: M9K_X47_Y39_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a96\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1130w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a96_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y22_N14
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a112~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a96~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a112~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a96~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\);

-- Location: M9K_X61_Y38_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a48\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1100w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y19_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a32\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1090w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y22_N22
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ = (\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a48~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a48~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\);

-- Location: M9K_X61_Y27_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a16\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1080w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: M9K_X61_Y33_N0
\memory_instance|ram_rtl_0|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memory:memory_instance|altsyncram:ram_rtl_0|altsyncram_n9h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memory_instance|ram_rtl_0|auto_generated|decode2|w_anode1063w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y22_N28
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\memory_instance|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\)) # (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\memory_instance|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \memory_instance|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\);

-- Location: LCCOMB_X56_Y22_N20
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\) # 
-- (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\);

-- Location: LCCOMB_X56_Y22_N8
\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ = (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\) # ((\memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\) # (\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\,
	combout => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\);

-- Location: LCCOMB_X56_Y22_N16
\ir[0]~reg0feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ir[0]~reg0feeder_combout\ = \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\,
	combout => \ir[0]~reg0feeder_combout\);

-- Location: FF_X56_Y22_N17
\ir[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir[0]~reg0feeder_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[0]~reg0_q\);

-- Location: FF_X56_Y18_N21
\ir[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[12]~reg0_q\);

-- Location: FF_X53_Y22_N31
\ir[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[13]~reg0_q\);

-- Location: FF_X49_Y20_N25
\ir[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[14]~reg0_q\);

-- Location: FF_X56_Y22_N19
\ir[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\,
	ena => \upd_ir~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir[15]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N15
\upd_c~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upd_c,
	o => \upd_c~input_o\);

-- Location: LCCOMB_X49_Y19_N14
\alu_instance|add|lvl1:15:GP1|G~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|lvl1:15:GP1|G~0_combout\ = (\alu_b[15]~3_combout\ & ((\alu_a[15]~3_combout\) # ((\alu_a[14]~1_combout\ & \alu_b[14]~1_combout\)))) # (!\alu_b[15]~3_combout\ & (\alu_a[14]~1_combout\ & (\alu_b[14]~1_combout\ & \alu_a[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[14]~1_combout\,
	datab => \alu_b[14]~1_combout\,
	datac => \alu_b[15]~3_combout\,
	datad => \alu_a[15]~3_combout\,
	combout => \alu_instance|add|lvl1:15:GP1|G~0_combout\);

-- Location: LCCOMB_X49_Y19_N8
\c~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\upd_c~input_o\ & ((\alu_instance|add|lvl1:15:GP1|G~0_combout\))) # (!\upd_c~input_o\ & (\c~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~reg0_q\,
	datab => \upd_c~input_o\,
	datac => \alu_instance|add|lvl1:15:GP1|G~0_combout\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X49_Y19_N30
\c~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \c~1_combout\ = (\alu_instance|add|p_0\(14) & (\upd_c~input_o\ & (\alu_a[15]~3_combout\ $ (\alu_b[15]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|p_0\(14),
	datab => \alu_a[15]~3_combout\,
	datac => \alu_b[15]~3_combout\,
	datad => \upd_c~input_o\,
	combout => \c~1_combout\);

-- Location: LCCOMB_X48_Y19_N24
\alu_instance|add|c[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|add|c\(8) = (\alu_instance|add|c[8]~10_combout\) # ((\alu_instance|add|lvl1:7:GP1|G~0_combout\) # ((\alu_instance|add|lvl1:5:GP1|G~0_combout\ & \alu_instance|add|lvl2:7:GP2|p0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:5:GP1|G~0_combout\,
	datab => \alu_instance|add|lvl2:7:GP2|p0~0_combout\,
	datac => \alu_instance|add|c[8]~10_combout\,
	datad => \alu_instance|add|lvl1:7:GP1|G~0_combout\,
	combout => \alu_instance|add|c\(8));

-- Location: LCCOMB_X49_Y19_N24
\c~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \c~2_combout\ = (\alu_instance|add|c[14]~8_combout\ & (((\alu_instance|add|lvl2:11:GP2|P~5_combout\ & \alu_instance|add|c\(8))) # (!\alu_instance|add|c[12]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl2:11:GP2|P~5_combout\,
	datab => \alu_instance|add|c[14]~8_combout\,
	datac => \alu_instance|add|c[12]~11_combout\,
	datad => \alu_instance|add|c\(8),
	combout => \c~2_combout\);

-- Location: LCCOMB_X49_Y19_N12
\c~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \c~3_combout\ = (\c~0_combout\) # ((\c~1_combout\ & ((\alu_instance|add|lvl1:13:GP1|G~0_combout\) # (\c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|add|lvl1:13:GP1|G~0_combout\,
	datab => \c~0_combout\,
	datac => \c~1_combout\,
	datad => \c~2_combout\,
	combout => \c~3_combout\);

-- Location: FF_X49_Y19_N13
\c~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c~reg0_q\);

-- Location: IOIBUF_X43_Y0_N1
\upd_z~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upd_z,
	o => \upd_z~input_o\);

-- Location: LCCOMB_X50_Y22_N18
\z~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \z~2_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ & 
-- !\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[3]~23_combout\,
	combout => \z~2_combout\);

-- Location: LCCOMB_X50_Y22_N4
\z~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \z~1_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\ & 
-- !\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[15]~95_combout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[14]~89_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[12]~77_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[13]~83_combout\,
	combout => \z~1_combout\);

-- Location: LCCOMB_X50_Y22_N20
\z~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \z~3_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\ & 
-- !\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[5]~35_combout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[7]~47_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[4]~29_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[6]~41_combout\,
	combout => \z~3_combout\);

-- Location: LCCOMB_X50_Y22_N30
\z~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \z~4_combout\ = (\z~2_combout\ & (\z~1_combout\ & \z~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~2_combout\,
	datac => \z~1_combout\,
	datad => \z~3_combout\,
	combout => \z~4_combout\);

-- Location: IOIBUF_X43_Y0_N8
\zc~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zc,
	o => \zc~input_o\);

-- Location: LCCOMB_X50_Y19_N0
\alu_instance|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|Equal0~0_combout\ = (!\tr[0]~0_combout\ & (!\tr[1]~1_combout\ & (!\tr[2]~2_combout\ & !\tr[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[0]~0_combout\,
	datab => \tr[1]~1_combout\,
	datac => \tr[2]~2_combout\,
	datad => \tr[3]~3_combout\,
	combout => \alu_instance|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y21_N2
\alu_instance|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|Equal0~3_combout\ = (!\tr[15]~15_combout\ & (!\tr[13]~13_combout\ & (!\tr[12]~12_combout\ & !\tr[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[15]~15_combout\,
	datab => \tr[13]~13_combout\,
	datac => \tr[12]~12_combout\,
	datad => \tr[14]~14_combout\,
	combout => \alu_instance|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y21_N10
\alu_instance|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|Equal0~2_combout\ = (!\tr[11]~11_combout\ & (!\tr[9]~9_combout\ & (!\tr[10]~10_combout\ & !\tr[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[11]~11_combout\,
	datab => \tr[9]~9_combout\,
	datac => \tr[10]~10_combout\,
	datad => \tr[8]~8_combout\,
	combout => \alu_instance|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y22_N12
\alu_instance|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|Equal0~1_combout\ = (!\tr[4]~4_combout\ & (!\tr[6]~6_combout\ & (!\tr[7]~7_combout\ & !\tr[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr[4]~4_combout\,
	datab => \tr[6]~6_combout\,
	datac => \tr[7]~7_combout\,
	datad => \tr[5]~5_combout\,
	combout => \alu_instance|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y21_N30
\alu_instance|Equal0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \alu_instance|Equal0~4_combout\ = (\alu_instance|Equal0~0_combout\ & (\alu_instance|Equal0~3_combout\ & (\alu_instance|Equal0~2_combout\ & \alu_instance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|Equal0~0_combout\,
	datab => \alu_instance|Equal0~3_combout\,
	datac => \alu_instance|Equal0~2_combout\,
	datad => \alu_instance|Equal0~1_combout\,
	combout => \alu_instance|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y17_N2
\z~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \z~0_combout\ = (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\ & (!\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\ & 
-- !\memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[10]~65_combout\,
	datab => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[8]~53_combout\,
	datac => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[11]~71_combout\,
	datad => \memory_instance|ram_rtl_0|auto_generated|mux3|result_node[9]~59_combout\,
	combout => \z~0_combout\);

-- Location: LCCOMB_X50_Y21_N24
\z~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \z~5_combout\ = (\zc~input_o\ & (\z~4_combout\ & ((\z~0_combout\)))) # (!\zc~input_o\ & (((\alu_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~4_combout\,
	datab => \zc~input_o\,
	datac => \alu_instance|Equal0~4_combout\,
	datad => \z~0_combout\,
	combout => \z~5_combout\);

-- Location: LCCOMB_X50_Y21_N4
\z~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \z~6_combout\ = (\upd_z~input_o\ & ((\z~5_combout\))) # (!\upd_z~input_o\ & (\z~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \upd_z~input_o\,
	datac => \z~reg0_q\,
	datad => \z~5_combout\,
	combout => \z~6_combout\);

-- Location: FF_X50_Y21_N5
\z~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \z~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z~reg0_q\);

-- Location: FF_X50_Y21_N31
\z_imm~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu_instance|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z_imm~reg0_q\);

ww_ir(0) <= \ir[0]~output_o\;

ww_ir(1) <= \ir[1]~output_o\;

ww_ir(2) <= \ir[2]~output_o\;

ww_ir(3) <= \ir[3]~output_o\;

ww_ir(4) <= \ir[4]~output_o\;

ww_ir(5) <= \ir[5]~output_o\;

ww_ir(6) <= \ir[6]~output_o\;

ww_ir(7) <= \ir[7]~output_o\;

ww_ir(8) <= \ir[8]~output_o\;

ww_ir(9) <= \ir[9]~output_o\;

ww_ir(10) <= \ir[10]~output_o\;

ww_ir(11) <= \ir[11]~output_o\;

ww_ir(12) <= \ir[12]~output_o\;

ww_ir(13) <= \ir[13]~output_o\;

ww_ir(14) <= \ir[14]~output_o\;

ww_ir(15) <= \ir[15]~output_o\;

ww_c <= \c~output_o\;

ww_z <= \z~output_o\;

ww_z_imm <= \z_imm~output_o\;
END structure;


