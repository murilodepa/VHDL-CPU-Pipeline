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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/20/2019 13:16:32"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Cpu_pipline IS
    PORT (
	clock : IN std_logic;
	reg1 : BUFFER std_logic_vector(0 TO 31);
	reg3 : BUFFER std_logic_vector(0 TO 31);
	reg6 : BUFFER std_logic_vector(0 TO 31);
	z : BUFFER std_logic_vector(0 TO 31);
	k : BUFFER std_logic_vector(0 TO 4);
	rt : BUFFER std_logic_vector(0 TO 4);
	rd : BUFFER std_logic_vector(0 TO 4);
	reger : BUFFER std_logic;
	Aluop1 : BUFFER std_logic_vector(0 TO 5);
	rfinal : BUFFER std_logic_vector(0 TO 4)
	);
END Cpu_pipline;

-- Design Ports Information
-- reg1[31]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[30]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[29]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[28]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[27]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[26]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[25]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[23]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[21]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[20]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[19]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[18]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[17]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[16]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[15]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[14]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[13]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[11]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[10]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[9]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[31]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[30]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[29]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[28]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[27]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[26]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[25]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[24]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[23]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[22]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[21]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[20]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[19]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[18]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[17]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[16]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[15]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[14]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[13]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[8]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[31]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[30]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[29]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[28]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[27]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[26]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[25]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[24]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[23]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[22]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[21]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[20]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[19]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[18]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[17]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[16]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[14]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[13]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[12]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[10]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[8]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[31]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[30]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[29]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[28]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[27]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[26]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[25]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[24]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[23]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[22]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[21]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[20]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[19]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[18]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[17]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[16]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[11]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[9]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[8]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[7]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[4]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[0]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reger	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluop1[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluop1[4]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluop1[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluop1[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluop1[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluop1[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfinal[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfinal[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfinal[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfinal[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rfinal[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Cpu_pipline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reg1 : std_logic_vector(0 TO 31);
SIGNAL ww_reg3 : std_logic_vector(0 TO 31);
SIGNAL ww_reg6 : std_logic_vector(0 TO 31);
SIGNAL ww_z : std_logic_vector(0 TO 31);
SIGNAL ww_k : std_logic_vector(0 TO 4);
SIGNAL ww_rt : std_logic_vector(0 TO 4);
SIGNAL ww_rd : std_logic_vector(0 TO 4);
SIGNAL ww_reger : std_logic;
SIGNAL ww_Aluop1 : std_logic_vector(0 TO 5);
SIGNAL ww_rfinal : std_logic_vector(0 TO 4);
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg1[31]~output_o\ : std_logic;
SIGNAL \reg1[30]~output_o\ : std_logic;
SIGNAL \reg1[29]~output_o\ : std_logic;
SIGNAL \reg1[28]~output_o\ : std_logic;
SIGNAL \reg1[27]~output_o\ : std_logic;
SIGNAL \reg1[26]~output_o\ : std_logic;
SIGNAL \reg1[25]~output_o\ : std_logic;
SIGNAL \reg1[24]~output_o\ : std_logic;
SIGNAL \reg1[23]~output_o\ : std_logic;
SIGNAL \reg1[22]~output_o\ : std_logic;
SIGNAL \reg1[21]~output_o\ : std_logic;
SIGNAL \reg1[20]~output_o\ : std_logic;
SIGNAL \reg1[19]~output_o\ : std_logic;
SIGNAL \reg1[18]~output_o\ : std_logic;
SIGNAL \reg1[17]~output_o\ : std_logic;
SIGNAL \reg1[16]~output_o\ : std_logic;
SIGNAL \reg1[15]~output_o\ : std_logic;
SIGNAL \reg1[14]~output_o\ : std_logic;
SIGNAL \reg1[13]~output_o\ : std_logic;
SIGNAL \reg1[12]~output_o\ : std_logic;
SIGNAL \reg1[11]~output_o\ : std_logic;
SIGNAL \reg1[10]~output_o\ : std_logic;
SIGNAL \reg1[9]~output_o\ : std_logic;
SIGNAL \reg1[8]~output_o\ : std_logic;
SIGNAL \reg1[7]~output_o\ : std_logic;
SIGNAL \reg1[6]~output_o\ : std_logic;
SIGNAL \reg1[5]~output_o\ : std_logic;
SIGNAL \reg1[4]~output_o\ : std_logic;
SIGNAL \reg1[3]~output_o\ : std_logic;
SIGNAL \reg1[2]~output_o\ : std_logic;
SIGNAL \reg1[1]~output_o\ : std_logic;
SIGNAL \reg1[0]~output_o\ : std_logic;
SIGNAL \reg3[31]~output_o\ : std_logic;
SIGNAL \reg3[30]~output_o\ : std_logic;
SIGNAL \reg3[29]~output_o\ : std_logic;
SIGNAL \reg3[28]~output_o\ : std_logic;
SIGNAL \reg3[27]~output_o\ : std_logic;
SIGNAL \reg3[26]~output_o\ : std_logic;
SIGNAL \reg3[25]~output_o\ : std_logic;
SIGNAL \reg3[24]~output_o\ : std_logic;
SIGNAL \reg3[23]~output_o\ : std_logic;
SIGNAL \reg3[22]~output_o\ : std_logic;
SIGNAL \reg3[21]~output_o\ : std_logic;
SIGNAL \reg3[20]~output_o\ : std_logic;
SIGNAL \reg3[19]~output_o\ : std_logic;
SIGNAL \reg3[18]~output_o\ : std_logic;
SIGNAL \reg3[17]~output_o\ : std_logic;
SIGNAL \reg3[16]~output_o\ : std_logic;
SIGNAL \reg3[15]~output_o\ : std_logic;
SIGNAL \reg3[14]~output_o\ : std_logic;
SIGNAL \reg3[13]~output_o\ : std_logic;
SIGNAL \reg3[12]~output_o\ : std_logic;
SIGNAL \reg3[11]~output_o\ : std_logic;
SIGNAL \reg3[10]~output_o\ : std_logic;
SIGNAL \reg3[9]~output_o\ : std_logic;
SIGNAL \reg3[8]~output_o\ : std_logic;
SIGNAL \reg3[7]~output_o\ : std_logic;
SIGNAL \reg3[6]~output_o\ : std_logic;
SIGNAL \reg3[5]~output_o\ : std_logic;
SIGNAL \reg3[4]~output_o\ : std_logic;
SIGNAL \reg3[3]~output_o\ : std_logic;
SIGNAL \reg3[2]~output_o\ : std_logic;
SIGNAL \reg3[1]~output_o\ : std_logic;
SIGNAL \reg3[0]~output_o\ : std_logic;
SIGNAL \reg6[31]~output_o\ : std_logic;
SIGNAL \reg6[30]~output_o\ : std_logic;
SIGNAL \reg6[29]~output_o\ : std_logic;
SIGNAL \reg6[28]~output_o\ : std_logic;
SIGNAL \reg6[27]~output_o\ : std_logic;
SIGNAL \reg6[26]~output_o\ : std_logic;
SIGNAL \reg6[25]~output_o\ : std_logic;
SIGNAL \reg6[24]~output_o\ : std_logic;
SIGNAL \reg6[23]~output_o\ : std_logic;
SIGNAL \reg6[22]~output_o\ : std_logic;
SIGNAL \reg6[21]~output_o\ : std_logic;
SIGNAL \reg6[20]~output_o\ : std_logic;
SIGNAL \reg6[19]~output_o\ : std_logic;
SIGNAL \reg6[18]~output_o\ : std_logic;
SIGNAL \reg6[17]~output_o\ : std_logic;
SIGNAL \reg6[16]~output_o\ : std_logic;
SIGNAL \reg6[15]~output_o\ : std_logic;
SIGNAL \reg6[14]~output_o\ : std_logic;
SIGNAL \reg6[13]~output_o\ : std_logic;
SIGNAL \reg6[12]~output_o\ : std_logic;
SIGNAL \reg6[11]~output_o\ : std_logic;
SIGNAL \reg6[10]~output_o\ : std_logic;
SIGNAL \reg6[9]~output_o\ : std_logic;
SIGNAL \reg6[8]~output_o\ : std_logic;
SIGNAL \reg6[7]~output_o\ : std_logic;
SIGNAL \reg6[6]~output_o\ : std_logic;
SIGNAL \reg6[5]~output_o\ : std_logic;
SIGNAL \reg6[4]~output_o\ : std_logic;
SIGNAL \reg6[3]~output_o\ : std_logic;
SIGNAL \reg6[2]~output_o\ : std_logic;
SIGNAL \reg6[1]~output_o\ : std_logic;
SIGNAL \reg6[0]~output_o\ : std_logic;
SIGNAL \z[31]~output_o\ : std_logic;
SIGNAL \z[30]~output_o\ : std_logic;
SIGNAL \z[29]~output_o\ : std_logic;
SIGNAL \z[28]~output_o\ : std_logic;
SIGNAL \z[27]~output_o\ : std_logic;
SIGNAL \z[26]~output_o\ : std_logic;
SIGNAL \z[25]~output_o\ : std_logic;
SIGNAL \z[24]~output_o\ : std_logic;
SIGNAL \z[23]~output_o\ : std_logic;
SIGNAL \z[22]~output_o\ : std_logic;
SIGNAL \z[21]~output_o\ : std_logic;
SIGNAL \z[20]~output_o\ : std_logic;
SIGNAL \z[19]~output_o\ : std_logic;
SIGNAL \z[18]~output_o\ : std_logic;
SIGNAL \z[17]~output_o\ : std_logic;
SIGNAL \z[16]~output_o\ : std_logic;
SIGNAL \z[15]~output_o\ : std_logic;
SIGNAL \z[14]~output_o\ : std_logic;
SIGNAL \z[13]~output_o\ : std_logic;
SIGNAL \z[12]~output_o\ : std_logic;
SIGNAL \z[11]~output_o\ : std_logic;
SIGNAL \z[10]~output_o\ : std_logic;
SIGNAL \z[9]~output_o\ : std_logic;
SIGNAL \z[8]~output_o\ : std_logic;
SIGNAL \z[7]~output_o\ : std_logic;
SIGNAL \z[6]~output_o\ : std_logic;
SIGNAL \z[5]~output_o\ : std_logic;
SIGNAL \z[4]~output_o\ : std_logic;
SIGNAL \z[3]~output_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \k[4]~output_o\ : std_logic;
SIGNAL \k[3]~output_o\ : std_logic;
SIGNAL \k[2]~output_o\ : std_logic;
SIGNAL \k[1]~output_o\ : std_logic;
SIGNAL \k[0]~output_o\ : std_logic;
SIGNAL \rt[4]~output_o\ : std_logic;
SIGNAL \rt[3]~output_o\ : std_logic;
SIGNAL \rt[2]~output_o\ : std_logic;
SIGNAL \rt[1]~output_o\ : std_logic;
SIGNAL \rt[0]~output_o\ : std_logic;
SIGNAL \rd[4]~output_o\ : std_logic;
SIGNAL \rd[3]~output_o\ : std_logic;
SIGNAL \rd[2]~output_o\ : std_logic;
SIGNAL \rd[1]~output_o\ : std_logic;
SIGNAL \rd[0]~output_o\ : std_logic;
SIGNAL \reger~output_o\ : std_logic;
SIGNAL \Aluop1[5]~output_o\ : std_logic;
SIGNAL \Aluop1[4]~output_o\ : std_logic;
SIGNAL \Aluop1[3]~output_o\ : std_logic;
SIGNAL \Aluop1[2]~output_o\ : std_logic;
SIGNAL \Aluop1[1]~output_o\ : std_logic;
SIGNAL \Aluop1[0]~output_o\ : std_logic;
SIGNAL \rfinal[4]~output_o\ : std_logic;
SIGNAL \rfinal[3]~output_o\ : std_logic;
SIGNAL \rfinal[2]~output_o\ : std_logic;
SIGNAL \rfinal[1]~output_o\ : std_logic;
SIGNAL \rfinal[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc|pc[29]~6_combout\ : std_logic;
SIGNAL \pc|pc[29]~7\ : std_logic;
SIGNAL \pc|pc[28]~8_combout\ : std_logic;
SIGNAL \pc|pc[28]~9\ : std_logic;
SIGNAL \pc|pc[27]~10_combout\ : std_logic;
SIGNAL \pc|pc[27]~11\ : std_logic;
SIGNAL \pc|pc[26]~12_combout\ : std_logic;
SIGNAL \pc|pc[26]~13\ : std_logic;
SIGNAL \pc|pc[25]~14_combout\ : std_logic;
SIGNAL \IM|Mux14~0_combout\ : std_logic;
SIGNAL \pc|pc[25]~15\ : std_logic;
SIGNAL \pc|pc[24]~16_combout\ : std_logic;
SIGNAL \IM|Mux14~1_combout\ : std_logic;
SIGNAL \idex|ALUOp_out[1]~0_combout\ : std_logic;
SIGNAL \IM|Mux14~2_combout\ : std_logic;
SIGNAL \idex|ALUSrc_out~q\ : std_logic;
SIGNAL \regdst_mux|X[4]~0_combout\ : std_logic;
SIGNAL \regdst_mux|X[3]~1_combout\ : std_logic;
SIGNAL \banco_reg|process_0~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][0]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][0]~q\ : std_logic;
SIGNAL \IM|Mux10~0_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[1][0]~q\ : std_logic;
SIGNAL \banco_reg|Decoder0~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][0]~q\ : std_logic;
SIGNAL \banco_reg|Mux0~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux0~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[1][1]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][1]~q\ : std_logic;
SIGNAL \banco_reg|Mux1~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][1]~q\ : std_logic;
SIGNAL \banco_reg|Mux1~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][6]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][6]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][6]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][6]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][6]~q\ : std_logic;
SIGNAL \banco_reg|Mux6~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux6~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][7]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][7]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][7]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][7]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][7]~q\ : std_logic;
SIGNAL \banco_reg|Mux7~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux7~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[1][8]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][8]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][8]~q\ : std_logic;
SIGNAL \banco_reg|Mux8~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][8]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][8]~q\ : std_logic;
SIGNAL \banco_reg|Mux8~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][10]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][10]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][10]~q\ : std_logic;
SIGNAL \banco_reg|Mux10~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][10]~q\ : std_logic;
SIGNAL \banco_reg|Mux10~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][11]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][11]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][11]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][11]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][11]~q\ : std_logic;
SIGNAL \banco_reg|Mux11~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux11~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][12]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][12]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][12]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][12]~q\ : std_logic;
SIGNAL \banco_reg|Mux12~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux12~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][19]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][19]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][19]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][19]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][19]~q\ : std_logic;
SIGNAL \banco_reg|Mux19~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux19~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][24]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][24]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][24]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][24]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][24]~q\ : std_logic;
SIGNAL \banco_reg|Mux24~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux24~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][25]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][25]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][25]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][25]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][25]~q\ : std_logic;
SIGNAL \banco_reg|Mux25~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux25~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[1][26]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][26]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][26]~q\ : std_logic;
SIGNAL \banco_reg|Mux26~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][26]~q\ : std_logic;
SIGNAL \banco_reg|Mux26~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][28]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][28]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][28]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][28]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][28]~q\ : std_logic;
SIGNAL \banco_reg|Mux28~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux28~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][30]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][30]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][30]~q\ : std_logic;
SIGNAL \banco_reg|Mux30~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux30~1_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \ula_main|Add0~5_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][31]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][31]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][31]~q\ : std_logic;
SIGNAL \banco_reg|Mux31~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux31~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~2_cout\ : std_logic;
SIGNAL \ula_main|Add0~4\ : std_logic;
SIGNAL \ula_main|Add0~6_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \ula_main|Add0~8_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][29]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][29]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][29]~q\ : std_logic;
SIGNAL \banco_reg|Mux29~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux29~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~7\ : std_logic;
SIGNAL \ula_main|Add0~9_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \ula_main|Add0~11_combout\ : std_logic;
SIGNAL \ula_main|Add0~10\ : std_logic;
SIGNAL \ula_main|Add0~12_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \ula_main|Add0~14_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][27]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][27]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][27]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][27]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][27]~q\ : std_logic;
SIGNAL \banco_reg|Mux27~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux27~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~13\ : std_logic;
SIGNAL \ula_main|Add0~15_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \ula_main|Add0~17_combout\ : std_logic;
SIGNAL \ula_main|Add0~16\ : std_logic;
SIGNAL \ula_main|Add0~18_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \ula_main|Add0~20_combout\ : std_logic;
SIGNAL \ula_main|Add0~19\ : std_logic;
SIGNAL \ula_main|Add0~21_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \ula_main|Add0~23_combout\ : std_logic;
SIGNAL \ula_main|Add0~22\ : std_logic;
SIGNAL \ula_main|Add0~24_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \ula_main|Add0~26_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][23]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][23]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][23]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][23]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][23]~q\ : std_logic;
SIGNAL \banco_reg|Mux23~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux23~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~25\ : std_logic;
SIGNAL \ula_main|Add0~27_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \ula_main|Add0~29_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][22]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][22]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][22]~q\ : std_logic;
SIGNAL \banco_reg|Mux22~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][22]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][22]~q\ : std_logic;
SIGNAL \banco_reg|Mux22~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~28\ : std_logic;
SIGNAL \ula_main|Add0~30_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \ula_main|Add0~32_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][21]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][21]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][21]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][21]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][21]~q\ : std_logic;
SIGNAL \banco_reg|Mux21~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux21~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~31\ : std_logic;
SIGNAL \ula_main|Add0~33_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \ula_main|Add0~35_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][20]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][20]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][20]~q\ : std_logic;
SIGNAL \banco_reg|Mux20~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux20~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~34\ : std_logic;
SIGNAL \ula_main|Add0~36_combout\ : std_logic;
SIGNAL \mewb|out_addr[20]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \ula_main|Add0~38_combout\ : std_logic;
SIGNAL \ula_main|Add0~37\ : std_logic;
SIGNAL \ula_main|Add0~39_combout\ : std_logic;
SIGNAL \mewb|out_addr[19]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \ula_main|Add0~41_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][18]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][18]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][18]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][18]~q\ : std_logic;
SIGNAL \banco_reg|Mux18~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux18~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~40\ : std_logic;
SIGNAL \ula_main|Add0~42_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \ula_main|Add0~44_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][17]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][17]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][17]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][17]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][17]~q\ : std_logic;
SIGNAL \banco_reg|Mux17~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux17~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~43\ : std_logic;
SIGNAL \ula_main|Add0~45_combout\ : std_logic;
SIGNAL \mewb|out_addr[17]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \ula_main|Add0~47_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][16]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][16]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][16]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][16]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][16]~q\ : std_logic;
SIGNAL \banco_reg|Mux16~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux16~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~46\ : std_logic;
SIGNAL \ula_main|Add0~48_combout\ : std_logic;
SIGNAL \mewb|out_addr[16]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \ula_main|Add0~50_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][15]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][15]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][15]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][15]~q\ : std_logic;
SIGNAL \banco_reg|Mux15~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux15~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~49\ : std_logic;
SIGNAL \ula_main|Add0~51_combout\ : std_logic;
SIGNAL \mewb|out_addr[15]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \ula_main|Add0~53_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][14]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][14]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][14]~q\ : std_logic;
SIGNAL \banco_reg|Mux14~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][14]~q\ : std_logic;
SIGNAL \banco_reg|Mux14~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~52\ : std_logic;
SIGNAL \ula_main|Add0~54_combout\ : std_logic;
SIGNAL \mewb|out_addr[14]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \ula_main|Add0~56_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][13]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][13]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][13]~q\ : std_logic;
SIGNAL \banco_reg|Mux13~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux13~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~55\ : std_logic;
SIGNAL \ula_main|Add0~57_combout\ : std_logic;
SIGNAL \mewb|out_addr[13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \ula_main|Add0~59_combout\ : std_logic;
SIGNAL \ula_main|Add0~58\ : std_logic;
SIGNAL \ula_main|Add0~60_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \ula_main|Add0~62_combout\ : std_logic;
SIGNAL \ula_main|Add0~61\ : std_logic;
SIGNAL \ula_main|Add0~63_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \ula_main|Add0~65_combout\ : std_logic;
SIGNAL \ula_main|Add0~64\ : std_logic;
SIGNAL \ula_main|Add0~66_combout\ : std_logic;
SIGNAL \mewb|out_addr[10]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \ula_main|Add0~68_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][9]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][9]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][9]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][9]~q\ : std_logic;
SIGNAL \banco_reg|Mux9~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux9~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~67\ : std_logic;
SIGNAL \ula_main|Add0~69_combout\ : std_logic;
SIGNAL \mewb|out_addr[9]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \ula_main|Add0~71_combout\ : std_logic;
SIGNAL \ula_main|Add0~70\ : std_logic;
SIGNAL \ula_main|Add0~72_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \ula_main|Add0~74_combout\ : std_logic;
SIGNAL \ula_main|Add0~73\ : std_logic;
SIGNAL \ula_main|Add0~75_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \ula_main|Add0~77_combout\ : std_logic;
SIGNAL \ula_main|Add0~76\ : std_logic;
SIGNAL \ula_main|Add0~78_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ula_main|Add0~80_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][5]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][5]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][5]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][5]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][5]~q\ : std_logic;
SIGNAL \banco_reg|Mux5~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux5~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~79\ : std_logic;
SIGNAL \ula_main|Add0~81_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ula_main|Add0~83_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][4]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][4]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][4]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][4]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[3][4]~q\ : std_logic;
SIGNAL \banco_reg|Mux4~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux4~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~82\ : std_logic;
SIGNAL \ula_main|Add0~84_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ula_main|Add0~86_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][3]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][3]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][3]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][3]~q\ : std_logic;
SIGNAL \banco_reg|Mux3~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux3~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~85\ : std_logic;
SIGNAL \ula_main|Add0~87_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ula_main|Add0~89_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][2]~q\ : std_logic;
SIGNAL \banco_reg|registers[1][2]~q\ : std_logic;
SIGNAL \banco_reg|registers[3][2]~q\ : std_logic;
SIGNAL \banco_reg|Mux2~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux2~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~88\ : std_logic;
SIGNAL \ula_main|Add0~90_combout\ : std_logic;
SIGNAL \mewb|out_addr[2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ula_main|Add0~92_combout\ : std_logic;
SIGNAL \ula_main|Add0~91\ : std_logic;
SIGNAL \ula_main|Add0~93_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ula_main|Add0~95_combout\ : std_logic;
SIGNAL \ula_main|Add0~94\ : std_logic;
SIGNAL \ula_main|Add0~96_combout\ : std_logic;
SIGNAL \mewb|out_addr[0]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ula_main|Add0~0_combout\ : std_logic;
SIGNAL \ula_main|Add0~3_combout\ : std_logic;
SIGNAL \mewb|out_addr[31]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[1][31]~q\ : std_logic;
SIGNAL \mewb|out_regdst\ : std_logic_vector(0 TO 4);
SIGNAL \idex|out_read1\ : std_logic_vector(0 TO 31);
SIGNAL \pc|pc\ : std_logic_vector(0 TO 31);
SIGNAL \mewb|out_WB\ : std_logic_vector(0 TO 1);
SIGNAL \idex|ALUOp_out\ : std_logic_vector(0 TO 1);
SIGNAL \mewb|out_addr\ : std_logic_vector(0 TO 31);
SIGNAL \idex|out_imed\ : std_logic_vector(0 TO 31);
SIGNAL \ifid|out_instr\ : std_logic_vector(0 TO 31);
SIGNAL \exme|out_regdst\ : std_logic_vector(0 TO 4);
SIGNAL \exme|out_result\ : std_logic_vector(0 TO 31);
SIGNAL \exme|out_WB\ : std_logic_vector(0 TO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
reg1 <= ww_reg1;
reg3 <= ww_reg3;
reg6 <= ww_reg6;
z <= ww_z;
k <= ww_k;
rt <= ww_rt;
rd <= ww_rd;
reger <= ww_reger;
Aluop1 <= ww_Aluop1;
rfinal <= ww_rfinal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mewb|out_addr\(30) & \mewb|out_addr\(29) & \mewb|out_addr\(28) & \mewb|out_addr\(27) & \mewb|out_addr\(26) & \mewb|out_addr\(25) & 
\mewb|out_addr\(24) & \mewb|out_addr\(23) & \mewb|out_addr\(22) & \mewb|out_addr\(21) & \mewb|out_addr\(20) & \mewb|out_addr\(19) & \mewb|out_addr\(18) & \mewb|out_addr\(17) & \mewb|out_addr\(16) & \mewb|out_addr\(15) & \mewb|out_addr\(14) & 
\mewb|out_addr\(13) & \mewb|out_addr\(12) & \mewb|out_addr\(11) & \mewb|out_addr\(10) & \mewb|out_addr\(9) & \mewb|out_addr\(8) & \mewb|out_addr\(7) & \mewb|out_addr\(6) & \mewb|out_addr\(5) & \mewb|out_addr\(4) & \mewb|out_addr\(3) & 
\mewb|out_addr\(2) & \mewb|out_addr\(1) & \mewb|out_addr\(0) & \mewb|out_addr\(31));

\banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mewb|out_regdst\(3) & \mewb|out_regdst\(4));

\banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ifid|out_instr\(14) & \ifid|out_instr\(5));

\banco_reg|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a1\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a2\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a3\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a4\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a5\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a6\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a7\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a8\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a9\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a10\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a11\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a12\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a13\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a14\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a15\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a16\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a17\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a18\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a19\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a20\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a21\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a22\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a23\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a24\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a25\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a26\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a27\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a28\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a29\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a30\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\banco_reg|registers_rtl_0|auto_generated|ram_block1a31\ <= \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X109_Y73_N9
\reg1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][31]~q\,
	devoe => ww_devoe,
	o => \reg1[31]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\reg1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][30]~q\,
	devoe => ww_devoe,
	o => \reg1[30]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\reg1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][29]~q\,
	devoe => ww_devoe,
	o => \reg1[29]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\reg1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][28]~q\,
	devoe => ww_devoe,
	o => \reg1[28]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\reg1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][27]~q\,
	devoe => ww_devoe,
	o => \reg1[27]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\reg1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][26]~q\,
	devoe => ww_devoe,
	o => \reg1[26]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\reg1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][25]~q\,
	devoe => ww_devoe,
	o => \reg1[25]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\reg1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][24]~q\,
	devoe => ww_devoe,
	o => \reg1[24]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\reg1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][23]~q\,
	devoe => ww_devoe,
	o => \reg1[23]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\reg1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][22]~q\,
	devoe => ww_devoe,
	o => \reg1[22]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\reg1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][21]~q\,
	devoe => ww_devoe,
	o => \reg1[21]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\reg1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][20]~q\,
	devoe => ww_devoe,
	o => \reg1[20]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\reg1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][19]~q\,
	devoe => ww_devoe,
	o => \reg1[19]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\reg1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][18]~q\,
	devoe => ww_devoe,
	o => \reg1[18]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\reg1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][17]~q\,
	devoe => ww_devoe,
	o => \reg1[17]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\reg1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][16]~q\,
	devoe => ww_devoe,
	o => \reg1[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\reg1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][15]~q\,
	devoe => ww_devoe,
	o => \reg1[15]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\reg1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][14]~q\,
	devoe => ww_devoe,
	o => \reg1[14]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\reg1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][13]~q\,
	devoe => ww_devoe,
	o => \reg1[13]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\reg1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][12]~q\,
	devoe => ww_devoe,
	o => \reg1[12]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\reg1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][11]~q\,
	devoe => ww_devoe,
	o => \reg1[11]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\reg1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][10]~q\,
	devoe => ww_devoe,
	o => \reg1[10]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\reg1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][9]~q\,
	devoe => ww_devoe,
	o => \reg1[9]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\reg1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][8]~q\,
	devoe => ww_devoe,
	o => \reg1[8]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\reg1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][7]~q\,
	devoe => ww_devoe,
	o => \reg1[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\reg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][6]~q\,
	devoe => ww_devoe,
	o => \reg1[6]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\reg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][5]~q\,
	devoe => ww_devoe,
	o => \reg1[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\reg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][4]~q\,
	devoe => ww_devoe,
	o => \reg1[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\reg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][3]~q\,
	devoe => ww_devoe,
	o => \reg1[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\reg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][2]~q\,
	devoe => ww_devoe,
	o => \reg1[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\reg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][1]~q\,
	devoe => ww_devoe,
	o => \reg1[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\reg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[1][0]~q\,
	devoe => ww_devoe,
	o => \reg1[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\reg3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][31]~q\,
	devoe => ww_devoe,
	o => \reg3[31]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\reg3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][30]~q\,
	devoe => ww_devoe,
	o => \reg3[30]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\reg3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][29]~q\,
	devoe => ww_devoe,
	o => \reg3[29]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\reg3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][28]~q\,
	devoe => ww_devoe,
	o => \reg3[28]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\reg3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][27]~q\,
	devoe => ww_devoe,
	o => \reg3[27]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\reg3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][26]~q\,
	devoe => ww_devoe,
	o => \reg3[26]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\reg3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][25]~q\,
	devoe => ww_devoe,
	o => \reg3[25]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\reg3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][24]~q\,
	devoe => ww_devoe,
	o => \reg3[24]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\reg3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][23]~q\,
	devoe => ww_devoe,
	o => \reg3[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\reg3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][22]~q\,
	devoe => ww_devoe,
	o => \reg3[22]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\reg3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][21]~q\,
	devoe => ww_devoe,
	o => \reg3[21]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\reg3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][20]~q\,
	devoe => ww_devoe,
	o => \reg3[20]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\reg3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][19]~q\,
	devoe => ww_devoe,
	o => \reg3[19]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\reg3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][18]~q\,
	devoe => ww_devoe,
	o => \reg3[18]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\reg3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][17]~q\,
	devoe => ww_devoe,
	o => \reg3[17]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\reg3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][16]~q\,
	devoe => ww_devoe,
	o => \reg3[16]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\reg3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][15]~q\,
	devoe => ww_devoe,
	o => \reg3[15]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\reg3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][14]~q\,
	devoe => ww_devoe,
	o => \reg3[14]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\reg3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][13]~q\,
	devoe => ww_devoe,
	o => \reg3[13]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\reg3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][12]~q\,
	devoe => ww_devoe,
	o => \reg3[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\reg3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][11]~q\,
	devoe => ww_devoe,
	o => \reg3[11]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\reg3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][10]~q\,
	devoe => ww_devoe,
	o => \reg3[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\reg3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][9]~q\,
	devoe => ww_devoe,
	o => \reg3[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\reg3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][8]~q\,
	devoe => ww_devoe,
	o => \reg3[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\reg3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][7]~q\,
	devoe => ww_devoe,
	o => \reg3[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\reg3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][6]~q\,
	devoe => ww_devoe,
	o => \reg3[6]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\reg3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][5]~q\,
	devoe => ww_devoe,
	o => \reg3[5]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\reg3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][4]~q\,
	devoe => ww_devoe,
	o => \reg3[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\reg3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][3]~q\,
	devoe => ww_devoe,
	o => \reg3[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\reg3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][2]~q\,
	devoe => ww_devoe,
	o => \reg3[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\reg3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][1]~q\,
	devoe => ww_devoe,
	o => \reg3[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\reg3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \banco_reg|registers[3][0]~q\,
	devoe => ww_devoe,
	o => \reg3[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\reg6[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[31]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\reg6[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[30]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\reg6[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[29]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\reg6[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[28]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\reg6[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[27]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\reg6[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[26]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\reg6[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[25]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\reg6[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[24]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\reg6[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[23]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\reg6[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[22]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\reg6[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[21]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\reg6[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[20]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\reg6[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[19]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\reg6[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[18]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\reg6[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\reg6[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[16]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\reg6[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[15]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\reg6[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\reg6[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\reg6[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[12]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\reg6[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[11]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\reg6[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[10]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\reg6[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[9]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\reg6[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[8]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\reg6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\reg6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\reg6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[5]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\reg6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\reg6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\reg6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\reg6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\reg6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg6[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\z[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~3_combout\,
	devoe => ww_devoe,
	o => \z[31]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\z[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~6_combout\,
	devoe => ww_devoe,
	o => \z[30]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\z[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~9_combout\,
	devoe => ww_devoe,
	o => \z[29]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\z[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~12_combout\,
	devoe => ww_devoe,
	o => \z[28]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\z[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~15_combout\,
	devoe => ww_devoe,
	o => \z[27]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\z[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~18_combout\,
	devoe => ww_devoe,
	o => \z[26]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\z[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~21_combout\,
	devoe => ww_devoe,
	o => \z[25]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\z[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~24_combout\,
	devoe => ww_devoe,
	o => \z[24]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\z[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~27_combout\,
	devoe => ww_devoe,
	o => \z[23]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\z[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~30_combout\,
	devoe => ww_devoe,
	o => \z[22]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\z[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~33_combout\,
	devoe => ww_devoe,
	o => \z[21]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\z[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~36_combout\,
	devoe => ww_devoe,
	o => \z[20]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\z[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~39_combout\,
	devoe => ww_devoe,
	o => \z[19]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\z[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~42_combout\,
	devoe => ww_devoe,
	o => \z[18]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\z[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~45_combout\,
	devoe => ww_devoe,
	o => \z[17]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\z[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~48_combout\,
	devoe => ww_devoe,
	o => \z[16]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\z[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~51_combout\,
	devoe => ww_devoe,
	o => \z[15]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\z[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~54_combout\,
	devoe => ww_devoe,
	o => \z[14]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\z[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~57_combout\,
	devoe => ww_devoe,
	o => \z[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\z[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~60_combout\,
	devoe => ww_devoe,
	o => \z[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\z[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~63_combout\,
	devoe => ww_devoe,
	o => \z[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\z[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~66_combout\,
	devoe => ww_devoe,
	o => \z[10]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\z[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~69_combout\,
	devoe => ww_devoe,
	o => \z[9]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\z[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~72_combout\,
	devoe => ww_devoe,
	o => \z[8]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~75_combout\,
	devoe => ww_devoe,
	o => \z[7]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~78_combout\,
	devoe => ww_devoe,
	o => \z[6]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~81_combout\,
	devoe => ww_devoe,
	o => \z[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~84_combout\,
	devoe => ww_devoe,
	o => \z[4]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~87_combout\,
	devoe => ww_devoe,
	o => \z[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~90_combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~93_combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_main|Add0~96_combout\,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\k[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regdst_mux|X[4]~0_combout\,
	devoe => ww_devoe,
	o => \k[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\k[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regdst_mux|X[3]~1_combout\,
	devoe => ww_devoe,
	o => \k[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\k[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \k[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\k[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \k[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\k[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \k[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\rt[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|ALUSrc_out~q\,
	devoe => ww_devoe,
	o => \rt[4]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\rt[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|out_imed\(31),
	devoe => ww_devoe,
	o => \rt[3]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\rt[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rt[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\rt[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rt[1]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\rt[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rt[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\rd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[4]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\rd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\rd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\rd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[1]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\rd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[0]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\reger~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reger~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\Aluop1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|out_instr\(5),
	devoe => ww_devoe,
	o => \Aluop1[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Aluop1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|out_instr\(5),
	devoe => ww_devoe,
	o => \Aluop1[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\Aluop1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Aluop1[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Aluop1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Aluop1[2]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\Aluop1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Aluop1[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\Aluop1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Aluop1[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\rfinal[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_regdst\(4),
	devoe => ww_devoe,
	o => \rfinal[4]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\rfinal[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_regdst\(3),
	devoe => ww_devoe,
	o => \rfinal[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\rfinal[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rfinal[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\rfinal[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rfinal[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\rfinal[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rfinal[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y66_N6
\pc|pc[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[29]~6_combout\ = \pc|pc\(29) $ (VCC)
-- \pc|pc[29]~7\ = CARRY(\pc|pc\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(29),
	datad => VCC,
	combout => \pc|pc[29]~6_combout\,
	cout => \pc|pc[29]~7\);

-- Location: FF_X66_Y66_N7
\pc|pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[29]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(29));

-- Location: LCCOMB_X66_Y66_N8
\pc|pc[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[28]~8_combout\ = (\pc|pc\(28) & (!\pc|pc[29]~7\)) # (!\pc|pc\(28) & ((\pc|pc[29]~7\) # (GND)))
-- \pc|pc[28]~9\ = CARRY((!\pc|pc[29]~7\) # (!\pc|pc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(28),
	datad => VCC,
	cin => \pc|pc[29]~7\,
	combout => \pc|pc[28]~8_combout\,
	cout => \pc|pc[28]~9\);

-- Location: FF_X66_Y66_N9
\pc|pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[28]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(28));

-- Location: LCCOMB_X66_Y66_N10
\pc|pc[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[27]~10_combout\ = (\pc|pc\(27) & (\pc|pc[28]~9\ $ (GND))) # (!\pc|pc\(27) & (!\pc|pc[28]~9\ & VCC))
-- \pc|pc[27]~11\ = CARRY((\pc|pc\(27) & !\pc|pc[28]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(27),
	datad => VCC,
	cin => \pc|pc[28]~9\,
	combout => \pc|pc[27]~10_combout\,
	cout => \pc|pc[27]~11\);

-- Location: FF_X66_Y66_N11
\pc|pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[27]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(27));

-- Location: LCCOMB_X66_Y66_N12
\pc|pc[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[26]~12_combout\ = (\pc|pc\(26) & (!\pc|pc[27]~11\)) # (!\pc|pc\(26) & ((\pc|pc[27]~11\) # (GND)))
-- \pc|pc[26]~13\ = CARRY((!\pc|pc[27]~11\) # (!\pc|pc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(26),
	datad => VCC,
	cin => \pc|pc[27]~11\,
	combout => \pc|pc[26]~12_combout\,
	cout => \pc|pc[26]~13\);

-- Location: FF_X66_Y66_N13
\pc|pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[26]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(26));

-- Location: LCCOMB_X66_Y66_N14
\pc|pc[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[25]~14_combout\ = (\pc|pc\(25) & (\pc|pc[26]~13\ $ (GND))) # (!\pc|pc\(25) & (!\pc|pc[26]~13\ & VCC))
-- \pc|pc[25]~15\ = CARRY((\pc|pc\(25) & !\pc|pc[26]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(25),
	datad => VCC,
	cin => \pc|pc[26]~13\,
	combout => \pc|pc[25]~14_combout\,
	cout => \pc|pc[25]~15\);

-- Location: FF_X66_Y66_N15
\pc|pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[25]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(25));

-- Location: LCCOMB_X66_Y66_N26
\IM|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux14~0_combout\ = (!\pc|pc\(26) & (!\pc|pc\(25) & (!\pc|pc\(28) & !\pc|pc\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(26),
	datab => \pc|pc\(25),
	datac => \pc|pc\(28),
	datad => \pc|pc\(27),
	combout => \IM|Mux14~0_combout\);

-- Location: LCCOMB_X66_Y66_N16
\pc|pc[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[24]~16_combout\ = \pc|pc[25]~15\ $ (\pc|pc\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc|pc\(24),
	cin => \pc|pc[25]~15\,
	combout => \pc|pc[24]~16_combout\);

-- Location: FF_X66_Y66_N17
\pc|pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[24]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(24));

-- Location: LCCOMB_X66_Y66_N24
\IM|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux14~1_combout\ = (\IM|Mux14~0_combout\ & !\pc|pc\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM|Mux14~0_combout\,
	datad => \pc|pc\(24),
	combout => \IM|Mux14~1_combout\);

-- Location: FF_X66_Y66_N25
\ifid|out_instr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(5));

-- Location: LCCOMB_X66_Y63_N16
\idex|ALUOp_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|ALUOp_out[1]~0_combout\ = !\ifid|out_instr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ifid|out_instr\(5),
	combout => \idex|ALUOp_out[1]~0_combout\);

-- Location: FF_X66_Y63_N17
\idex|ALUOp_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \idex|ALUOp_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|ALUOp_out\(1));

-- Location: LCCOMB_X66_Y66_N2
\IM|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux14~2_combout\ = (\pc|pc\(29) & (\IM|Mux14~0_combout\ & !\pc|pc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(29),
	datac => \IM|Mux14~0_combout\,
	datad => \pc|pc\(24),
	combout => \IM|Mux14~2_combout\);

-- Location: FF_X66_Y66_N3
\ifid|out_instr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(14));

-- Location: FF_X65_Y64_N13
\idex|out_imed[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_imed\(31));

-- Location: FF_X65_Y64_N7
\idex|ALUSrc_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|ALUSrc_out~q\);

-- Location: FF_X63_Y63_N5
\exme|out_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \idex|ALUSrc_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_WB\(1));

-- Location: FF_X63_Y63_N3
\mewb|out_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_WB\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_WB\(1));

-- Location: LCCOMB_X66_Y63_N8
\regdst_mux|X[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regdst_mux|X[4]~0_combout\ = (\idex|ALUSrc_out~q\ & !\idex|ALUOp_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|ALUOp_out\(1),
	combout => \regdst_mux|X[4]~0_combout\);

-- Location: FF_X66_Y63_N9
\exme|out_regdst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regdst_mux|X[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_regdst\(4));

-- Location: FF_X66_Y63_N25
\mewb|out_regdst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_regdst\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_regdst\(4));

-- Location: LCCOMB_X66_Y63_N22
\regdst_mux|X[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regdst_mux|X[3]~1_combout\ = (\idex|out_imed\(31) & !\idex|ALUOp_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|out_imed\(31),
	datad => \idex|ALUOp_out\(1),
	combout => \regdst_mux|X[3]~1_combout\);

-- Location: FF_X66_Y63_N23
\exme|out_regdst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regdst_mux|X[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_regdst\(3));

-- Location: FF_X66_Y63_N21
\mewb|out_regdst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_regdst\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_regdst\(3));

-- Location: LCCOMB_X66_Y63_N2
\banco_reg|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|process_0~0_combout\ = (\mewb|out_WB\(1) & ((\mewb|out_regdst\(4)) # (\mewb|out_regdst\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_WB\(1),
	datab => \mewb|out_regdst\(4),
	datad => \mewb|out_regdst\(3),
	combout => \banco_reg|process_0~0_combout\);

-- Location: LCCOMB_X65_Y65_N6
\banco_reg|registers[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][0]~feeder_combout\ = \mewb|out_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(0),
	combout => \banco_reg|registers[2][0]~feeder_combout\);

-- Location: LCCOMB_X66_Y63_N24
\banco_reg|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~2_combout\ = (\mewb|out_WB\(1) & (!\mewb|out_regdst\(4) & \mewb|out_regdst\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_WB\(1),
	datac => \mewb|out_regdst\(4),
	datad => \mewb|out_regdst\(3),
	combout => \banco_reg|Decoder0~2_combout\);

-- Location: FF_X65_Y65_N7
\banco_reg|registers[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][0]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][0]~q\);

-- Location: LCCOMB_X66_Y66_N20
\IM|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux10~0_combout\ = (!\pc|pc\(29) & (\IM|Mux14~0_combout\ & !\pc|pc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(29),
	datac => \IM|Mux14~0_combout\,
	datad => \pc|pc\(24),
	combout => \IM|Mux10~0_combout\);

-- Location: FF_X66_Y66_N21
\ifid|out_instr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(10));

-- Location: LCCOMB_X66_Y63_N20
\banco_reg|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~0_combout\ = (\mewb|out_WB\(1) & (!\mewb|out_regdst\(3) & \mewb|out_regdst\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_WB\(1),
	datac => \mewb|out_regdst\(3),
	datad => \mewb|out_regdst\(4),
	combout => \banco_reg|Decoder0~0_combout\);

-- Location: FF_X65_Y66_N15
\banco_reg|registers[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(0),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][0]~q\);

-- Location: LCCOMB_X66_Y63_N30
\banco_reg|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~1_combout\ = (\mewb|out_WB\(1) & (\mewb|out_regdst\(4) & \mewb|out_regdst\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_WB\(1),
	datab => \mewb|out_regdst\(4),
	datad => \mewb|out_regdst\(3),
	combout => \banco_reg|Decoder0~1_combout\);

-- Location: FF_X65_Y66_N27
\banco_reg|registers[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(0),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][0]~q\);

-- Location: LCCOMB_X65_Y66_N14
\banco_reg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux0~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][0]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][0]~q\,
	datad => \banco_reg|registers[3][0]~q\,
	combout => \banco_reg|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y65_N24
\banco_reg|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux0~1_combout\ = (\banco_reg|Mux0~0_combout\) # ((\banco_reg|registers[2][0]~q\ & (!\ifid|out_instr\(10) & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][0]~q\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|Mux0~0_combout\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux0~1_combout\);

-- Location: FF_X65_Y65_N25
\idex|out_read1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(0));

-- Location: FF_X65_Y66_N1
\banco_reg|registers[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(1),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][1]~q\);

-- Location: FF_X65_Y66_N17
\banco_reg|registers[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(1),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][1]~q\);

-- Location: LCCOMB_X65_Y66_N0
\banco_reg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux1~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][1]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][1]~q\,
	datad => \banco_reg|registers[3][1]~q\,
	combout => \banco_reg|Mux1~0_combout\);

-- Location: FF_X65_Y65_N9
\banco_reg|registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(1),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][1]~q\);

-- Location: LCCOMB_X65_Y65_N14
\banco_reg|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux1~1_combout\ = (\banco_reg|Mux1~0_combout\) # ((!\ifid|out_instr\(10) & (\banco_reg|registers[2][1]~q\ & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux1~0_combout\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[2][1]~q\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux1~1_combout\);

-- Location: FF_X65_Y65_N15
\idex|out_read1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(1));

-- Location: LCCOMB_X67_Y65_N26
\banco_reg|registers[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][6]~feeder_combout\ = \mewb|out_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(6),
	combout => \banco_reg|registers[2][6]~feeder_combout\);

-- Location: FF_X67_Y65_N27
\banco_reg|registers[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][6]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][6]~q\);

-- Location: FF_X68_Y65_N7
\banco_reg|registers[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(6),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][6]~q\);

-- Location: LCCOMB_X69_Y65_N26
\banco_reg|registers[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][6]~feeder_combout\ = \mewb|out_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(6),
	combout => \banco_reg|registers[3][6]~feeder_combout\);

-- Location: FF_X69_Y65_N27
\banco_reg|registers[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][6]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][6]~q\);

-- Location: LCCOMB_X68_Y65_N6
\banco_reg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux6~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][6]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][6]~q\,
	datad => \banco_reg|registers[3][6]~q\,
	combout => \banco_reg|Mux6~0_combout\);

-- Location: LCCOMB_X68_Y65_N18
\banco_reg|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux6~1_combout\ = (\banco_reg|Mux6~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][6]~q\,
	datad => \banco_reg|Mux6~0_combout\,
	combout => \banco_reg|Mux6~1_combout\);

-- Location: FF_X68_Y65_N19
\idex|out_read1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(6));

-- Location: LCCOMB_X67_Y65_N0
\banco_reg|registers[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][7]~feeder_combout\ = \mewb|out_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(7),
	combout => \banco_reg|registers[2][7]~feeder_combout\);

-- Location: FF_X67_Y65_N1
\banco_reg|registers[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][7]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][7]~q\);

-- Location: FF_X68_Y65_N17
\banco_reg|registers[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(7),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][7]~q\);

-- Location: LCCOMB_X69_Y65_N28
\banco_reg|registers[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][7]~feeder_combout\ = \mewb|out_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(7),
	combout => \banco_reg|registers[3][7]~feeder_combout\);

-- Location: FF_X69_Y65_N29
\banco_reg|registers[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][7]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][7]~q\);

-- Location: LCCOMB_X68_Y65_N16
\banco_reg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux7~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][7]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][7]~q\,
	datad => \banco_reg|registers[3][7]~q\,
	combout => \banco_reg|Mux7~0_combout\);

-- Location: LCCOMB_X68_Y65_N4
\banco_reg|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux7~1_combout\ = (\banco_reg|Mux7~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][7]~q\,
	datad => \banco_reg|Mux7~0_combout\,
	combout => \banco_reg|Mux7~1_combout\);

-- Location: FF_X68_Y65_N5
\idex|out_read1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(7));

-- Location: FF_X68_Y65_N31
\banco_reg|registers[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(8),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][8]~q\);

-- Location: LCCOMB_X69_Y65_N2
\banco_reg|registers[3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][8]~feeder_combout\ = \mewb|out_addr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(8),
	combout => \banco_reg|registers[3][8]~feeder_combout\);

-- Location: FF_X69_Y65_N3
\banco_reg|registers[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][8]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][8]~q\);

-- Location: LCCOMB_X68_Y65_N30
\banco_reg|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux8~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][8]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][8]~q\,
	datad => \banco_reg|registers[3][8]~q\,
	combout => \banco_reg|Mux8~0_combout\);

-- Location: LCCOMB_X67_Y65_N10
\banco_reg|registers[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][8]~feeder_combout\ = \mewb|out_addr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(8),
	combout => \banco_reg|registers[2][8]~feeder_combout\);

-- Location: FF_X67_Y65_N11
\banco_reg|registers[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][8]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][8]~q\);

-- Location: LCCOMB_X68_Y65_N14
\banco_reg|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux8~1_combout\ = (\banco_reg|Mux8~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|Mux8~0_combout\,
	datad => \banco_reg|registers[2][8]~q\,
	combout => \banco_reg|Mux8~1_combout\);

-- Location: FF_X68_Y65_N15
\idex|out_read1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(8));

-- Location: LCCOMB_X69_Y63_N4
\banco_reg|registers[3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][10]~feeder_combout\ = \mewb|out_addr\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(10),
	combout => \banco_reg|registers[3][10]~feeder_combout\);

-- Location: FF_X69_Y63_N5
\banco_reg|registers[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][10]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][10]~q\);

-- Location: FF_X68_Y63_N11
\banco_reg|registers[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(10),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][10]~q\);

-- Location: LCCOMB_X68_Y63_N10
\banco_reg|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux10~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][10]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][10]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][10]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux10~0_combout\);

-- Location: FF_X67_Y63_N7
\banco_reg|registers[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(10),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][10]~q\);

-- Location: LCCOMB_X68_Y63_N12
\banco_reg|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux10~1_combout\ = (\banco_reg|Mux10~0_combout\) # ((!\ifid|out_instr\(10) & (\banco_reg|registers[2][10]~q\ & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux10~0_combout\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[2][10]~q\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux10~1_combout\);

-- Location: FF_X68_Y63_N13
\idex|out_read1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(10));

-- Location: LCCOMB_X67_Y65_N14
\banco_reg|registers[2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][11]~feeder_combout\ = \mewb|out_addr\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(11),
	combout => \banco_reg|registers[2][11]~feeder_combout\);

-- Location: FF_X67_Y65_N15
\banco_reg|registers[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][11]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][11]~q\);

-- Location: FF_X68_Y65_N11
\banco_reg|registers[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(11),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][11]~q\);

-- Location: LCCOMB_X69_Y65_N14
\banco_reg|registers[3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][11]~feeder_combout\ = \mewb|out_addr\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(11),
	combout => \banco_reg|registers[3][11]~feeder_combout\);

-- Location: FF_X69_Y65_N15
\banco_reg|registers[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][11]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][11]~q\);

-- Location: LCCOMB_X68_Y65_N10
\banco_reg|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux11~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][11]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][11]~q\,
	datad => \banco_reg|registers[3][11]~q\,
	combout => \banco_reg|Mux11~0_combout\);

-- Location: LCCOMB_X68_Y65_N22
\banco_reg|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux11~1_combout\ = (\banco_reg|Mux11~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][11]~q\,
	datad => \banco_reg|Mux11~0_combout\,
	combout => \banco_reg|Mux11~1_combout\);

-- Location: FF_X68_Y65_N23
\idex|out_read1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(11));

-- Location: FF_X67_Y65_N25
\banco_reg|registers[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(12),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][12]~q\);

-- Location: FF_X68_Y65_N13
\banco_reg|registers[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(12),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][12]~q\);

-- Location: LCCOMB_X69_Y65_N4
\banco_reg|registers[3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][12]~feeder_combout\ = \mewb|out_addr\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(12),
	combout => \banco_reg|registers[3][12]~feeder_combout\);

-- Location: FF_X69_Y65_N5
\banco_reg|registers[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][12]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][12]~q\);

-- Location: LCCOMB_X68_Y65_N12
\banco_reg|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux12~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][12]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][12]~q\,
	datad => \banco_reg|registers[3][12]~q\,
	combout => \banco_reg|Mux12~0_combout\);

-- Location: LCCOMB_X68_Y65_N8
\banco_reg|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux12~1_combout\ = (\banco_reg|Mux12~0_combout\) # ((!\ifid|out_instr\(10) & (\banco_reg|registers[2][12]~q\ & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \banco_reg|registers[2][12]~q\,
	datac => \ifid|out_instr\(5),
	datad => \banco_reg|Mux12~0_combout\,
	combout => \banco_reg|Mux12~1_combout\);

-- Location: FF_X68_Y65_N9
\idex|out_read1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(12));

-- Location: LCCOMB_X67_Y63_N0
\banco_reg|registers[2][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][19]~feeder_combout\ = \mewb|out_addr\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(19),
	combout => \banco_reg|registers[2][19]~feeder_combout\);

-- Location: FF_X67_Y63_N1
\banco_reg|registers[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][19]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][19]~q\);

-- Location: LCCOMB_X69_Y63_N24
\banco_reg|registers[3][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][19]~feeder_combout\ = \mewb|out_addr\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(19),
	combout => \banco_reg|registers[3][19]~feeder_combout\);

-- Location: FF_X69_Y63_N25
\banco_reg|registers[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][19]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][19]~q\);

