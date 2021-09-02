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

-- DATE "09/01/2021 23:57:23"

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
	G_LEDG : OUT std_logic_vector(7 DOWNTO 0);
	V_BT : IN std_logic_vector(3 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- G_HEX0[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX0[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX1[6]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX2[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[5]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX4[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_HEX6[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[5]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[6]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_LEDG[7]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[2]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[6]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SW[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_CLOCK_50	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_BT[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_G_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_V_BT : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux42~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \G_LEDG[0]~output_o\ : std_logic;
SIGNAL \G_LEDG[1]~output_o\ : std_logic;
SIGNAL \G_LEDG[2]~output_o\ : std_logic;
SIGNAL \G_LEDG[3]~output_o\ : std_logic;
SIGNAL \G_LEDG[4]~output_o\ : std_logic;
SIGNAL \G_LEDG[5]~output_o\ : std_logic;
SIGNAL \G_LEDG[6]~output_o\ : std_logic;
SIGNAL \G_LEDG[7]~output_o\ : std_logic;
SIGNAL \G_CLOCK_50~input_o\ : std_logic;
SIGNAL \G_CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \V_BT[1]~input_o\ : std_logic;
SIGNAL \reset~1_combout\ : std_logic;
SIGNAL \V_BT[0]~input_o\ : std_logic;
SIGNAL \reset~0_combout\ : std_logic;
SIGNAL \reset~q\ : std_logic;
SIGNAL \V_SW[2]~input_o\ : std_logic;
SIGNAL \V_SW[7]~input_o\ : std_logic;
SIGNAL \p3~1_combout\ : std_logic;
SIGNAL \V_SW[3]~input_o\ : std_logic;
SIGNAL \V_SW[5]~input_o\ : std_logic;
SIGNAL \p1~2_combout\ : std_logic;
SIGNAL \V_SW[4]~input_o\ : std_logic;
SIGNAL \w0~0_combout\ : std_logic;
SIGNAL \V_SW[0]~input_o\ : std_logic;
SIGNAL \V_SW[1]~input_o\ : std_logic;
SIGNAL \c0~0_combout\ : std_logic;
SIGNAL \p1~0_combout\ : std_logic;
SIGNAL \c0~1_combout\ : std_logic;
SIGNAL \p0~0_combout\ : std_logic;
SIGNAL \V_SW[6]~input_o\ : std_logic;
SIGNAL \p2~1_combout\ : std_logic;
SIGNAL \c1~0_combout\ : std_logic;
SIGNAL \p2~0_combout\ : std_logic;
SIGNAL \c1~1_combout\ : std_logic;
SIGNAL \carry~3_combout\ : std_logic;
SIGNAL \p1~1_combout\ : std_logic;
SIGNAL \c0~2_combout\ : std_logic;
SIGNAL \c1~2_combout\ : std_logic;
SIGNAL \p3~0_combout\ : std_logic;
SIGNAL \w1~2_combout\ : std_logic;
SIGNAL \c2~0_combout\ : std_logic;
SIGNAL \w1~4_combout\ : std_logic;
SIGNAL \c2~1_combout\ : std_logic;
SIGNAL \w1~5_combout\ : std_logic;
SIGNAL \c2~2_combout\ : std_logic;
SIGNAL \p2~2_combout\ : std_logic;
SIGNAL \c1~3_combout\ : std_logic;
SIGNAL \c2~3_combout\ : std_logic;
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
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \secondsCounted~19_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \control~2_combout\ : std_logic;
SIGNAL \control[0]~1_combout\ : std_logic;
SIGNAL \control~0_combout\ : std_logic;
SIGNAL \control~3_combout\ : std_logic;
SIGNAL \Mux42~6_combout\ : std_logic;
SIGNAL \Mux42~6clkctrl_outclk\ : std_logic;
SIGNAL \w2~2_combout\ : std_logic;
SIGNAL \w2~1_combout\ : std_logic;
SIGNAL \carry~4_combout\ : std_logic;
SIGNAL \w2~0_combout\ : std_logic;
SIGNAL \carry~2_combout\ : std_logic;
SIGNAL \carry~1_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Mux43~6_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~7_combout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~6_combout\ : std_logic;
SIGNAL \w1~3_combout\ : std_logic;
SIGNAL \Mux44~8_combout\ : std_logic;
SIGNAL \Mux44~7_combout\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~5_combout\ : std_logic;
SIGNAL \Mux45~6_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~7_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \u[2]~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \u[3]~2_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \u[1]~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \temp~11_combout\ : std_logic;
SIGNAL \temp~12_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \t[2]~2_combout\ : std_logic;
SIGNAL \t[2]~3_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \t[2]~4_combout\ : std_logic;
SIGNAL \t[1]~1_combout\ : std_logic;
SIGNAL \t[3]~5_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \t[3]~6_combout\ : std_logic;
SIGNAL \t[0]~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \h[1]~0_combout\ : std_logic;
SIGNAL \h[1]~1_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \h[0]~2_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Mux42~7_combout\ : std_logic;
SIGNAL s : std_logic_vector(7 DOWNTO 0);
SIGNAL secondsCounted : std_logic_vector(25 DOWNTO 0);
SIGNAL control : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_h[1]~1_combout\ : std_logic;
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
G_LEDG <= ww_G_LEDG;
ww_V_BT <= V_BT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux42~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux42~6_combout\);

\G_CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G_CLOCK_50~input_o\);
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_h[1]~1_combout\ <= NOT \h[1]~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X34_Y4_N23
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X3_Y24_N23
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X25_Y0_N2
\G_HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h[0]~2_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X16_Y24_N2
\G_HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_h[1]~1_combout\,
	devoe => ww_devoe,
	o => \G_HEX2[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X34_Y18_N16
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X34_Y4_N16
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X23_Y24_N9
\G_HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\G_HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\G_HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\G_HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\G_HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\G_HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\G_HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux28~0_combout\,
	devoe => ww_devoe,
	o => \G_HEX6[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\G_LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~0_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\G_LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~1_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\G_LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~2_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\G_LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~3_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\G_LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~4_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\G_LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~5_combout\,
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
	i => \Mux42~6_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\G_LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~7_combout\,
	devoe => ww_devoe,
	o => \G_LEDG[7]~output_o\);

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

-- Location: IOIBUF_X0_Y8_N15
\V_BT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(1),
	o => \V_BT[1]~input_o\);

-- Location: LCCOMB_X25_Y9_N16
\reset~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset~1_combout\ = !\V_BT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V_BT[1]~input_o\,
	combout => \reset~1_combout\);

-- Location: IOIBUF_X28_Y0_N1
\V_BT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(0),
	o => \V_BT[0]~input_o\);

-- Location: LCCOMB_X25_Y8_N4
\reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset~0_combout\ = (!\V_BT[0]~input_o\) # (!\V_BT[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_BT[1]~input_o\,
	datad => \V_BT[0]~input_o\,
	combout => \reset~0_combout\);

-- Location: FF_X25_Y9_N17
reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	d => \reset~1_combout\,
	ena => \reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset~q\);

-- Location: IOIBUF_X30_Y24_N1
\V_SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(2),
	o => \V_SW[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\V_SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(7),
	o => \V_SW[7]~input_o\);

-- Location: LCCOMB_X28_Y15_N10
\p3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~1_combout\ = (\V_SW[2]~input_o\ & \V_SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \p3~1_combout\);

-- Location: IOIBUF_X28_Y24_N15
\V_SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(3),
	o => \V_SW[3]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\V_SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(5),
	o => \V_SW[5]~input_o\);

-- Location: LCCOMB_X28_Y15_N22
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

-- Location: IOIBUF_X18_Y24_N22
\V_SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(4),
	o => \V_SW[4]~input_o\);

-- Location: LCCOMB_X28_Y20_N18
\w0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w0~0_combout\ = (\V_SW[2]~input_o\ & (\V_SW[5]~input_o\ $ (((\V_SW[4]~input_o\ & \V_SW[3]~input_o\))))) # (!\V_SW[2]~input_o\ & (\V_SW[4]~input_o\ & ((\V_SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[5]~input_o\,
	datad => \V_SW[3]~input_o\,
	combout => \w0~0_combout\);

