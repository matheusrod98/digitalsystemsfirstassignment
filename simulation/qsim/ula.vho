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

-- DATE "08/30/2021 23:26:35"

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
	G_LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- G_LEDG[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[4]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[6]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[5]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G_LEDG[0]~output_o\ : std_logic;
SIGNAL \G_LEDG[1]~output_o\ : std_logic;
SIGNAL \G_LEDG[2]~output_o\ : std_logic;
SIGNAL \G_LEDG[3]~output_o\ : std_logic;
SIGNAL \G_LEDG[4]~output_o\ : std_logic;
SIGNAL \G_LEDG[5]~output_o\ : std_logic;
SIGNAL \G_LEDG[6]~output_o\ : std_logic;
SIGNAL \G_LEDG[7]~output_o\ : std_logic;
SIGNAL \control[0]~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \V_SW[0]~input_o\ : std_logic;
SIGNAL \V_SW[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \V_SW[5]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \V_SW[1]~input_o\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \carry~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \V_SW[2]~input_o\ : std_logic;
SIGNAL \V_SW[6]~input_o\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \p0~0_combout\ : std_logic;
SIGNAL \p1~0_combout\ : std_logic;
SIGNAL \c0~0_combout\ : std_logic;
SIGNAL \p2~0_combout\ : std_logic;
SIGNAL \w1~2_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \c1~0_combout\ : std_logic;
SIGNAL \p2~1_combout\ : std_logic;
SIGNAL \V_SW[3]~input_o\ : std_logic;
SIGNAL \w0~0_combout\ : std_logic;
SIGNAL \c0~1_combout\ : std_logic;
SIGNAL \w1~3_combout\ : std_logic;
SIGNAL \V_SW[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \carry~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \p2~2_combout\ : std_logic;
SIGNAL \p1~1_combout\ : std_logic;
SIGNAL \c0~2_combout\ : std_logic;
SIGNAL \w1~4_combout\ : std_logic;
SIGNAL \p3~0_combout\ : std_logic;
SIGNAL \c1~1_combout\ : std_logic;
SIGNAL \c2~0_combout\ : std_logic;
SIGNAL \w2~0_combout\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \G_LEDG[4]$latch~combout\ : std_logic;
SIGNAL \p3~1_combout\ : std_logic;
SIGNAL \c2~1_combout\ : std_logic;
SIGNAL \w1~5_combout\ : std_logic;
SIGNAL \p1~2_combout\ : std_logic;
SIGNAL \c1~2_combout\ : std_logic;
SIGNAL \w2~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \G_LEDG[5]$latch~combout\ : std_logic;
SIGNAL \p2~3_combout\ : std_logic;
SIGNAL \c1~3_combout\ : std_logic;
SIGNAL \c2~2_combout\ : std_logic;
SIGNAL \w2~2_combout\ : std_logic;
SIGNAL \G_LEDG[6]$latch~combout\ : std_logic;
SIGNAL \c2~3_combout\ : std_logic;
SIGNAL \G_LEDG[7]$latch~combout\ : std_logic;
SIGNAL control : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_V_SW <= V_SW;
G_LEDG <= ww_G_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux4~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X32_Y0_N9
\G_LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~7_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\G_LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~7_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\G_LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~7_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X34_Y9_N23
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: LCCOMB_X32_Y3_N20
\control[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control[0]~0_combout\ = ((control(2) & control(1))) # (!\control[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[0]~0_combout\,
	datac => control(2),
	datad => control(1),
	combout => \control[0]~0_combout\);

-- Location: LCCOMB_X32_Y3_N28
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = \control[0]~0_combout\ $ (control(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[0]~0_combout\,
	datad => control(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X33_Y3_N18
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (control(2) & (control(1) & \control[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datac => control(1),
	datad => \control[0]~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X32_Y3_N6
\control[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- control(1) = (\Mux10~0_combout\ & ((control(1)))) # (!\Mux10~0_combout\ & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \Mux10~0_combout\,
	datad => control(1),
	combout => control(1));

-- Location: LCCOMB_X33_Y3_N12
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (control(2)) # ((control(1) & \control[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(1),
	datac => control(2),
	datad => \control[0]~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X33_Y3_N30
\control[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- control(2) = (\Mux10~0_combout\ & ((control(2)))) # (!\Mux10~0_combout\ & (\Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datac => control(2),
	datad => \Mux10~0_combout\,
	combout => control(2));

-- Location: IOIBUF_X34_Y4_N15
\V_SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(0),
	o => \V_SW[0]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\V_SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(4),
	o => \V_SW[4]~input_o\);

-- Location: LCCOMB_X33_Y3_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (control(1) & ((\V_SW[0]~input_o\ & ((\V_SW[4]~input_o\) # (\control[0]~0_combout\))) # (!\V_SW[0]~input_o\ & (\V_SW[4]~input_o\ & \control[0]~0_combout\)))) # (!control(1) & (\V_SW[0]~input_o\ $ ((\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \V_SW[0]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => \control[0]~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X33_Y3_N16
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (control(2) & ((\control[0]~0_combout\ & (!\V_SW[0]~input_o\)) # (!\control[0]~0_combout\ & ((\Mux3~0_combout\))))) # (!control(2) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => \V_SW[0]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \control[0]~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X33_Y3_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (control(2) & (!\V_SW[0]~input_o\ & ((control(1))))) # (!control(2) & ((control(1)) # ((!\V_SW[0]~input_o\ & \V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => \V_SW[0]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => control(1),
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X34_Y3_N22
\V_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(5),
	o => \V_SW[5]~input_o\);

-- Location: LCCOMB_X33_Y3_N26
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & (\control[0]~0_combout\ $ (((control(2)) # (\V_SW[5]~input_o\))))) # (!\Mux2~1_combout\ & ((\V_SW[5]~input_o\) # ((control(2) & \control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => \Mux2~1_combout\,
	datac => \V_SW[5]~input_o\,
	datad => \control[0]~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X33_Y3_N24
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (control(2) & (((!\control[0]~0_combout\)))) # (!control(2) & (\Mux2~1_combout\ & (\V_SW[5]~input_o\ $ (!\control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => \Mux2~1_combout\,
	datac => \V_SW[5]~input_o\,
	datad => \control[0]~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X33_Y3_N22
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~1_combout\ & ((control(2)) # ((\V_SW[5]~input_o\ & \control[0]~0_combout\)))) # (!\Mux2~1_combout\ & (((\control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => \Mux2~1_combout\,
	datac => \V_SW[5]~input_o\,
	datad => \control[0]~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X34_Y4_N22
\V_SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(1),
	o => \V_SW[1]~input_o\);

-- Location: LCCOMB_X33_Y3_N6
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~2_combout\ & (!\V_SW[1]~input_o\ & ((!\Mux2~3_combout\) # (!\Mux2~4_combout\)))) # (!\Mux2~2_combout\ & (((\V_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~4_combout\,
	datac => \Mux2~3_combout\,
	datad => \V_SW[1]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X33_Y3_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (control(2) & (control(1) & (\V_SW[0]~input_o\ $ (\V_SW[4]~input_o\)))) # (!control(2) & ((control(1)) # ((\V_SW[0]~input_o\ & \V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => \V_SW[0]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => control(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y3_N10
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~4_combout\ & (\V_SW[1]~input_o\ $ (((\Mux2~2_combout\) # (!\Mux2~3_combout\))))) # (!\Mux2~4_combout\ & (((\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~4_combout\,
	datac => \Mux2~3_combout\,
	datad => \V_SW[1]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X33_Y3_N28
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = \Mux2~5_combout\ $ (((\Mux2~0_combout\ & !\Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X29_Y3_N30
\carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = (\V_SW[5]~input_o\ & (\V_SW[1]~input_o\ & ((\V_SW[0]~input_o\) # (!\V_SW[4]~input_o\)))) # (!\V_SW[5]~input_o\ & ((\V_SW[0]~input_o\) # ((\V_SW[1]~input_o\) # (!\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \carry~0_combout\);

-- Location: LCCOMB_X29_Y3_N28
\carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~1_combout\ = (\V_SW[5]~input_o\ & ((\V_SW[1]~input_o\) # ((\V_SW[0]~input_o\ & \V_SW[4]~input_o\)))) # (!\V_SW[5]~input_o\ & (\V_SW[0]~input_o\ & (\V_SW[4]~input_o\ & \V_SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \carry~1_combout\);

-- Location: LCCOMB_X32_Y3_N22
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\control[0]~0_combout\ & (\carry~0_combout\)) # (!\control[0]~0_combout\ & ((\carry~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry~0_combout\,
	datac => \control[0]~0_combout\,
	datad => \carry~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X34_Y2_N15
\V_SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(2),
	o => \V_SW[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\V_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(6),
	o => \V_SW[6]~input_o\);

-- Location: LCCOMB_X31_Y3_N10
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\control[0]~0_combout\ & ((control(1) & (\V_SW[2]~input_o\)) # (!control(1) & ((\V_SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \control[0]~0_combout\,
	datac => \V_SW[6]~input_o\,
	datad => control(1),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X31_Y3_N12
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (control(1) & (((\Mux1~4_combout\)))) # (!control(1) & ((control(2) & ((\Mux1~4_combout\))) # (!control(2) & (\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \Mux1~3_combout\,
	datac => \Mux1~4_combout\,
	datad => control(2),
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X31_Y3_N16
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\V_SW[6]~input_o\ & (\V_SW[2]~input_o\ $ (\control[0]~0_combout\ $ (!control(1))))) # (!\V_SW[6]~input_o\ & (!control(1) & (\V_SW[2]~input_o\ $ (\control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \control[0]~0_combout\,
	datac => \V_SW[6]~input_o\,
	datad => control(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X31_Y3_N30
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (control(2) & control(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(2),
	datad => control(1),
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X29_Y3_N10
\p0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0~0_combout\ = (\V_SW[2]~input_o\ & \V_SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[4]~input_o\,
	combout => \p0~0_combout\);

-- Location: LCCOMB_X29_Y3_N16
\p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~0_combout\ = (\V_SW[5]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \p1~0_combout\);

-- Location: LCCOMB_X29_Y3_N22
\c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~0_combout\ = (\V_SW[0]~input_o\ & (\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ & \V_SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \c0~0_combout\);

-- Location: LCCOMB_X29_Y3_N20
\p2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~0_combout\ = (\V_SW[6]~input_o\ & \V_SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[6]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \p2~0_combout\);

-- Location: LCCOMB_X29_Y3_N24
\w1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~2_combout\ = \p0~0_combout\ $ (\p1~0_combout\ $ (\c0~0_combout\ $ (\p2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0~0_combout\,
	datab => \p1~0_combout\,
	datac => \c0~0_combout\,
	datad => \p2~0_combout\,
	combout => \w1~2_combout\);

-- Location: LCCOMB_X31_Y3_N28
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\control[0]~0_combout\ & (((\V_SW[0]~input_o\ & \V_SW[1]~input_o\)))) # (!\control[0]~0_combout\ & (\w1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1~2_combout\,
	datab => \V_SW[0]~input_o\,
	datac => \control[0]~0_combout\,
	datad => \V_SW[1]~input_o\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X31_Y3_N8
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux1~6_combout\ & (\Mux1~8_combout\ $ (((\Mux1~5_combout\ & !\Mux1~2_combout\))))) # (!\Mux1~6_combout\ & (\Mux1~5_combout\ $ ((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux1~2_combout\,
	datac => \Mux1~6_combout\,
	datad => \Mux1~8_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X29_Y3_N12
\c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~0_combout\ = (\p2~0_combout\ & (\p0~0_combout\ $ (\p1~0_combout\ $ (\c0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0~0_combout\,
	datab => \p1~0_combout\,
	datac => \c0~0_combout\,
	datad => \p2~0_combout\,
	combout => \c1~0_combout\);

-- Location: LCCOMB_X29_Y3_N18
\p2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~1_combout\ = (\V_SW[6]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[6]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \p2~1_combout\);

-- Location: IOIBUF_X32_Y0_N22
\V_SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(3),
	o => \V_SW[3]~input_o\);

-- Location: LCCOMB_X29_Y3_N26
\w0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w0~0_combout\ = (\V_SW[4]~input_o\ & (\V_SW[3]~input_o\ $ (((\V_SW[5]~input_o\ & \V_SW[2]~input_o\))))) # (!\V_SW[4]~input_o\ & (\V_SW[5]~input_o\ & ((\V_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \w0~0_combout\);

-- Location: LCCOMB_X29_Y3_N8
\c0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~1_combout\ = (\p1~0_combout\ & ((\c0~0_combout\) # ((\V_SW[4]~input_o\ & \V_SW[2]~input_o\)))) # (!\p1~0_combout\ & (\V_SW[4]~input_o\ & (\c0~0_combout\ & \V_SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \p1~0_combout\,
	datac => \c0~0_combout\,
	datad => \V_SW[2]~input_o\,
	combout => \c0~1_combout\);

-- Location: LCCOMB_X29_Y3_N2
\w1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~3_combout\ = \c1~0_combout\ $ (\p2~1_combout\ $ (\w0~0_combout\ $ (\c0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1~0_combout\,
	datab => \p2~1_combout\,
	datac => \w0~0_combout\,
	datad => \c0~1_combout\,
	combout => \w1~3_combout\);

-- Location: IOIBUF_X30_Y0_N22
\V_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(7),
	o => \V_SW[7]~input_o\);

-- Location: LCCOMB_X31_Y3_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (control(1) & (\V_SW[7]~input_o\ & (\V_SW[0]~input_o\))) # (!control(1) & (\V_SW[7]~input_o\ $ (((\V_SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \V_SW[0]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => control(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y3_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\control[0]~0_combout\ & (control(1))) # (!\control[0]~0_combout\ & (\Mux0~0_combout\ $ (((control(1) & \w1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \control[0]~0_combout\,
	datac => \w1~3_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X31_Y3_N18
\carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~2_combout\ = (\V_SW[0]~input_o\ & (\V_SW[2]~input_o\ & \V_SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[0]~input_o\,
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \carry~2_combout\);

-- Location: LCCOMB_X31_Y3_N4
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\control[0]~0_combout\ & (\V_SW[3]~input_o\ $ (((\carry~2_combout\) # (!\Mux0~1_combout\))))) # (!\control[0]~0_combout\ & (\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \control[0]~0_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \carry~2_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X32_Y3_N24
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\control[0]~0_combout\ & ((\carry~0_combout\))) # (!\control[0]~0_combout\ & (\carry~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry~1_combout\,
	datac => \carry~0_combout\,
	datad => \control[0]~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X32_Y3_N2
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & ((\V_SW[2]~input_o\) # (\V_SW[6]~input_o\ $ (\control[0]~0_combout\)))) # (!\Mux0~3_combout\ & (\V_SW[2]~input_o\ & (\V_SW[6]~input_o\ $ (\control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \V_SW[6]~input_o\,
	datac => \control[0]~0_combout\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X32_Y3_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = \V_SW[3]~input_o\ $ (((\Mux0~4_combout\ & !control(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \V_SW[3]~input_o\,
	datad => control(1),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X32_Y3_N8
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (control(1) & ((\Mux0~5_combout\ & ((\V_SW[7]~input_o\) # (\control[0]~0_combout\))) # (!\Mux0~5_combout\ & (\V_SW[7]~input_o\ & \control[0]~0_combout\)))) # (!control(1) & (\Mux0~5_combout\ $ (\V_SW[7]~input_o\ $ 
-- (\control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => control(1),
	datac => \V_SW[7]~input_o\,
	datad => \control[0]~0_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X31_Y3_N6
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (control(2) & (\Mux0~2_combout\)) # (!control(2) & ((\Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => control(2),
	datac => \Mux0~6_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X32_Y3_N14
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = control(1) $ (control(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datac => control(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X30_Y3_N20
\p2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~2_combout\ = (\V_SW[6]~input_o\ & \V_SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[2]~input_o\,
	combout => \p2~2_combout\);

-- Location: LCCOMB_X30_Y3_N28
\p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~1_combout\ = (\V_SW[2]~input_o\ & \V_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \p1~1_combout\);

-- Location: LCCOMB_X30_Y3_N18
\c0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~2_combout\ = (\c0~1_combout\ & ((\p1~1_combout\) # ((\V_SW[3]~input_o\ & \V_SW[4]~input_o\)))) # (!\c0~1_combout\ & (\p1~1_combout\ & (\V_SW[3]~input_o\ & \V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~1_combout\,
	datab => \p1~1_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \c0~2_combout\);

-- Location: LCCOMB_X30_Y3_N26
\w1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~4_combout\ = \p2~2_combout\ $ (\c0~2_combout\ $ (((\V_SW[5]~input_o\ & \V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \p2~2_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \c0~2_combout\,
	combout => \w1~4_combout\);

-- Location: LCCOMB_X31_Y3_N22
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

-- Location: LCCOMB_X29_Y3_N4
\c1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~1_combout\ = (\c1~0_combout\ & ((\p2~1_combout\) # (\w0~0_combout\ $ (\c0~1_combout\)))) # (!\c1~0_combout\ & (\p2~1_combout\ & (\w0~0_combout\ $ (\c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1~0_combout\,
	datab => \p2~1_combout\,
	datac => \w0~0_combout\,
	datad => \c0~1_combout\,
	combout => \c1~1_combout\);

-- Location: LCCOMB_X31_Y3_N24
\c2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~0_combout\ = (\V_SW[7]~input_o\ & (\V_SW[0]~input_o\ & \w1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \V_SW[0]~input_o\,
	datac => \w1~3_combout\,
	combout => \c2~0_combout\);

-- Location: LCCOMB_X30_Y3_N16
\w2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~0_combout\ = \w1~4_combout\ $ (\p3~0_combout\ $ (\c1~1_combout\ $ (\c2~0_combout\)))

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
	combout => \w2~0_combout\);

-- Location: LCCOMB_X32_Y3_N4
\carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~3_combout\ = (\V_SW[0]~input_o\ & (\V_SW[2]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[3]~input_o\,
	combout => \carry~3_combout\);

-- Location: LCCOMB_X32_Y3_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\V_SW[2]~input_o\ & ((\Mux0~3_combout\) # (\V_SW[6]~input_o\ $ (\control[0]~0_combout\)))) # (!\V_SW[2]~input_o\ & (\Mux0~3_combout\ & (\V_SW[6]~input_o\ $ (\control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[6]~input_o\,
	datab => \control[0]~0_combout\,
	datac => \V_SW[2]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X32_Y3_N0
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\V_SW[3]~input_o\ & ((\Mux9~0_combout\) # (\V_SW[7]~input_o\ $ (\control[0]~0_combout\)))) # (!\V_SW[3]~input_o\ & (\Mux9~0_combout\ & (\V_SW[7]~input_o\ $ (\control[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \control[0]~0_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X32_Y3_N10
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = \control[0]~0_combout\ $ (((!control(1) & \Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datac => \control[0]~0_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X32_Y3_N16
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (control(1) & ((\Mux9~2_combout\ & ((\carry~3_combout\))) # (!\Mux9~2_combout\ & (\w2~0_combout\)))) # (!control(1) & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~0_combout\,
	datab => \carry~3_combout\,
	datac => control(1),
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X32_Y3_N30
\G_LEDG[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG[4]$latch~combout\ = (\Mux8~0_combout\ & (\G_LEDG[4]$latch~combout\)) # (!\Mux8~0_combout\ & ((\Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~0_combout\,
	datac => \G_LEDG[4]$latch~combout\,
	datad => \Mux9~3_combout\,
	combout => \G_LEDG[4]$latch~combout\);

-- Location: LCCOMB_X30_Y3_N12
\p3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~1_combout\ = (\V_SW[7]~input_o\ & \V_SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[2]~input_o\,
	combout => \p3~1_combout\);

-- Location: LCCOMB_X30_Y3_N24
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

-- Location: LCCOMB_X30_Y3_N14
\w1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~5_combout\ = (\V_SW[3]~input_o\ & (\V_SW[6]~input_o\ $ (((\V_SW[5]~input_o\ & \c0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \c0~2_combout\,
	combout => \w1~5_combout\);

-- Location: LCCOMB_X30_Y3_N30
\p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~2_combout\ = (\V_SW[3]~input_o\ & \V_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \p1~2_combout\);

-- Location: LCCOMB_X30_Y3_N2
\c1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~2_combout\ = (\p2~2_combout\ & ((\c1~1_combout\) # (\p1~2_combout\ $ (\c0~2_combout\)))) # (!\p2~2_combout\ & (\c1~1_combout\ & (\p1~2_combout\ $ (\c0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~2_combout\,
	datab => \p2~2_combout\,
	datac => \c1~1_combout\,
	datad => \c0~2_combout\,
	combout => \c1~2_combout\);

-- Location: LCCOMB_X30_Y3_N22
\w2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~1_combout\ = \p3~1_combout\ $ (\c2~1_combout\ $ (\w1~5_combout\ $ (\c1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~1_combout\,
	datab => \c2~1_combout\,
	datac => \w1~5_combout\,
	datad => \c1~2_combout\,
	combout => \w2~1_combout\);

-- Location: LCCOMB_X32_Y3_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\control[0]~0_combout\ & (control(2) & control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[0]~0_combout\,
	datac => control(2),
	datad => control(1),
	combout => \Mux4~0_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X31_Y5_N0
\G_LEDG[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG[5]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\w2~1_combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\G_LEDG[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~1_combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \G_LEDG[5]$latch~combout\,
	combout => \G_LEDG[5]$latch~combout\);

-- Location: LCCOMB_X30_Y3_N8
\p2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~3_combout\ = (\V_SW[3]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[6]~input_o\,
	combout => \p2~3_combout\);

-- Location: LCCOMB_X30_Y3_N10
\c1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~3_combout\ = (\c1~2_combout\ & ((\p2~3_combout\) # ((\p1~2_combout\ & \c0~2_combout\)))) # (!\c1~2_combout\ & (\p1~2_combout\ & (\p2~3_combout\ & \c0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~2_combout\,
	datab => \c1~2_combout\,
	datac => \p2~3_combout\,
	datad => \c0~2_combout\,
	combout => \c1~3_combout\);

-- Location: LCCOMB_X30_Y3_N0
\c2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~2_combout\ = (\p3~1_combout\ & ((\c2~1_combout\) # (\w1~5_combout\ $ (\c1~2_combout\)))) # (!\p3~1_combout\ & (\c2~1_combout\ & (\w1~5_combout\ $ (\c1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~1_combout\,
	datab => \c2~1_combout\,
	datac => \w1~5_combout\,
	datad => \c1~2_combout\,
	combout => \c2~2_combout\);

-- Location: LCCOMB_X30_Y3_N6
\w2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~2_combout\ = \c1~3_combout\ $ (\c2~2_combout\ $ (((\V_SW[7]~input_o\ & \V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1~3_combout\,
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \c2~2_combout\,
	combout => \w2~2_combout\);

-- Location: LCCOMB_X30_Y5_N24
\G_LEDG[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \G_LEDG[6]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\w2~2_combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\G_LEDG[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~2_combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \G_LEDG[6]$latch~combout\,
	combout => \G_LEDG[6]$latch~combout\);

-- Location: LCCOMB_X30_Y3_N4
\c2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~3_combout\ = (\c1~3_combout\ & ((\c2~2_combout\) # ((\V_SW[7]~input_o\ & \V_SW[3]~input_o\)))) # (!\c1~3_combout\ & (\V_SW[7]~input_o\ & (\V_SW[3]~input_o\ & \c2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1~3_combout\,
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \c2~2_combout\,
	combout => \c2~3_combout\);

-- Location: LCCOMB_X30_Y5_N18
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


