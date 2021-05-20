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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/20/2021 20:00:43"

-- 
-- Device: Altera 10CL006YE144C6G Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	iitbproc IS
    PORT (
	wa : IN std_logic_vector(15 DOWNTO 0);
	inst : IN std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	mem_w : IN std_logic
	);
END iitbproc;

-- Design Ports Information
-- wa[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[4]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[7]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[8]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[9]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[10]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[11]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[12]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[13]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[14]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wa[15]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[5]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[8]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[9]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[10]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[11]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[12]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[13]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[14]	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[15]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_w	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF iitbproc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_wa : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_inst : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_mem_w : std_logic;
SIGNAL \wa[0]~input_o\ : std_logic;
SIGNAL \wa[1]~input_o\ : std_logic;
SIGNAL \wa[2]~input_o\ : std_logic;
SIGNAL \wa[3]~input_o\ : std_logic;
SIGNAL \wa[4]~input_o\ : std_logic;
SIGNAL \wa[5]~input_o\ : std_logic;
SIGNAL \wa[6]~input_o\ : std_logic;
SIGNAL \wa[7]~input_o\ : std_logic;
SIGNAL \wa[8]~input_o\ : std_logic;
SIGNAL \wa[9]~input_o\ : std_logic;
SIGNAL \wa[10]~input_o\ : std_logic;
SIGNAL \wa[11]~input_o\ : std_logic;
SIGNAL \wa[12]~input_o\ : std_logic;
SIGNAL \wa[13]~input_o\ : std_logic;
SIGNAL \wa[14]~input_o\ : std_logic;
SIGNAL \wa[15]~input_o\ : std_logic;
SIGNAL \inst[0]~input_o\ : std_logic;
SIGNAL \inst[1]~input_o\ : std_logic;
SIGNAL \inst[2]~input_o\ : std_logic;
SIGNAL \inst[3]~input_o\ : std_logic;
SIGNAL \inst[4]~input_o\ : std_logic;
SIGNAL \inst[5]~input_o\ : std_logic;
SIGNAL \inst[6]~input_o\ : std_logic;
SIGNAL \inst[7]~input_o\ : std_logic;
SIGNAL \inst[8]~input_o\ : std_logic;
SIGNAL \inst[9]~input_o\ : std_logic;
SIGNAL \inst[10]~input_o\ : std_logic;
SIGNAL \inst[11]~input_o\ : std_logic;
SIGNAL \inst[12]~input_o\ : std_logic;
SIGNAL \inst[13]~input_o\ : std_logic;
SIGNAL \inst[14]~input_o\ : std_logic;
SIGNAL \inst[15]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \mem_w~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_wa <= wa;
ww_inst <= inst;
ww_clk <= clk;
ww_rst <= rst;
ww_mem_w <= mem_w;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOIBUF_X16_Y24_N1
\wa[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(0),
	o => \wa[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\wa[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(1),
	o => \wa[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\wa[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(2),
	o => \wa[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\wa[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(3),
	o => \wa[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\wa[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(4),
	o => \wa[4]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\wa[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(5),
	o => \wa[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\wa[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(6),
	o => \wa[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\wa[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(7),
	o => \wa[7]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\wa[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(8),
	o => \wa[8]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\wa[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(9),
	o => \wa[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\wa[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(10),
	o => \wa[10]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\wa[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(11),
	o => \wa[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\wa[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(12),
	o => \wa[12]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\wa[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(13),
	o => \wa[13]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\wa[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(14),
	o => \wa[14]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\wa[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wa(15),
	o => \wa[15]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\inst[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(0),
	o => \inst[0]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\inst[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(1),
	o => \inst[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\inst[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(2),
	o => \inst[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\inst[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(3),
	o => \inst[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\inst[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(4),
	o => \inst[4]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\inst[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(5),
	o => \inst[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\inst[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(6),
	o => \inst[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\inst[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(7),
	o => \inst[7]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\inst[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(8),
	o => \inst[8]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\inst[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(9),
	o => \inst[9]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\inst[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(10),
	o => \inst[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\inst[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(11),
	o => \inst[11]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\inst[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(12),
	o => \inst[12]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\inst[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(13),
	o => \inst[13]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\inst[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(14),
	o => \inst[14]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\inst[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inst(15),
	o => \inst[15]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\rst~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\mem_w~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_w,
	o => \mem_w~input_o\);
END structure;