-- Location: FF_X68_Y63_N3
\banco_reg|registers[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(19),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][19]~q\);

-- Location: LCCOMB_X68_Y63_N2
\banco_reg|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux19~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][19]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][19]~q\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[1][19]~q\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux19~0_combout\);

-- Location: LCCOMB_X68_Y63_N28
\banco_reg|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux19~1_combout\ = (\banco_reg|Mux19~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][19]~q\,
	datad => \banco_reg|Mux19~0_combout\,
	combout => \banco_reg|Mux19~1_combout\);

-- Location: FF_X68_Y63_N29
\idex|out_read1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(19));

-- Location: LCCOMB_X65_Y65_N12
\banco_reg|registers[2][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][24]~feeder_combout\ = \mewb|out_addr\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(24),
	combout => \banco_reg|registers[2][24]~feeder_combout\);

-- Location: FF_X65_Y65_N13
\banco_reg|registers[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][24]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][24]~q\);

-- Location: FF_X66_Y65_N17
\banco_reg|registers[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(24),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][24]~q\);

-- Location: LCCOMB_X67_Y65_N18
\banco_reg|registers[3][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][24]~feeder_combout\ = \mewb|out_addr\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(24),
	combout => \banco_reg|registers[3][24]~feeder_combout\);

-- Location: FF_X67_Y65_N19
\banco_reg|registers[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][24]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][24]~q\);

