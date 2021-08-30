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

-- DATE "08/30/2021 20:09:41"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	V_SW : IN std_logic_vector(7 DOWNTO 0);
	G_LEDG : OUT std_logic_vector(7 DOWNTO 0);
	V_BT : IN std_logic_vector(2 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- G_LEDG[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[5]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[4]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[6]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[3]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_G_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_V_BT : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G_LEDG[0]~output_o\ : std_logic;
SIGNAL \G_LEDG[1]~output_o\ : std_logic;
SIGNAL \G_LEDG[2]~output_o\ : std_logic;
SIGNAL \G_LEDG[3]~output_o\ : std_logic;
SIGNAL \G_LEDG[4]~output_o\ : std_logic;
SIGNAL \G_LEDG[5]~output_o\ : std_logic;
SIGNAL \G_LEDG[6]~output_o\ : std_logic;
SIGNAL \G_LEDG[7]~output_o\ : std_logic;
SIGNAL \V_SW[4]~input_o\ : std_logic;
SIGNAL \V_BT[1]~input_o\ : std_logic;
SIGNAL \V_BT[0]~input_o\ : std_logic;
SIGNAL \V_SW[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \V_BT[2]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \V_SW[1]~input_o\ : std_logic;
SIGNAL \V_SW[5]~input_o\ : std_logic;
SIGNAL \G_LEDG~3_combout\ : std_logic;
SIGNAL \G_LEDG~1_combout\ : std_logic;
SIGNAL \p1~0_combout\ : std_logic;
SIGNAL \G_LEDG~2_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \w0~0_combout\ : std_logic;
SIGNAL \G_LEDG~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \carry~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \V_SW[6]~input_o\ : std_logic;
SIGNAL \V_SW[2]~input_o\ : std_logic;
SIGNAL \p2~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \c0~0_combout\ : std_logic;
SIGNAL \p2~0_combout\ : std_logic;
SIGNAL \p0~0_combout\ : std_logic;
SIGNAL \w1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \G_LEDG~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \V_SW[7]~input_o\ : std_logic;
SIGNAL \V_SW[3]~input_o\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \carry~2_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \G_LEDG~5_combout\ : std_logic;
SIGNAL \p2~2_combout\ : std_logic;
SIGNAL \c0~1_combout\ : std_logic;
SIGNAL \c1~0_combout\ : std_logic;
SIGNAL \w0~1_combout\ : std_logic;
SIGNAL \w1~3_combout\ : std_logic;
SIGNAL \w2~2_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \p1~1_combout\ : std_logic;
SIGNAL \c0~2_combout\ : std_logic;
SIGNAL \w1~4_combout\ : std_logic;
SIGNAL \p3~0_combout\ : std_logic;
SIGNAL \c1~1_combout\ : std_logic;
SIGNAL \c2~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \carry~4_combout\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \G_LEDG[4]$latch~combout\ : std_logic;
SIGNAL \c2~1_combout\ : std_logic;
SIGNAL \p3~1_combout\ : std_logic;
SIGNAL \w1~5_combout\ : std_logic;
SIGNAL \p1~2_combout\ : std_logic;
SIGNAL \c1~2_combout\ : std_logic;
SIGNAL \w2~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \G_LEDG[5]$latch~combout\ : std_logic;
SIGNAL \c2~2_combout\ : std_logic;
SIGNAL \p2~3_combout\ : std_logic;
SIGNAL \c1~3_combout\ : std_logic;
SIGNAL \w2~4_combout\ : std_logic;
SIGNAL \G_LEDG[6]$latch~combout\ : std_logic;
SIGNAL \c2~3_combout\ : std_logic;
SIGNAL \G_LEDG[7]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_V_SW <= V_SW;
G_LEDG <= ww_G_LEDG;
ww_V_BT <= V_BT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux4~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N16
\G_LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\G_LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\G_LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~5_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\G_LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~13_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\G_LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G_LEDG[4]$latch~combout\,
	devoe => ww_devoe,
	o => \G_LEDG[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\G_LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G_LEDG[5]$latch~combout\,
	devoe => ww_devoe,
	o => \G_LEDG[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\G_LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G_LEDG[6]$latch~combout\,
	devoe => ww_devoe,
	o => \G_LEDG[6]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\G_LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G_LEDG[7]$latch~combout\,
	devoe => ww_devoe,
	o => \G_LEDG[7]~output_o\);

-- Location: IOIBUF_X34_Y18_N15
\V_SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(4),
	o => \V_SW[4]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\V_BT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(1),
	o => \V_BT[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\V_BT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(0),
	o => \V_BT[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\V_SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(0),
	o => \V_SW[0]~input_o\);

-- Location: LCCOMB_X29_Y21_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\V_SW[4]~input_o\ & ((\V_BT[1]~input_o\ & ((\V_BT[0]~input_o\) # (\V_SW[0]~input_o\))) # (!\V_BT[1]~input_o\ & ((!\V_SW[0]~input_o\))))) # (!\V_SW[4]~input_o\ & (\V_SW[0]~input_o\ & ((\V_BT[0]~input_o\) # (!\V_BT[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_BT[1]~input_o\,
	datac => \V_BT[0]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\V_BT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(2),
	o => \V_BT[2]~input_o\);

-- Location: LCCOMB_X29_Y21_N8
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\V_BT[0]~input_o\ & ((\V_BT[2]~input_o\ & ((!\V_SW[0]~input_o\))) # (!\V_BT[2]~input_o\ & (\Mux3~0_combout\)))) # (!\V_BT[0]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \V_BT[0]~input_o\,
	datac => \V_BT[2]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X30_Y24_N1
\V_SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(1),
	o => \V_SW[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\V_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(5),
	o => \V_SW[5]~input_o\);

-- Location: LCCOMB_X29_Y21_N12
\G_LEDG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG~3_combout\ = (\V_SW[1]~input_o\) # (\V_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \G_LEDG~3_combout\);

-- Location: LCCOMB_X29_Y21_N28
\G_LEDG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG~1_combout\ = \V_SW[5]~input_o\ $ (\V_SW[1]~input_o\ $ (((\V_SW[0]~input_o\) # (!\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \G_LEDG~1_combout\);

-- Location: LCCOMB_X29_Y21_N30
\p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~0_combout\ = (\V_SW[1]~input_o\ & \V_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \p1~0_combout\);

-- Location: LCCOMB_X29_Y21_N24
\G_LEDG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG~2_combout\ = \V_SW[5]~input_o\ $ (\V_SW[1]~input_o\ $ (((\V_SW[4]~input_o\ & \V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \G_LEDG~2_combout\);

-- Location: LCCOMB_X29_Y21_N2
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\V_BT[1]~input_o\ & ((\p1~0_combout\) # ((\V_BT[0]~input_o\)))) # (!\V_BT[1]~input_o\ & (((!\V_BT[0]~input_o\ & \G_LEDG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~0_combout\,
	datab => \V_BT[1]~input_o\,
	datac => \V_BT[0]~input_o\,
	datad => \G_LEDG~2_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X29_Y21_N22
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\V_BT[0]~input_o\ & ((\Mux2~2_combout\ & (\G_LEDG~3_combout\)) # (!\Mux2~2_combout\ & ((!\G_LEDG~1_combout\))))) # (!\V_BT[0]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G_LEDG~3_combout\,
	datab => \G_LEDG~1_combout\,
	datac => \V_BT[0]~input_o\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X29_Y21_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\V_BT[1]~input_o\ & (\V_BT[0]~input_o\)) # (!\V_BT[1]~input_o\ & (\V_SW[1]~input_o\ $ (((\V_BT[0]~input_o\) # (\V_SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datab => \V_BT[1]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X29_Y21_N16
\w0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w0~0_combout\ = (\V_SW[4]~input_o\ & (\V_SW[1]~input_o\ $ (((\V_SW[5]~input_o\ & \V_SW[0]~input_o\))))) # (!\V_SW[4]~input_o\ & (\V_SW[5]~input_o\ & ((\V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \w0~0_combout\);

-- Location: LCCOMB_X29_Y21_N20
\G_LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG~0_combout\ = \V_SW[1]~input_o\ $ (\V_SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \G_LEDG~0_combout\);

-- Location: LCCOMB_X29_Y21_N14
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\G_LEDG~0_combout\) # (!\V_BT[1]~input_o\)))) # (!\Mux2~0_combout\ & (\w0~0_combout\ & (\V_BT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \w0~0_combout\,
	datac => \V_BT[1]~input_o\,
	datad => \G_LEDG~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X29_Y21_N4
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\V_BT[2]~input_o\ & ((\Mux2~1_combout\))) # (!\V_BT[2]~input_o\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux2~1_combout\,
	datac => \V_BT[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X29_Y21_N18
\carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = (\V_SW[5]~input_o\ & (\V_SW[1]~input_o\ & ((\V_SW[0]~input_o\) # (!\V_SW[4]~input_o\)))) # (!\V_SW[5]~input_o\ & (((\V_SW[1]~input_o\) # (\V_SW[0]~input_o\)) # (!\V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \carry~0_combout\);

-- Location: LCCOMB_X29_Y21_N0
\carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~1_combout\ = (\V_SW[5]~input_o\ & ((\V_SW[1]~input_o\) # ((\V_SW[4]~input_o\ & \V_SW[0]~input_o\)))) # (!\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \carry~1_combout\);

-- Location: LCCOMB_X28_Y23_N28
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\V_BT[1]~input_o\ & (((\V_BT[0]~input_o\)))) # (!\V_BT[1]~input_o\ & ((\V_BT[0]~input_o\ & (!\carry~0_combout\)) # (!\V_BT[0]~input_o\ & ((\carry~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~0_combout\,
	datab => \V_BT[1]~input_o\,
	datac => \V_BT[0]~input_o\,
	datad => \carry~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X18_Y24_N22
\V_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(6),
	o => \V_SW[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\V_SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(2),
	o => \V_SW[2]~input_o\);

-- Location: LCCOMB_X28_Y23_N18
\p2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~1_combout\ = (\V_SW[6]~input_o\ & \V_SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \p2~1_combout\);

-- Location: LCCOMB_X28_Y23_N24
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\V_SW[6]~input_o\ & ((\V_BT[1]~input_o\) # (!\V_SW[2]~input_o\))) # (!\V_SW[6]~input_o\ & ((\V_SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_BT[1]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X28_Y23_N20
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\V_BT[1]~input_o\ & ((\Mux1~3_combout\ & ((\Mux1~2_combout\))) # (!\Mux1~3_combout\ & (\p2~1_combout\)))) # (!\V_BT[1]~input_o\ & (\Mux1~3_combout\ $ (((\Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[1]~input_o\,
	datab => \Mux1~3_combout\,
	datac => \p2~1_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X29_Y20_N16
\c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~0_combout\ = (\V_SW[0]~input_o\ & (\V_SW[1]~input_o\ & (\V_SW[5]~input_o\ & \V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \c0~0_combout\);

-- Location: LCCOMB_X29_Y20_N8
\p2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~0_combout\ = (\V_SW[0]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datac => \V_SW[6]~input_o\,
	combout => \p2~0_combout\);

-- Location: LCCOMB_X29_Y20_N18
\p0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0~0_combout\ = (\V_SW[2]~input_o\ & \V_SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \p0~0_combout\);

-- Location: LCCOMB_X29_Y20_N2
\w1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~2_combout\ = \p1~0_combout\ $ (\c0~0_combout\ $ (\p2~0_combout\ $ (\p0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~0_combout\,
	datab => \c0~0_combout\,
	datac => \p2~0_combout\,
	datad => \p0~0_combout\,
	combout => \w1~2_combout\);

-- Location: LCCOMB_X28_Y23_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\V_BT[1]~input_o\ & (\V_BT[0]~input_o\)) # (!\V_BT[1]~input_o\ & (\V_SW[2]~input_o\ $ (((\V_BT[0]~input_o\) # (\V_SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datab => \V_BT[1]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X29_Y23_N18
\G_LEDG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG~4_combout\ = \V_SW[2]~input_o\ $ (((\V_SW[1]~input_o\ & \V_SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \G_LEDG~4_combout\);

-- Location: LCCOMB_X29_Y23_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\G_LEDG~4_combout\) # (!\V_BT[1]~input_o\)))) # (!\Mux1~0_combout\ & (\w1~2_combout\ & (\V_BT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1~2_combout\,
	datab => \Mux1~0_combout\,
	datac => \V_BT[1]~input_o\,
	datad => \G_LEDG~4_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X29_Y23_N28
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\V_BT[2]~input_o\ & ((\Mux1~1_combout\))) # (!\V_BT[2]~input_o\ & (\Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~4_combout\,
	datac => \V_BT[2]~input_o\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~5_combout\);

-- Location: IOIBUF_X28_Y24_N15
\V_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(7),
	o => \V_SW[7]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\V_SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(3),
	o => \V_SW[3]~input_o\);

-- Location: LCCOMB_X28_Y23_N26
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\V_SW[2]~input_o\ & ((\V_SW[6]~input_o\) # (\carry~1_combout\))) # (!\V_SW[2]~input_o\ & (\V_SW[6]~input_o\ & \carry~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \carry~1_combout\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X28_Y23_N2
\carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~2_combout\ = (\V_SW[2]~input_o\ & ((\carry~0_combout\) # (!\V_SW[6]~input_o\))) # (!\V_SW[2]~input_o\ & (!\V_SW[6]~input_o\ & \carry~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \carry~0_combout\,
	combout => \carry~2_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\V_BT[0]~input_o\ & ((\V_BT[1]~input_o\) # ((!\carry~2_combout\)))) # (!\V_BT[0]~input_o\ & (!\V_BT[1]~input_o\ & (\Mux0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datab => \V_BT[1]~input_o\,
	datac => \Mux0~11_combout\,
	datad => \carry~2_combout\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X29_Y23_N10
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\V_BT[1]~input_o\ & ((\V_SW[7]~input_o\ & ((\V_SW[3]~input_o\) # (\Mux0~10_combout\))) # (!\V_SW[7]~input_o\ & (\V_SW[3]~input_o\ & \Mux0~10_combout\)))) # (!\V_BT[1]~input_o\ & (\V_SW[7]~input_o\ $ (\V_SW[3]~input_o\ $ 
-- (\Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[1]~input_o\,
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \Mux0~10_combout\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X29_Y23_N24
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\V_BT[1]~input_o\ & (\V_BT[0]~input_o\)) # (!\V_BT[1]~input_o\ & (\V_SW[3]~input_o\ $ (((\V_BT[0]~input_o\) # (\V_SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[0]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_BT[1]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X29_Y23_N8
\G_LEDG~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG~5_combout\ = \V_SW[3]~input_o\ $ (((\V_SW[2]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \G_LEDG~5_combout\);

-- Location: LCCOMB_X29_Y20_N12
\p2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~2_combout\ = (\V_SW[6]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \p2~2_combout\);

-- Location: LCCOMB_X29_Y20_N14
\c0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~1_combout\ = (\p1~0_combout\ & ((\c0~0_combout\) # ((\V_SW[2]~input_o\ & \V_SW[4]~input_o\)))) # (!\p1~0_combout\ & (\c0~0_combout\ & (\V_SW[2]~input_o\ & \V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~0_combout\,
	datab => \c0~0_combout\,
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \c0~1_combout\);

-- Location: LCCOMB_X29_Y20_N30
\c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~0_combout\ = (\p2~0_combout\ & (\p1~0_combout\ $ (\c0~0_combout\ $ (\p0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~0_combout\,
	datab => \c0~0_combout\,
	datac => \p2~0_combout\,
	datad => \p0~0_combout\,
	combout => \c1~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\w0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \w0~1_combout\ = (\V_SW[5]~input_o\ & (\V_SW[2]~input_o\ $ (((\V_SW[3]~input_o\ & \V_SW[4]~input_o\))))) # (!\V_SW[5]~input_o\ & (\V_SW[3]~input_o\ & ((\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \w0~1_combout\);

-- Location: LCCOMB_X29_Y20_N4
\w1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~3_combout\ = \p2~2_combout\ $ (\c0~1_combout\ $ (\c1~0_combout\ $ (\w0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~2_combout\,
	datab => \c0~1_combout\,
	datac => \c1~0_combout\,
	datad => \w0~1_combout\,
	combout => \w1~3_combout\);

-- Location: LCCOMB_X29_Y23_N12
\w2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~2_combout\ = \w1~3_combout\ $ (((\V_SW[7]~input_o\ & \V_SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[7]~input_o\,
	datac => \w1~3_combout\,
	datad => \V_SW[0]~input_o\,
	combout => \w2~2_combout\);

-- Location: LCCOMB_X29_Y23_N26
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\V_BT[1]~input_o\ & ((\Mux0~8_combout\ & (\G_LEDG~5_combout\)) # (!\Mux0~8_combout\ & ((\w2~2_combout\))))) # (!\V_BT[1]~input_o\ & (\Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[1]~input_o\,
	datab => \Mux0~8_combout\,
	datac => \G_LEDG~5_combout\,
	datad => \w2~2_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X29_Y23_N0
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\V_BT[2]~input_o\ & ((\Mux0~9_combout\))) # (!\V_BT[2]~input_o\ & (\Mux0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datab => \V_BT[2]~input_o\,
	datac => \Mux0~9_combout\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X29_Y20_N22
\p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~1_combout\ = (\V_SW[5]~input_o\ & \V_SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datac => \V_SW[2]~input_o\,
	combout => \p1~1_combout\);

-- Location: LCCOMB_X29_Y20_N20
\c0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~2_combout\ = (\p1~1_combout\ & ((\c0~1_combout\) # ((\V_SW[3]~input_o\ & \V_SW[4]~input_o\)))) # (!\p1~1_combout\ & (\V_SW[3]~input_o\ & (\c0~1_combout\ & \V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~1_combout\,
	datab => \V_SW[3]~input_o\,
	datac => \c0~1_combout\,
	datad => \V_SW[4]~input_o\,
	combout => \c0~2_combout\);

-- Location: LCCOMB_X28_Y20_N12
\w1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~4_combout\ = \c0~2_combout\ $ (\p2~1_combout\ $ (((\V_SW[3]~input_o\ & \V_SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~2_combout\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \p2~1_combout\,
	combout => \w1~4_combout\);

-- Location: LCCOMB_X29_Y20_N26
\p3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~0_combout\ = (\V_SW[7]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[7]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \p3~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\c1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~1_combout\ = (\p2~2_combout\ & ((\c1~0_combout\) # (\c0~1_combout\ $ (\w0~1_combout\)))) # (!\p2~2_combout\ & (\c1~0_combout\ & (\c0~1_combout\ $ (\w0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~2_combout\,
	datab => \c0~1_combout\,
	datac => \c1~0_combout\,
	datad => \w0~1_combout\,
	combout => \c1~1_combout\);

-- Location: LCCOMB_X29_Y23_N16
\c2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~0_combout\ = (\V_SW[7]~input_o\ & (\w1~3_combout\ & \V_SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[7]~input_o\,
	datac => \w1~3_combout\,
	datad => \V_SW[0]~input_o\,
	combout => \c2~0_combout\);

-- Location: LCCOMB_X28_Y20_N10
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = \w1~4_combout\ $ (\p3~0_combout\ $ (\c1~1_combout\ $ (\c2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1~4_combout\,
	datab => \p3~0_combout\,
	datac => \c1~1_combout\,
	datad => \c2~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X29_Y23_N4
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\V_SW[2]~input_o\ & (\V_SW[1]~input_o\ & (\V_SW[3]~input_o\ & \V_SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X28_Y23_N6
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\V_BT[0]~input_o\ & ((\Mux9~1_combout\))) # (!\V_BT[0]~input_o\ & (\Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datac => \V_BT[0]~input_o\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X28_Y23_N10
\carry~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~4_combout\ = (\V_SW[2]~input_o\ & ((\V_SW[6]~input_o\) # (\carry~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \carry~1_combout\,
	combout => \carry~4_combout\);

-- Location: LCCOMB_X28_Y23_N0
\carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~3_combout\ = (\V_SW[6]~input_o\ & \carry~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[6]~input_o\,
	datad => \carry~1_combout\,
	combout => \carry~3_combout\);

-- Location: LCCOMB_X28_Y23_N14
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\V_BT[0]~input_o\ & (((\carry~2_combout\)))) # (!\V_BT[0]~input_o\ & ((\carry~4_combout\) # ((\carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~4_combout\,
	datab => \carry~3_combout\,
	datac => \V_BT[0]~input_o\,
	datad => \carry~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X28_Y23_N4
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\V_SW[3]~input_o\ & ((\Mux9~3_combout\ & (!\V_BT[0]~input_o\)) # (!\Mux9~3_combout\ & ((\V_SW[7]~input_o\))))) # (!\V_SW[3]~input_o\ & ((\Mux9~3_combout\ & ((\V_SW[7]~input_o\))) # (!\Mux9~3_combout\ & (\V_BT[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_BT[0]~input_o\,
	datac => \Mux9~3_combout\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X28_Y23_N16
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\V_BT[1]~input_o\ & (\Mux9~2_combout\)) # (!\V_BT[1]~input_o\ & ((\Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~2_combout\,
	datac => \V_BT[1]~input_o\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X28_Y23_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = \V_BT[2]~input_o\ $ (\V_BT[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_BT[2]~input_o\,
	datad => \V_BT[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X28_Y23_N8
\G_LEDG[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG[4]$latch~combout\ = (\Mux8~0_combout\ & (\G_LEDG[4]$latch~combout\)) # (!\Mux8~0_combout\ & ((\Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G_LEDG[4]$latch~combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux8~0_combout\,
	combout => \G_LEDG[4]$latch~combout\);

-- Location: LCCOMB_X28_Y20_N30
\c2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~1_combout\ = (\p3~0_combout\ & ((\c2~0_combout\) # (\w1~4_combout\ $ (\c1~1_combout\)))) # (!\p3~0_combout\ & (\c2~0_combout\ & (\w1~4_combout\ $ (\c1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1~4_combout\,
	datab => \p3~0_combout\,
	datac => \c1~1_combout\,
	datad => \c2~0_combout\,
	combout => \c2~1_combout\);

-- Location: LCCOMB_X28_Y20_N2
\p3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~1_combout\ = (\V_SW[2]~input_o\ & \V_SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \p3~1_combout\);

-- Location: LCCOMB_X28_Y20_N22
\w1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~5_combout\ = (\V_SW[3]~input_o\ & (\V_SW[6]~input_o\ $ (((\V_SW[5]~input_o\ & \c0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \c0~2_combout\,
	datad => \V_SW[6]~input_o\,
	combout => \w1~5_combout\);

-- Location: LCCOMB_X28_Y20_N16
\p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~2_combout\ = (\V_SW[3]~input_o\ & \V_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[5]~input_o\,
	combout => \p1~2_combout\);

-- Location: LCCOMB_X28_Y20_N28
\c1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~2_combout\ = (\c1~1_combout\ & ((\p2~1_combout\) # (\c0~2_combout\ $ (\p1~2_combout\)))) # (!\c1~1_combout\ & (\p2~1_combout\ & (\c0~2_combout\ $ (\p1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~2_combout\,
	datab => \p1~2_combout\,
	datac => \c1~1_combout\,
	datad => \p2~1_combout\,
	combout => \c1~2_combout\);

-- Location: LCCOMB_X28_Y20_N8
\w2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~3_combout\ = \c2~1_combout\ $ (\p3~1_combout\ $ (\w1~5_combout\ $ (\c1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~1_combout\,
	datab => \p3~1_combout\,
	datac => \w1~5_combout\,
	datad => \c1~2_combout\,
	combout => \w2~3_combout\);

-- Location: LCCOMB_X29_Y23_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\V_BT[2]~input_o\ & (!\V_BT[0]~input_o\ & \V_BT[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_BT[2]~input_o\,
	datac => \V_BT[0]~input_o\,
	datad => \V_BT[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: CLKCTRL_G9
\Mux4~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y20_N6
\G_LEDG[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG[5]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\w2~3_combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\G_LEDG[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w2~3_combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \G_LEDG[5]$latch~combout\,
	combout => \G_LEDG[5]$latch~combout\);

-- Location: LCCOMB_X28_Y20_N18
\c2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~2_combout\ = (\c2~1_combout\ & ((\p3~1_combout\) # (\w1~5_combout\ $ (\c1~2_combout\)))) # (!\c2~1_combout\ & (\p3~1_combout\ & (\w1~5_combout\ $ (\c1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~1_combout\,
	datab => \p3~1_combout\,
	datac => \w1~5_combout\,
	datad => \c1~2_combout\,
	combout => \c2~2_combout\);

-- Location: LCCOMB_X28_Y20_N14
\p2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~3_combout\ = (\V_SW[6]~input_o\ & \V_SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[3]~input_o\,
	combout => \p2~3_combout\);

-- Location: LCCOMB_X28_Y20_N20
\c1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~3_combout\ = (\p2~3_combout\ & ((\c1~2_combout\) # ((\c0~2_combout\ & \p1~2_combout\)))) # (!\p2~3_combout\ & (\c0~2_combout\ & (\p1~2_combout\ & \c1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~2_combout\,
	datab => \p1~2_combout\,
	datac => \p2~3_combout\,
	datad => \c1~2_combout\,
	combout => \c1~3_combout\);

-- Location: LCCOMB_X28_Y20_N4
\w2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~4_combout\ = \c2~2_combout\ $ (\c1~3_combout\ $ (((\V_SW[7]~input_o\ & \V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \c2~2_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \c1~3_combout\,
	combout => \w2~4_combout\);

-- Location: LCCOMB_X24_Y20_N28
\G_LEDG[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG[6]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\w2~4_combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\G_LEDG[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w2~4_combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \G_LEDG[6]$latch~combout\,
	combout => \G_LEDG[6]$latch~combout\);

-- Location: LCCOMB_X28_Y20_N24
\c2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~3_combout\ = (\c2~2_combout\ & ((\c1~3_combout\) # ((\V_SW[7]~input_o\ & \V_SW[3]~input_o\)))) # (!\c2~2_combout\ & (\V_SW[7]~input_o\ & (\V_SW[3]~input_o\ & \c1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \c2~2_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \c1~3_combout\,
	combout => \c2~3_combout\);

-- Location: LCCOMB_X29_Y20_N10
\G_LEDG[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG[7]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\c2~3_combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\G_LEDG[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c2~3_combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \G_LEDG[7]$latch~combout\,
	combout => \G_LEDG[7]$latch~combout\);

ww_G_LEDG(0) <= \G_LEDG[0]~output_o\;

ww_G_LEDG(1) <= \G_LEDG[1]~output_o\;

ww_G_LEDG(2) <= \G_LEDG[2]~output_o\;

ww_G_LEDG(3) <= \G_LEDG[3]~output_o\;

ww_G_LEDG(4) <= \G_LEDG[4]~output_o\;

ww_G_LEDG(5) <= \G_LEDG[5]~output_o\;

ww_G_LEDG(6) <= \G_LEDG[6]~output_o\;

ww_G_LEDG(7) <= \G_LEDG[7]~output_o\;
END structure;


