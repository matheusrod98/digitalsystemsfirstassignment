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

-- DATE "09/02/2021 01:34:37"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	G_CLOCK_50 : IN std_logic;
	V_SW : IN std_logic_vector(7 DOWNTO 0);
	G_HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	G_HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	G_LEDG : OUT std_logic_vector(7 DOWNTO 0);
	V_BT : IN std_logic_vector(3 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- G_HEX0[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX5[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX5[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX5[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX5[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX5[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX5[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX5[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX7[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX7[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX7[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX7[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX7[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX7[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX7[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[7]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[4]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[6]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_CLOCK_50	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_G_CLOCK_50 : std_logic;
SIGNAL ww_V_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_G_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_V_BT : std_logic_vector(3 DOWNTO 0);
SIGNAL \G_CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \V_BT[2]~input_o\ : std_logic;
SIGNAL \V_BT[3]~input_o\ : std_logic;
SIGNAL \G_HEX0[0]~output_o\ : std_logic;
SIGNAL \G_HEX0[1]~output_o\ : std_logic;
SIGNAL \G_HEX0[2]~output_o\ : std_logic;
SIGNAL \G_HEX0[3]~output_o\ : std_logic;
SIGNAL \G_HEX0[4]~output_o\ : std_logic;
SIGNAL \G_HEX0[5]~output_o\ : std_logic;
SIGNAL \G_HEX0[6]~output_o\ : std_logic;
SIGNAL \G_HEX1[0]~output_o\ : std_logic;
SIGNAL \G_HEX1[1]~output_o\ : std_logic;
SIGNAL \G_HEX1[2]~output_o\ : std_logic;
SIGNAL \G_HEX1[3]~output_o\ : std_logic;
SIGNAL \G_HEX1[4]~output_o\ : std_logic;
SIGNAL \G_HEX1[5]~output_o\ : std_logic;
SIGNAL \G_HEX1[6]~output_o\ : std_logic;
SIGNAL \G_HEX2[0]~output_o\ : std_logic;
SIGNAL \G_HEX2[1]~output_o\ : std_logic;
SIGNAL \G_HEX2[2]~output_o\ : std_logic;
SIGNAL \G_HEX2[3]~output_o\ : std_logic;
SIGNAL \G_HEX2[4]~output_o\ : std_logic;
SIGNAL \G_HEX2[5]~output_o\ : std_logic;
SIGNAL \G_HEX2[6]~output_o\ : std_logic;
SIGNAL \G_HEX4[0]~output_o\ : std_logic;
SIGNAL \G_HEX4[1]~output_o\ : std_logic;
SIGNAL \G_HEX4[2]~output_o\ : std_logic;
SIGNAL \G_HEX4[3]~output_o\ : std_logic;
SIGNAL \G_HEX4[4]~output_o\ : std_logic;
SIGNAL \G_HEX4[5]~output_o\ : std_logic;
SIGNAL \G_HEX4[6]~output_o\ : std_logic;
SIGNAL \G_HEX6[0]~output_o\ : std_logic;
SIGNAL \G_HEX6[1]~output_o\ : std_logic;
SIGNAL \G_HEX6[2]~output_o\ : std_logic;
SIGNAL \G_HEX6[3]~output_o\ : std_logic;
SIGNAL \G_HEX6[4]~output_o\ : std_logic;
SIGNAL \G_HEX6[5]~output_o\ : std_logic;
SIGNAL \G_HEX6[6]~output_o\ : std_logic;
SIGNAL \G_HEX5[0]~output_o\ : std_logic;
SIGNAL \G_HEX5[1]~output_o\ : std_logic;
SIGNAL \G_HEX5[2]~output_o\ : std_logic;
SIGNAL \G_HEX5[3]~output_o\ : std_logic;
SIGNAL \G_HEX5[4]~output_o\ : std_logic;
SIGNAL \G_HEX5[5]~output_o\ : std_logic;
SIGNAL \G_HEX5[6]~output_o\ : std_logic;
SIGNAL \G_HEX7[0]~output_o\ : std_logic;
SIGNAL \G_HEX7[1]~output_o\ : std_logic;
SIGNAL \G_HEX7[2]~output_o\ : std_logic;
SIGNAL \G_HEX7[3]~output_o\ : std_logic;
SIGNAL \G_HEX7[4]~output_o\ : std_logic;
SIGNAL \G_HEX7[5]~output_o\ : std_logic;
SIGNAL \G_HEX7[6]~output_o\ : std_logic;
SIGNAL \G_LEDG[0]~output_o\ : std_logic;
SIGNAL \G_LEDG[1]~output_o\ : std_logic;
SIGNAL \G_LEDG[2]~output_o\ : std_logic;
SIGNAL \G_LEDG[3]~output_o\ : std_logic;
SIGNAL \G_LEDG[4]~output_o\ : std_logic;
SIGNAL \G_LEDG[5]~output_o\ : std_logic;
SIGNAL \G_LEDG[6]~output_o\ : std_logic;
SIGNAL \G_LEDG[7]~output_o\ : std_logic;
SIGNAL \V_SW[7]~input_o\ : std_logic;
SIGNAL \G_CLOCK_50~input_o\ : std_logic;
SIGNAL \G_CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \V_BT[1]~input_o\ : std_logic;
SIGNAL \V_BT[0]~input_o\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \start~q\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \secondsCounted~18_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \secondsCounted~17_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \secondsCounted~16_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \secondsCounted~15_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \secondsCounted~14_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \secondsCounted~13_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \secondsCounted~12_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \secondsCounted~11_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \secondsCounted~10_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \secondsCounted~9_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \secondsCounted~8_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \secondsCounted~7_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \secondsCounted~6_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \secondsCounted~5_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \secondsCounted~4_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \secondsCounted~3_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \secondsCounted~2_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \secondsCounted~19_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \control~3_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \Equal2~11_combout\ : std_logic;
SIGNAL \control[2]~1_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \control[2]~2_combout\ : std_logic;
SIGNAL \V_SW[5]~input_o\ : std_logic;
SIGNAL \V_SW[0]~input_o\ : std_logic;
SIGNAL \V_SW[1]~input_o\ : std_logic;
SIGNAL \V_SW[4]~input_o\ : std_logic;
SIGNAL \carry~2_combout\ : std_logic;
SIGNAL \V_SW[6]~input_o\ : std_logic;
SIGNAL \V_SW[2]~input_o\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \carry~4_combout\ : std_logic;
SIGNAL \Mux55~13_combout\ : std_logic;
SIGNAL \control~0_combout\ : std_logic;
SIGNAL \Mux55~10_combout\ : std_logic;
SIGNAL \V_SW[3]~input_o\ : std_logic;
SIGNAL \Mux55~11_combout\ : std_logic;
SIGNAL \control~4_combout\ : std_logic;
SIGNAL \Mux55~8_combout\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \w0~0_combout\ : std_logic;
SIGNAL \p2~0_combout\ : std_logic;
SIGNAL \c0~0_combout\ : std_logic;
SIGNAL \p0~0_combout\ : std_logic;
SIGNAL \p1~1_combout\ : std_logic;
SIGNAL \p2~1_combout\ : std_logic;
SIGNAL \c1~0_combout\ : std_logic;
SIGNAL \c0~1_combout\ : std_logic;
SIGNAL \w1~3_combout\ : std_logic;
SIGNAL \w2~3_combout\ : std_logic;
SIGNAL \Mux55~9_combout\ : std_logic;
SIGNAL \Mux55~12_combout\ : std_logic;
SIGNAL \p3~1_combout\ : std_logic;
SIGNAL \c2~0_combout\ : std_logic;
SIGNAL \c1~1_combout\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \p1~0_combout\ : std_logic;
SIGNAL \c0~2_combout\ : std_logic;
SIGNAL \w1~2_combout\ : std_logic;
SIGNAL \c2~1_combout\ : std_logic;
SIGNAL \p1~2_combout\ : std_logic;
SIGNAL \c1~2_combout\ : std_logic;
SIGNAL \w1~5_combout\ : std_logic;
SIGNAL \p3~0_combout\ : std_logic;
SIGNAL \w2~0_combout\ : std_logic;
SIGNAL \c2~2_combout\ : std_logic;
SIGNAL \p2~2_combout\ : std_logic;
SIGNAL \c1~3_combout\ : std_logic;
SIGNAL \c2~3_combout\ : std_logic;
SIGNAL \w2~1_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \carry~5_combout\ : std_logic;
SIGNAL \carry~6_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \carry~1_combout\ : std_logic;
SIGNAL \w2~2_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~6_combout\ : std_logic;
SIGNAL \w1~4_combout\ : std_logic;
SIGNAL \Mux56~8_combout\ : std_logic;
SIGNAL \Mux56~7_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \temp~12_combout\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \Mux57~6_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~7_combout\ : std_logic;
SIGNAL \temp~11_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \reset~0_combout\ : std_logic;
SIGNAL \reset~q\ : std_logic;
SIGNAL \u[1]~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \u[3]~2_combout\ : std_logic;
SIGNAL \u[2]~1_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \temp~13_combout\ : std_logic;
SIGNAL \temp~16_combout\ : std_logic;
SIGNAL \temp~15_combout\ : std_logic;
SIGNAL \temp~14_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \t[1]~1_combout\ : std_logic;
SIGNAL \t[2]~2_combout\ : std_logic;
SIGNAL \t[2]~3_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \t[0]~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \temp~17_combout\ : std_logic;
SIGNAL \t[3]~4_combout\ : std_logic;
SIGNAL \t[3]~5_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \h[1]~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \h[0]~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Mux50~5_combout\ : std_logic;
SIGNAL \Mux50~6_combout\ : std_logic;
SIGNAL \Mux50~7_combout\ : std_logic;
SIGNAL secondsCounted : std_logic_vector(25 DOWNTO 0);
SIGNAL control : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_h[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_G_CLOCK_50 <= G_CLOCK_50;
ww_V_SW <= V_SW;
G_HEX0 <= ww_G_HEX0;
G_HEX1 <= ww_G_HEX1;
G_HEX2 <= ww_G_HEX2;
G_HEX4 <= ww_G_HEX4;
G_HEX6 <= ww_G_HEX6;
G_HEX5 <= ww_G_HEX5;
G_HEX7 <= ww_G_HEX7;
G_LEDG <= ww_G_LEDG;
ww_V_BT <= V_BT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\G_CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G_CLOCK_50~input_o\);
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_h[1]~0_combout\ <= NOT \h[1]~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y19_N16
\G_HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[0]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\G_HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[1]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\G_HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\G_HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\G_HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\G_HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[5]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\G_HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX0[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\G_HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\G_HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\G_HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\G_HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\G_HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\G_HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\G_HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX1[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\G_HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\G_HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX2[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\G_HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~1_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\G_HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\G_HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h[0]~1_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\G_HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\G_HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_h[1]~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\G_HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[0]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\G_HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\G_HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[2]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\G_HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\G_HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\G_HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\G_HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux21~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX4[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\G_HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\G_HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\G_HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\G_HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\G_HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\G_HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\G_HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux32~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\G_HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux31~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\G_HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX5[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\G_HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX5[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\G_HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux31~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\G_HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux31~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\G_HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux31~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX5[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\G_HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G_HEX5[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\G_HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux42~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\G_HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX7[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\G_HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G_HEX7[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\G_HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux42~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\G_HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux42~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\G_HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux42~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX7[5]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\G_HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G_HEX7[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\G_LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~1_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\G_LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~2_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\G_LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~3_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\G_LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~4_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\G_LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~5_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\G_LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~6_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[5]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\G_LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~0_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\G_LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~7_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[7]~output_o\);

-- Location: IOIBUF_X25_Y0_N22
\V_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(7),
	o => \V_SW[7]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\G_CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G_CLOCK_50,
	o => \G_CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
\G_CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G_CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G_CLOCK_50~inputclkctrl_outclk\);

-- Location: FF_X31_Y10_N23
\secondsCounted[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(24));

-- Location: IOIBUF_X34_Y11_N8
\V_BT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(1),
	o => \V_BT[1]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\V_BT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(0),
	o => \V_BT[0]~input_o\);

-- Location: LCCOMB_X30_Y11_N26
\start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start~0_combout\ = (!\V_BT[0]~input_o\) # (!\V_BT[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_BT[1]~input_o\,
	datac => \V_BT[0]~input_o\,
	combout => \start~0_combout\);

-- Location: FF_X31_Y11_N7
start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	asdata => \V_BT[1]~input_o\,
	sload => VCC,
	ena => \start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start~q\);

-- Location: LCCOMB_X31_Y11_N6
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\start~q\ & (secondsCounted(0) $ (VCC))) # (!\start~q\ & (secondsCounted(0) & VCC))
-- \Add7~1\ = CARRY((\start~q\ & secondsCounted(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~q\,
	datab => secondsCounted(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X30_Y11_N6
\secondsCounted~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~18_combout\ = (\Add7~0_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~18_combout\);

-- Location: FF_X30_Y11_N7
\secondsCounted[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(0));

-- Location: LCCOMB_X31_Y11_N8
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (secondsCounted(1) & (!\Add7~1\)) # (!secondsCounted(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!secondsCounted(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X30_Y11_N16
\secondsCounted~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~17_combout\ = (\Add7~2_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~2_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~17_combout\);

-- Location: FF_X30_Y11_N17
\secondsCounted[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(1));

-- Location: LCCOMB_X31_Y11_N10
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (secondsCounted(2) & (\Add7~3\ $ (GND))) # (!secondsCounted(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((secondsCounted(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X30_Y11_N14
\secondsCounted~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~16_combout\ = (\Add7~4_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~4_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~16_combout\);

-- Location: FF_X30_Y11_N15
\secondsCounted[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(2));

-- Location: LCCOMB_X31_Y11_N12
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (secondsCounted(3) & (!\Add7~5\)) # (!secondsCounted(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!secondsCounted(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X31_Y11_N2
\secondsCounted~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~15_combout\ = (\Add7~6_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~15_combout\);

-- Location: FF_X31_Y11_N3
\secondsCounted[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(3));

-- Location: LCCOMB_X31_Y11_N14
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (secondsCounted(4) & (\Add7~7\ $ (GND))) # (!secondsCounted(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((secondsCounted(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X30_Y11_N12
\secondsCounted~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~14_combout\ = (\Add7~8_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~8_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~14_combout\);

-- Location: FF_X30_Y11_N13
\secondsCounted[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(4));

-- Location: LCCOMB_X31_Y11_N16
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (secondsCounted(5) & (!\Add7~9\)) # (!secondsCounted(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!secondsCounted(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X31_Y11_N4
\secondsCounted~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~13_combout\ = (\Add7~10_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~10_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~13_combout\);

-- Location: FF_X31_Y11_N5
\secondsCounted[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(5));

-- Location: LCCOMB_X31_Y11_N18
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (secondsCounted(6) & (\Add7~11\ $ (GND))) # (!secondsCounted(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((secondsCounted(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X30_Y11_N10
\secondsCounted~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~12_combout\ = (\Add7~12_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~12_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~12_combout\);

-- Location: FF_X30_Y11_N11
\secondsCounted[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(6));

-- Location: LCCOMB_X31_Y11_N20
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (secondsCounted(7) & (!\Add7~13\)) # (!secondsCounted(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!secondsCounted(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: FF_X31_Y11_N21
\secondsCounted[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(7));

-- Location: LCCOMB_X31_Y11_N22
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (secondsCounted(8) & (\Add7~15\ $ (GND))) # (!secondsCounted(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((secondsCounted(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: FF_X31_Y11_N23
\secondsCounted[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(8));

-- Location: LCCOMB_X31_Y11_N24
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (secondsCounted(9) & (!\Add7~17\)) # (!secondsCounted(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!secondsCounted(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: FF_X31_Y11_N25
\secondsCounted[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(9));

-- Location: LCCOMB_X31_Y11_N26
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (secondsCounted(10) & (\Add7~19\ $ (GND))) # (!secondsCounted(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((secondsCounted(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: FF_X31_Y11_N27
\secondsCounted[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(10));

-- Location: LCCOMB_X31_Y11_N28
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (secondsCounted(11) & (!\Add7~21\)) # (!secondsCounted(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!secondsCounted(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: FF_X31_Y11_N29
\secondsCounted[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(11));

-- Location: LCCOMB_X31_Y11_N30
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (secondsCounted(12) & (\Add7~23\ $ (GND))) # (!secondsCounted(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((secondsCounted(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X30_Y11_N4
\secondsCounted~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~11_combout\ = (\Add7~24_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~24_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~11_combout\);

-- Location: FF_X30_Y11_N5
\secondsCounted[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(12));

-- Location: LCCOMB_X31_Y10_N0
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (secondsCounted(13) & (!\Add7~25\)) # (!secondsCounted(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!secondsCounted(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X31_Y10_N26
\secondsCounted~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~10_combout\ = (\Add7~26_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~26_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~10_combout\);

-- Location: FF_X31_Y10_N27
\secondsCounted[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(13));

-- Location: LCCOMB_X31_Y10_N2
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (secondsCounted(14) & (\Add7~27\ $ (GND))) # (!secondsCounted(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((secondsCounted(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X32_Y10_N2
\secondsCounted~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~9_combout\ = (\Add7~28_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~28_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~9_combout\);

-- Location: FF_X32_Y10_N3
\secondsCounted[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(14));

-- Location: LCCOMB_X31_Y10_N4
\Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (secondsCounted(15) & (!\Add7~29\)) # (!secondsCounted(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!secondsCounted(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X32_Y10_N4
\secondsCounted~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~8_combout\ = (\Add7~30_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~30_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~8_combout\);

-- Location: FF_X32_Y10_N5
\secondsCounted[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(15));

-- Location: LCCOMB_X31_Y10_N6
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (secondsCounted(16) & (\Add7~31\ $ (GND))) # (!secondsCounted(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((secondsCounted(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: FF_X31_Y10_N7
\secondsCounted[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(16));

-- Location: LCCOMB_X31_Y10_N8
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (secondsCounted(17) & (!\Add7~33\)) # (!secondsCounted(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!secondsCounted(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X29_Y10_N6
\secondsCounted~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~7_combout\ = (!\Equal2~8_combout\ & \Add7~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add7~34_combout\,
	combout => \secondsCounted~7_combout\);

-- Location: FF_X29_Y10_N7
\secondsCounted[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(17));

-- Location: LCCOMB_X31_Y10_N10
\Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (secondsCounted(18) & (\Add7~35\ $ (GND))) # (!secondsCounted(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((secondsCounted(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: FF_X31_Y10_N11
\secondsCounted[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \Add7~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(18));

-- Location: LCCOMB_X31_Y10_N12
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (secondsCounted(19) & (!\Add7~37\)) # (!secondsCounted(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!secondsCounted(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X29_Y10_N0
\secondsCounted~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~6_combout\ = (!\Equal2~8_combout\ & \Add7~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add7~38_combout\,
	combout => \secondsCounted~6_combout\);

-- Location: FF_X29_Y10_N1
\secondsCounted[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(19));

-- Location: LCCOMB_X31_Y10_N14
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (secondsCounted(20) & (\Add7~39\ $ (GND))) # (!secondsCounted(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((secondsCounted(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X30_Y10_N26
\secondsCounted~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~5_combout\ = (\Add7~40_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~40_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~5_combout\);

-- Location: FF_X30_Y10_N27
\secondsCounted[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(20));

-- Location: LCCOMB_X31_Y10_N16
\Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (secondsCounted(21) & (!\Add7~41\)) # (!secondsCounted(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!secondsCounted(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X30_Y10_N4
\secondsCounted~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~4_combout\ = (\Add7~42_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~4_combout\);

-- Location: FF_X30_Y10_N5
\secondsCounted[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(21));

-- Location: LCCOMB_X31_Y10_N18
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (secondsCounted(22) & (\Add7~43\ $ (GND))) # (!secondsCounted(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((secondsCounted(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X30_Y10_N22
\secondsCounted~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~3_combout\ = (\Add7~44_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~44_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~3_combout\);

-- Location: FF_X30_Y10_N23
\secondsCounted[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(22));

-- Location: LCCOMB_X31_Y10_N20
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (secondsCounted(23) & (!\Add7~45\)) # (!secondsCounted(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!secondsCounted(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X30_Y10_N16
\secondsCounted~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~2_combout\ = (\Add7~46_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~46_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~2_combout\);

-- Location: FF_X30_Y10_N17
\secondsCounted[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(23));

-- Location: LCCOMB_X31_Y10_N22
\Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (secondsCounted(24) & (\Add7~47\ $ (GND))) # (!secondsCounted(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((secondsCounted(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X30_Y10_N30
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (\Add7~46_combout\ & \Add7~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~46_combout\,
	datad => \Add7~42_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X31_Y10_N28
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Add7~24_combout\ & (\Add7~28_combout\ & (\Add7~30_combout\ & \Add7~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~24_combout\,
	datab => \Add7~28_combout\,
	datac => \Add7~30_combout\,
	datad => \Add7~26_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X30_Y11_N24
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Add7~0_combout\ & (\Add7~2_combout\ & (\Add7~4_combout\ & \Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add7~2_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~6_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X30_Y11_N30
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\Add7~18_combout\ & (!\Add7~22_combout\ & (!\Add7~16_combout\ & !\Add7~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \Add7~22_combout\,
	datac => \Add7~16_combout\,
	datad => \Add7~20_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X31_Y11_N0
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\Add7~14_combout\ & (\Add7~10_combout\ & (\Add7~8_combout\ & \Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \Add7~10_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~12_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X30_Y10_N12
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!\Add7~32_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~32_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X30_Y10_N2
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Add7~34_combout\ & (\Equal2~0_combout\ & (!\Add7~36_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~34_combout\,
	datab => \Equal2~0_combout\,
	datac => \Add7~36_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X30_Y10_N28
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (\Add7~38_combout\ & (\Add7~44_combout\ & (\Add7~40_combout\ & \Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~38_combout\,
	datab => \Add7~44_combout\,
	datac => \Add7~40_combout\,
	datad => \Equal2~5_combout\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X30_Y10_N14
\secondsCounted~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~19_combout\ = (\Add7~50_combout\ & ((\Add7~48_combout\) # ((!\Equal2~6_combout\) # (!\Equal2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~50_combout\,
	datab => \Add7~48_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~6_combout\,
	combout => \secondsCounted~19_combout\);

-- Location: FF_X30_Y10_N15
\secondsCounted[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \secondsCounted~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => secondsCounted(25));

-- Location: LCCOMB_X31_Y10_N24
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = \Add7~49\ $ (secondsCounted(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => secondsCounted(25),
	cin => \Add7~49\,
	combout => \Add7~50_combout\);

-- Location: LCCOMB_X30_Y10_N0
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (\Add7~50_combout\ & (!\Add7~48_combout\ & (\Equal2~7_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~50_combout\,
	datab => \Add7~48_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X30_Y10_N6
\control~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control~3_combout\ = (!control(0) & \Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => control(0),
	datad => \Equal2~8_combout\,
	combout => \control~3_combout\);

-- Location: LCCOMB_X31_Y10_N30
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (!\Add7~32_combout\ & (\Add7~34_combout\ & (!\Add7~36_combout\ & \Add7~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~32_combout\,
	datab => \Add7~34_combout\,
	datac => \Add7~36_combout\,
	datad => \Add7~38_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X30_Y10_N10
\Equal2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~11_combout\ = (\Add7~42_combout\ & (\Add7~40_combout\ & (\Add7~46_combout\ & \Add7~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datab => \Add7~40_combout\,
	datac => \Add7~46_combout\,
	datad => \Add7~44_combout\,
	combout => \Equal2~11_combout\);

-- Location: LCCOMB_X30_Y10_N8
\control[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control[2]~1_combout\ = (\Equal2~10_combout\ & (\Add7~50_combout\ & \Equal2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datac => \Add7~50_combout\,
	datad => \Equal2~11_combout\,
	combout => \control[2]~1_combout\);

-- Location: LCCOMB_X30_Y11_N28
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~3_combout\ & (\Equal2~1_combout\ & (\Equal2~0_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X30_Y10_N18
\control[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control[2]~2_combout\ = ((!\Add7~48_combout\ & (\control[2]~1_combout\ & \Equal2~9_combout\))) # (!\start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~q\,
	datab => \Add7~48_combout\,
	datac => \control[2]~1_combout\,
	datad => \Equal2~9_combout\,
	combout => \control[2]~2_combout\);

-- Location: FF_X30_Y10_N7
\control[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \control~3_combout\,
	ena => \control[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => control(0));

-- Location: IOIBUF_X23_Y0_N15
\V_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(5),
	o => \V_SW[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\V_SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(0),
	o => \V_SW[0]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\V_SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(1),
	o => \V_SW[1]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\V_SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(4),
	o => \V_SW[4]~input_o\);

-- Location: LCCOMB_X29_Y4_N18
\carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~2_combout\ = (\V_SW[5]~input_o\ & (\V_SW[1]~input_o\ & ((\V_SW[0]~input_o\) # (!\V_SW[4]~input_o\)))) # (!\V_SW[5]~input_o\ & ((\V_SW[0]~input_o\) # ((\V_SW[1]~input_o\) # (!\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[0]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \carry~2_combout\);

-- Location: IOIBUF_X25_Y0_N8
\V_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(6),
	o => \V_SW[6]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\V_SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(2),
	o => \V_SW[2]~input_o\);

-- Location: LCCOMB_X29_Y6_N20
\carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~3_combout\ = (\carry~2_combout\ & ((\V_SW[2]~input_o\) # (!\V_SW[6]~input_o\))) # (!\carry~2_combout\ & (!\V_SW[6]~input_o\ & \V_SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~2_combout\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \carry~3_combout\);

-- Location: LCCOMB_X29_Y4_N8
\carry~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~4_combout\ = (\V_SW[5]~input_o\ & ((\V_SW[1]~input_o\) # ((\V_SW[0]~input_o\ & \V_SW[4]~input_o\)))) # (!\V_SW[5]~input_o\ & (\V_SW[0]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[0]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \carry~4_combout\);

-- Location: LCCOMB_X29_Y6_N30
\Mux55~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~13_combout\ = (\carry~4_combout\ & ((\V_SW[6]~input_o\) # (\V_SW[2]~input_o\))) # (!\carry~4_combout\ & (\V_SW[6]~input_o\ & \V_SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry~4_combout\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux55~13_combout\);

-- Location: LCCOMB_X30_Y10_N24
\control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control~0_combout\ = (\Equal2~8_combout\ & (control(0) $ (control(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(1),
	datad => \Equal2~8_combout\,
	combout => \control~0_combout\);

-- Location: FF_X30_Y10_N25
\control[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \control~0_combout\,
	ena => \control[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => control(1));

-- Location: LCCOMB_X29_Y6_N16
\Mux55~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~10_combout\ = (control(0) & (((control(1))) # (!\carry~3_combout\))) # (!control(0) & (((\Mux55~13_combout\ & !control(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \carry~3_combout\,
	datac => \Mux55~13_combout\,
	datad => control(1),
	combout => \Mux55~10_combout\);

-- Location: IOIBUF_X30_Y0_N8
\V_SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(3),
	o => \V_SW[3]~input_o\);

-- Location: LCCOMB_X29_Y6_N22
\Mux55~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~11_combout\ = (control(1) & ((\V_SW[7]~input_o\ & ((\Mux55~10_combout\) # (\V_SW[3]~input_o\))) # (!\V_SW[7]~input_o\ & (\Mux55~10_combout\ & \V_SW[3]~input_o\)))) # (!control(1) & (\V_SW[7]~input_o\ $ (\Mux55~10_combout\ $ (\V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \Mux55~10_combout\,
	datac => \V_SW[3]~input_o\,
	datad => control(1),
	combout => \Mux55~11_combout\);

-- Location: LCCOMB_X30_Y10_N20
\control~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control~4_combout\ = (\Equal2~8_combout\ & (control(2) $ (((control(0) & control(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => control(1),
	datac => control(2),
	datad => \Equal2~8_combout\,
	combout => \control~4_combout\);

-- Location: FF_X30_Y10_N21
\control[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \control~4_combout\,
	ena => \control[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => control(2));

-- Location: LCCOMB_X29_Y4_N12
\Mux55~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~8_combout\ = (control(1) & (((control(0))))) # (!control(1) & (\V_SW[3]~input_o\ $ (((control(0)) # (\V_SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => control(0),
	datac => control(1),
	datad => \V_SW[7]~input_o\,
	combout => \Mux55~8_combout\);

-- Location: LCCOMB_X29_Y4_N26
\s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s~0_combout\ = \V_SW[3]~input_o\ $ (((\V_SW[2]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \s~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\w0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w0~0_combout\ = (\V_SW[3]~input_o\ & (\V_SW[4]~input_o\ $ (((\V_SW[2]~input_o\ & \V_SW[5]~input_o\))))) # (!\V_SW[3]~input_o\ & (\V_SW[2]~input_o\ & (\V_SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \w0~0_combout\);

-- Location: LCCOMB_X28_Y4_N16
\p2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~0_combout\ = (\V_SW[6]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \p2~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~0_combout\ = (\V_SW[0]~input_o\ & (\V_SW[4]~input_o\ & (\V_SW[5]~input_o\ & \V_SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \c0~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
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

-- Location: LCCOMB_X28_Y4_N30
\p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~1_combout\ = (\V_SW[5]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \p1~1_combout\);

-- Location: LCCOMB_X28_Y4_N2
\p2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~1_combout\ = (\V_SW[0]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datac => \V_SW[6]~input_o\,
	combout => \p2~1_combout\);

-- Location: LCCOMB_X28_Y4_N22
\c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~0_combout\ = (\p2~1_combout\ & (\c0~0_combout\ $ (\p0~0_combout\ $ (\p1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~0_combout\,
	datab => \p0~0_combout\,
	datac => \p1~1_combout\,
	datad => \p2~1_combout\,
	combout => \c1~0_combout\);

-- Location: LCCOMB_X28_Y4_N6
\c0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~1_combout\ = (\c0~0_combout\ & ((\p1~1_combout\) # ((\V_SW[2]~input_o\ & \V_SW[4]~input_o\)))) # (!\c0~0_combout\ & (\V_SW[2]~input_o\ & (\p1~1_combout\ & \V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~0_combout\,
	datab => \V_SW[2]~input_o\,
	datac => \p1~1_combout\,
	datad => \V_SW[4]~input_o\,
	combout => \c0~1_combout\);

-- Location: LCCOMB_X28_Y4_N14
\w1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~3_combout\ = \w0~0_combout\ $ (\p2~0_combout\ $ (\c1~0_combout\ $ (\c0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w0~0_combout\,
	datab => \p2~0_combout\,
	datac => \c1~0_combout\,
	datad => \c0~1_combout\,
	combout => \w1~3_combout\);

-- Location: LCCOMB_X29_Y4_N10
\w2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~3_combout\ = \w1~3_combout\ $ (((\V_SW[7]~input_o\ & \V_SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1~3_combout\,
	datab => \V_SW[7]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \w2~3_combout\);

-- Location: LCCOMB_X29_Y4_N16
\Mux55~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~9_combout\ = (\Mux55~8_combout\ & (((\s~0_combout\)) # (!control(1)))) # (!\Mux55~8_combout\ & (control(1) & ((\w2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~8_combout\,
	datab => control(1),
	datac => \s~0_combout\,
	datad => \w2~3_combout\,
	combout => \Mux55~9_combout\);

-- Location: LCCOMB_X29_Y9_N10
\Mux55~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~12_combout\ = (control(2) & ((\Mux55~9_combout\))) # (!control(2) & (\Mux55~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~11_combout\,
	datac => control(2),
	datad => \Mux55~9_combout\,
	combout => \Mux55~12_combout\);

-- Location: LCCOMB_X30_Y8_N4
\p3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~1_combout\ = (\V_SW[7]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[7]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \p3~1_combout\);

-- Location: LCCOMB_X29_Y4_N0
\c2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~0_combout\ = (\w1~3_combout\ & (\V_SW[7]~input_o\ & \V_SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1~3_combout\,
	datab => \V_SW[7]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \c2~0_combout\);

-- Location: LCCOMB_X28_Y4_N0
\c1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~1_combout\ = (\p2~0_combout\ & ((\c1~0_combout\) # (\w0~0_combout\ $ (\c0~1_combout\)))) # (!\p2~0_combout\ & (\c1~0_combout\ & (\w0~0_combout\ $ (\c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w0~0_combout\,
	datab => \p2~0_combout\,
	datac => \c1~0_combout\,
	datad => \c0~1_combout\,
	combout => \c1~1_combout\);

-- Location: LCCOMB_X29_Y5_N14
\carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = (\V_SW[2]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[6]~input_o\,
	combout => \carry~0_combout\);

-- Location: LCCOMB_X28_Y4_N4
\p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~0_combout\ = (\V_SW[2]~input_o\ & \V_SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[5]~input_o\,
	combout => \p1~0_combout\);

-- Location: LCCOMB_X28_Y4_N28
\c0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~2_combout\ = (\c0~1_combout\ & ((\p1~0_combout\) # ((\V_SW[3]~input_o\ & \V_SW[4]~input_o\)))) # (!\c0~1_combout\ & (\p1~0_combout\ & (\V_SW[3]~input_o\ & \V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~1_combout\,
	datab => \p1~0_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \c0~2_combout\);

-- Location: LCCOMB_X29_Y5_N24
\w1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~2_combout\ = \carry~0_combout\ $ (\c0~2_combout\ $ (((\V_SW[5]~input_o\ & \V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \carry~0_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \c0~2_combout\,
	combout => \w1~2_combout\);

-- Location: LCCOMB_X29_Y5_N22
\c2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~1_combout\ = (\p3~1_combout\ & ((\c2~0_combout\) # (\c1~1_combout\ $ (\w1~2_combout\)))) # (!\p3~1_combout\ & (\c2~0_combout\ & (\c1~1_combout\ $ (\w1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~1_combout\,
	datab => \c2~0_combout\,
	datac => \c1~1_combout\,
	datad => \w1~2_combout\,
	combout => \c2~1_combout\);

-- Location: LCCOMB_X29_Y5_N20
\p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1~2_combout\ = (\V_SW[5]~input_o\ & \V_SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datac => \V_SW[3]~input_o\,
	combout => \p1~2_combout\);

-- Location: LCCOMB_X29_Y5_N28
\c1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~2_combout\ = (\c1~1_combout\ & ((\carry~0_combout\) # (\c0~2_combout\ $ (\p1~2_combout\)))) # (!\c1~1_combout\ & (\carry~0_combout\ & (\c0~2_combout\ $ (\p1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1~1_combout\,
	datab => \carry~0_combout\,
	datac => \c0~2_combout\,
	datad => \p1~2_combout\,
	combout => \c1~2_combout\);

-- Location: LCCOMB_X29_Y5_N30
\w1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~5_combout\ = (\V_SW[3]~input_o\ & (\V_SW[6]~input_o\ $ (((\c0~2_combout\ & \V_SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[6]~input_o\,
	datab => \c0~2_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \w1~5_combout\);

-- Location: LCCOMB_X29_Y5_N6
\p3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~0_combout\ = (\V_SW[7]~input_o\ & \V_SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[2]~input_o\,
	combout => \p3~0_combout\);

-- Location: LCCOMB_X29_Y5_N4
\w2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~0_combout\ = \c2~1_combout\ $ (\c1~2_combout\ $ (\w1~5_combout\ $ (\p3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~1_combout\,
	datab => \c1~2_combout\,
	datac => \w1~5_combout\,
	datad => \p3~0_combout\,
	combout => \w2~0_combout\);

-- Location: LCCOMB_X29_Y5_N12
\c2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~2_combout\ = (\c2~1_combout\ & ((\p3~0_combout\) # (\c1~2_combout\ $ (\w1~5_combout\)))) # (!\c2~1_combout\ & (\p3~0_combout\ & (\c1~2_combout\ $ (\w1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~1_combout\,
	datab => \c1~2_combout\,
	datac => \w1~5_combout\,
	datad => \p3~0_combout\,
	combout => \c2~2_combout\);

-- Location: LCCOMB_X29_Y5_N10
\p2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~2_combout\ = (\V_SW[3]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[6]~input_o\,
	combout => \p2~2_combout\);

-- Location: LCCOMB_X29_Y5_N16
\c1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~3_combout\ = (\p2~2_combout\ & ((\c1~2_combout\) # ((\p1~2_combout\ & \c0~2_combout\)))) # (!\p2~2_combout\ & (\p1~2_combout\ & (\c0~2_combout\ & \c1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~2_combout\,
	datab => \p1~2_combout\,
	datac => \c0~2_combout\,
	datad => \c1~2_combout\,
	combout => \c1~3_combout\);

-- Location: LCCOMB_X29_Y5_N18
\c2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~3_combout\ = (\c2~2_combout\ & ((\c1~3_combout\) # ((\V_SW[7]~input_o\ & \V_SW[3]~input_o\)))) # (!\c2~2_combout\ & (\V_SW[7]~input_o\ & (\V_SW[3]~input_o\ & \c1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~2_combout\,
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \c1~3_combout\,
	combout => \c2~3_combout\);

-- Location: LCCOMB_X29_Y5_N26
\w2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~1_combout\ = \c2~2_combout\ $ (\c1~3_combout\ $ (((\V_SW[7]~input_o\ & \V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~2_combout\,
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \c1~3_combout\,
	combout => \w2~1_combout\);

-- Location: LCCOMB_X30_Y7_N16
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (!control(0) & (control(1) & control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(1),
	datad => control(2),
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X29_Y9_N30
\temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = (\w2~1_combout\ & (\Mux50~0_combout\ & ((\w2~0_combout\) # (!\c2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~0_combout\,
	datab => \c2~3_combout\,
	datac => \w2~1_combout\,
	datad => \Mux50~0_combout\,
	combout => \temp~1_combout\);

-- Location: LCCOMB_X29_Y9_N8
\temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = (\w2~0_combout\) # (((\w2~1_combout\) # (!\Mux50~0_combout\)) # (!\c2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~0_combout\,
	datab => \c2~3_combout\,
	datac => \w2~1_combout\,
	datad => \Mux50~0_combout\,
	combout => \temp~2_combout\);

-- Location: LCCOMB_X29_Y6_N10
\carry~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~5_combout\ = (\carry~4_combout\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry~4_combout\,
	datac => \V_SW[6]~input_o\,
	combout => \carry~5_combout\);

-- Location: LCCOMB_X29_Y6_N4
\carry~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~6_combout\ = (\V_SW[2]~input_o\ & ((\carry~4_combout\) # (\V_SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry~4_combout\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \carry~6_combout\);

-- Location: LCCOMB_X29_Y6_N26
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (control(0) & (((\carry~3_combout\)))) # (!control(0) & ((\carry~5_combout\) # ((\carry~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~5_combout\,
	datab => \carry~3_combout\,
	datac => \carry~6_combout\,
	datad => control(0),
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X29_Y6_N12
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\Mux54~1_combout\ & ((\V_SW[3]~input_o\ & (!control(0))) # (!\V_SW[3]~input_o\ & ((\V_SW[7]~input_o\))))) # (!\Mux54~1_combout\ & ((\V_SW[3]~input_o\ & ((\V_SW[7]~input_o\))) # (!\V_SW[3]~input_o\ & (control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => control(0),
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X29_Y6_N24
\carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~1_combout\ = (\V_SW[2]~input_o\ & (\V_SW[0]~input_o\ & \V_SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \carry~1_combout\);

-- Location: LCCOMB_X29_Y5_N0
\w2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~2_combout\ = \p3~1_combout\ $ (\c2~0_combout\ $ (\c1~1_combout\ $ (\w1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~1_combout\,
	datab => \c2~0_combout\,
	datac => \c1~1_combout\,
	datad => \w1~2_combout\,
	combout => \w2~2_combout\);

-- Location: LCCOMB_X29_Y6_N14
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (control(0) & (\carry~1_combout\ & (\V_SW[3]~input_o\))) # (!control(0) & (((\w2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \carry~1_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \w2~2_combout\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X29_Y6_N2
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (control(2) & (((\Mux54~0_combout\ & control(1))))) # (!control(2) & (\Mux54~2_combout\ & ((!control(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => control(2),
	datac => \Mux54~0_combout\,
	datad => control(1),
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X29_Y9_N12
\temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = ((\w2~0_combout\ & (\c2~3_combout\)) # (!\w2~0_combout\ & ((!\w2~1_combout\) # (!\c2~3_combout\)))) # (!\Mux50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~0_combout\,
	datab => \c2~3_combout\,
	datac => \w2~1_combout\,
	datad => \Mux50~0_combout\,
	combout => \temp~0_combout\);

-- Location: LCCOMB_X29_Y9_N6
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((\temp~1_combout\ & ((\Mux54~3_combout\) # (!\temp~0_combout\)))) # (!\temp~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \temp~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y9_N24
\temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~5_combout\ = (\Mux50~0_combout\ & ((\w2~0_combout\ & (!\c2~3_combout\)) # (!\w2~0_combout\ & (\c2~3_combout\ & \w2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~0_combout\,
	datab => \c2~3_combout\,
	datac => \w2~1_combout\,
	datad => \Mux50~0_combout\,
	combout => \temp~5_combout\);

-- Location: LCCOMB_X29_Y9_N20
\temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = (\LessThan1~0_combout\ & ((\Mux54~3_combout\ $ (\temp~0_combout\)))) # (!\LessThan1~0_combout\ & (\temp~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \temp~5_combout\,
	datac => \Mux54~3_combout\,
	datad => \temp~0_combout\,
	combout => \temp~6_combout\);

-- Location: LCCOMB_X29_Y9_N26
\temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = (\temp~1_combout\ & (((!\Mux54~3_combout\ & \temp~0_combout\)))) # (!\temp~1_combout\ & (!\temp~2_combout\ & ((\Mux54~3_combout\) # (!\temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \temp~0_combout\,
	combout => \temp~3_combout\);

-- Location: LCCOMB_X29_Y9_N28
\temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = (\temp~1_combout\ & (!\Mux54~3_combout\ & ((!\temp~0_combout\) # (!\temp~2_combout\)))) # (!\temp~1_combout\ & (\temp~2_combout\ $ ((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \temp~0_combout\,
	combout => \temp~4_combout\);

-- Location: LCCOMB_X29_Y9_N0
\temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = (\Mux55~12_combout\ & (!\temp~6_combout\ & (!\temp~3_combout\))) # (!\Mux55~12_combout\ & ((\temp~3_combout\) # ((\temp~6_combout\ & \temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~12_combout\,
	datab => \temp~6_combout\,
	datac => \temp~3_combout\,
	datad => \temp~4_combout\,
	combout => \temp~8_combout\);

-- Location: LCCOMB_X29_Y9_N14
\temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = (\temp~6_combout\ & (!\Mux55~12_combout\ & ((!\temp~4_combout\)))) # (!\temp~6_combout\ & (\temp~3_combout\ & ((\Mux55~12_combout\) # (\temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~12_combout\,
	datab => \temp~6_combout\,
	datac => \temp~3_combout\,
	datad => \temp~4_combout\,
	combout => \temp~7_combout\);

-- Location: LCCOMB_X29_Y6_N0
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (control(0) & (\carry~2_combout\)) # (!control(0) & ((\carry~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~2_combout\,
	datac => \carry~4_combout\,
	datad => control(0),
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X29_Y7_N6
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (control(0) & ((control(1) & (\V_SW[2]~input_o\)) # (!control(1) & ((\V_SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => control(1),
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X29_Y7_N12
\Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (control(1) & (((\Mux56~4_combout\)))) # (!control(1) & ((control(2) & ((\Mux56~4_combout\))) # (!control(2) & (\Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \Mux56~3_combout\,
	datac => control(2),
	datad => \Mux56~4_combout\,
	combout => \Mux56~5_combout\);

-- Location: LCCOMB_X29_Y7_N28
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\V_SW[6]~input_o\ & (control(0) $ (\V_SW[2]~input_o\ $ (!control(1))))) # (!\V_SW[6]~input_o\ & (!control(1) & (control(0) $ (\V_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => control(1),
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X29_Y7_N22
\Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~6_combout\ = (control(2) & control(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(2),
	datad => control(1),
	combout => \Mux56~6_combout\);

-- Location: LCCOMB_X28_Y4_N24
\w1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~4_combout\ = \c0~0_combout\ $ (\p0~0_combout\ $ (\p1~1_combout\ $ (\p2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~0_combout\,
	datab => \p0~0_combout\,
	datac => \p1~1_combout\,
	datad => \p2~1_combout\,
	combout => \w1~4_combout\);

-- Location: LCCOMB_X29_Y4_N2
\Mux56~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~8_combout\ = (control(0) & (\V_SW[1]~input_o\ & (\V_SW[0]~input_o\))) # (!control(0) & (((\w1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[1]~input_o\,
	datab => \V_SW[0]~input_o\,
	datac => control(0),
	datad => \w1~4_combout\,
	combout => \Mux56~8_combout\);

-- Location: LCCOMB_X29_Y7_N4
\Mux56~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~7_combout\ = (\Mux56~6_combout\ & (\Mux56~8_combout\ $ (((\Mux56~5_combout\ & !\Mux56~2_combout\))))) # (!\Mux56~6_combout\ & (\Mux56~5_combout\ $ ((\Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~5_combout\,
	datab => \Mux56~2_combout\,
	datac => \Mux56~6_combout\,
	datad => \Mux56~8_combout\,
	combout => \Mux56~7_combout\);

-- Location: LCCOMB_X29_Y9_N2
\temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = (\Mux55~12_combout\ & (((\temp~4_combout\)))) # (!\Mux55~12_combout\ & ((\temp~3_combout\ & ((!\temp~4_combout\))) # (!\temp~3_combout\ & (!\temp~6_combout\ & \temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~12_combout\,
	datab => \temp~6_combout\,
	datac => \temp~3_combout\,
	datad => \temp~4_combout\,
	combout => \temp~9_combout\);

-- Location: LCCOMB_X29_Y11_N16
\temp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~12_combout\ = (\temp~7_combout\ & (((!\Mux56~7_combout\)))) # (!\temp~7_combout\ & ((\Mux56~7_combout\ & ((!\temp~9_combout\))) # (!\Mux56~7_combout\ & (\temp~8_combout\ & \temp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \temp~7_combout\,
	datac => \Mux56~7_combout\,
	datad => \temp~9_combout\,
	combout => \temp~12_combout\);

-- Location: LCCOMB_X29_Y11_N24
\temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (\temp~9_combout\ & (!\temp~8_combout\ & ((!\Mux56~7_combout\)))) # (!\temp~9_combout\ & (\temp~7_combout\ & ((\temp~8_combout\) # (\Mux56~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \temp~7_combout\,
	datac => \Mux56~7_combout\,
	datad => \temp~9_combout\,
	combout => \temp~10_combout\);

-- Location: LCCOMB_X30_Y7_N8
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (control(2) & (control(1) & (!\V_SW[0]~input_o\))) # (!control(2) & ((control(1)) # ((!\V_SW[0]~input_o\ & \V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => control(1),
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X30_Y7_N6
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (control(0) & (\Mux57~1_combout\ $ (((\V_SW[5]~input_o\) # (control(2)))))) # (!control(0) & ((\V_SW[5]~input_o\) # ((\Mux57~1_combout\ & control(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => control(0),
	datac => \Mux57~1_combout\,
	datad => control(2),
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X30_Y7_N4
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux57~1_combout\ & ((control(2)) # ((\V_SW[5]~input_o\ & control(0))))) # (!\Mux57~1_combout\ & (((control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => control(0),
	datac => \Mux57~1_combout\,
	datad => control(2),
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X30_Y7_N22
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (control(2) & (((!control(0))))) # (!control(2) & (\Mux57~1_combout\ & (\V_SW[5]~input_o\ $ (!control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => control(0),
	datac => \Mux57~1_combout\,
	datad => control(2),
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X30_Y7_N12
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (\Mux57~2_combout\ & (!\V_SW[1]~input_o\ & ((!\Mux57~4_combout\) # (!\Mux57~3_combout\)))) # (!\Mux57~2_combout\ & (((\V_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~2_combout\,
	datab => \Mux57~3_combout\,
	datac => \Mux57~4_combout\,
	datad => \V_SW[1]~input_o\,
	combout => \Mux57~5_combout\);

-- Location: LCCOMB_X30_Y7_N14
\Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~6_combout\ = (\Mux57~4_combout\ & (\V_SW[1]~input_o\ $ (((\Mux57~2_combout\) # (!\Mux57~3_combout\))))) # (!\Mux57~4_combout\ & (((\Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~2_combout\,
	datab => \Mux57~3_combout\,
	datac => \Mux57~4_combout\,
	datad => \V_SW[1]~input_o\,
	combout => \Mux57~6_combout\);

-- Location: LCCOMB_X30_Y7_N2
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (control(2) & (control(1) & (\V_SW[0]~input_o\ $ (\V_SW[4]~input_o\)))) # (!control(2) & ((control(1)) # ((\V_SW[0]~input_o\ & \V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => control(1),
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X29_Y11_N22
\Mux57~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~7_combout\ = \Mux57~5_combout\ $ (((!\Mux57~6_combout\ & \Mux57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux57~5_combout\,
	datac => \Mux57~6_combout\,
	datad => \Mux57~0_combout\,
	combout => \Mux57~7_combout\);

-- Location: LCCOMB_X29_Y11_N18
\temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~11_combout\ = (\temp~8_combout\ & ((\Mux56~7_combout\) # ((!\temp~7_combout\ & !\temp~9_combout\)))) # (!\temp~8_combout\ & (\temp~7_combout\ & (!\Mux56~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \temp~7_combout\,
	datac => \Mux56~7_combout\,
	datad => \temp~9_combout\,
	combout => \temp~11_combout\);

-- Location: LCCOMB_X29_Y11_N10
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\temp~10_combout\) # ((\temp~11_combout\ & ((\temp~12_combout\) # (\Mux57~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~12_combout\,
	datab => \temp~10_combout\,
	datac => \Mux57~7_combout\,
	datad => \temp~11_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X29_Y11_N12
\reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset~0_combout\ = !\V_BT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V_BT[1]~input_o\,
	combout => \reset~0_combout\);

-- Location: FF_X29_Y11_N13
reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \reset~0_combout\,
	ena => \start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset~q\);

-- Location: LCCOMB_X29_Y11_N8
\u[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u[1]~0_combout\ = (!\reset~q\ & (\LessThan5~0_combout\ $ (\Mux57~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datac => \Mux57~7_combout\,
	datad => \reset~q\,
	combout => \u[1]~0_combout\);

-- Location: LCCOMB_X29_Y11_N20
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\temp~7_combout\) # ((\temp~9_combout\ & ((\temp~8_combout\) # (\Mux56~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \temp~7_combout\,
	datac => \Mux56~7_combout\,
	datad => \temp~9_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X29_Y11_N30
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \temp~8_combout\ $ (((\Mux56~7_combout\ & ((\Mux57~7_combout\) # (!\LessThan3~0_combout\))) # (!\Mux56~7_combout\ & (\Mux57~7_combout\ & !\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \Mux56~7_combout\,
	datac => \Mux57~7_combout\,
	datad => \LessThan3~0_combout\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X29_Y11_N28
\u[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u[3]~2_combout\ = (!\reset~q\ & ((\LessThan5~0_combout\ & ((\Add5~0_combout\))) # (!\LessThan5~0_combout\ & (\temp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \temp~11_combout\,
	datac => \Add5~0_combout\,
	datad => \reset~q\,
	combout => \u[3]~2_combout\);

-- Location: LCCOMB_X29_Y11_N6
\u[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u[2]~1_combout\ = (!\reset~q\ & (\temp~12_combout\ $ (((\LessThan5~0_combout\ & !\Mux57~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \temp~12_combout\,
	datac => \Mux57~7_combout\,
	datad => \reset~q\,
	combout => \u[2]~1_combout\);

-- Location: LCCOMB_X30_Y7_N28
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\V_SW[0]~input_o\ & (!control(0) & (control(1) $ (!\V_SW[4]~input_o\)))) # (!\V_SW[0]~input_o\ & (((!control(1) & \V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[0]~input_o\,
	datab => control(0),
	datac => control(1),
	datad => \V_SW[4]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X30_Y7_N18
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (control(2) & (((!\V_SW[0]~input_o\)))) # (!control(2) & ((\V_SW[4]~input_o\ & (control(1))) # (!\V_SW[4]~input_o\ & ((\V_SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => control(1),
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X30_Y7_N0
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (!\reset~q\ & ((\Mux58~0_combout\) # ((control(0) & \Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \Mux58~0_combout\,
	datac => control(0),
	datad => \Mux58~1_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X30_Y8_N18
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\u[3]~2_combout\ & (\Mux58~2_combout\ & (\u[1]~0_combout\ $ (\u[2]~1_combout\)))) # (!\u[3]~2_combout\ & (!\u[1]~0_combout\ & (\u[2]~1_combout\ $ (\Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[1]~0_combout\,
	datab => \u[3]~2_combout\,
	datac => \u[2]~1_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X30_Y8_N16
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\u[1]~0_combout\ & ((\Mux58~2_combout\ & (\u[3]~2_combout\)) # (!\Mux58~2_combout\ & ((\u[2]~1_combout\))))) # (!\u[1]~0_combout\ & (\u[2]~1_combout\ & (\u[3]~2_combout\ $ (\Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[1]~0_combout\,
	datab => \u[3]~2_combout\,
	datac => \u[2]~1_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X30_Y8_N10
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\u[3]~2_combout\ & (\u[2]~1_combout\ & ((\u[1]~0_combout\) # (!\Mux58~2_combout\)))) # (!\u[3]~2_combout\ & (\u[1]~0_combout\ & (!\u[2]~1_combout\ & !\Mux58~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[1]~0_combout\,
	datab => \u[3]~2_combout\,
	datac => \u[2]~1_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y8_N0
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\u[1]~0_combout\ & ((\u[2]~1_combout\ & ((\Mux58~2_combout\))) # (!\u[2]~1_combout\ & (\u[3]~2_combout\ & !\Mux58~2_combout\)))) # (!\u[1]~0_combout\ & (!\u[3]~2_combout\ & (\u[2]~1_combout\ $ (\Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[1]~0_combout\,
	datab => \u[3]~2_combout\,
	datac => \u[2]~1_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X30_Y8_N22
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\u[1]~0_combout\ & (!\u[3]~2_combout\ & ((\Mux58~2_combout\)))) # (!\u[1]~0_combout\ & ((\u[2]~1_combout\ & (!\u[3]~2_combout\)) # (!\u[2]~1_combout\ & ((\Mux58~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[1]~0_combout\,
	datab => \u[3]~2_combout\,
	datac => \u[2]~1_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X30_Y8_N12
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\u[1]~0_combout\ & (!\u[3]~2_combout\ & (!\u[2]~1_combout\))) # (!\u[1]~0_combout\ & (\Mux58~2_combout\ & (\u[3]~2_combout\ $ (!\u[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[1]~0_combout\,
	datab => \u[3]~2_combout\,
	datac => \u[2]~1_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X30_Y8_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux58~2_combout\ & ((\u[3]~2_combout\) # (\u[1]~0_combout\ $ (\u[2]~1_combout\)))) # (!\Mux58~2_combout\ & ((\u[1]~0_combout\) # (\u[3]~2_combout\ $ (\u[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[1]~0_combout\,
	datab => \u[3]~2_combout\,
	datac => \u[2]~1_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X29_Y11_N14
\temp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~13_combout\ = \temp~7_combout\ $ ((((!\temp~8_combout\ & !\Mux56~7_combout\)) # (!\temp~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \temp~7_combout\,
	datac => \Mux56~7_combout\,
	datad => \temp~9_combout\,
	combout => \temp~13_combout\);

-- Location: LCCOMB_X29_Y9_N16
\temp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~16_combout\ = \temp~3_combout\ $ ((((!\Mux55~12_combout\ & !\temp~4_combout\)) # (!\temp~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~12_combout\,
	datab => \temp~6_combout\,
	datac => \temp~3_combout\,
	datad => \temp~4_combout\,
	combout => \temp~16_combout\);

-- Location: LCCOMB_X29_Y9_N18
\temp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~15_combout\ = (((!\w2~0_combout\ & !\w2~1_combout\)) # (!\Mux50~0_combout\)) # (!\c2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~0_combout\,
	datab => \c2~3_combout\,
	datac => \w2~1_combout\,
	datad => \Mux50~0_combout\,
	combout => \temp~15_combout\);

-- Location: LCCOMB_X29_Y9_N4
\temp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~14_combout\ = \temp~2_combout\ $ ((((!\Mux54~3_combout\ & \temp~0_combout\)) # (!\temp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \temp~0_combout\,
	combout => \temp~14_combout\);

-- Location: LCCOMB_X29_Y13_N4
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\temp~16_combout\ & ((\temp~15_combout\ & (\temp~14_combout\ & !\temp~13_combout\)) # (!\temp~15_combout\ & (!\temp~14_combout\)))) # (!\temp~16_combout\ & (\temp~14_combout\ & ((\temp~15_combout\) # (!\temp~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~15_combout\,
	datac => \temp~14_combout\,
	datad => \temp~13_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X29_Y13_N18
\t[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[1]~1_combout\ = (\reset~q\) # (\temp~13_combout\ $ (\LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~13_combout\,
	datac => \LessThan6~0_combout\,
	datad => \reset~q\,
	combout => \t[1]~1_combout\);

-- Location: LCCOMB_X29_Y13_N8
\t[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[2]~2_combout\ = (\temp~16_combout\ & (!\temp~15_combout\ & \temp~14_combout\)) # (!\temp~16_combout\ & (\temp~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~15_combout\,
	datac => \temp~14_combout\,
	combout => \t[2]~2_combout\);

-- Location: LCCOMB_X29_Y13_N10
\t[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[2]~3_combout\ = (!\reset~q\ & (\t[2]~2_combout\ $ (((\LessThan6~0_combout\ & \temp~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \LessThan6~0_combout\,
	datac => \t[2]~2_combout\,
	datad => \temp~13_combout\,
	combout => \t[2]~3_combout\);

-- Location: LCCOMB_X29_Y11_N26
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\temp~8_combout\ & ((\Mux56~7_combout\ & ((\Mux57~7_combout\) # (!\LessThan3~0_combout\))) # (!\Mux56~7_combout\ & (\Mux57~7_combout\ & !\LessThan3~0_combout\)))) # (!\temp~8_combout\ & (!\Mux56~7_combout\ & 
-- ((\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~8_combout\,
	datab => \Mux56~7_combout\,
	datac => \Mux57~7_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X29_Y11_N4
\t[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[0]~0_combout\ = (\reset~q\) # (\temp~10_combout\ $ (!\LessThan5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp~10_combout\,
	datac => \LessThan5~1_combout\,
	datad => \reset~q\,
	combout => \t[0]~0_combout\);

-- Location: LCCOMB_X29_Y13_N16
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ((\temp~16_combout\ & (!\temp~15_combout\ & \temp~14_combout\)) # (!\temp~16_combout\ & (\temp~15_combout\))) # (!\temp~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~15_combout\,
	datac => \temp~14_combout\,
	datad => \temp~13_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X29_Y13_N14
\temp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~17_combout\ = ((\temp~15_combout\) # (\temp~14_combout\)) # (!\temp~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~15_combout\,
	datac => \temp~14_combout\,
	combout => \temp~17_combout\);

-- Location: LCCOMB_X29_Y13_N20
\t[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[3]~4_combout\ = (\temp~14_combout\ & ((\temp~15_combout\) # (!\temp~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~15_combout\,
	datac => \temp~14_combout\,
	combout => \t[3]~4_combout\);

-- Location: LCCOMB_X29_Y13_N22
\t[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[3]~5_combout\ = (!\reset~q\ & ((\LessThan6~1_combout\ & (!\temp~17_combout\ & !\t[3]~4_combout\)) # (!\LessThan6~1_combout\ & ((\t[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \LessThan6~1_combout\,
	datac => \temp~17_combout\,
	datad => \t[3]~4_combout\,
	combout => \t[3]~5_combout\);

-- Location: LCCOMB_X29_Y20_N4
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\t[2]~3_combout\ & (\t[1]~1_combout\ & (\t[0]~0_combout\ $ (\t[3]~5_combout\)))) # (!\t[2]~3_combout\ & (!\t[0]~0_combout\ & (\t[1]~1_combout\ $ (\t[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[1]~1_combout\,
	datab => \t[2]~3_combout\,
	datac => \t[0]~0_combout\,
	datad => \t[3]~5_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\t[1]~1_combout\ & (\t[2]~3_combout\ & (\t[0]~0_combout\ $ (!\t[3]~5_combout\)))) # (!\t[1]~1_combout\ & ((\t[0]~0_combout\ & (\t[2]~3_combout\)) # (!\t[0]~0_combout\ & ((\t[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[1]~1_combout\,
	datab => \t[2]~3_combout\,
	datac => \t[0]~0_combout\,
	datad => \t[3]~5_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\t[2]~3_combout\ & (\t[3]~5_combout\ & ((\t[0]~0_combout\) # (!\t[1]~1_combout\)))) # (!\t[2]~3_combout\ & (!\t[1]~1_combout\ & (\t[0]~0_combout\ & !\t[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[1]~1_combout\,
	datab => \t[2]~3_combout\,
	datac => \t[0]~0_combout\,
	datad => \t[3]~5_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X29_Y20_N26
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\t[1]~1_combout\ & (!\t[3]~5_combout\ & (\t[2]~3_combout\ $ (!\t[0]~0_combout\)))) # (!\t[1]~1_combout\ & ((\t[2]~3_combout\ & (!\t[0]~0_combout\)) # (!\t[2]~3_combout\ & (\t[0]~0_combout\ & \t[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[1]~1_combout\,
	datab => \t[2]~3_combout\,
	datac => \t[0]~0_combout\,
	datad => \t[3]~5_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\t[1]~1_combout\ & ((\t[2]~3_combout\ & ((!\t[3]~5_combout\))) # (!\t[2]~3_combout\ & (!\t[0]~0_combout\)))) # (!\t[1]~1_combout\ & (((!\t[0]~0_combout\ & !\t[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[1]~1_combout\,
	datab => \t[2]~3_combout\,
	datac => \t[0]~0_combout\,
	datad => \t[3]~5_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X29_Y20_N2
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\t[1]~1_combout\ & (!\t[0]~0_combout\ & (\t[2]~3_combout\ $ (!\t[3]~5_combout\)))) # (!\t[1]~1_combout\ & (!\t[2]~3_combout\ & ((!\t[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[1]~1_combout\,
	datab => \t[2]~3_combout\,
	datac => \t[0]~0_combout\,
	datad => \t[3]~5_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X29_Y20_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\t[0]~0_combout\ & ((\t[2]~3_combout\ $ (\t[3]~5_combout\)) # (!\t[1]~1_combout\))) # (!\t[0]~0_combout\ & ((\t[3]~5_combout\) # (\t[1]~1_combout\ $ (!\t[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[1]~1_combout\,
	datab => \t[2]~3_combout\,
	datac => \t[0]~0_combout\,
	datad => \t[3]~5_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X29_Y13_N26
\LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\temp~14_combout\ & ((\temp~16_combout\ & (\temp~15_combout\ & !\temp~13_combout\)) # (!\temp~16_combout\ & ((\temp~15_combout\) # (!\temp~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \temp~15_combout\,
	datac => \temp~14_combout\,
	datad => \temp~13_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X29_Y9_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\c2~3_combout\ & (\Mux50~0_combout\ & ((\w2~0_combout\) # (\w2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2~0_combout\,
	datab => \c2~3_combout\,
	datac => \w2~1_combout\,
	datad => \Mux50~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y13_N12
\h[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h[1]~0_combout\ = (\LessThan0~0_combout\ & (!\reset~q\ & ((\temp~14_combout\) # (!\temp~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~16_combout\,
	datab => \LessThan0~0_combout\,
	datac => \temp~14_combout\,
	datad => \reset~q\,
	combout => \h[1]~0_combout\);

-- Location: LCCOMB_X29_Y13_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\reset~q\) # ((\h[1]~0_combout\) # (\temp~17_combout\ $ (\LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \temp~17_combout\,
	datac => \LessThan6~2_combout\,
	datad => \h[1]~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X29_Y13_N30
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ((!\reset~q\ & (\temp~17_combout\ $ (!\LessThan6~2_combout\)))) # (!\h[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \temp~17_combout\,
	datac => \LessThan6~2_combout\,
	datad => \h[1]~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X29_Y13_N0
\h[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h[0]~1_combout\ = (!\reset~q\ & (\temp~17_combout\ $ (((!\t[3]~4_combout\) # (!\LessThan6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \LessThan6~1_combout\,
	datac => \temp~17_combout\,
	datad => \t[3]~4_combout\,
	combout => \h[0]~1_combout\);

-- Location: LCCOMB_X29_Y13_N2
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\h[1]~0_combout\) # ((!\reset~q\ & (\temp~17_combout\ $ (!\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \temp~17_combout\,
	datac => \LessThan6~2_combout\,
	datad => \h[1]~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X29_Y6_N6
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\V_SW[6]~input_o\ & (!\V_SW[4]~input_o\ & (\V_SW[5]~input_o\ $ (!\V_SW[7]~input_o\)))) # (!\V_SW[6]~input_o\ & (\V_SW[4]~input_o\ & (\V_SW[5]~input_o\ $ (!\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[6]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X29_Y6_N28
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\V_SW[6]~input_o\ & ((\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ $ (!\V_SW[7]~input_o\))) # (!\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ & !\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[6]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[4]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X29_Y5_N2
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\V_SW[4]~input_o\ & ((\V_SW[5]~input_o\ & (!\V_SW[7]~input_o\ & !\V_SW[6]~input_o\)) # (!\V_SW[5]~input_o\ & (\V_SW[7]~input_o\ & \V_SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X29_Y5_N8
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\V_SW[5]~input_o\ & ((\V_SW[7]~input_o\ & (\V_SW[6]~input_o\ $ (\V_SW[4]~input_o\))) # (!\V_SW[7]~input_o\ & (\V_SW[6]~input_o\ & \V_SW[4]~input_o\)))) # (!\V_SW[5]~input_o\ & (!\V_SW[7]~input_o\ & (\V_SW[6]~input_o\ $ 
-- (\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\V_SW[4]~input_o\) # ((\V_SW[6]~input_o\ & (\V_SW[7]~input_o\ $ (!\V_SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X28_Y4_N20
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\V_SW[7]~input_o\ & ((\V_SW[6]~input_o\ & (!\V_SW[5]~input_o\)) # (!\V_SW[6]~input_o\ & (\V_SW[5]~input_o\ & \V_SW[4]~input_o\)))) # (!\V_SW[7]~input_o\ & (!\V_SW[6]~input_o\ & ((\V_SW[5]~input_o\) # (\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X28_Y4_N18
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\V_SW[6]~input_o\ & ((\V_SW[7]~input_o\) # ((!\V_SW[4]~input_o\) # (!\V_SW[5]~input_o\)))) # (!\V_SW[6]~input_o\ & (\V_SW[7]~input_o\ $ ((\V_SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[4]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X29_Y4_N30
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\V_SW[2]~input_o\ & (!\V_SW[0]~input_o\ & (\V_SW[3]~input_o\ $ (!\V_SW[1]~input_o\)))) # (!\V_SW[2]~input_o\ & (\V_SW[0]~input_o\ & (\V_SW[3]~input_o\ $ (!\V_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X29_Y4_N20
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\V_SW[2]~input_o\ & ((\V_SW[3]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[0]~input_o\)) # (!\V_SW[3]~input_o\ & (\V_SW[1]~input_o\ $ (\V_SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X29_Y4_N22
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (!\V_SW[0]~input_o\ & ((\V_SW[2]~input_o\ & (\V_SW[3]~input_o\ & !\V_SW[1]~input_o\)) # (!\V_SW[2]~input_o\ & (!\V_SW[3]~input_o\ & \V_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X29_Y4_N4
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\V_SW[2]~input_o\ & ((\V_SW[3]~input_o\ & (\V_SW[1]~input_o\ & !\V_SW[0]~input_o\)) # (!\V_SW[3]~input_o\ & (\V_SW[1]~input_o\ $ (!\V_SW[0]~input_o\))))) # (!\V_SW[2]~input_o\ & (\V_SW[0]~input_o\ & (\V_SW[3]~input_o\ $ 
-- (!\V_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X29_Y4_N6
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\V_SW[0]~input_o\) # ((\V_SW[2]~input_o\ & (\V_SW[3]~input_o\ $ (!\V_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X29_Y4_N28
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\V_SW[2]~input_o\ & (\V_SW[3]~input_o\ & (!\V_SW[1]~input_o\))) # (!\V_SW[2]~input_o\ & ((\V_SW[3]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[0]~input_o\)) # (!\V_SW[3]~input_o\ & ((\V_SW[1]~input_o\) # (\V_SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X29_Y4_N14
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\V_SW[2]~input_o\ & ((\V_SW[3]~input_o\) # ((!\V_SW[0]~input_o\) # (!\V_SW[1]~input_o\)))) # (!\V_SW[2]~input_o\ & (\V_SW[3]~input_o\ $ ((\V_SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X25_Y3_N24
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ((!\V_SW[6]~input_o\ & !\V_SW[5]~input_o\)) # (!\V_SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[6]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X29_Y4_N24
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ((!\V_SW[2]~input_o\ & !\V_SW[1]~input_o\)) # (!\V_SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[3]~input_o\,
	datac => \V_SW[1]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X29_Y6_N18
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (!control(0) & (!control(2) & !control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => control(2),
	datad => control(1),
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X30_Y7_N10
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (control(0) & (!control(1) & !control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(1),
	datad => control(2),
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X29_Y6_N8
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (!control(0) & (!control(2) & control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => control(2),
	datad => control(1),
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X30_Y7_N20
\Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = (control(0) & (control(1) & !control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(1),
	datad => control(2),
	combout => \Mux50~4_combout\);

-- Location: LCCOMB_X30_Y7_N26
\Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~5_combout\ = (!control(0) & (!control(1) & control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(1),
	datad => control(2),
	combout => \Mux50~5_combout\);

-- Location: LCCOMB_X30_Y7_N24
\Mux50~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~6_combout\ = (control(0) & (!control(1) & control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(1),
	datad => control(2),
	combout => \Mux50~6_combout\);

-- Location: LCCOMB_X30_Y7_N30
\Mux50~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~7_combout\ = (control(0) & (control(1) & control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(1),
	datad => control(2),
	combout => \Mux50~7_combout\);

-- Location: IOIBUF_X0_Y11_N15
\V_BT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(2),
	o => \V_BT[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\V_BT[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(3),
	o => \V_BT[3]~input_o\);

ww_G_HEX0(0) <= \G_HEX0[0]~output_o\;

ww_G_HEX0(1) <= \G_HEX0[1]~output_o\;

ww_G_HEX0(2) <= \G_HEX0[2]~output_o\;

ww_G_HEX0(3) <= \G_HEX0[3]~output_o\;

ww_G_HEX0(4) <= \G_HEX0[4]~output_o\;

ww_G_HEX0(5) <= \G_HEX0[5]~output_o\;

ww_G_HEX0(6) <= \G_HEX0[6]~output_o\;

ww_G_HEX1(0) <= \G_HEX1[0]~output_o\;

ww_G_HEX1(1) <= \G_HEX1[1]~output_o\;

ww_G_HEX1(2) <= \G_HEX1[2]~output_o\;

ww_G_HEX1(3) <= \G_HEX1[3]~output_o\;

ww_G_HEX1(4) <= \G_HEX1[4]~output_o\;

ww_G_HEX1(5) <= \G_HEX1[5]~output_o\;

ww_G_HEX1(6) <= \G_HEX1[6]~output_o\;

ww_G_HEX2(0) <= \G_HEX2[0]~output_o\;

ww_G_HEX2(1) <= \G_HEX2[1]~output_o\;

ww_G_HEX2(2) <= \G_HEX2[2]~output_o\;

ww_G_HEX2(3) <= \G_HEX2[3]~output_o\;

ww_G_HEX2(4) <= \G_HEX2[4]~output_o\;

ww_G_HEX2(5) <= \G_HEX2[5]~output_o\;

ww_G_HEX2(6) <= \G_HEX2[6]~output_o\;

ww_G_HEX4(0) <= \G_HEX4[0]~output_o\;

ww_G_HEX4(1) <= \G_HEX4[1]~output_o\;

ww_G_HEX4(2) <= \G_HEX4[2]~output_o\;

ww_G_HEX4(3) <= \G_HEX4[3]~output_o\;

ww_G_HEX4(4) <= \G_HEX4[4]~output_o\;

ww_G_HEX4(5) <= \G_HEX4[5]~output_o\;

ww_G_HEX4(6) <= \G_HEX4[6]~output_o\;

ww_G_HEX6(0) <= \G_HEX6[0]~output_o\;

ww_G_HEX6(1) <= \G_HEX6[1]~output_o\;

ww_G_HEX6(2) <= \G_HEX6[2]~output_o\;

ww_G_HEX6(3) <= \G_HEX6[3]~output_o\;

ww_G_HEX6(4) <= \G_HEX6[4]~output_o\;

ww_G_HEX6(5) <= \G_HEX6[5]~output_o\;

ww_G_HEX6(6) <= \G_HEX6[6]~output_o\;

ww_G_HEX5(0) <= \G_HEX5[0]~output_o\;

ww_G_HEX5(1) <= \G_HEX5[1]~output_o\;

ww_G_HEX5(2) <= \G_HEX5[2]~output_o\;

ww_G_HEX5(3) <= \G_HEX5[3]~output_o\;

ww_G_HEX5(4) <= \G_HEX5[4]~output_o\;

ww_G_HEX5(5) <= \G_HEX5[5]~output_o\;

ww_G_HEX5(6) <= \G_HEX5[6]~output_o\;

ww_G_HEX7(0) <= \G_HEX7[0]~output_o\;

ww_G_HEX7(1) <= \G_HEX7[1]~output_o\;

ww_G_HEX7(2) <= \G_HEX7[2]~output_o\;

ww_G_HEX7(3) <= \G_HEX7[3]~output_o\;

ww_G_HEX7(4) <= \G_HEX7[4]~output_o\;

ww_G_HEX7(5) <= \G_HEX7[5]~output_o\;

ww_G_HEX7(6) <= \G_HEX7[6]~output_o\;

ww_G_LEDG(0) <= \G_LEDG[0]~output_o\;

ww_G_LEDG(1) <= \G_LEDG[1]~output_o\;

ww_G_LEDG(2) <= \G_LEDG[2]~output_o\;

ww_G_LEDG(3) <= \G_LEDG[3]~output_o\;

ww_G_LEDG(4) <= \G_LEDG[4]~output_o\;

ww_G_LEDG(5) <= \G_LEDG[5]~output_o\;

ww_G_LEDG(6) <= \G_LEDG[6]~output_o\;

ww_G_LEDG(7) <= \G_LEDG[7]~output_o\;
END structure;