-- Location: LCCOMB_X66_Y65_N16
\banco_reg|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux24~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][24]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][24]~q\,
	datad => \banco_reg|registers[3][24]~q\,
	combout => \banco_reg|Mux24~0_combout\);

-- Location: LCCOMB_X66_Y65_N30
\banco_reg|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux24~1_combout\ = (\banco_reg|Mux24~0_combout\) # ((\banco_reg|registers[2][24]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][24]~q\,
	datab => \banco_reg|Mux24~0_combout\,
	datac => \ifid|out_instr\(5),
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux24~1_combout\);

-- Location: FF_X66_Y65_N31
\idex|out_read1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(24));

-- Location: LCCOMB_X65_Y65_N26
\banco_reg|registers[2][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][25]~feeder_combout\ = \mewb|out_addr\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(25),
	combout => \banco_reg|registers[2][25]~feeder_combout\);

-- Location: FF_X65_Y65_N27
\banco_reg|registers[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][25]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][25]~q\);

-- Location: FF_X66_Y65_N7
\banco_reg|registers[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(25),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][25]~q\);

-- Location: LCCOMB_X67_Y65_N28
\banco_reg|registers[3][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][25]~feeder_combout\ = \mewb|out_addr\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(25),
	combout => \banco_reg|registers[3][25]~feeder_combout\);

-- Location: FF_X67_Y65_N29
\banco_reg|registers[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][25]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][25]~q\);

-- Location: LCCOMB_X66_Y65_N6
\banco_reg|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux25~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][25]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][25]~q\,
	datad => \banco_reg|registers[3][25]~q\,
	combout => \banco_reg|Mux25~0_combout\);

-- Location: LCCOMB_X65_Y65_N30
\banco_reg|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux25~1_combout\ = (\banco_reg|Mux25~0_combout\) # ((\ifid|out_instr\(5) & (!\ifid|out_instr\(10) & \banco_reg|registers[2][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(5),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[2][25]~q\,
	datad => \banco_reg|Mux25~0_combout\,
	combout => \banco_reg|Mux25~1_combout\);

-- Location: FF_X65_Y65_N31
\idex|out_read1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(25));

-- Location: FF_X66_Y65_N13
\banco_reg|registers[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(26),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][26]~q\);

-- Location: LCCOMB_X67_Y65_N22
\banco_reg|registers[3][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][26]~feeder_combout\ = \mewb|out_addr\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(26),
	combout => \banco_reg|registers[3][26]~feeder_combout\);

-- Location: FF_X67_Y65_N23
\banco_reg|registers[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][26]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][26]~q\);

-- Location: LCCOMB_X66_Y65_N12
\banco_reg|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux26~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][26]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][26]~q\,
	datad => \banco_reg|registers[3][26]~q\,
	combout => \banco_reg|Mux26~0_combout\);

-- Location: FF_X65_Y65_N21
\banco_reg|registers[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(26),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][26]~q\);

-- Location: LCCOMB_X66_Y65_N20
\banco_reg|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux26~1_combout\ = (\banco_reg|Mux26~0_combout\) # ((\banco_reg|registers[2][26]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux26~0_combout\,
	datab => \banco_reg|registers[2][26]~q\,
	datac => \ifid|out_instr\(5),
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux26~1_combout\);

-- Location: FF_X66_Y65_N21
\idex|out_read1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(26));

-- Location: LCCOMB_X67_Y65_N30
\banco_reg|registers[2][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][28]~feeder_combout\ = \mewb|out_addr\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(28),
	combout => \banco_reg|registers[2][28]~feeder_combout\);

-- Location: FF_X67_Y65_N31
\banco_reg|registers[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][28]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][28]~q\);

-- Location: LCCOMB_X69_Y65_N12
\banco_reg|registers[3][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][28]~feeder_combout\ = \mewb|out_addr\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(28),
	combout => \banco_reg|registers[3][28]~feeder_combout\);

-- Location: FF_X69_Y65_N13
\banco_reg|registers[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][28]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][28]~q\);

-- Location: FF_X66_Y65_N29
\banco_reg|registers[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(28),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][28]~q\);

-- Location: LCCOMB_X66_Y65_N28
\banco_reg|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux28~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][28]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][28]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][28]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux28~0_combout\);

-- Location: LCCOMB_X66_Y65_N24
\banco_reg|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux28~1_combout\ = (\banco_reg|Mux28~0_combout\) # ((\banco_reg|registers[2][28]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][28]~q\,
	datab => \banco_reg|Mux28~0_combout\,
	datac => \ifid|out_instr\(5),
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux28~1_combout\);

-- Location: FF_X66_Y65_N25
\idex|out_read1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(28));

-- Location: FF_X66_Y63_N11
\banco_reg|registers[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(30),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][30]~q\);

-- Location: FF_X67_Y65_N21
\banco_reg|registers[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(30),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][30]~q\);

-- Location: FF_X66_Y65_N3
\banco_reg|registers[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(30),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][30]~q\);

-- Location: LCCOMB_X66_Y65_N2
\banco_reg|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux30~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][30]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][30]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][30]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux30~0_combout\);

-- Location: LCCOMB_X66_Y63_N14
\banco_reg|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux30~1_combout\ = (\banco_reg|Mux30~0_combout\) # ((\banco_reg|registers[2][30]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][30]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|Mux30~0_combout\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux30~1_combout\);

-- Location: FF_X66_Y63_N15
\idex|out_read1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(30));

-- Location: M9K_X64_Y63_N0
\banco_reg|registers_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "reg_f:banco_reg|altsyncram:registers_rtl_0|altsyncram_gsg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \banco_reg|process_0~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \banco_reg|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y64_N4
\ula_main|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~5_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\) # (\banco_reg|registers_rtl_0|auto_generated|ram_block1a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a31\,
	combout => \ula_main|Add0~5_combout\);

-- Location: LCCOMB_X67_Y66_N24
\banco_reg|registers[2][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][31]~feeder_combout\ = \mewb|out_addr\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(31),
	combout => \banco_reg|registers[2][31]~feeder_combout\);

-- Location: FF_X67_Y66_N25
\banco_reg|registers[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][31]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][31]~q\);

-- Location: FF_X65_Y66_N21
\banco_reg|registers[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(31),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][31]~q\);

-- Location: LCCOMB_X66_Y66_N4
\banco_reg|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux31~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][31]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][31]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][31]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux31~0_combout\);

-- Location: LCCOMB_X66_Y66_N28
\banco_reg|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux31~1_combout\ = (\banco_reg|Mux31~0_combout\) # ((\banco_reg|registers[2][31]~q\ & (!\ifid|out_instr\(10) & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][31]~q\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|Mux31~0_combout\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux31~1_combout\);

-- Location: FF_X66_Y66_N29
\idex|out_read1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(31));

-- Location: LCCOMB_X65_Y64_N16
\ula_main|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~2_cout\ = CARRY(\idex|ALUOp_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datad => VCC,
	cout => \ula_main|Add0~2_cout\);

-- Location: LCCOMB_X65_Y64_N18
\ula_main|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~3_combout\ = (\ula_main|Add0~0_combout\ & ((\idex|out_read1\(31) & (\ula_main|Add0~2_cout\ & VCC)) # (!\idex|out_read1\(31) & (!\ula_main|Add0~2_cout\)))) # (!\ula_main|Add0~0_combout\ & ((\idex|out_read1\(31) & (!\ula_main|Add0~2_cout\)) # 
-- (!\idex|out_read1\(31) & ((\ula_main|Add0~2_cout\) # (GND)))))
-- \ula_main|Add0~4\ = CARRY((\ula_main|Add0~0_combout\ & (!\idex|out_read1\(31) & !\ula_main|Add0~2_cout\)) # (!\ula_main|Add0~0_combout\ & ((!\ula_main|Add0~2_cout\) # (!\idex|out_read1\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~0_combout\,
	datab => \idex|out_read1\(31),
	datad => VCC,
	cin => \ula_main|Add0~2_cout\,
	combout => \ula_main|Add0~3_combout\,
	cout => \ula_main|Add0~4\);

-- Location: LCCOMB_X65_Y64_N20
\ula_main|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~6_combout\ = ((\idex|out_read1\(30) $ (\ula_main|Add0~5_combout\ $ (!\ula_main|Add0~4\)))) # (GND)
-- \ula_main|Add0~7\ = CARRY((\idex|out_read1\(30) & ((\ula_main|Add0~5_combout\) # (!\ula_main|Add0~4\))) # (!\idex|out_read1\(30) & (\ula_main|Add0~5_combout\ & !\ula_main|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(30),
	datab => \ula_main|Add0~5_combout\,
	datad => VCC,
	cin => \ula_main|Add0~4\,
	combout => \ula_main|Add0~6_combout\,
	cout => \ula_main|Add0~7\);

-- Location: FF_X65_Y64_N21
\exme|out_result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(30));

-- Location: FF_X65_Y64_N1
\mewb|out_addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(30));

-- Location: LCCOMB_X65_Y64_N12
\ula_main|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~8_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(31))) # (!\idex|ALUSrc_out~q\ & ((\banco_reg|registers_rtl_0|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|out_imed\(31),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a30\,
	combout => \ula_main|Add0~8_combout\);

-- Location: FF_X65_Y65_N19
\banco_reg|registers[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(29),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][29]~q\);

-- Location: FF_X65_Y66_N5
\banco_reg|registers[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(29),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][29]~q\);

-- Location: FF_X65_Y66_N11
\banco_reg|registers[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(29),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][29]~q\);

-- Location: LCCOMB_X65_Y66_N4
\banco_reg|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux29~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][29]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][29]~q\,
	datad => \banco_reg|registers[3][29]~q\,
	combout => \banco_reg|Mux29~0_combout\);

-- Location: LCCOMB_X65_Y65_N4
\banco_reg|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux29~1_combout\ = (\banco_reg|Mux29~0_combout\) # ((\ifid|out_instr\(5) & (\banco_reg|registers[2][29]~q\ & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(5),
	datab => \banco_reg|registers[2][29]~q\,
	datac => \ifid|out_instr\(10),
	datad => \banco_reg|Mux29~0_combout\,
	combout => \banco_reg|Mux29~1_combout\);

-- Location: FF_X65_Y65_N5
\idex|out_read1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(29));

-- Location: LCCOMB_X65_Y64_N22
\ula_main|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~9_combout\ = (\ula_main|Add0~8_combout\ & ((\idex|out_read1\(29) & (\ula_main|Add0~7\ & VCC)) # (!\idex|out_read1\(29) & (!\ula_main|Add0~7\)))) # (!\ula_main|Add0~8_combout\ & ((\idex|out_read1\(29) & (!\ula_main|Add0~7\)) # 
-- (!\idex|out_read1\(29) & ((\ula_main|Add0~7\) # (GND)))))
-- \ula_main|Add0~10\ = CARRY((\ula_main|Add0~8_combout\ & (!\idex|out_read1\(29) & !\ula_main|Add0~7\)) # (!\ula_main|Add0~8_combout\ & ((!\ula_main|Add0~7\) # (!\idex|out_read1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~8_combout\,
	datab => \idex|out_read1\(29),
	datad => VCC,
	cin => \ula_main|Add0~7\,
	combout => \ula_main|Add0~9_combout\,
	cout => \ula_main|Add0~10\);

-- Location: FF_X65_Y64_N23
\exme|out_result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(29));

-- Location: FF_X65_Y64_N17
\mewb|out_addr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(29));

-- Location: LCCOMB_X65_Y64_N8
\ula_main|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~11_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\) # (\banco_reg|registers_rtl_0|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a29\,
	combout => \ula_main|Add0~11_combout\);

