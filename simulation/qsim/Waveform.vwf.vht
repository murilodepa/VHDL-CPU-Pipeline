-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/24/2019 20:37:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Cpu_pipline
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Cpu_pipline_vhd_vec_tst IS
END Cpu_pipline_vhd_vec_tst;
ARCHITECTURE Cpu_pipline_arch OF Cpu_pipline_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL instrucao : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL pc_view : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg1 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg2 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg3 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg4 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg5 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg6 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg7 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg8 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg9 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg10 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL reg11 : STD_LOGIC_VECTOR(0 TO 31);
COMPONENT Cpu_pipline
	PORT (
	clock : IN STD_LOGIC;
	instrucao : OUT STD_LOGIC_VECTOR(0 TO 31);
	pc_view : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg1 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg2 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg3 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg4 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg5 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg6 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg7 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg8 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg9 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg10 : OUT STD_LOGIC_VECTOR(0 TO 31);
	reg11 : OUT STD_LOGIC_VECTOR(0 TO 31)
	);
END COMPONENT;
BEGIN
	i1 : Cpu_pipline
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	instrucao => instrucao,
	pc_view => pc_view,
	reg1 => reg1,
	reg2 => reg2,
	reg3 => reg3,
	reg4 => reg4,
	reg5 => reg5,
	reg6 => reg6,
	reg7 => reg7,
	reg8 => reg8,
	reg9 => reg9,
	reg10 => reg10,
	reg11 => reg11
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 400000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END Cpu_pipline_arch;
