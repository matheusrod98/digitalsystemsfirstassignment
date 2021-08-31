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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/30/2021 22:01:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ula
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ula_vhd_vec_tst IS
END ula_vhd_vec_tst;
ARCHITECTURE ula_arch OF ula_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL G_LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL V_SW : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ula
	PORT (
	G_LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	V_SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ula
	PORT MAP (
-- list connections between master ports and signals
	G_LEDG => G_LEDG,
	V_SW => V_SW
	);
-- V_SW[7]
t_prcs_V_SW_7: PROCESS
BEGIN
	V_SW(7) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_7;
-- V_SW[6]
t_prcs_V_SW_6: PROCESS
BEGIN
	V_SW(6) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_6;
-- V_SW[5]
t_prcs_V_SW_5: PROCESS
BEGIN
	V_SW(5) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_5;
-- V_SW[4]
t_prcs_V_SW_4: PROCESS
BEGIN
	V_SW(4) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_4;
-- V_SW[3]
t_prcs_V_SW_3: PROCESS
BEGIN
	V_SW(3) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_3;
-- V_SW[2]
t_prcs_V_SW_2: PROCESS
BEGIN
	V_SW(2) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_2;
-- V_SW[1]
t_prcs_V_SW_1: PROCESS
BEGIN
	V_SW(1) <= '0';
WAIT;
END PROCESS t_prcs_V_SW_1;
-- V_SW[0]
t_prcs_V_SW_0: PROCESS
BEGIN
	V_SW(0) <= '1';
WAIT;
END PROCESS t_prcs_V_SW_0;
END ula_arch;