-- Location: LCCOMB_X65_Y64_N24
\ula_main|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~12_combout\ = ((\idex|out_read1\(28) $ (\ula_main|Add0~11_combout\ $ (!\ula_main|Add0~10\)))) # (GND)
-- \ula_main|Add0~13\ = CARRY((\idex|out_read1\(28) & ((\ula_main|Add0~11_combout\) # (!\ula_main|Add0~10\))) # (!\idex|out_read1\(28) & (\ula_main|Add0~11_combout\ & !\ula_main|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(28),
	datab => \ula_main|Add0~11_combout\,
	datad => VCC,
	cin => \ula_main|Add0~10\,
	combout => \ula_main|Add0~12_combout\,
	cout => \ula_main|Add0~13\);

-- Location: FF_X65_Y64_N25
\exme|out_result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(28));

-- Location: FF_X65_Y64_N9
\mewb|out_addr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(28));

-- Location: LCCOMB_X65_Y64_N10
\ula_main|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~14_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a28\,
	combout => \ula_main|Add0~14_combout\);

-- Location: LCCOMB_X67_Y65_N8
\banco_reg|registers[2][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][27]~feeder_combout\ = \mewb|out_addr\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(27),
	combout => \banco_reg|registers[2][27]~feeder_combout\);

-- Location: FF_X67_Y65_N9
\banco_reg|registers[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][27]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][27]~q\);

-- Location: LCCOMB_X65_Y66_N24
\banco_reg|registers[3][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][27]~feeder_combout\ = \mewb|out_addr\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(27),
	combout => \banco_reg|registers[3][27]~feeder_combout\);

-- Location: FF_X65_Y66_N25
\banco_reg|registers[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][27]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][27]~q\);

-- Location: FF_X66_Y65_N19
\banco_reg|registers[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(27),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][27]~q\);

-- Location: LCCOMB_X66_Y65_N18
\banco_reg|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux27~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][27]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][27]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][27]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux27~0_combout\);

-- Location: LCCOMB_X66_Y65_N10
\banco_reg|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux27~1_combout\ = (\banco_reg|Mux27~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][27]~q\,
	datad => \banco_reg|Mux27~0_combout\,
	combout => \banco_reg|Mux27~1_combout\);

-- Location: FF_X66_Y65_N11
\idex|out_read1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(27));

-- Location: LCCOMB_X65_Y64_N26
\ula_main|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~15_combout\ = (\ula_main|Add0~14_combout\ & ((\idex|out_read1\(27) & (\ula_main|Add0~13\ & VCC)) # (!\idex|out_read1\(27) & (!\ula_main|Add0~13\)))) # (!\ula_main|Add0~14_combout\ & ((\idex|out_read1\(27) & (!\ula_main|Add0~13\)) # 
-- (!\idex|out_read1\(27) & ((\ula_main|Add0~13\) # (GND)))))
-- \ula_main|Add0~16\ = CARRY((\ula_main|Add0~14_combout\ & (!\idex|out_read1\(27) & !\ula_main|Add0~13\)) # (!\ula_main|Add0~14_combout\ & ((!\ula_main|Add0~13\) # (!\idex|out_read1\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~14_combout\,
	datab => \idex|out_read1\(27),
	datad => VCC,
	cin => \ula_main|Add0~13\,
	combout => \ula_main|Add0~15_combout\,
	cout => \ula_main|Add0~16\);

-- Location: FF_X65_Y64_N27
\exme|out_result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(27));

-- Location: FF_X65_Y64_N11
\mewb|out_addr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(27));

-- Location: LCCOMB_X65_Y64_N0
\ula_main|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~17_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a27\,
	combout => \ula_main|Add0~17_combout\);

-- Location: LCCOMB_X65_Y64_N28
\ula_main|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~18_combout\ = ((\idex|out_read1\(26) $ (\ula_main|Add0~17_combout\ $ (!\ula_main|Add0~16\)))) # (GND)
-- \ula_main|Add0~19\ = CARRY((\idex|out_read1\(26) & ((\ula_main|Add0~17_combout\) # (!\ula_main|Add0~16\))) # (!\idex|out_read1\(26) & (\ula_main|Add0~17_combout\ & !\ula_main|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(26),
	datab => \ula_main|Add0~17_combout\,
	datad => VCC,
	cin => \ula_main|Add0~16\,
	combout => \ula_main|Add0~18_combout\,
	cout => \ula_main|Add0~19\);

-- Location: FF_X65_Y64_N29
\exme|out_result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(26));

-- Location: FF_X65_Y64_N15
\mewb|out_addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(26));

-- Location: LCCOMB_X65_Y64_N14
\ula_main|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~20_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a26\,
	combout => \ula_main|Add0~20_combout\);

-- Location: LCCOMB_X65_Y64_N30
\ula_main|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~21_combout\ = (\idex|out_read1\(25) & ((\ula_main|Add0~20_combout\ & (\ula_main|Add0~19\ & VCC)) # (!\ula_main|Add0~20_combout\ & (!\ula_main|Add0~19\)))) # (!\idex|out_read1\(25) & ((\ula_main|Add0~20_combout\ & (!\ula_main|Add0~19\)) # 
-- (!\ula_main|Add0~20_combout\ & ((\ula_main|Add0~19\) # (GND)))))
-- \ula_main|Add0~22\ = CARRY((\idex|out_read1\(25) & (!\ula_main|Add0~20_combout\ & !\ula_main|Add0~19\)) # (!\idex|out_read1\(25) & ((!\ula_main|Add0~19\) # (!\ula_main|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(25),
	datab => \ula_main|Add0~20_combout\,
	datad => VCC,
	cin => \ula_main|Add0~19\,
	combout => \ula_main|Add0~21_combout\,
	cout => \ula_main|Add0~22\);

-- Location: FF_X65_Y64_N31
\exme|out_result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(25));

-- Location: FF_X65_Y64_N5
\mewb|out_addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(25));

-- Location: LCCOMB_X63_Y63_N0
\ula_main|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~23_combout\ = \idex|ALUOp_out\(1) $ (((\banco_reg|registers_rtl_0|auto_generated|ram_block1a25\ & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers_rtl_0|auto_generated|ram_block1a25\,
	datab => \idex|ALUOp_out\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~23_combout\);

-- Location: LCCOMB_X65_Y63_N0
\ula_main|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~24_combout\ = ((\idex|out_read1\(24) $ (\ula_main|Add0~23_combout\ $ (!\ula_main|Add0~22\)))) # (GND)
-- \ula_main|Add0~25\ = CARRY((\idex|out_read1\(24) & ((\ula_main|Add0~23_combout\) # (!\ula_main|Add0~22\))) # (!\idex|out_read1\(24) & (\ula_main|Add0~23_combout\ & !\ula_main|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(24),
	datab => \ula_main|Add0~23_combout\,
	datad => VCC,
	cin => \ula_main|Add0~22\,
	combout => \ula_main|Add0~24_combout\,
	cout => \ula_main|Add0~25\);

-- Location: FF_X65_Y63_N1
\exme|out_result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(24));

-- Location: FF_X63_Y63_N1
\mewb|out_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(24));

-- Location: LCCOMB_X66_Y63_N4
\ula_main|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~26_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a24\,
	combout => \ula_main|Add0~26_combout\);

-- Location: LCCOMB_X67_Y65_N2
\banco_reg|registers[2][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][23]~feeder_combout\ = \mewb|out_addr\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(23),
	combout => \banco_reg|registers[2][23]~feeder_combout\);

-- Location: FF_X67_Y65_N3
\banco_reg|registers[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][23]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][23]~q\);

-- Location: FF_X66_Y65_N27
\banco_reg|registers[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(23),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][23]~q\);

-- Location: LCCOMB_X69_Y65_N22
\banco_reg|registers[3][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][23]~feeder_combout\ = \mewb|out_addr\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(23),
	combout => \banco_reg|registers[3][23]~feeder_combout\);

-- Location: FF_X69_Y65_N23
\banco_reg|registers[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][23]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][23]~q\);

-- Location: LCCOMB_X66_Y65_N26
\banco_reg|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux23~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][23]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][23]~q\,
	datad => \banco_reg|registers[3][23]~q\,
	combout => \banco_reg|Mux23~0_combout\);

-- Location: LCCOMB_X66_Y65_N4
\banco_reg|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux23~1_combout\ = (\banco_reg|Mux23~0_combout\) # ((\banco_reg|registers[2][23]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][23]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|Mux23~0_combout\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux23~1_combout\);

-- Location: FF_X66_Y65_N5
\idex|out_read1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(23));

-- Location: LCCOMB_X65_Y63_N2
\ula_main|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~27_combout\ = (\ula_main|Add0~26_combout\ & ((\idex|out_read1\(23) & (\ula_main|Add0~25\ & VCC)) # (!\idex|out_read1\(23) & (!\ula_main|Add0~25\)))) # (!\ula_main|Add0~26_combout\ & ((\idex|out_read1\(23) & (!\ula_main|Add0~25\)) # 
-- (!\idex|out_read1\(23) & ((\ula_main|Add0~25\) # (GND)))))
-- \ula_main|Add0~28\ = CARRY((\ula_main|Add0~26_combout\ & (!\idex|out_read1\(23) & !\ula_main|Add0~25\)) # (!\ula_main|Add0~26_combout\ & ((!\ula_main|Add0~25\) # (!\idex|out_read1\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~26_combout\,
	datab => \idex|out_read1\(23),
	datad => VCC,
	cin => \ula_main|Add0~25\,
	combout => \ula_main|Add0~27_combout\,
	cout => \ula_main|Add0~28\);

-- Location: FF_X65_Y63_N3
\exme|out_result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(23));

-- Location: FF_X66_Y63_N5
\mewb|out_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(23));

-- Location: LCCOMB_X63_Y63_N26
\ula_main|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~29_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datac => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a23\,
	combout => \ula_main|Add0~29_combout\);

-- Location: LCCOMB_X65_Y66_N6
\banco_reg|registers[3][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][22]~feeder_combout\ = \mewb|out_addr\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(22),
	combout => \banco_reg|registers[3][22]~feeder_combout\);

-- Location: FF_X65_Y66_N7
\banco_reg|registers[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][22]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][22]~q\);

-- Location: FF_X66_Y65_N1
\banco_reg|registers[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(22),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][22]~q\);

-- Location: LCCOMB_X66_Y65_N0
\banco_reg|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux22~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][22]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][22]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][22]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux22~0_combout\);

-- Location: LCCOMB_X65_Y65_N22
\banco_reg|registers[2][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][22]~feeder_combout\ = \mewb|out_addr\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(22),
	combout => \banco_reg|registers[2][22]~feeder_combout\);

-- Location: FF_X65_Y65_N23
\banco_reg|registers[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][22]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][22]~q\);

-- Location: LCCOMB_X66_Y65_N14
\banco_reg|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux22~1_combout\ = (\banco_reg|Mux22~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \banco_reg|Mux22~0_combout\,
	datac => \ifid|out_instr\(5),
	datad => \banco_reg|registers[2][22]~q\,
	combout => \banco_reg|Mux22~1_combout\);

-- Location: FF_X66_Y65_N15
\idex|out_read1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(22));

-- Location: LCCOMB_X65_Y63_N4
\ula_main|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~30_combout\ = ((\ula_main|Add0~29_combout\ $ (\idex|out_read1\(22) $ (!\ula_main|Add0~28\)))) # (GND)
-- \ula_main|Add0~31\ = CARRY((\ula_main|Add0~29_combout\ & ((\idex|out_read1\(22)) # (!\ula_main|Add0~28\))) # (!\ula_main|Add0~29_combout\ & (\idex|out_read1\(22) & !\ula_main|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~29_combout\,
	datab => \idex|out_read1\(22),
	datad => VCC,
	cin => \ula_main|Add0~28\,
	combout => \ula_main|Add0~30_combout\,
	cout => \ula_main|Add0~31\);

-- Location: FF_X65_Y63_N5
\exme|out_result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(22));

-- Location: FF_X63_Y63_N23
\mewb|out_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(22));

-- Location: LCCOMB_X66_Y63_N6
\ula_main|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~32_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a22\,
	combout => \ula_main|Add0~32_combout\);

-- Location: LCCOMB_X65_Y65_N16
\banco_reg|registers[2][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][21]~feeder_combout\ = \mewb|out_addr\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(21),
	combout => \banco_reg|registers[2][21]~feeder_combout\);

-- Location: FF_X65_Y65_N17
\banco_reg|registers[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][21]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][21]~q\);

-- Location: LCCOMB_X67_Y65_N12
\banco_reg|registers[3][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][21]~feeder_combout\ = \mewb|out_addr\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(21),
	combout => \banco_reg|registers[3][21]~feeder_combout\);

-- Location: FF_X67_Y65_N13
\banco_reg|registers[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][21]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][21]~q\);

-- Location: FF_X66_Y65_N23
\banco_reg|registers[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(21),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][21]~q\);

-- Location: LCCOMB_X66_Y65_N22
\banco_reg|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux21~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][21]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][21]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][21]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux21~0_combout\);

-- Location: LCCOMB_X66_Y65_N8
\banco_reg|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux21~1_combout\ = (\banco_reg|Mux21~0_combout\) # ((\banco_reg|registers[2][21]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][21]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|Mux21~0_combout\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux21~1_combout\);

-- Location: FF_X66_Y65_N9
\idex|out_read1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(21));

-- Location: LCCOMB_X65_Y63_N6
\ula_main|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~33_combout\ = (\ula_main|Add0~32_combout\ & ((\idex|out_read1\(21) & (\ula_main|Add0~31\ & VCC)) # (!\idex|out_read1\(21) & (!\ula_main|Add0~31\)))) # (!\ula_main|Add0~32_combout\ & ((\idex|out_read1\(21) & (!\ula_main|Add0~31\)) # 
-- (!\idex|out_read1\(21) & ((\ula_main|Add0~31\) # (GND)))))
-- \ula_main|Add0~34\ = CARRY((\ula_main|Add0~32_combout\ & (!\idex|out_read1\(21) & !\ula_main|Add0~31\)) # (!\ula_main|Add0~32_combout\ & ((!\ula_main|Add0~31\) # (!\idex|out_read1\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~32_combout\,
	datab => \idex|out_read1\(21),
	datad => VCC,
	cin => \ula_main|Add0~31\,
	combout => \ula_main|Add0~33_combout\,
	cout => \ula_main|Add0~34\);

-- Location: FF_X65_Y63_N7
\exme|out_result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(21));

-- Location: FF_X66_Y63_N3
\mewb|out_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(21));

-- Location: LCCOMB_X63_Y63_N12
\ula_main|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~35_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a21\,
	combout => \ula_main|Add0~35_combout\);

-- Location: FF_X66_Y63_N27
\banco_reg|registers[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(20),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][20]~q\);

-- Location: FF_X65_Y66_N3
\banco_reg|registers[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(20),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][20]~q\);

-- Location: FF_X65_Y66_N29
\banco_reg|registers[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(20),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][20]~q\);

-- Location: LCCOMB_X65_Y66_N2
\banco_reg|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux20~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][20]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][20]~q\,
	datad => \banco_reg|registers[3][20]~q\,
	combout => \banco_reg|Mux20~0_combout\);

-- Location: LCCOMB_X66_Y63_N18
\banco_reg|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux20~1_combout\ = (\banco_reg|Mux20~0_combout\) # ((\banco_reg|registers[2][20]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][20]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|Mux20~0_combout\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux20~1_combout\);

-- Location: FF_X66_Y63_N19
\idex|out_read1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(20));

-- Location: LCCOMB_X65_Y63_N8
\ula_main|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~36_combout\ = ((\ula_main|Add0~35_combout\ $ (\idex|out_read1\(20) $ (!\ula_main|Add0~34\)))) # (GND)
-- \ula_main|Add0~37\ = CARRY((\ula_main|Add0~35_combout\ & ((\idex|out_read1\(20)) # (!\ula_main|Add0~34\))) # (!\ula_main|Add0~35_combout\ & (\idex|out_read1\(20) & !\ula_main|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~35_combout\,
	datab => \idex|out_read1\(20),
	datad => VCC,
	cin => \ula_main|Add0~34\,
	combout => \ula_main|Add0~36_combout\,
	cout => \ula_main|Add0~37\);

-- Location: FF_X65_Y63_N9
\exme|out_result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(20));

-- Location: LCCOMB_X66_Y63_N0
\mewb|out_addr[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[20]~feeder_combout\ = \exme|out_result\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(20),
	combout => \mewb|out_addr[20]~feeder_combout\);

-- Location: FF_X66_Y63_N1
\mewb|out_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(20));