-- Location: IOIBUF_X34_Y18_N1
\V_SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(0),
	o => \V_SW[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\V_SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(1),
	o => \V_SW[1]~input_o\);

-- Location: LCCOMB_X28_Y20_N26
\c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~0_combout\ = (\V_SW[4]~input_o\ & (\V_SW[5]~input_o\ & (\V_SW[0]~input_o\ & \V_SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \V_SW[5]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \c0~0_combout\);

-- Location: LCCOMB_X28_Y20_N20
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

-- Location: LCCOMB_X28_Y20_N28
\c0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~1_combout\ = (\c0~0_combout\ & ((\p1~0_combout\) # ((\V_SW[4]~input_o\ & \V_SW[2]~input_o\)))) # (!\c0~0_combout\ & (\p1~0_combout\ & (\V_SW[4]~input_o\ & \V_SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~0_combout\,
	datab => \p1~0_combout\,
	datac => \V_SW[4]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \c0~1_combout\);

-- Location: LCCOMB_X28_Y20_N30
\p0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p0~0_combout\ = (\V_SW[4]~input_o\ & \V_SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[4]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \p0~0_combout\);

-- Location: IOIBUF_X34_Y19_N15
\V_SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_SW(6),
	o => \V_SW[6]~input_o\);

-- Location: LCCOMB_X28_Y20_N16
\p2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~1_combout\ = (\V_SW[0]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[6]~input_o\,
	combout => \p2~1_combout\);

-- Location: LCCOMB_X28_Y20_N12
\c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~0_combout\ = (\p2~1_combout\ & (\p0~0_combout\ $ (\p1~0_combout\ $ (\c0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0~0_combout\,
	datab => \p1~0_combout\,
	datac => \c0~0_combout\,
	datad => \p2~1_combout\,
	combout => \c1~0_combout\);

-- Location: LCCOMB_X29_Y12_N6
\p2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~0_combout\ = (\V_SW[6]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[1]~input_o\,
	combout => \p2~0_combout\);

-- Location: LCCOMB_X28_Y15_N2
\c1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~1_combout\ = (\c1~0_combout\ & ((\p2~0_combout\) # (\w0~0_combout\ $ (\c0~1_combout\)))) # (!\c1~0_combout\ & (\p2~0_combout\ & (\w0~0_combout\ $ (\c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w0~0_combout\,
	datab => \c0~1_combout\,
	datac => \c1~0_combout\,
	datad => \p2~0_combout\,
	combout => \c1~1_combout\);

-- Location: LCCOMB_X28_Y15_N30
\carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~3_combout\ = (\V_SW[2]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[2]~input_o\,
	datad => \V_SW[6]~input_o\,
	combout => \carry~3_combout\);

-- Location: LCCOMB_X28_Y15_N18
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

-- Location: LCCOMB_X28_Y15_N24
\c0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0~2_combout\ = (\c0~1_combout\ & ((\p1~1_combout\) # ((\V_SW[4]~input_o\ & \V_SW[3]~input_o\)))) # (!\c0~1_combout\ & (\V_SW[4]~input_o\ & (\V_SW[3]~input_o\ & \p1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[4]~input_o\,
	datab => \c0~1_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \p1~1_combout\,
	combout => \c0~2_combout\);

-- Location: LCCOMB_X28_Y15_N20
\c1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~2_combout\ = (\c1~1_combout\ & ((\carry~3_combout\) # (\p1~2_combout\ $ (\c0~2_combout\)))) # (!\c1~1_combout\ & (\carry~3_combout\ & (\p1~2_combout\ $ (\c0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~2_combout\,
	datab => \c1~1_combout\,
	datac => \carry~3_combout\,
	datad => \c0~2_combout\,
	combout => \c1~2_combout\);

-- Location: LCCOMB_X29_Y12_N4
\p3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3~0_combout\ = (\V_SW[7]~input_o\ & \V_SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[7]~input_o\,
	datac => \V_SW[1]~input_o\,
	combout => \p3~0_combout\);

-- Location: LCCOMB_X28_Y15_N28
\w1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~2_combout\ = \w0~0_combout\ $ (\c0~1_combout\ $ (\c1~0_combout\ $ (\p2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w0~0_combout\,
	datab => \c0~1_combout\,
	datac => \c1~0_combout\,
	datad => \p2~0_combout\,
	combout => \w1~2_combout\);

-- Location: LCCOMB_X29_Y12_N14
\c2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~0_combout\ = (\w1~2_combout\ & (\V_SW[7]~input_o\ & \V_SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1~2_combout\,
	datac => \V_SW[7]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \c2~0_combout\);

-- Location: LCCOMB_X28_Y15_N0
\w1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~4_combout\ = \carry~3_combout\ $ (\c0~2_combout\ $ (((\V_SW[3]~input_o\ & \V_SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~3_combout\,
	datab => \c0~2_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[5]~input_o\,
	combout => \w1~4_combout\);

-- Location: LCCOMB_X28_Y15_N8
\c2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~1_combout\ = (\p3~0_combout\ & ((\c2~0_combout\) # (\c1~1_combout\ $ (\w1~4_combout\)))) # (!\p3~0_combout\ & (\c2~0_combout\ & (\c1~1_combout\ $ (\w1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~0_combout\,
	datab => \c1~1_combout\,
	datac => \c2~0_combout\,
	datad => \w1~4_combout\,
	combout => \c2~1_combout\);

-- Location: LCCOMB_X28_Y15_N6
\w1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~5_combout\ = (\V_SW[3]~input_o\ & (\V_SW[6]~input_o\ $ (((\V_SW[5]~input_o\ & \c0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \c0~2_combout\,
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[6]~input_o\,
	combout => \w1~5_combout\);

-- Location: LCCOMB_X28_Y15_N26
\c2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~2_combout\ = (\p3~1_combout\ & ((\c2~1_combout\) # (\c1~2_combout\ $ (\w1~5_combout\)))) # (!\p3~1_combout\ & (\c2~1_combout\ & (\c1~2_combout\ $ (\w1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~1_combout\,
	datab => \c1~2_combout\,
	datac => \c2~1_combout\,
	datad => \w1~5_combout\,
	combout => \c2~2_combout\);

-- Location: LCCOMB_X28_Y15_N12
\p2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2~2_combout\ = (\V_SW[3]~input_o\ & \V_SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V_SW[3]~input_o\,
	datad => \V_SW[6]~input_o\,
	combout => \p2~2_combout\);

-- Location: LCCOMB_X28_Y15_N14
\c1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1~3_combout\ = (\p2~2_combout\ & ((\c1~2_combout\) # ((\p1~2_combout\ & \c0~2_combout\)))) # (!\p2~2_combout\ & (\c1~2_combout\ & (\p1~2_combout\ & \c0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2~2_combout\,
	datab => \c1~2_combout\,
	datac => \p1~2_combout\,
	datad => \c0~2_combout\,
	combout => \c1~3_combout\);

-- Location: LCCOMB_X28_Y11_N18
\c2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2~3_combout\ = (\c2~2_combout\ & ((\c1~3_combout\) # ((\V_SW[3]~input_o\ & \V_SW[7]~input_o\)))) # (!\c2~2_combout\ & (\V_SW[3]~input_o\ & (\c1~3_combout\ & \V_SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~2_combout\,
	datab => \V_SW[3]~input_o\,
	datac => \c1~3_combout\,
	datad => \V_SW[7]~input_o\,
	combout => \c2~3_combout\);

-- Location: FF_X28_Y9_N23
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

-- Location: FF_X28_Y10_N7
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
	ena => \reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start~q\);

-- Location: LCCOMB_X28_Y10_N6
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

-- Location: LCCOMB_X29_Y10_N0
\secondsCounted~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~18_combout\ = (\Add7~0_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~0_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~18_combout\);

-- Location: FF_X29_Y10_N1
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

-- Location: LCCOMB_X28_Y10_N8
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

-- Location: LCCOMB_X29_Y10_N6
\secondsCounted~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~17_combout\ = (\Add7~2_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~17_combout\);

-- Location: FF_X29_Y10_N7
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

-- Location: LCCOMB_X28_Y10_N10
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (secondsCounted(2) & (\Add7~3\ $ (GND))) # (!secondsCounted(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((secondsCounted(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X29_Y10_N24
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

-- Location: FF_X29_Y10_N25
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

-- Location: LCCOMB_X28_Y10_N12
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

-- Location: LCCOMB_X29_Y10_N22
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

-- Location: FF_X29_Y10_N23
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

-- Location: LCCOMB_X28_Y10_N14
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (secondsCounted(4) & (\Add7~7\ $ (GND))) # (!secondsCounted(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((secondsCounted(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X29_Y10_N12
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

-- Location: FF_X29_Y10_N13
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

-- Location: LCCOMB_X28_Y10_N16
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

-- Location: LCCOMB_X28_Y10_N0
\secondsCounted~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~13_combout\ = (\Add7~10_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~10_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~13_combout\);

-- Location: FF_X28_Y10_N1
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

-- Location: LCCOMB_X28_Y10_N18
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

-- Location: LCCOMB_X29_Y10_N2
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

-- Location: FF_X29_Y10_N3
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

-- Location: LCCOMB_X28_Y10_N20
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (secondsCounted(7) & (!\Add7~13\)) # (!secondsCounted(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!secondsCounted(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: FF_X28_Y10_N21
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

-- Location: LCCOMB_X28_Y10_N22
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (secondsCounted(8) & (\Add7~15\ $ (GND))) # (!secondsCounted(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((secondsCounted(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: FF_X28_Y10_N23
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

-- Location: LCCOMB_X28_Y10_N24
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (secondsCounted(9) & (!\Add7~17\)) # (!secondsCounted(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!secondsCounted(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: FF_X28_Y10_N25
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

-- Location: LCCOMB_X28_Y10_N26
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (secondsCounted(10) & (\Add7~19\ $ (GND))) # (!secondsCounted(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((secondsCounted(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: FF_X28_Y10_N27
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

-- Location: LCCOMB_X28_Y10_N28
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (secondsCounted(11) & (!\Add7~21\)) # (!secondsCounted(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!secondsCounted(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: FF_X28_Y10_N29
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

-- Location: LCCOMB_X28_Y10_N30
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (secondsCounted(12) & (\Add7~23\ $ (GND))) # (!secondsCounted(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((secondsCounted(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X29_Y10_N4
\secondsCounted~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~11_combout\ = (\Add7~24_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~24_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~11_combout\);

-- Location: FF_X29_Y10_N5
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

-- Location: LCCOMB_X28_Y9_N0
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

-- Location: LCCOMB_X30_Y9_N26
\secondsCounted~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~10_combout\ = (!\Equal2~8_combout\ & \Add7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add7~26_combout\,
	combout => \secondsCounted~10_combout\);

-- Location: FF_X30_Y9_N27
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

-- Location: LCCOMB_X28_Y9_N2
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (secondsCounted(14) & (\Add7~27\ $ (GND))) # (!secondsCounted(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((secondsCounted(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X30_Y9_N20
\secondsCounted~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~9_combout\ = (!\Equal2~8_combout\ & \Add7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add7~28_combout\,
	combout => \secondsCounted~9_combout\);

-- Location: FF_X30_Y9_N21
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

-- Location: LCCOMB_X28_Y9_N4
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

-- Location: LCCOMB_X31_Y9_N26
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

-- Location: FF_X31_Y9_N27
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

-- Location: LCCOMB_X28_Y9_N6
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (secondsCounted(16) & (\Add7~31\ $ (GND))) # (!secondsCounted(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((secondsCounted(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: FF_X28_Y9_N7
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

-- Location: LCCOMB_X28_Y9_N8
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (secondsCounted(17) & (!\Add7~33\)) # (!secondsCounted(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!secondsCounted(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X30_Y9_N10
\secondsCounted~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~7_combout\ = (\Add7~34_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~34_combout\,
	datac => \Equal2~8_combout\,
	combout => \secondsCounted~7_combout\);

-- Location: FF_X30_Y9_N11
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

-- Location: LCCOMB_X28_Y9_N10
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

-- Location: FF_X28_Y9_N11
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

-- Location: LCCOMB_X28_Y9_N12
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

-- Location: LCCOMB_X31_Y9_N12
\secondsCounted~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~6_combout\ = (\Add7~38_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~38_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~6_combout\);

-- Location: FF_X31_Y9_N13
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

-- Location: LCCOMB_X28_Y9_N14
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (secondsCounted(20) & (\Add7~39\ $ (GND))) # (!secondsCounted(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((secondsCounted(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X30_Y9_N8
\secondsCounted~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~5_combout\ = (!\Equal2~8_combout\ & \Add7~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add7~40_combout\,
	combout => \secondsCounted~5_combout\);

-- Location: FF_X30_Y9_N9
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

-- Location: LCCOMB_X28_Y9_N16
\Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (secondsCounted(21) & (!\Add7~41\)) # (!secondsCounted(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!secondsCounted(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X28_Y9_N30
\secondsCounted~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~4_combout\ = (\Add7~42_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~42_combout\,
	datac => \Equal2~8_combout\,
	combout => \secondsCounted~4_combout\);

-- Location: FF_X28_Y9_N31
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

-- Location: LCCOMB_X28_Y9_N18
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (secondsCounted(22) & (\Add7~43\ $ (GND))) # (!secondsCounted(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((secondsCounted(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => secondsCounted(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X31_Y9_N14
\secondsCounted~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~3_combout\ = (\Add7~44_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~44_combout\,
	datad => \Equal2~8_combout\,
	combout => \secondsCounted~3_combout\);

-- Location: FF_X31_Y9_N15
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

-- Location: LCCOMB_X28_Y9_N20
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (secondsCounted(23) & (!\Add7~45\)) # (!secondsCounted(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!secondsCounted(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => secondsCounted(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X30_Y9_N18
\secondsCounted~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~2_combout\ = (\Add7~46_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~46_combout\,
	datac => \Equal2~8_combout\,
	combout => \secondsCounted~2_combout\);

-- Location: FF_X30_Y9_N19
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

-- Location: LCCOMB_X28_Y9_N22
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

-- Location: LCCOMB_X29_Y9_N14
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (\Add7~44_combout\ & \Add7~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~44_combout\,
	datad => \Add7~46_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X28_Y9_N26
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!\Add7~32_combout\ & (\Add7~34_combout\ & (!\Add7~36_combout\ & \Add7~38_combout\)))

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
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X28_Y10_N2
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Add7~8_combout\ & (\Add7~10_combout\ & (\Add7~12_combout\ & !\Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~10_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~14_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X29_Y10_N30
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Add7~2_combout\ & (\Add7~0_combout\ & (\Add7~4_combout\ & \Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~0_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~6_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X28_Y10_N4
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\Add7~16_combout\ & (!\Add7~18_combout\ & (!\Add7~20_combout\ & !\Add7~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datab => \Add7~18_combout\,
	datac => \Add7~20_combout\,
	datad => \Add7~22_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X28_Y9_N28
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Add7~24_combout\ & (\Add7~26_combout\ & (\Add7~30_combout\ & \Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~24_combout\,
	datab => \Add7~26_combout\,
	datac => \Add7~30_combout\,
	datad => \Add7~28_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X29_Y9_N18
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\ & (\Equal2~0_combout\ & (\Equal2~2_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X29_Y9_N2
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (\Add7~42_combout\ & (\Add7~40_combout\ & (\Equal2~5_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~42_combout\,
	datab => \Add7~40_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X30_Y9_N4
\secondsCounted~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \secondsCounted~19_combout\ = (\Add7~50_combout\ & (((\Add7~48_combout\) # (!\Equal2~6_combout\)) # (!\Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~7_combout\,
	datab => \Add7~50_combout\,
	datac => \Add7~48_combout\,
	datad => \Equal2~6_combout\,
	combout => \secondsCounted~19_combout\);

-- Location: FF_X30_Y9_N5
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

-- Location: LCCOMB_X28_Y9_N24
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

-- Location: LCCOMB_X29_Y9_N0
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!\Add7~48_combout\ & (\Add7~50_combout\ & (\Equal2~7_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~48_combout\,
	datab => \Add7~50_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X29_Y9_N24
\control~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control~2_combout\ = (!control(0) & \Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => control(0),
	datad => \Equal2~8_combout\,
	combout => \control~2_combout\);

-- Location: LCCOMB_X29_Y9_N30
\control[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control[0]~1_combout\ = (\Equal2~8_combout\) # (!\start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~q\,
	datad => \Equal2~8_combout\,
	combout => \control[0]~1_combout\);

-- Location: FF_X29_Y9_N7
\control[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	asdata => \control~2_combout\,
	sload => VCC,
	ena => \control[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => control(0));

-- Location: LCCOMB_X29_Y9_N12
\control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control~0_combout\ = (\Equal2~8_combout\ & (control(1) $ (control(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(1),
	datac => control(0),
	datad => \Equal2~8_combout\,
	combout => \control~0_combout\);

-- Location: FF_X29_Y9_N5
\control[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~inputclkctrl_outclk\,
	asdata => \control~0_combout\,
	sload => VCC,
	ena => \control[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => control(1));

-- Location: LCCOMB_X29_Y9_N16
\control~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control~3_combout\ = (\Equal2~8_combout\ & (control(2) $ (((control(0) & control(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \Equal2~8_combout\,
	datac => control(2),
	datad => control(1),
	combout => \control~3_combout\);

-- Location: FF_X29_Y9_N17
\control[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLOCK_50~input_o\,
	d => \control~3_combout\,
	ena => \control[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => control(2));

-- Location: LCCOMB_X30_Y12_N20
\Mux42~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~6_combout\ = (!control(0) & (control(2) & control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => control(2),
	datad => control(1),
	combout => \Mux42~6_combout\);

-- Location: CLKCTRL_G9
\Mux42~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux42~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux42~6clkctrl_outclk\);

-- Location: LCCOMB_X28_Y11_N26
\s[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- s(7) = (GLOBAL(\Mux42~6clkctrl_outclk\) & (\c2~3_combout\)) # (!GLOBAL(\Mux42~6clkctrl_outclk\) & ((s(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c2~3_combout\,
	datac => s(7),
	datad => \Mux42~6clkctrl_outclk\,
	combout => s(7));

-- Location: LCCOMB_X28_Y11_N0
\w2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~2_combout\ = \c2~2_combout\ $ (\c1~3_combout\ $ (((\V_SW[3]~input_o\ & \V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~2_combout\,
	datab => \V_SW[3]~input_o\,
	datac => \c1~3_combout\,
	datad => \V_SW[7]~input_o\,
	combout => \w2~2_combout\);

-- Location: LCCOMB_X28_Y11_N2
\s[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- s(6) = (GLOBAL(\Mux42~6clkctrl_outclk\) & (\w2~2_combout\)) # (!GLOBAL(\Mux42~6clkctrl_outclk\) & ((s(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w2~2_combout\,
	datac => \Mux42~6clkctrl_outclk\,
	datad => s(6),
	combout => s(6));

-- Location: LCCOMB_X28_Y15_N16
\w2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~1_combout\ = \p3~1_combout\ $ (\c1~2_combout\ $ (\c2~1_combout\ $ (\w1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~1_combout\,
	datab => \c1~2_combout\,
	datac => \c2~1_combout\,
	datad => \w1~5_combout\,
	combout => \w2~1_combout\);

-- Location: LCCOMB_X28_Y11_N4
\s[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- s(5) = (GLOBAL(\Mux42~6clkctrl_outclk\) & (\w2~1_combout\)) # (!GLOBAL(\Mux42~6clkctrl_outclk\) & ((s(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w2~1_combout\,
	datac => s(5),
	datad => \Mux42~6clkctrl_outclk\,
	combout => s(5));

-- Location: LCCOMB_X28_Y20_N6
\carry~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~4_combout\ = (\V_SW[3]~input_o\ & (\V_SW[1]~input_o\ & (\V_SW[0]~input_o\ & \V_SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \carry~4_combout\);

-- Location: LCCOMB_X28_Y15_N4
\w2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w2~0_combout\ = \p3~0_combout\ $ (\c1~1_combout\ $ (\c2~0_combout\ $ (\w1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3~0_combout\,
	datab => \c1~1_combout\,
	datac => \c2~0_combout\,
	datad => \w1~4_combout\,
	combout => \w2~0_combout\);

-- Location: LCCOMB_X30_Y12_N8
\carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~2_combout\ = (\V_SW[5]~input_o\ & ((\V_SW[1]~input_o\) # ((\V_SW[4]~input_o\ & \V_SW[0]~input_o\)))) # (!\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ & (\V_SW[0]~input_o\ & \V_SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \carry~2_combout\);

-- Location: LCCOMB_X30_Y12_N2
\carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~1_combout\ = (\V_SW[5]~input_o\ & (\V_SW[1]~input_o\ & ((\V_SW[0]~input_o\) # (!\V_SW[4]~input_o\)))) # (!\V_SW[5]~input_o\ & (((\V_SW[0]~input_o\) # (\V_SW[1]~input_o\)) # (!\V_SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[1]~input_o\,
	combout => \carry~1_combout\);

-- Location: LCCOMB_X29_Y9_N10
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (control(0) & ((\carry~1_combout\))) # (!control(0) & (\carry~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~2_combout\,
	datac => \carry~1_combout\,
	datad => control(0),
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X29_Y9_N20
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\V_SW[2]~input_o\ & ((\Mux43~3_combout\) # (control(0) $ (\V_SW[6]~input_o\)))) # (!\V_SW[2]~input_o\ & (\Mux43~3_combout\ & (control(0) $ (\V_SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \V_SW[6]~input_o\,
	datac => \V_SW[2]~input_o\,
	datad => \Mux43~3_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X29_Y9_N28
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\V_SW[3]~input_o\ & ((\Mux51~0_combout\) # (control(0) $ (\V_SW[7]~input_o\)))) # (!\V_SW[3]~input_o\ & (\Mux51~0_combout\ & (control(0) $ (\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \V_SW[7]~input_o\,
	datac => \V_SW[3]~input_o\,
	datad => \Mux51~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X29_Y9_N22
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = control(0) $ (((!control(1) & \Mux51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(1),
	datac => control(0),
	datad => \Mux51~1_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X29_Y9_N8
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (control(1) & ((\Mux51~2_combout\ & (\carry~4_combout\)) # (!\Mux51~2_combout\ & ((\w2~0_combout\))))) # (!control(1) & (((\Mux51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \carry~4_combout\,
	datac => \w2~0_combout\,
	datad => \Mux51~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X29_Y9_N4
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = control(1) $ (control(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => control(1),
	datad => control(2),
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X29_Y9_N26
\s[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- s(4) = (\Mux50~0_combout\ & ((s(4)))) # (!\Mux50~0_combout\ & (\Mux51~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux51~3_combout\,
	datac => \Mux50~0_combout\,
	datad => s(4),
	combout => s(4));

-- Location: LCCOMB_X28_Y11_N10
\temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = (s(6) & (!s(4) & (s(7) $ (!s(5))))) # (!s(6) & (s(7) & (!s(5) & s(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(7),
	datab => s(6),
	datac => s(5),
	datad => s(4),
	combout => \temp~1_combout\);

-- Location: LCCOMB_X28_Y11_N16
\temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = (s(7) & (!s(5) & ((s(6)) # (!s(4))))) # (!s(7) & (s(5) & ((s(4)) # (!s(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(7),
	datab => s(6),
	datac => s(5),
	datad => s(4),
	combout => \temp~2_combout\);

-- Location: LCCOMB_X28_Y11_N20
\temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = (s(6) & ((s(7) & (!s(5) & s(4))) # (!s(7) & (s(5) & !s(4))))) # (!s(6) & (s(4) $ (((s(7) & !s(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(7),
	datab => s(6),
	datac => s(5),
	datad => s(4),
	combout => \temp~0_combout\);

-- Location: LCCOMB_X29_Y9_N6
\Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\V_SW[2]~input_o\ & ((\Mux43~3_combout\) # (\V_SW[6]~input_o\ $ (control(0))))) # (!\V_SW[2]~input_o\ & (\Mux43~3_combout\ & (\V_SW[6]~input_o\ $ (control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => \V_SW[6]~input_o\,
	datac => control(0),
	datad => \Mux43~3_combout\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X29_Y12_N10
\Mux43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = \V_SW[3]~input_o\ $ (((!control(1) & \Mux43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => control(1),
	datad => \Mux43~4_combout\,
	combout => \Mux43~5_combout\);

-- Location: LCCOMB_X29_Y12_N12
\Mux43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~6_combout\ = (control(1) & ((\Mux43~5_combout\ & ((\V_SW[7]~input_o\) # (control(0)))) # (!\Mux43~5_combout\ & (\V_SW[7]~input_o\ & control(0))))) # (!control(1) & (\Mux43~5_combout\ $ (\V_SW[7]~input_o\ $ (control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~5_combout\,
	datab => control(1),
	datac => \V_SW[7]~input_o\,
	datad => control(0),
	combout => \Mux43~6_combout\);

-- Location: LCCOMB_X29_Y12_N24
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (control(1) & (((\V_SW[7]~input_o\ & \V_SW[0]~input_o\)))) # (!control(1) & (\V_SW[3]~input_o\ $ ((\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => control(1),
	datac => \V_SW[7]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X29_Y12_N30
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (control(0) & (((control(1))))) # (!control(0) & (\Mux43~0_combout\ $ (((\w1~2_combout\ & control(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~0_combout\,
	datab => \w1~2_combout\,
	datac => control(1),
	datad => control(0),
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X29_Y12_N28
\carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = (\V_SW[2]~input_o\ & (\V_SW[1]~input_o\ & \V_SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_SW[2]~input_o\,
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \carry~0_combout\);

-- Location: LCCOMB_X29_Y12_N20
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (control(0) & (\V_SW[3]~input_o\ $ (((\carry~0_combout\) # (!\Mux43~1_combout\))))) # (!control(0) & (((\Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => control(0),
	datac => \Mux43~1_combout\,
	datad => \carry~0_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X29_Y12_N22
\Mux43~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~7_combout\ = (control(2) & ((\Mux43~2_combout\))) # (!control(2) & (\Mux43~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~6_combout\,
	datac => control(2),
	datad => \Mux43~2_combout\,
	combout => \Mux43~7_combout\);

-- Location: LCCOMB_X28_Y11_N30
\temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~5_combout\ = (\temp~1_combout\ & ((\temp~0_combout\ $ (!\Mux43~7_combout\)))) # (!\temp~1_combout\ & (\temp~0_combout\ & ((\Mux43~7_combout\) # (!\temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \temp~0_combout\,
	datad => \Mux43~7_combout\,
	combout => \temp~5_combout\);

-- Location: LCCOMB_X28_Y11_N12
\temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = (\temp~2_combout\ & (((!\temp~0_combout\ & !\Mux43~7_combout\)))) # (!\temp~2_combout\ & (\temp~1_combout\ & ((\temp~0_combout\) # (\Mux43~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \temp~0_combout\,
	datad => \Mux43~7_combout\,
	combout => \temp~4_combout\);

-- Location: LCCOMB_X28_Y11_N6
\temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = (\temp~1_combout\ & (((!\Mux43~7_combout\)))) # (!\temp~1_combout\ & ((\temp~2_combout\ & (\temp~0_combout\ & !\Mux43~7_combout\)) # (!\temp~2_combout\ & ((\Mux43~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \temp~0_combout\,
	datad => \Mux43~7_combout\,
	combout => \temp~3_combout\);

-- Location: LCCOMB_X29_Y12_N26
\Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (control(0) & ((control(1) & (\V_SW[2]~input_o\)) # (!control(1) & ((\V_SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => control(1),
	datac => \V_SW[6]~input_o\,
	datad => control(0),
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X30_Y9_N6
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (control(0) & (\carry~1_combout\)) # (!control(0) & ((\carry~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => control(0),
	datac => \carry~1_combout\,
	datad => \carry~2_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X29_Y11_N12
\Mux44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = (control(2) & (\Mux44~4_combout\)) # (!control(2) & ((control(1) & (\Mux44~4_combout\)) # (!control(1) & ((\Mux44~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => \Mux44~4_combout\,
	datac => control(1),
	datad => \Mux44~3_combout\,
	combout => \Mux44~5_combout\);

-- Location: LCCOMB_X29_Y12_N0
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (control(1) & (\V_SW[6]~input_o\ & (\V_SW[2]~input_o\ $ (control(0))))) # (!control(1) & (\V_SW[2]~input_o\ $ (\V_SW[6]~input_o\ $ (control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[2]~input_o\,
	datab => control(1),
	datac => \V_SW[6]~input_o\,
	datad => control(0),
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X29_Y12_N8
\Mux44~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~6_combout\ = (control(2) & control(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datad => control(1),
	combout => \Mux44~6_combout\);

-- Location: LCCOMB_X28_Y20_N10
\w1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \w1~3_combout\ = \p0~0_combout\ $ (\p1~0_combout\ $ (\c0~0_combout\ $ (\p2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0~0_combout\,
	datab => \p1~0_combout\,
	datac => \c0~0_combout\,
	datad => \p2~1_combout\,
	combout => \w1~3_combout\);

-- Location: LCCOMB_X29_Y12_N18
\Mux44~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~8_combout\ = (control(0) & (((\V_SW[1]~input_o\ & \V_SW[0]~input_o\)))) # (!control(0) & (\w1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1~3_combout\,
	datab => control(0),
	datac => \V_SW[1]~input_o\,
	datad => \V_SW[0]~input_o\,
	combout => \Mux44~8_combout\);

-- Location: LCCOMB_X29_Y12_N2
\Mux44~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~7_combout\ = (\Mux44~6_combout\ & (\Mux44~8_combout\ $ (((\Mux44~5_combout\ & !\Mux44~2_combout\))))) # (!\Mux44~6_combout\ & (\Mux44~5_combout\ $ ((\Mux44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~5_combout\,
	datab => \Mux44~2_combout\,
	datac => \Mux44~6_combout\,
	datad => \Mux44~8_combout\,
	combout => \Mux44~7_combout\);

-- Location: LCCOMB_X25_Y8_N28
\temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = (\temp~5_combout\ & (!\Mux44~7_combout\ & ((\temp~4_combout\) # (\temp~3_combout\)))) # (!\temp~5_combout\ & (\temp~4_combout\ $ (((\Mux44~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~5_combout\,
	datab => \temp~4_combout\,
	datac => \temp~3_combout\,
	datad => \Mux44~7_combout\,
	combout => \temp~7_combout\);

-- Location: LCCOMB_X30_Y12_N6
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (control(1) & (((!control(2)) # (!\V_SW[0]~input_o\)))) # (!control(1) & (\V_SW[4]~input_o\ & (!\V_SW[0]~input_o\ & !control(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => control(2),
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X30_Y9_N28
\Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (control(2) & (!control(0))) # (!control(2) & (\Mux45~1_combout\ & (control(0) $ (!\V_SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => control(0),
	datac => \V_SW[5]~input_o\,
	datad => \Mux45~1_combout\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X30_Y9_N30
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\Mux45~1_combout\ & ((control(2)) # ((control(0) & \V_SW[5]~input_o\)))) # (!\Mux45~1_combout\ & (((control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => control(0),
	datac => \V_SW[5]~input_o\,
	datad => \Mux45~1_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X30_Y9_N12
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (control(0) & (\Mux45~1_combout\ $ (((control(2)) # (\V_SW[5]~input_o\))))) # (!control(0) & ((\V_SW[5]~input_o\) # ((control(2) & \Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => control(0),
	datac => \V_SW[5]~input_o\,
	datad => \Mux45~1_combout\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X30_Y9_N14
\Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~5_combout\ = (\V_SW[1]~input_o\ & (((!\Mux45~2_combout\)))) # (!\V_SW[1]~input_o\ & (\Mux45~2_combout\ & ((!\Mux45~3_combout\) # (!\Mux45~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[1]~input_o\,
	datab => \Mux45~4_combout\,
	datac => \Mux45~3_combout\,
	datad => \Mux45~2_combout\,
	combout => \Mux45~5_combout\);

-- Location: LCCOMB_X30_Y9_N0
\Mux45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~6_combout\ = (\Mux45~4_combout\ & (\V_SW[1]~input_o\ $ (((\Mux45~2_combout\) # (!\Mux45~3_combout\))))) # (!\Mux45~4_combout\ & (((\Mux45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[1]~input_o\,
	datab => \Mux45~4_combout\,
	datac => \Mux45~3_combout\,
	datad => \Mux45~2_combout\,
	combout => \Mux45~6_combout\);

-- Location: LCCOMB_X30_Y12_N28
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (control(1) & ((\V_SW[4]~input_o\ $ (\V_SW[0]~input_o\)) # (!control(2)))) # (!control(1) & (\V_SW[4]~input_o\ & (\V_SW[0]~input_o\ & !control(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => control(2),
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X31_Y9_N28
\Mux45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~7_combout\ = \Mux45~5_combout\ $ (((!\Mux45~6_combout\ & \Mux45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~5_combout\,
	datac => \Mux45~6_combout\,
	datad => \Mux45~0_combout\,
	combout => \Mux45~7_combout\);

-- Location: LCCOMB_X25_Y8_N22
\temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = (\temp~4_combout\ & ((\temp~3_combout\ $ (!\Mux44~7_combout\)))) # (!\temp~4_combout\ & (\temp~3_combout\ & ((\Mux44~7_combout\) # (!\temp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~5_combout\,
	datab => \temp~4_combout\,
	datac => \temp~3_combout\,
	datad => \Mux44~7_combout\,
	combout => \temp~8_combout\);

-- Location: LCCOMB_X25_Y8_N24
\temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = (\temp~5_combout\ & (((!\temp~3_combout\ & !\Mux44~7_combout\)))) # (!\temp~5_combout\ & (\temp~4_combout\ & ((\temp~3_combout\) # (\Mux44~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~5_combout\,
	datab => \temp~4_combout\,
	datac => \temp~3_combout\,
	datad => \Mux44~7_combout\,
	combout => \temp~6_combout\);

-- Location: LCCOMB_X25_Y8_N8
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\temp~6_combout\) # ((\temp~8_combout\ & ((\Mux45~7_combout\) # (\temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~7_combout\,
	datab => \temp~7_combout\,
	datac => \temp~8_combout\,
	datad => \temp~6_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X25_Y8_N18
\u[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u[2]~1_combout\ = (!\reset~q\ & (\temp~7_combout\ $ (((\LessThan5~1_combout\ & !\Mux45~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \temp~7_combout\,
	datac => \LessThan5~1_combout\,
	datad => \Mux45~7_combout\,
	combout => \u[2]~1_combout\);

-- Location: LCCOMB_X25_Y8_N16
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\temp~4_combout\) # ((\temp~5_combout\ & ((\temp~3_combout\) # (\Mux44~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~5_combout\,
	datab => \temp~4_combout\,
	datac => \temp~3_combout\,
	datad => \Mux44~7_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X25_Y8_N12
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\Mux45~7_combout\) # (\Mux44~7_combout\ $ (\LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~7_combout\,
	datab => \LessThan3~0_combout\,
	datad => \Mux45~7_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X25_Y8_N10
\u[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u[3]~2_combout\ = (!\reset~q\ & ((\LessThan5~2_combout\ & (\temp~6_combout\ & !\temp~8_combout\)) # (!\LessThan5~2_combout\ & ((\temp~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \temp~6_combout\,
	datac => \temp~8_combout\,
	datad => \reset~q\,
	combout => \u[3]~2_combout\);

-- Location: LCCOMB_X30_Y12_N10
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\V_SW[0]~input_o\ & (!control(0) & (\V_SW[4]~input_o\ $ (!control(1))))) # (!\V_SW[0]~input_o\ & (((\V_SW[4]~input_o\ & !control(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(0),
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => control(1),
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X30_Y12_N24
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (control(2) & (((!\V_SW[0]~input_o\)))) # (!control(2) & ((\V_SW[4]~input_o\ & (control(1))) # (!\V_SW[4]~input_o\ & ((\V_SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => control(2),
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X30_Y12_N30
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (!\reset~q\ & ((\Mux46~0_combout\) # ((\Mux46~1_combout\ & control(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~0_combout\,
	datab => \Mux46~1_combout\,
	datac => control(0),
	datad => \reset~q\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X25_Y8_N26
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Mux44~7_combout\ & (\temp~3_combout\ & ((\Mux45~7_combout\) # (!\LessThan3~0_combout\)))) # (!\Mux44~7_combout\ & ((\LessThan3~0_combout\ & (!\temp~3_combout\)) # (!\LessThan3~0_combout\ & (\temp~3_combout\ & 
-- \Mux45~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~7_combout\,
	datab => \LessThan3~0_combout\,
	datac => \temp~3_combout\,
	datad => \Mux45~7_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X25_Y8_N2
\u[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u[1]~0_combout\ = (!\reset~q\ & (\Mux45~7_combout\ $ (((\temp~6_combout\) # (\LessThan5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \temp~6_combout\,
	datac => \LessThan5~0_combout\,
	datad => \Mux45~7_combout\,
	combout => \u[1]~0_combout\);

-- Location: LCCOMB_X24_Y4_N24
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\u[2]~1_combout\ & (!\u[1]~0_combout\ & (\u[3]~2_combout\ $ (!\Mux46~2_combout\)))) # (!\u[2]~1_combout\ & (\Mux46~2_combout\ & (\u[3]~2_combout\ $ (!\u[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[2]~1_combout\,
	datab => \u[3]~2_combout\,
	datac => \Mux46~2_combout\,
	datad => \u[1]~0_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X24_Y4_N10
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\u[3]~2_combout\ & ((\Mux46~2_combout\ & ((\u[1]~0_combout\))) # (!\Mux46~2_combout\ & (\u[2]~1_combout\)))) # (!\u[3]~2_combout\ & (\u[2]~1_combout\ & (\Mux46~2_combout\ $ (\u[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[2]~1_combout\,
	datab => \u[3]~2_combout\,
	datac => \Mux46~2_combout\,
	datad => \u[1]~0_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X24_Y4_N12
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\u[2]~1_combout\ & (\u[3]~2_combout\ & ((\u[1]~0_combout\) # (!\Mux46~2_combout\)))) # (!\u[2]~1_combout\ & (!\u[3]~2_combout\ & (!\Mux46~2_combout\ & \u[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[2]~1_combout\,
	datab => \u[3]~2_combout\,
	datac => \Mux46~2_combout\,
	datad => \u[1]~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X24_Y4_N22
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\u[1]~0_combout\ & ((\u[2]~1_combout\ & ((\Mux46~2_combout\))) # (!\u[2]~1_combout\ & (\u[3]~2_combout\ & !\Mux46~2_combout\)))) # (!\u[1]~0_combout\ & (!\u[3]~2_combout\ & (\u[2]~1_combout\ $ (\Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[2]~1_combout\,
	datab => \u[3]~2_combout\,
	datac => \Mux46~2_combout\,
	datad => \u[1]~0_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X24_Y4_N4
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\u[1]~0_combout\ & (((!\u[3]~2_combout\ & \Mux46~2_combout\)))) # (!\u[1]~0_combout\ & ((\u[2]~1_combout\ & (!\u[3]~2_combout\)) # (!\u[2]~1_combout\ & ((\Mux46~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[2]~1_combout\,
	datab => \u[3]~2_combout\,
	datac => \Mux46~2_combout\,
	datad => \u[1]~0_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X24_Y4_N26
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\u[1]~0_combout\ & (!\u[2]~1_combout\ & (!\u[3]~2_combout\))) # (!\u[1]~0_combout\ & (\Mux46~2_combout\ & (\u[2]~1_combout\ $ (!\u[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[2]~1_combout\,
	datab => \u[3]~2_combout\,
	datac => \Mux46~2_combout\,
	datad => \u[1]~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X24_Y4_N28
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux46~2_combout\ & ((\u[3]~2_combout\) # (\u[2]~1_combout\ $ (\u[1]~0_combout\)))) # (!\Mux46~2_combout\ & ((\u[1]~0_combout\) # (\u[2]~1_combout\ $ (\u[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u[2]~1_combout\,
	datab => \u[3]~2_combout\,
	datac => \Mux46~2_combout\,
	datad => \u[1]~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X28_Y11_N22
\temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~11_combout\ = ((!s(6) & !s(5))) # (!s(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(7),
	datab => s(6),
	datac => s(5),
	combout => \temp~11_combout\);

-- Location: LCCOMB_X28_Y11_N8
\temp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~12_combout\ = \temp~1_combout\ $ ((((!\temp~0_combout\ & !\Mux43~7_combout\)) # (!\temp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~2_combout\,
	datac => \temp~0_combout\,
	datad => \Mux43~7_combout\,
	combout => \temp~12_combout\);

-- Location: LCCOMB_X25_Y8_N30
\temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = \temp~4_combout\ $ ((((!\temp~3_combout\ & !\Mux44~7_combout\)) # (!\temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~5_combout\,
	datab => \temp~4_combout\,
	datac => \temp~3_combout\,
	datad => \Mux44~7_combout\,
	combout => \temp~9_combout\);

-- Location: LCCOMB_X28_Y11_N24
\temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (s(7) & ((s(6) & (s(5) & s(4))) # (!s(6) & (!s(5))))) # (!s(7) & (s(6) & ((s(5)) # (s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(7),
	datab => s(6),
	datac => s(5),
	datad => s(4),
	combout => \temp~10_combout\);

-- Location: LCCOMB_X25_Y7_N10
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \temp~9_combout\ $ (((\temp~11_combout\ & (\temp~12_combout\)) # (!\temp~11_combout\ & ((!\temp~10_combout\) # (!\temp~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~11_combout\,
	datab => \temp~12_combout\,
	datac => \temp~9_combout\,
	datad => \temp~10_combout\,
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X28_Y11_N14
\t[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[2]~2_combout\ = (s(7) & (s(6) & (s(5) & s(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(7),
	datab => s(6),
	datac => s(5),
	datad => s(4),
	combout => \t[2]~2_combout\);

-- Location: LCCOMB_X25_Y7_N24
\t[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[2]~3_combout\ = (\t[2]~2_combout\) # ((\temp~11_combout\ & !\temp~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~11_combout\,
	datac => \temp~12_combout\,
	datad => \t[2]~2_combout\,
	combout => \t[2]~3_combout\);

-- Location: LCCOMB_X25_Y7_N8
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\temp~11_combout\ & (\temp~10_combout\ & ((!\temp~9_combout\) # (!\temp~12_combout\)))) # (!\temp~11_combout\ & ((\temp~12_combout\ & ((!\temp~10_combout\))) # (!\temp~12_combout\ & (!\temp~9_combout\ & \temp~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~11_combout\,
	datab => \temp~12_combout\,
	datac => \temp~9_combout\,
	datad => \temp~10_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\t[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[2]~4_combout\ = (!\reset~q\ & ((\LessThan6~0_combout\ & (!\Add6~0_combout\)) # (!\LessThan6~0_combout\ & ((\t[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \t[2]~3_combout\,
	datac => \LessThan6~0_combout\,
	datad => \reset~q\,
	combout => \t[2]~4_combout\);

-- Location: LCCOMB_X25_Y7_N26
\t[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[1]~1_combout\ = (\reset~q\) # (\LessThan6~0_combout\ $ (\temp~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan6~0_combout\,
	datac => \temp~9_combout\,
	datad => \reset~q\,
	combout => \t[1]~1_combout\);

-- Location: LCCOMB_X25_Y7_N20
\t[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[3]~5_combout\ = (\temp~10_combout\ & ((\temp~11_combout\) # (!\temp~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~11_combout\,
	datac => \temp~12_combout\,
	datad => \temp~10_combout\,
	combout => \t[3]~5_combout\);

-- Location: LCCOMB_X25_Y7_N2
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = (\temp~9_combout\ & (\temp~10_combout\ $ (((\temp~11_combout\ & !\temp~12_combout\))))) # (!\temp~9_combout\ & (((!\temp~11_combout\ & \temp~12_combout\)) # (!\temp~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~11_combout\,
	datab => \temp~12_combout\,
	datac => \temp~9_combout\,
	datad => \temp~10_combout\,
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X25_Y7_N22
\t[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[3]~6_combout\ = (!\reset~q\ & ((\LessThan6~0_combout\ & ((\Add6~1_combout\))) # (!\LessThan6~0_combout\ & (\t[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \t[3]~5_combout\,
	datac => \LessThan6~0_combout\,
	datad => \Add6~1_combout\,
	combout => \t[3]~6_combout\);

-- Location: LCCOMB_X25_Y8_N20
\t[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[0]~0_combout\ = (\reset~q\) # (\temp~6_combout\ $ (!\LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp~6_combout\,
	datac => \LessThan5~0_combout\,
	datad => \reset~q\,
	combout => \t[0]~0_combout\);

-- Location: LCCOMB_X25_Y4_N12
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\t[2]~4_combout\ & (\t[1]~1_combout\ & (\t[3]~6_combout\ $ (\t[0]~0_combout\)))) # (!\t[2]~4_combout\ & (!\t[0]~0_combout\ & (\t[1]~1_combout\ $ (\t[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~4_combout\,
	datab => \t[1]~1_combout\,
	datac => \t[3]~6_combout\,
	datad => \t[0]~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X25_Y4_N22
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\t[1]~1_combout\ & (\t[2]~4_combout\ & (\t[3]~6_combout\ $ (!\t[0]~0_combout\)))) # (!\t[1]~1_combout\ & ((\t[0]~0_combout\ & (\t[2]~4_combout\)) # (!\t[0]~0_combout\ & ((\t[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~4_combout\,
	datab => \t[1]~1_combout\,
	datac => \t[3]~6_combout\,
	datad => \t[0]~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X25_Y4_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\t[2]~4_combout\ & (\t[3]~6_combout\ & ((\t[0]~0_combout\) # (!\t[1]~1_combout\)))) # (!\t[2]~4_combout\ & (!\t[1]~1_combout\ & (!\t[3]~6_combout\ & \t[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~4_combout\,
	datab => \t[1]~1_combout\,
	datac => \t[3]~6_combout\,
	datad => \t[0]~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X25_Y4_N14
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\t[1]~1_combout\ & (!\t[3]~6_combout\ & (\t[2]~4_combout\ $ (!\t[0]~0_combout\)))) # (!\t[1]~1_combout\ & ((\t[2]~4_combout\ & ((!\t[0]~0_combout\))) # (!\t[2]~4_combout\ & (\t[3]~6_combout\ & \t[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~4_combout\,
	datab => \t[1]~1_combout\,
	datac => \t[3]~6_combout\,
	datad => \t[0]~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X25_Y4_N4
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\t[1]~1_combout\ & ((\t[2]~4_combout\ & (!\t[3]~6_combout\)) # (!\t[2]~4_combout\ & ((!\t[0]~0_combout\))))) # (!\t[1]~1_combout\ & (((!\t[3]~6_combout\ & !\t[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~4_combout\,
	datab => \t[1]~1_combout\,
	datac => \t[3]~6_combout\,
	datad => \t[0]~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X25_Y4_N10
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\t[1]~1_combout\ & (!\t[0]~0_combout\ & (\t[2]~4_combout\ $ (!\t[3]~6_combout\)))) # (!\t[1]~1_combout\ & (!\t[2]~4_combout\ & (!\t[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~4_combout\,
	datab => \t[1]~1_combout\,
	datac => \t[3]~6_combout\,
	datad => \t[0]~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X25_Y4_N28
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\t[0]~0_combout\ & ((\t[2]~4_combout\ $ (\t[3]~6_combout\)) # (!\t[1]~1_combout\))) # (!\t[0]~0_combout\ & ((\t[3]~6_combout\) # (\t[2]~4_combout\ $ (!\t[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~4_combout\,
	datab => \t[1]~1_combout\,
	datac => \t[3]~6_combout\,
	datad => \t[0]~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X28_Y11_N28
\h[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h[1]~0_combout\ = (s(7) & (!\reset~q\ & ((s(6)) # (s(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(7),
	datab => s(6),
	datac => s(5),
	datad => \reset~q\,
	combout => \h[1]~0_combout\);

-- Location: LCCOMB_X25_Y7_N14
\h[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h[1]~1_combout\ = (\h[1]~0_combout\ & ((\temp~10_combout\) # (!\temp~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp~12_combout\,
	datac => \h[1]~0_combout\,
	datad => \temp~10_combout\,
	combout => \h[1]~1_combout\);

-- Location: LCCOMB_X25_Y7_N28
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\temp~11_combout\ & (((\temp~12_combout\ & \temp~9_combout\)) # (!\temp~10_combout\))) # (!\temp~11_combout\ & ((\temp~12_combout\ & ((\temp~10_combout\))) # (!\temp~12_combout\ & ((\temp~9_combout\) # (!\temp~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~11_combout\,
	datab => \temp~12_combout\,
	datac => \temp~9_combout\,
	datad => \temp~10_combout\,
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X25_Y7_N12
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\h[1]~1_combout\) # ((\Add6~2_combout\) # ((\reset~q\) # (!\LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h[1]~1_combout\,
	datab => \Add6~2_combout\,
	datac => \LessThan6~0_combout\,
	datad => \reset~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X25_Y7_N30
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ((!\Add6~2_combout\ & (\LessThan6~0_combout\ & !\reset~q\))) # (!\h[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h[1]~1_combout\,
	datab => \Add6~2_combout\,
	datac => \LessThan6~0_combout\,
	datad => \reset~q\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X25_Y7_N0
\h[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h[0]~2_combout\ = (!\Add6~2_combout\ & (\LessThan6~0_combout\ & !\reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~2_combout\,
	datac => \LessThan6~0_combout\,
	datad => \reset~q\,
	combout => \h[0]~2_combout\);

-- Location: LCCOMB_X25_Y7_N18
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\h[1]~1_combout\) # ((!\Add6~2_combout\ & (\LessThan6~0_combout\ & !\reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h[1]~1_combout\,
	datab => \Add6~2_combout\,
	datac => \LessThan6~0_combout\,
	datad => \reset~q\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X30_Y12_N0
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\V_SW[6]~input_o\ & (!\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ $ (!\V_SW[7]~input_o\)))) # (!\V_SW[6]~input_o\ & (\V_SW[4]~input_o\ & (\V_SW[5]~input_o\ $ (!\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X30_Y12_N14
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\V_SW[5]~input_o\ & ((\V_SW[4]~input_o\ & ((\V_SW[7]~input_o\))) # (!\V_SW[4]~input_o\ & (\V_SW[6]~input_o\)))) # (!\V_SW[5]~input_o\ & (\V_SW[6]~input_o\ & (\V_SW[4]~input_o\ $ (\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X30_Y12_N12
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\V_SW[6]~input_o\ & (\V_SW[7]~input_o\ & ((\V_SW[5]~input_o\) # (!\V_SW[4]~input_o\)))) # (!\V_SW[6]~input_o\ & (\V_SW[5]~input_o\ & (!\V_SW[4]~input_o\ & !\V_SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X30_Y12_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\V_SW[5]~input_o\ & ((\V_SW[4]~input_o\ & (\V_SW[6]~input_o\)) # (!\V_SW[4]~input_o\ & (!\V_SW[6]~input_o\ & \V_SW[7]~input_o\)))) # (!\V_SW[5]~input_o\ & (!\V_SW[7]~input_o\ & (\V_SW[4]~input_o\ $ (\V_SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X30_Y12_N16
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ & ((!\V_SW[7]~input_o\)))) # (!\V_SW[5]~input_o\ & ((\V_SW[6]~input_o\ & ((!\V_SW[7]~input_o\))) # (!\V_SW[6]~input_o\ & (\V_SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X30_Y12_N22
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\V_SW[5]~input_o\ & (((!\V_SW[6]~input_o\ & !\V_SW[7]~input_o\)))) # (!\V_SW[5]~input_o\ & (\V_SW[4]~input_o\ & (\V_SW[6]~input_o\ $ (!\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X30_Y12_N18
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\V_SW[4]~input_o\ & ((\V_SW[7]~input_o\) # (\V_SW[5]~input_o\ $ (\V_SW[6]~input_o\)))) # (!\V_SW[4]~input_o\ & ((\V_SW[5]~input_o\) # (\V_SW[6]~input_o\ $ (\V_SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[5]~input_o\,
	datab => \V_SW[4]~input_o\,
	datac => \V_SW[6]~input_o\,
	datad => \V_SW[7]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X28_Y20_N4
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\V_SW[3]~input_o\ & (\V_SW[0]~input_o\ & (\V_SW[1]~input_o\ $ (\V_SW[2]~input_o\)))) # (!\V_SW[3]~input_o\ & (!\V_SW[1]~input_o\ & (\V_SW[0]~input_o\ $ (\V_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\V_SW[3]~input_o\ & ((\V_SW[0]~input_o\ & (\V_SW[1]~input_o\)) # (!\V_SW[0]~input_o\ & ((\V_SW[2]~input_o\))))) # (!\V_SW[3]~input_o\ & (\V_SW[2]~input_o\ & (\V_SW[1]~input_o\ $ (\V_SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X28_Y20_N24
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\V_SW[3]~input_o\ & (\V_SW[2]~input_o\ & ((\V_SW[1]~input_o\) # (!\V_SW[0]~input_o\)))) # (!\V_SW[3]~input_o\ & (\V_SW[1]~input_o\ & (!\V_SW[0]~input_o\ & !\V_SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\V_SW[1]~input_o\ & ((\V_SW[0]~input_o\ & ((\V_SW[2]~input_o\))) # (!\V_SW[0]~input_o\ & (\V_SW[3]~input_o\ & !\V_SW[2]~input_o\)))) # (!\V_SW[1]~input_o\ & (!\V_SW[3]~input_o\ & (\V_SW[0]~input_o\ $ (\V_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\V_SW[1]~input_o\ & (!\V_SW[3]~input_o\ & (\V_SW[0]~input_o\))) # (!\V_SW[1]~input_o\ & ((\V_SW[2]~input_o\ & (!\V_SW[3]~input_o\)) # (!\V_SW[2]~input_o\ & ((\V_SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X28_Y20_N22
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\V_SW[1]~input_o\ & (!\V_SW[3]~input_o\ & ((!\V_SW[2]~input_o\)))) # (!\V_SW[1]~input_o\ & (\V_SW[0]~input_o\ & (\V_SW[3]~input_o\ $ (!\V_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X28_Y20_N8
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\V_SW[0]~input_o\ & ((\V_SW[3]~input_o\) # (\V_SW[1]~input_o\ $ (\V_SW[2]~input_o\)))) # (!\V_SW[0]~input_o\ & ((\V_SW[1]~input_o\) # (\V_SW[3]~input_o\ $ (\V_SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_SW[3]~input_o\,
	datab => \V_SW[1]~input_o\,
	datac => \V_SW[0]~input_o\,
	datad => \V_SW[2]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X30_Y9_N24
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (!control(2) & (!control(0) & !control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datac => control(0),
	datad => control(1),
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X29_Y10_N28
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (!control(1) & (control(0) & !control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datac => control(0),
	datad => control(2),
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X30_Y9_N22
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (!control(2) & (!control(0) & control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datac => control(0),
	datad => control(1),
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X30_Y9_N16
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (!control(2) & (control(0) & control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datac => control(0),
	datad => control(1),
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X29_Y12_N16
\Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (control(2) & (!control(1) & !control(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datab => control(1),
	datad => control(0),
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X30_Y9_N2
\Mux42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = (control(2) & (control(0) & !control(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(2),
	datac => control(0),
	datad => control(1),
	combout => \Mux42~5_combout\);

-- Location: LCCOMB_X29_Y10_N10
\Mux42~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~7_combout\ = (control(1) & (control(0) & control(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => control(1),
	datac => control(0),
	datad => control(2),
	combout => \Mux42~7_combout\);

-- Location: IOIBUF_X0_Y23_N15
\V_BT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V_BT(2),
	o => \V_BT[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
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

ww_G_LEDG(0) <= \G_LEDG[0]~output_o\;

ww_G_LEDG(1) <= \G_LEDG[1]~output_o\;

ww_G_LEDG(2) <= \G_LEDG[2]~output_o\;

ww_G_LEDG(3) <= \G_LEDG[3]~output_o\;

ww_G_LEDG(4) <= \G_LEDG[4]~output_o\;

ww_G_LEDG(5) <= \G_LEDG[5]~output_o\;

ww_G_LEDG(6) <= \G_LEDG[6]~output_o\;

ww_G_LEDG(7) <= \G_LEDG[7]~output_o\;
END structure;