-- Location: LCCOMB_X63_Y63_N4
\ula_main|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~38_combout\ = \idex|ALUOp_out\(1) $ (((\banco_reg|registers_rtl_0|auto_generated|ram_block1a20\ & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \banco_reg|registers_rtl_0|auto_generated|ram_block1a20\,
	datac => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~38_combout\);

-- Location: LCCOMB_X65_Y63_N10
\ula_main|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~39_combout\ = (\idex|out_read1\(19) & ((\ula_main|Add0~38_combout\ & (\ula_main|Add0~37\ & VCC)) # (!\ula_main|Add0~38_combout\ & (!\ula_main|Add0~37\)))) # (!\idex|out_read1\(19) & ((\ula_main|Add0~38_combout\ & (!\ula_main|Add0~37\)) # 
-- (!\ula_main|Add0~38_combout\ & ((\ula_main|Add0~37\) # (GND)))))
-- \ula_main|Add0~40\ = CARRY((\idex|out_read1\(19) & (!\ula_main|Add0~38_combout\ & !\ula_main|Add0~37\)) # (!\idex|out_read1\(19) & ((!\ula_main|Add0~37\) # (!\ula_main|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(19),
	datab => \ula_main|Add0~38_combout\,
	datad => VCC,
	cin => \ula_main|Add0~37\,
	combout => \ula_main|Add0~39_combout\,
	cout => \ula_main|Add0~40\);

-- Location: FF_X65_Y63_N11
\exme|out_result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(19));

-- Location: LCCOMB_X68_Y63_N22
\mewb|out_addr[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[19]~feeder_combout\ = \exme|out_result\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(19),
	combout => \mewb|out_addr[19]~feeder_combout\);

-- Location: FF_X68_Y63_N23
\mewb|out_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(19));

-- Location: LCCOMB_X63_Y63_N22
\ula_main|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~41_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a19\,
	combout => \ula_main|Add0~41_combout\);

-- Location: LCCOMB_X67_Y63_N14
\banco_reg|registers[2][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][18]~feeder_combout\ = \mewb|out_addr\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(18),
	combout => \banco_reg|registers[2][18]~feeder_combout\);

-- Location: FF_X67_Y63_N15
\banco_reg|registers[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][18]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][18]~q\);

-- Location: FF_X68_Y63_N15
\banco_reg|registers[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(18),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][18]~q\);

-- Location: FF_X69_Y63_N27
\banco_reg|registers[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(18),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][18]~q\);

-- Location: LCCOMB_X68_Y63_N14
\banco_reg|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux18~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][18]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(5),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[1][18]~q\,
	datad => \banco_reg|registers[3][18]~q\,
	combout => \banco_reg|Mux18~0_combout\);

-- Location: LCCOMB_X68_Y63_N26
\banco_reg|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux18~1_combout\ = (\banco_reg|Mux18~0_combout\) # ((\banco_reg|registers[2][18]~q\ & (!\ifid|out_instr\(10) & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][18]~q\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|Mux18~0_combout\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux18~1_combout\);

-- Location: FF_X68_Y63_N27
\idex|out_read1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(18));

-- Location: LCCOMB_X65_Y63_N12
\ula_main|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~42_combout\ = ((\ula_main|Add0~41_combout\ $ (\idex|out_read1\(18) $ (!\ula_main|Add0~40\)))) # (GND)
-- \ula_main|Add0~43\ = CARRY((\ula_main|Add0~41_combout\ & ((\idex|out_read1\(18)) # (!\ula_main|Add0~40\))) # (!\ula_main|Add0~41_combout\ & (\idex|out_read1\(18) & !\ula_main|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~41_combout\,
	datab => \idex|out_read1\(18),
	datad => VCC,
	cin => \ula_main|Add0~40\,
	combout => \ula_main|Add0~42_combout\,
	cout => \ula_main|Add0~43\);

-- Location: FF_X65_Y63_N13
\exme|out_result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(18));

-- Location: FF_X68_Y63_N5
\mewb|out_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(18));

-- Location: LCCOMB_X63_Y63_N2
\ula_main|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~44_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a18\,
	combout => \ula_main|Add0~44_combout\);

-- Location: LCCOMB_X67_Y63_N8
\banco_reg|registers[2][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][17]~feeder_combout\ = \mewb|out_addr\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(17),
	combout => \banco_reg|registers[2][17]~feeder_combout\);

-- Location: FF_X67_Y63_N9
\banco_reg|registers[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][17]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][17]~q\);

-- Location: FF_X68_Y63_N7
\banco_reg|registers[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(17),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][17]~q\);

-- Location: LCCOMB_X69_Y63_N28
\banco_reg|registers[3][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][17]~feeder_combout\ = \mewb|out_addr\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(17),
	combout => \banco_reg|registers[3][17]~feeder_combout\);

-- Location: FF_X69_Y63_N29
\banco_reg|registers[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][17]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][17]~q\);

-- Location: LCCOMB_X68_Y63_N6
\banco_reg|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux17~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][17]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(5),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[1][17]~q\,
	datad => \banco_reg|registers[3][17]~q\,
	combout => \banco_reg|Mux17~0_combout\);

-- Location: LCCOMB_X68_Y63_N30
\banco_reg|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux17~1_combout\ = (\banco_reg|Mux17~0_combout\) # ((\ifid|out_instr\(5) & (!\ifid|out_instr\(10) & \banco_reg|registers[2][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(5),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[2][17]~q\,
	datad => \banco_reg|Mux17~0_combout\,
	combout => \banco_reg|Mux17~1_combout\);

-- Location: FF_X68_Y63_N31
\idex|out_read1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(17));

-- Location: LCCOMB_X65_Y63_N14
\ula_main|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~45_combout\ = (\ula_main|Add0~44_combout\ & ((\idex|out_read1\(17) & (\ula_main|Add0~43\ & VCC)) # (!\idex|out_read1\(17) & (!\ula_main|Add0~43\)))) # (!\ula_main|Add0~44_combout\ & ((\idex|out_read1\(17) & (!\ula_main|Add0~43\)) # 
-- (!\idex|out_read1\(17) & ((\ula_main|Add0~43\) # (GND)))))
-- \ula_main|Add0~46\ = CARRY((\ula_main|Add0~44_combout\ & (!\idex|out_read1\(17) & !\ula_main|Add0~43\)) # (!\ula_main|Add0~44_combout\ & ((!\ula_main|Add0~43\) # (!\idex|out_read1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~44_combout\,
	datab => \idex|out_read1\(17),
	datad => VCC,
	cin => \ula_main|Add0~43\,
	combout => \ula_main|Add0~45_combout\,
	cout => \ula_main|Add0~46\);

-- Location: FF_X65_Y63_N15
\exme|out_result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(17));

-- Location: LCCOMB_X67_Y63_N16
\mewb|out_addr[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[17]~feeder_combout\ = \exme|out_result\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(17),
	combout => \mewb|out_addr[17]~feeder_combout\);

-- Location: FF_X67_Y63_N17
\mewb|out_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(17));

-- Location: LCCOMB_X63_Y63_N16
\ula_main|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~47_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a17\,
	combout => \ula_main|Add0~47_combout\);

-- Location: LCCOMB_X67_Y63_N10
\banco_reg|registers[2][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][16]~feeder_combout\ = \mewb|out_addr\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(16),
	combout => \banco_reg|registers[2][16]~feeder_combout\);

-- Location: FF_X67_Y63_N11
\banco_reg|registers[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][16]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][16]~q\);

-- Location: LCCOMB_X69_Y63_N6
\banco_reg|registers[3][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][16]~feeder_combout\ = \mewb|out_addr\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(16),
	combout => \banco_reg|registers[3][16]~feeder_combout\);

-- Location: FF_X69_Y63_N7
\banco_reg|registers[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][16]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][16]~q\);

-- Location: FF_X68_Y63_N25
\banco_reg|registers[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(16),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][16]~q\);

-- Location: LCCOMB_X68_Y63_N24
\banco_reg|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux16~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][16]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][16]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][16]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux16~0_combout\);

-- Location: LCCOMB_X68_Y63_N18
\banco_reg|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux16~1_combout\ = (\banco_reg|Mux16~0_combout\) # ((\ifid|out_instr\(5) & (!\ifid|out_instr\(10) & \banco_reg|registers[2][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(5),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[2][16]~q\,
	datad => \banco_reg|Mux16~0_combout\,
	combout => \banco_reg|Mux16~1_combout\);

-- Location: FF_X68_Y63_N19
\idex|out_read1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(16));

-- Location: LCCOMB_X65_Y63_N16
\ula_main|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~48_combout\ = ((\ula_main|Add0~47_combout\ $ (\idex|out_read1\(16) $ (!\ula_main|Add0~46\)))) # (GND)
-- \ula_main|Add0~49\ = CARRY((\ula_main|Add0~47_combout\ & ((\idex|out_read1\(16)) # (!\ula_main|Add0~46\))) # (!\ula_main|Add0~47_combout\ & (\idex|out_read1\(16) & !\ula_main|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~47_combout\,
	datab => \idex|out_read1\(16),
	datad => VCC,
	cin => \ula_main|Add0~46\,
	combout => \ula_main|Add0~48_combout\,
	cout => \ula_main|Add0~49\);

-- Location: FF_X65_Y63_N17
\exme|out_result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(16));

-- Location: LCCOMB_X67_Y63_N2
\mewb|out_addr[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[16]~feeder_combout\ = \exme|out_result\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(16),
	combout => \mewb|out_addr[16]~feeder_combout\);

-- Location: FF_X67_Y63_N3
\mewb|out_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(16));

-- Location: LCCOMB_X63_Y63_N20
\ula_main|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~50_combout\ = \idex|ALUOp_out\(1) $ (((\banco_reg|registers_rtl_0|auto_generated|ram_block1a16\ & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \banco_reg|registers_rtl_0|auto_generated|ram_block1a16\,
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~50_combout\);

-- Location: FF_X67_Y63_N21
\banco_reg|registers[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(15),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][15]~q\);

-- Location: FF_X65_Y66_N13
\banco_reg|registers[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(15),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][15]~q\);

-- Location: LCCOMB_X65_Y66_N18
\banco_reg|registers[3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][15]~feeder_combout\ = \mewb|out_addr\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(15),
	combout => \banco_reg|registers[3][15]~feeder_combout\);

-- Location: FF_X65_Y66_N19
\banco_reg|registers[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][15]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][15]~q\);

-- Location: LCCOMB_X65_Y66_N12
\banco_reg|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux15~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][15]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][15]~q\,
	datad => \banco_reg|registers[3][15]~q\,
	combout => \banco_reg|Mux15~0_combout\);

-- Location: LCCOMB_X66_Y63_N12
\banco_reg|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux15~1_combout\ = (\banco_reg|Mux15~0_combout\) # ((\banco_reg|registers[2][15]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][15]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|Mux15~0_combout\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux15~1_combout\);

-- Location: FF_X66_Y63_N13
\idex|out_read1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(15));

-- Location: LCCOMB_X65_Y63_N18
\ula_main|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~51_combout\ = (\ula_main|Add0~50_combout\ & ((\idex|out_read1\(15) & (\ula_main|Add0~49\ & VCC)) # (!\idex|out_read1\(15) & (!\ula_main|Add0~49\)))) # (!\ula_main|Add0~50_combout\ & ((\idex|out_read1\(15) & (!\ula_main|Add0~49\)) # 
-- (!\idex|out_read1\(15) & ((\ula_main|Add0~49\) # (GND)))))
-- \ula_main|Add0~52\ = CARRY((\ula_main|Add0~50_combout\ & (!\idex|out_read1\(15) & !\ula_main|Add0~49\)) # (!\ula_main|Add0~50_combout\ & ((!\ula_main|Add0~49\) # (!\idex|out_read1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~50_combout\,
	datab => \idex|out_read1\(15),
	datad => VCC,
	cin => \ula_main|Add0~49\,
	combout => \ula_main|Add0~51_combout\,
	cout => \ula_main|Add0~52\);

-- Location: FF_X65_Y63_N19
\exme|out_result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(15));

-- Location: LCCOMB_X67_Y63_N4
\mewb|out_addr[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[15]~feeder_combout\ = \exme|out_result\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(15),
	combout => \mewb|out_addr[15]~feeder_combout\);

-- Location: FF_X67_Y63_N5
\mewb|out_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(15));

-- Location: LCCOMB_X63_Y63_N18
\ula_main|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~53_combout\ = \idex|ALUOp_out\(1) $ (((\banco_reg|registers_rtl_0|auto_generated|ram_block1a15\ & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \banco_reg|registers_rtl_0|auto_generated|ram_block1a15\,
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~53_combout\);

-- Location: LCCOMB_X69_Y63_N20
\banco_reg|registers[3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][14]~feeder_combout\ = \mewb|out_addr\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(14),
	combout => \banco_reg|registers[3][14]~feeder_combout\);

-- Location: FF_X69_Y63_N21
\banco_reg|registers[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][14]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][14]~q\);

-- Location: FF_X68_Y63_N1
\banco_reg|registers[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(14),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][14]~q\);

-- Location: LCCOMB_X68_Y63_N0
\banco_reg|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux14~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][14]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][14]~q\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[1][14]~q\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux14~0_combout\);

-- Location: FF_X67_Y63_N19
\banco_reg|registers[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(14),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][14]~q\);

-- Location: LCCOMB_X68_Y63_N8
\banco_reg|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux14~1_combout\ = (\banco_reg|Mux14~0_combout\) # ((!\ifid|out_instr\(10) & (\banco_reg|registers[2][14]~q\ & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux14~0_combout\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[2][14]~q\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux14~1_combout\);

-- Location: FF_X68_Y63_N9
\idex|out_read1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(14));

-- Location: LCCOMB_X65_Y63_N20
\ula_main|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~54_combout\ = ((\ula_main|Add0~53_combout\ $ (\idex|out_read1\(14) $ (!\ula_main|Add0~52\)))) # (GND)
-- \ula_main|Add0~55\ = CARRY((\ula_main|Add0~53_combout\ & ((\idex|out_read1\(14)) # (!\ula_main|Add0~52\))) # (!\ula_main|Add0~53_combout\ & (\idex|out_read1\(14) & !\ula_main|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~53_combout\,
	datab => \idex|out_read1\(14),
	datad => VCC,
	cin => \ula_main|Add0~52\,
	combout => \ula_main|Add0~54_combout\,
	cout => \ula_main|Add0~55\);

-- Location: FF_X65_Y63_N21
\exme|out_result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(14));

-- Location: LCCOMB_X67_Y63_N22
\mewb|out_addr[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[14]~feeder_combout\ = \exme|out_result\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(14),
	combout => \mewb|out_addr[14]~feeder_combout\);

-- Location: FF_X67_Y63_N23
\mewb|out_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(14));

-- Location: LCCOMB_X63_Y63_N28
\ula_main|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~56_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a14\,
	combout => \ula_main|Add0~56_combout\);

-- Location: LCCOMB_X67_Y63_N12
\banco_reg|registers[2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][13]~feeder_combout\ = \mewb|out_addr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(13),
	combout => \banco_reg|registers[2][13]~feeder_combout\);

-- Location: FF_X67_Y63_N13
\banco_reg|registers[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][13]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][13]~q\);

-- Location: LCCOMB_X69_Y63_N10
\banco_reg|registers[3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][13]~feeder_combout\ = \mewb|out_addr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(13),
	combout => \banco_reg|registers[3][13]~feeder_combout\);

-- Location: FF_X69_Y63_N11
\banco_reg|registers[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][13]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][13]~q\);

-- Location: FF_X68_Y63_N21
\banco_reg|registers[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(13),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][13]~q\);

-- Location: LCCOMB_X68_Y63_N20
\banco_reg|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux13~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][13]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][13]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][13]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux13~0_combout\);

-- Location: LCCOMB_X68_Y63_N16
\banco_reg|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux13~1_combout\ = (\banco_reg|Mux13~0_combout\) # ((\ifid|out_instr\(5) & (!\ifid|out_instr\(10) & \banco_reg|registers[2][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(5),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|registers[2][13]~q\,
	datad => \banco_reg|Mux13~0_combout\,
	combout => \banco_reg|Mux13~1_combout\);

-- Location: FF_X68_Y63_N17
\idex|out_read1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(13));

-- Location: LCCOMB_X65_Y63_N22
\ula_main|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~57_combout\ = (\ula_main|Add0~56_combout\ & ((\idex|out_read1\(13) & (\ula_main|Add0~55\ & VCC)) # (!\idex|out_read1\(13) & (!\ula_main|Add0~55\)))) # (!\ula_main|Add0~56_combout\ & ((\idex|out_read1\(13) & (!\ula_main|Add0~55\)) # 
-- (!\idex|out_read1\(13) & ((\ula_main|Add0~55\) # (GND)))))
-- \ula_main|Add0~58\ = CARRY((\ula_main|Add0~56_combout\ & (!\idex|out_read1\(13) & !\ula_main|Add0~55\)) # (!\ula_main|Add0~56_combout\ & ((!\ula_main|Add0~55\) # (!\idex|out_read1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~56_combout\,
	datab => \idex|out_read1\(13),
	datad => VCC,
	cin => \ula_main|Add0~55\,
	combout => \ula_main|Add0~57_combout\,
	cout => \ula_main|Add0~58\);

-- Location: FF_X65_Y63_N23
\exme|out_result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(13));

-- Location: LCCOMB_X67_Y63_N24
\mewb|out_addr[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[13]~feeder_combout\ = \exme|out_result\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(13),
	combout => \mewb|out_addr[13]~feeder_combout\);

-- Location: FF_X67_Y63_N25
\mewb|out_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(13));

-- Location: LCCOMB_X63_Y63_N6
\ula_main|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~59_combout\ = \idex|ALUOp_out\(1) $ (((\banco_reg|registers_rtl_0|auto_generated|ram_block1a13\ & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \banco_reg|registers_rtl_0|auto_generated|ram_block1a13\,
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~59_combout\);

-- Location: LCCOMB_X65_Y63_N24
\ula_main|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~60_combout\ = ((\idex|out_read1\(12) $ (\ula_main|Add0~59_combout\ $ (!\ula_main|Add0~58\)))) # (GND)
-- \ula_main|Add0~61\ = CARRY((\idex|out_read1\(12) & ((\ula_main|Add0~59_combout\) # (!\ula_main|Add0~58\))) # (!\idex|out_read1\(12) & (\ula_main|Add0~59_combout\ & !\ula_main|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(12),
	datab => \ula_main|Add0~59_combout\,
	datad => VCC,
	cin => \ula_main|Add0~58\,
	combout => \ula_main|Add0~60_combout\,
	cout => \ula_main|Add0~61\);

-- Location: FF_X65_Y63_N25
\exme|out_result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(12));

-- Location: FF_X66_Y63_N31
\mewb|out_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(12));

-- Location: LCCOMB_X63_Y63_N24
\ula_main|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~62_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a12\,
	combout => \ula_main|Add0~62_combout\);

-- Location: LCCOMB_X65_Y63_N26
\ula_main|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~63_combout\ = (\idex|out_read1\(11) & ((\ula_main|Add0~62_combout\ & (\ula_main|Add0~61\ & VCC)) # (!\ula_main|Add0~62_combout\ & (!\ula_main|Add0~61\)))) # (!\idex|out_read1\(11) & ((\ula_main|Add0~62_combout\ & (!\ula_main|Add0~61\)) # 
-- (!\ula_main|Add0~62_combout\ & ((\ula_main|Add0~61\) # (GND)))))
-- \ula_main|Add0~64\ = CARRY((\idex|out_read1\(11) & (!\ula_main|Add0~62_combout\ & !\ula_main|Add0~61\)) # (!\idex|out_read1\(11) & ((!\ula_main|Add0~61\) # (!\ula_main|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(11),
	datab => \ula_main|Add0~62_combout\,
	datad => VCC,
	cin => \ula_main|Add0~61\,
	combout => \ula_main|Add0~63_combout\,
	cout => \ula_main|Add0~64\);

-- Location: FF_X65_Y63_N27
\exme|out_result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(11));

-- Location: FF_X66_Y63_N7
\mewb|out_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(11));

-- Location: LCCOMB_X63_Y63_N14
\ula_main|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~65_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a11\,
	combout => \ula_main|Add0~65_combout\);

-- Location: LCCOMB_X65_Y63_N28
\ula_main|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~66_combout\ = ((\idex|out_read1\(10) $ (\ula_main|Add0~65_combout\ $ (!\ula_main|Add0~64\)))) # (GND)
-- \ula_main|Add0~67\ = CARRY((\idex|out_read1\(10) & ((\ula_main|Add0~65_combout\) # (!\ula_main|Add0~64\))) # (!\idex|out_read1\(10) & (\ula_main|Add0~65_combout\ & !\ula_main|Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(10),
	datab => \ula_main|Add0~65_combout\,
	datad => VCC,
	cin => \ula_main|Add0~64\,
	combout => \ula_main|Add0~66_combout\,
	cout => \ula_main|Add0~67\);

-- Location: FF_X65_Y63_N29
\exme|out_result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(10));

-- Location: LCCOMB_X67_Y63_N26
\mewb|out_addr[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[10]~feeder_combout\ = \exme|out_result\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(10),
	combout => \mewb|out_addr[10]~feeder_combout\);

-- Location: FF_X67_Y63_N27
\mewb|out_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(10));

-- Location: LCCOMB_X63_Y63_N10
\ula_main|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~68_combout\ = \idex|ALUOp_out\(1) $ (((\banco_reg|registers_rtl_0|auto_generated|ram_block1a10\ & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \banco_reg|registers_rtl_0|auto_generated|ram_block1a10\,
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~68_combout\);

-- Location: FF_X67_Y65_N5
\banco_reg|registers[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(9),
	sload => VCC,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][9]~q\);

-- Location: LCCOMB_X69_Y65_N20
\banco_reg|registers[3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][9]~feeder_combout\ = \mewb|out_addr\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(9),
	combout => \banco_reg|registers[3][9]~feeder_combout\);

-- Location: FF_X69_Y65_N21
\banco_reg|registers[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][9]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][9]~q\);

-- Location: FF_X68_Y65_N29
\banco_reg|registers[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(9),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][9]~q\);

-- Location: LCCOMB_X68_Y65_N28
\banco_reg|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux9~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][9]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][9]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][9]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux9~0_combout\);

-- Location: LCCOMB_X68_Y65_N0
\banco_reg|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux9~1_combout\ = (\banco_reg|Mux9~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][9]~q\,
	datad => \banco_reg|Mux9~0_combout\,
	combout => \banco_reg|Mux9~1_combout\);

-- Location: FF_X68_Y65_N1
\idex|out_read1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(9));

-- Location: LCCOMB_X65_Y63_N30
\ula_main|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~69_combout\ = (\ula_main|Add0~68_combout\ & ((\idex|out_read1\(9) & (\ula_main|Add0~67\ & VCC)) # (!\idex|out_read1\(9) & (!\ula_main|Add0~67\)))) # (!\ula_main|Add0~68_combout\ & ((\idex|out_read1\(9) & (!\ula_main|Add0~67\)) # 
-- (!\idex|out_read1\(9) & ((\ula_main|Add0~67\) # (GND)))))
-- \ula_main|Add0~70\ = CARRY((\ula_main|Add0~68_combout\ & (!\idex|out_read1\(9) & !\ula_main|Add0~67\)) # (!\ula_main|Add0~68_combout\ & ((!\ula_main|Add0~67\) # (!\idex|out_read1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~68_combout\,
	datab => \idex|out_read1\(9),
	datad => VCC,
	cin => \ula_main|Add0~67\,
	combout => \ula_main|Add0~69_combout\,
	cout => \ula_main|Add0~70\);

-- Location: FF_X65_Y63_N31
\exme|out_result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(9));

-- Location: LCCOMB_X66_Y63_N28
\mewb|out_addr[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[9]~feeder_combout\ = \exme|out_result\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(9),
	combout => \mewb|out_addr[9]~feeder_combout\);

-- Location: FF_X66_Y63_N29
\mewb|out_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(9));

-- Location: LCCOMB_X65_Y62_N20
\ula_main|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~71_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a9\,
	combout => \ula_main|Add0~71_combout\);

-- Location: LCCOMB_X65_Y62_N0
\ula_main|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~72_combout\ = ((\idex|out_read1\(8) $ (\ula_main|Add0~71_combout\ $ (!\ula_main|Add0~70\)))) # (GND)
-- \ula_main|Add0~73\ = CARRY((\idex|out_read1\(8) & ((\ula_main|Add0~71_combout\) # (!\ula_main|Add0~70\))) # (!\idex|out_read1\(8) & (\ula_main|Add0~71_combout\ & !\ula_main|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(8),
	datab => \ula_main|Add0~71_combout\,
	datad => VCC,
	cin => \ula_main|Add0~70\,
	combout => \ula_main|Add0~72_combout\,
	cout => \ula_main|Add0~73\);

-- Location: FF_X65_Y62_N1
\exme|out_result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(8));

-- Location: FF_X65_Y62_N23
\mewb|out_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(8));

-- Location: LCCOMB_X65_Y62_N28
\ula_main|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~74_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a8\,
	combout => \ula_main|Add0~74_combout\);

-- Location: LCCOMB_X65_Y62_N2
\ula_main|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~75_combout\ = (\idex|out_read1\(7) & ((\ula_main|Add0~74_combout\ & (\ula_main|Add0~73\ & VCC)) # (!\ula_main|Add0~74_combout\ & (!\ula_main|Add0~73\)))) # (!\idex|out_read1\(7) & ((\ula_main|Add0~74_combout\ & (!\ula_main|Add0~73\)) # 
-- (!\ula_main|Add0~74_combout\ & ((\ula_main|Add0~73\) # (GND)))))
-- \ula_main|Add0~76\ = CARRY((\idex|out_read1\(7) & (!\ula_main|Add0~74_combout\ & !\ula_main|Add0~73\)) # (!\idex|out_read1\(7) & ((!\ula_main|Add0~73\) # (!\ula_main|Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(7),
	datab => \ula_main|Add0~74_combout\,
	datad => VCC,
	cin => \ula_main|Add0~73\,
	combout => \ula_main|Add0~75_combout\,
	cout => \ula_main|Add0~76\);

-- Location: FF_X65_Y62_N3
\exme|out_result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(7));

-- Location: FF_X65_Y62_N31
\mewb|out_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(7));

-- Location: LCCOMB_X65_Y62_N18
\ula_main|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~77_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \ula_main|Add0~77_combout\);

-- Location: LCCOMB_X65_Y62_N4
\ula_main|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~78_combout\ = ((\idex|out_read1\(6) $ (\ula_main|Add0~77_combout\ $ (!\ula_main|Add0~76\)))) # (GND)
-- \ula_main|Add0~79\ = CARRY((\idex|out_read1\(6) & ((\ula_main|Add0~77_combout\) # (!\ula_main|Add0~76\))) # (!\idex|out_read1\(6) & (\ula_main|Add0~77_combout\ & !\ula_main|Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(6),
	datab => \ula_main|Add0~77_combout\,
	datad => VCC,
	cin => \ula_main|Add0~76\,
	combout => \ula_main|Add0~78_combout\,
	cout => \ula_main|Add0~79\);

-- Location: FF_X65_Y62_N5
\exme|out_result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(6));

-- Location: FF_X65_Y62_N25
\mewb|out_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(6));

-- Location: LCCOMB_X65_Y62_N22
\ula_main|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~80_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \ula_main|Add0~80_combout\);

-- Location: LCCOMB_X67_Y65_N16
\banco_reg|registers[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][5]~feeder_combout\ = \mewb|out_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(5),
	combout => \banco_reg|registers[2][5]~feeder_combout\);

-- Location: FF_X67_Y65_N17
\banco_reg|registers[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][5]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][5]~q\);

-- Location: FF_X68_Y65_N21
\banco_reg|registers[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(5),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][5]~q\);

-- Location: LCCOMB_X69_Y65_N16
\banco_reg|registers[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][5]~feeder_combout\ = \mewb|out_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(5),
	combout => \banco_reg|registers[3][5]~feeder_combout\);

-- Location: FF_X69_Y65_N17
\banco_reg|registers[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][5]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][5]~q\);

-- Location: LCCOMB_X68_Y65_N20
\banco_reg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux5~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][5]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][5]~q\,
	datad => \banco_reg|registers[3][5]~q\,
	combout => \banco_reg|Mux5~0_combout\);

-- Location: LCCOMB_X68_Y65_N24
\banco_reg|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux5~1_combout\ = (\banco_reg|Mux5~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][5]~q\,
	datad => \banco_reg|Mux5~0_combout\,
	combout => \banco_reg|Mux5~1_combout\);

-- Location: FF_X68_Y65_N25
\idex|out_read1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(5));

-- Location: LCCOMB_X65_Y62_N6
\ula_main|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~81_combout\ = (\ula_main|Add0~80_combout\ & ((\idex|out_read1\(5) & (\ula_main|Add0~79\ & VCC)) # (!\idex|out_read1\(5) & (!\ula_main|Add0~79\)))) # (!\ula_main|Add0~80_combout\ & ((\idex|out_read1\(5) & (!\ula_main|Add0~79\)) # 
-- (!\idex|out_read1\(5) & ((\ula_main|Add0~79\) # (GND)))))
-- \ula_main|Add0~82\ = CARRY((\ula_main|Add0~80_combout\ & (!\idex|out_read1\(5) & !\ula_main|Add0~79\)) # (!\ula_main|Add0~80_combout\ & ((!\ula_main|Add0~79\) # (!\idex|out_read1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~80_combout\,
	datab => \idex|out_read1\(5),
	datad => VCC,
	cin => \ula_main|Add0~79\,
	combout => \ula_main|Add0~81_combout\,
	cout => \ula_main|Add0~82\);

-- Location: FF_X65_Y62_N7
\exme|out_result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(5));

-- Location: FF_X65_Y62_N29
\mewb|out_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(5));

-- Location: LCCOMB_X65_Y62_N26
\ula_main|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~83_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a5\,
	combout => \ula_main|Add0~83_combout\);

-- Location: LCCOMB_X67_Y65_N6
\banco_reg|registers[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][4]~feeder_combout\ = \mewb|out_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(4),
	combout => \banco_reg|registers[2][4]~feeder_combout\);

-- Location: FF_X67_Y65_N7
\banco_reg|registers[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][4]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][4]~q\);

-- Location: FF_X68_Y65_N3
\banco_reg|registers[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(4),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][4]~q\);

-- Location: LCCOMB_X69_Y65_N6
\banco_reg|registers[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[3][4]~feeder_combout\ = \mewb|out_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(4),
	combout => \banco_reg|registers[3][4]~feeder_combout\);

-- Location: FF_X69_Y65_N7
\banco_reg|registers[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[3][4]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][4]~q\);

-- Location: LCCOMB_X68_Y65_N2
\banco_reg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux4~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][4]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][4]~q\,
	datad => \banco_reg|registers[3][4]~q\,
	combout => \banco_reg|Mux4~0_combout\);

-- Location: LCCOMB_X68_Y65_N26
\banco_reg|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux4~1_combout\ = (\banco_reg|Mux4~0_combout\) # ((!\ifid|out_instr\(10) & (\ifid|out_instr\(5) & \banco_reg|registers[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[2][4]~q\,
	datad => \banco_reg|Mux4~0_combout\,
	combout => \banco_reg|Mux4~1_combout\);

-- Location: FF_X68_Y65_N27
\idex|out_read1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(4));

-- Location: LCCOMB_X65_Y62_N8
\ula_main|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~84_combout\ = ((\ula_main|Add0~83_combout\ $ (\idex|out_read1\(4) $ (!\ula_main|Add0~82\)))) # (GND)
-- \ula_main|Add0~85\ = CARRY((\ula_main|Add0~83_combout\ & ((\idex|out_read1\(4)) # (!\ula_main|Add0~82\))) # (!\ula_main|Add0~83_combout\ & (\idex|out_read1\(4) & !\ula_main|Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~83_combout\,
	datab => \idex|out_read1\(4),
	datad => VCC,
	cin => \ula_main|Add0~82\,
	combout => \ula_main|Add0~84_combout\,
	cout => \ula_main|Add0~85\);

-- Location: FF_X65_Y62_N9
\exme|out_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(4));

-- Location: FF_X65_Y62_N21
\mewb|out_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(4));

-- Location: LCCOMB_X65_Y62_N30
\ula_main|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~86_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a4\,
	combout => \ula_main|Add0~86_combout\);

-- Location: LCCOMB_X67_Y66_N6
\banco_reg|registers[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][3]~feeder_combout\ = \mewb|out_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(3),
	combout => \banco_reg|registers[2][3]~feeder_combout\);

-- Location: FF_X67_Y66_N7
\banco_reg|registers[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][3]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][3]~q\);

-- Location: FF_X65_Y66_N9
\banco_reg|registers[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(3),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][3]~q\);

-- Location: FF_X66_Y66_N23
\banco_reg|registers[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(3),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][3]~q\);

-- Location: LCCOMB_X66_Y66_N22
\banco_reg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux3~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & (\banco_reg|registers[3][3]~q\)) # (!\ifid|out_instr\(5) & ((\banco_reg|registers[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[3][3]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][3]~q\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y66_N30
\banco_reg|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux3~1_combout\ = (\banco_reg|Mux3~0_combout\) # ((\banco_reg|registers[2][3]~q\ & (\ifid|out_instr\(5) & !\ifid|out_instr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][3]~q\,
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|Mux3~0_combout\,
	datad => \ifid|out_instr\(10),
	combout => \banco_reg|Mux3~1_combout\);

-- Location: FF_X66_Y66_N31
\idex|out_read1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(3));

-- Location: LCCOMB_X65_Y62_N10
\ula_main|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~87_combout\ = (\ula_main|Add0~86_combout\ & ((\idex|out_read1\(3) & (\ula_main|Add0~85\ & VCC)) # (!\idex|out_read1\(3) & (!\ula_main|Add0~85\)))) # (!\ula_main|Add0~86_combout\ & ((\idex|out_read1\(3) & (!\ula_main|Add0~85\)) # 
-- (!\idex|out_read1\(3) & ((\ula_main|Add0~85\) # (GND)))))
-- \ula_main|Add0~88\ = CARRY((\ula_main|Add0~86_combout\ & (!\idex|out_read1\(3) & !\ula_main|Add0~85\)) # (!\ula_main|Add0~86_combout\ & ((!\ula_main|Add0~85\) # (!\idex|out_read1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~86_combout\,
	datab => \idex|out_read1\(3),
	datad => VCC,
	cin => \ula_main|Add0~85\,
	combout => \ula_main|Add0~87_combout\,
	cout => \ula_main|Add0~88\);

-- Location: FF_X65_Y62_N11
\exme|out_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(3));

-- Location: FF_X65_Y62_N19
\mewb|out_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(3));

-- Location: LCCOMB_X63_Y63_N30
\ula_main|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~89_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \ula_main|Add0~89_combout\);

-- Location: LCCOMB_X65_Y65_N10
\banco_reg|registers[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][2]~feeder_combout\ = \mewb|out_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(2),
	combout => \banco_reg|registers[2][2]~feeder_combout\);

-- Location: FF_X65_Y65_N11
\banco_reg|registers[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][2]~feeder_combout\,
	ena => \banco_reg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][2]~q\);

-- Location: FF_X65_Y66_N31
\banco_reg|registers[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(2),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][2]~q\);

-- Location: FF_X65_Y66_N23
\banco_reg|registers[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(2),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[3][2]~q\);

-- Location: LCCOMB_X65_Y66_N30
\banco_reg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux2~0_combout\ = (\ifid|out_instr\(10) & ((\ifid|out_instr\(5) & ((\banco_reg|registers[3][2]~q\))) # (!\ifid|out_instr\(5) & (\banco_reg|registers[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(5),
	datac => \banco_reg|registers[1][2]~q\,
	datad => \banco_reg|registers[3][2]~q\,
	combout => \banco_reg|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y65_N28
\banco_reg|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux2~1_combout\ = (\banco_reg|Mux2~0_combout\) # ((\banco_reg|registers[2][2]~q\ & (!\ifid|out_instr\(10) & \ifid|out_instr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][2]~q\,
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|Mux2~0_combout\,
	datad => \ifid|out_instr\(5),
	combout => \banco_reg|Mux2~1_combout\);

-- Location: FF_X65_Y65_N29
\idex|out_read1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(2));

-- Location: LCCOMB_X65_Y62_N12
\ula_main|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~90_combout\ = ((\ula_main|Add0~89_combout\ $ (\idex|out_read1\(2) $ (!\ula_main|Add0~88\)))) # (GND)
-- \ula_main|Add0~91\ = CARRY((\ula_main|Add0~89_combout\ & ((\idex|out_read1\(2)) # (!\ula_main|Add0~88\))) # (!\ula_main|Add0~89_combout\ & (\idex|out_read1\(2) & !\ula_main|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~89_combout\,
	datab => \idex|out_read1\(2),
	datad => VCC,
	cin => \ula_main|Add0~88\,
	combout => \ula_main|Add0~90_combout\,
	cout => \ula_main|Add0~91\);

-- Location: FF_X65_Y62_N13
\exme|out_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(2));

-- Location: LCCOMB_X65_Y65_N2
\mewb|out_addr[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[2]~feeder_combout\ = \exme|out_result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(2),
	combout => \mewb|out_addr[2]~feeder_combout\);

-- Location: FF_X65_Y65_N3
\mewb|out_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(2));

-- Location: LCCOMB_X65_Y62_N24
\ula_main|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~92_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \ula_main|Add0~92_combout\);

-- Location: LCCOMB_X65_Y62_N14
\ula_main|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~93_combout\ = (\idex|out_read1\(1) & ((\ula_main|Add0~92_combout\ & (\ula_main|Add0~91\ & VCC)) # (!\ula_main|Add0~92_combout\ & (!\ula_main|Add0~91\)))) # (!\idex|out_read1\(1) & ((\ula_main|Add0~92_combout\ & (!\ula_main|Add0~91\)) # 
-- (!\ula_main|Add0~92_combout\ & ((\ula_main|Add0~91\) # (GND)))))
-- \ula_main|Add0~94\ = CARRY((\idex|out_read1\(1) & (!\ula_main|Add0~92_combout\ & !\ula_main|Add0~91\)) # (!\idex|out_read1\(1) & ((!\ula_main|Add0~91\) # (!\ula_main|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(1),
	datab => \ula_main|Add0~92_combout\,
	datad => VCC,
	cin => \ula_main|Add0~91\,
	combout => \ula_main|Add0~93_combout\,
	cout => \ula_main|Add0~94\);

-- Location: FF_X65_Y62_N15
\exme|out_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(1));

-- Location: FF_X65_Y62_N27
\mewb|out_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(1));

-- Location: LCCOMB_X63_Y63_N8
\ula_main|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~95_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \banco_reg|registers_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a1\,
	combout => \ula_main|Add0~95_combout\);

-- Location: LCCOMB_X65_Y62_N16
\ula_main|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~96_combout\ = \idex|out_read1\(0) $ (\ula_main|Add0~94\ $ (!\ula_main|Add0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|out_read1\(0),
	datad => \ula_main|Add0~95_combout\,
	cin => \ula_main|Add0~94\,
	combout => \ula_main|Add0~96_combout\);

-- Location: FF_X65_Y62_N17
\exme|out_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(0));

-- Location: LCCOMB_X65_Y65_N0
\mewb|out_addr[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[0]~feeder_combout\ = \exme|out_result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(0),
	combout => \mewb|out_addr[0]~feeder_combout\);

-- Location: FF_X65_Y65_N1
\mewb|out_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(0));

-- Location: LCCOMB_X65_Y64_N6
\ula_main|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~0_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(31))) # (!\idex|ALUSrc_out~q\ & ((\banco_reg|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|out_imed\(31),
	datac => \idex|ALUSrc_out~q\,
	datad => \banco_reg|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \ula_main|Add0~0_combout\);

-- Location: FF_X65_Y64_N19
\exme|out_result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ula_main|Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(31));

-- Location: LCCOMB_X65_Y64_N2
\mewb|out_addr[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[31]~feeder_combout\ = \exme|out_result\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(31),
	combout => \mewb|out_addr[31]~feeder_combout\);

-- Location: FF_X65_Y64_N3
\mewb|out_addr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(31));

-- Location: FF_X66_Y66_N5
\banco_reg|registers[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(31),
	sload => VCC,
	ena => \banco_reg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[1][31]~q\);

ww_reg1(31) <= \reg1[31]~output_o\;

ww_reg1(30) <= \reg1[30]~output_o\;

ww_reg1(29) <= \reg1[29]~output_o\;

ww_reg1(28) <= \reg1[28]~output_o\;

ww_reg1(27) <= \reg1[27]~output_o\;

ww_reg1(26) <= \reg1[26]~output_o\;

ww_reg1(25) <= \reg1[25]~output_o\;

ww_reg1(24) <= \reg1[24]~output_o\;

ww_reg1(23) <= \reg1[23]~output_o\;

ww_reg1(22) <= \reg1[22]~output_o\;

ww_reg1(21) <= \reg1[21]~output_o\;

ww_reg1(20) <= \reg1[20]~output_o\;

ww_reg1(19) <= \reg1[19]~output_o\;

ww_reg1(18) <= \reg1[18]~output_o\;

ww_reg1(17) <= \reg1[17]~output_o\;

ww_reg1(16) <= \reg1[16]~output_o\;

ww_reg1(15) <= \reg1[15]~output_o\;

ww_reg1(14) <= \reg1[14]~output_o\;

ww_reg1(13) <= \reg1[13]~output_o\;

ww_reg1(12) <= \reg1[12]~output_o\;

ww_reg1(11) <= \reg1[11]~output_o\;

ww_reg1(10) <= \reg1[10]~output_o\;

ww_reg1(9) <= \reg1[9]~output_o\;

ww_reg1(8) <= \reg1[8]~output_o\;

ww_reg1(7) <= \reg1[7]~output_o\;

ww_reg1(6) <= \reg1[6]~output_o\;

ww_reg1(5) <= \reg1[5]~output_o\;

ww_reg1(4) <= \reg1[4]~output_o\;

ww_reg1(3) <= \reg1[3]~output_o\;

ww_reg1(2) <= \reg1[2]~output_o\;

ww_reg1(1) <= \reg1[1]~output_o\;

ww_reg1(0) <= \reg1[0]~output_o\;

ww_reg3(31) <= \reg3[31]~output_o\;

ww_reg3(30) <= \reg3[30]~output_o\;

ww_reg3(29) <= \reg3[29]~output_o\;

ww_reg3(28) <= \reg3[28]~output_o\;

ww_reg3(27) <= \reg3[27]~output_o\;

ww_reg3(26) <= \reg3[26]~output_o\;

ww_reg3(25) <= \reg3[25]~output_o\;

ww_reg3(24) <= \reg3[24]~output_o\;

ww_reg3(23) <= \reg3[23]~output_o\;

ww_reg3(22) <= \reg3[22]~output_o\;

ww_reg3(21) <= \reg3[21]~output_o\;

ww_reg3(20) <= \reg3[20]~output_o\;

ww_reg3(19) <= \reg3[19]~output_o\;

ww_reg3(18) <= \reg3[18]~output_o\;

ww_reg3(17) <= \reg3[17]~output_o\;

ww_reg3(16) <= \reg3[16]~output_o\;

ww_reg3(15) <= \reg3[15]~output_o\;

ww_reg3(14) <= \reg3[14]~output_o\;

ww_reg3(13) <= \reg3[13]~output_o\;

ww_reg3(12) <= \reg3[12]~output_o\;

ww_reg3(11) <= \reg3[11]~output_o\;

ww_reg3(10) <= \reg3[10]~output_o\;

ww_reg3(9) <= \reg3[9]~output_o\;

ww_reg3(8) <= \reg3[8]~output_o\;

ww_reg3(7) <= \reg3[7]~output_o\;

ww_reg3(6) <= \reg3[6]~output_o\;

ww_reg3(5) <= \reg3[5]~output_o\;

ww_reg3(4) <= \reg3[4]~output_o\;

ww_reg3(3) <= \reg3[3]~output_o\;

ww_reg3(2) <= \reg3[2]~output_o\;

ww_reg3(1) <= \reg3[1]~output_o\;

ww_reg3(0) <= \reg3[0]~output_o\;

ww_reg6(31) <= \reg6[31]~output_o\;

ww_reg6(30) <= \reg6[30]~output_o\;

ww_reg6(29) <= \reg6[29]~output_o\;

ww_reg6(28) <= \reg6[28]~output_o\;

ww_reg6(27) <= \reg6[27]~output_o\;

ww_reg6(26) <= \reg6[26]~output_o\;

ww_reg6(25) <= \reg6[25]~output_o\;

ww_reg6(24) <= \reg6[24]~output_o\;

ww_reg6(23) <= \reg6[23]~output_o\;

ww_reg6(22) <= \reg6[22]~output_o\;

ww_reg6(21) <= \reg6[21]~output_o\;

ww_reg6(20) <= \reg6[20]~output_o\;

ww_reg6(19) <= \reg6[19]~output_o\;

ww_reg6(18) <= \reg6[18]~output_o\;

ww_reg6(17) <= \reg6[17]~output_o\;

ww_reg6(16) <= \reg6[16]~output_o\;

ww_reg6(15) <= \reg6[15]~output_o\;

ww_reg6(14) <= \reg6[14]~output_o\;

ww_reg6(13) <= \reg6[13]~output_o\;

ww_reg6(12) <= \reg6[12]~output_o\;

ww_reg6(11) <= \reg6[11]~output_o\;

ww_reg6(10) <= \reg6[10]~output_o\;

ww_reg6(9) <= \reg6[9]~output_o\;

ww_reg6(8) <= \reg6[8]~output_o\;

ww_reg6(7) <= \reg6[7]~output_o\;

ww_reg6(6) <= \reg6[6]~output_o\;

ww_reg6(5) <= \reg6[5]~output_o\;

ww_reg6(4) <= \reg6[4]~output_o\;

ww_reg6(3) <= \reg6[3]~output_o\;

ww_reg6(2) <= \reg6[2]~output_o\;

ww_reg6(1) <= \reg6[1]~output_o\;

ww_reg6(0) <= \reg6[0]~output_o\;

ww_z(31) <= \z[31]~output_o\;

ww_z(30) <= \z[30]~output_o\;

ww_z(29) <= \z[29]~output_o\;

ww_z(28) <= \z[28]~output_o\;

ww_z(27) <= \z[27]~output_o\;

ww_z(26) <= \z[26]~output_o\;

ww_z(25) <= \z[25]~output_o\;

ww_z(24) <= \z[24]~output_o\;

ww_z(23) <= \z[23]~output_o\;

ww_z(22) <= \z[22]~output_o\;

ww_z(21) <= \z[21]~output_o\;

ww_z(20) <= \z[20]~output_o\;

ww_z(19) <= \z[19]~output_o\;

ww_z(18) <= \z[18]~output_o\;

ww_z(17) <= \z[17]~output_o\;

ww_z(16) <= \z[16]~output_o\;

ww_z(15) <= \z[15]~output_o\;

ww_z(14) <= \z[14]~output_o\;

ww_z(13) <= \z[13]~output_o\;

ww_z(12) <= \z[12]~output_o\;

ww_z(11) <= \z[11]~output_o\;

ww_z(10) <= \z[10]~output_o\;

ww_z(9) <= \z[9]~output_o\;

ww_z(8) <= \z[8]~output_o\;

ww_z(7) <= \z[7]~output_o\;

ww_z(6) <= \z[6]~output_o\;

ww_z(5) <= \z[5]~output_o\;

ww_z(4) <= \z[4]~output_o\;

ww_z(3) <= \z[3]~output_o\;

ww_z(2) <= \z[2]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(0) <= \z[0]~output_o\;

ww_k(4) <= \k[4]~output_o\;

ww_k(3) <= \k[3]~output_o\;

ww_k(2) <= \k[2]~output_o\;

ww_k(1) <= \k[1]~output_o\;

ww_k(0) <= \k[0]~output_o\;

ww_rt(4) <= \rt[4]~output_o\;

ww_rt(3) <= \rt[3]~output_o\;

ww_rt(2) <= \rt[2]~output_o\;

ww_rt(1) <= \rt[1]~output_o\;

ww_rt(0) <= \rt[0]~output_o\;

ww_rd(4) <= \rd[4]~output_o\;

ww_rd(3) <= \rd[3]~output_o\;

ww_rd(2) <= \rd[2]~output_o\;

ww_rd(1) <= \rd[1]~output_o\;

ww_rd(0) <= \rd[0]~output_o\;

ww_reger <= \reger~output_o\;

ww_Aluop1(5) <= \Aluop1[5]~output_o\;

ww_Aluop1(4) <= \Aluop1[4]~output_o\;

ww_Aluop1(3) <= \Aluop1[3]~output_o\;

ww_Aluop1(2) <= \Aluop1[2]~output_o\;

ww_Aluop1(1) <= \Aluop1[1]~output_o\;

ww_Aluop1(0) <= \Aluop1[0]~output_o\;

ww_rfinal(4) <= \rfinal[4]~output_o\;

ww_rfinal(3) <= \rfinal[3]~output_o\;

ww_rfinal(2) <= \rfinal[2]~output_o\;

ww_rfinal(1) <= \rfinal[1]~output_o\;

ww_rfinal(0) <= \rfinal[0]~output_o\;
END structure;


