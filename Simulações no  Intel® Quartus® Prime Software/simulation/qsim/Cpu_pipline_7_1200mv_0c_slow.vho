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

-- DATE "11/18/2019 19:37:01"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
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
	z : BUFFER std_logic_vector(0 TO 31);
	k : BUFFER std_logic_vector(0 TO 4)
	);
END Cpu_pipline;

-- Design Ports Information
-- reg1[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[30]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[29]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[28]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[27]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[26]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[25]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[24]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[23]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[22]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[21]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[20]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[19]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[18]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[17]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[16]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[15]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[14]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[9]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[8]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[5]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[31]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[30]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[29]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[28]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[27]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[26]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[25]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[24]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[23]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[22]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[21]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[20]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[19]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[18]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[17]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[16]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[15]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[14]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[12]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[11]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[10]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[4]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[31]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[30]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[29]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[28]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[27]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[26]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[25]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[24]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[23]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[22]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[20]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[19]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[18]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[16]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[15]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[14]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[13]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[12]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[8]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[4]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_z : std_logic_vector(0 TO 31);
SIGNAL ww_k : std_logic_vector(0 TO 4);
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
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \pc_4|out1[29]~0_combout\ : std_logic;
SIGNAL \pcsrc_mux|X[31]~0_combout\ : std_logic;
SIGNAL \IM|Mux1~0_combout\ : std_logic;
SIGNAL \ctrl|Mux0~0_combout\ : std_logic;
SIGNAL \IM|Mux3~1_combout\ : std_logic;
SIGNAL \IM|Mux3~2_combout\ : std_logic;
SIGNAL \ctrl|Mux4~0_combout\ : std_logic;
SIGNAL \idex|ALUSrc_out~q\ : std_logic;
SIGNAL \IM|Mux14~0_combout\ : std_logic;
SIGNAL \IM|Mux9~0_combout\ : std_logic;
SIGNAL \IM|Mux11~0_combout\ : std_logic;
SIGNAL \IM|Mux27~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][25]~feeder_combout\ : std_logic;
SIGNAL \IM|Mux18~0_combout\ : std_logic;
SIGNAL \IM|Mux18~1_combout\ : std_logic;
SIGNAL \IM|Mux19~0_combout\ : std_logic;
SIGNAL \regdst_mux|X[3]~0_combout\ : std_logic;
SIGNAL \regdst_mux|X[2]~1_combout\ : std_logic;
SIGNAL \idex|out_rd[1]~feeder_combout\ : std_logic;
SIGNAL \regdst_mux|X[1]~2_combout\ : std_logic;
SIGNAL \exme|out_regdst[1]~feeder_combout\ : std_logic;
SIGNAL \ctrl|Mux9~0_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~6_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~7_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][25]~q\ : std_logic;
SIGNAL \banco_reg|Decoder0~8_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][25]~q\ : std_logic;
SIGNAL \banco_reg|Mux57~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][25]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][25]~q\ : std_logic;
SIGNAL \banco_reg|Mux57~1_combout\ : std_logic;
SIGNAL \ctrl|Mux3~0_combout\ : std_logic;
SIGNAL \ula_main|Add0~6_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~0_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~9_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][26]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][26]~q\ : std_logic;
SIGNAL \banco_reg|Decoder0~2_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~10_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][26]~q\ : std_logic;
SIGNAL \banco_reg|Mux26~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux26~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][26]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][26]~q\ : std_logic;
SIGNAL \banco_reg|Decoder0~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][26]~q\ : std_logic;
SIGNAL \banco_reg|Decoder0~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][26]~q\ : std_logic;
SIGNAL \banco_reg|Mux26~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux26~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux26~4_combout\ : std_logic;
SIGNAL \idex|out_read1[26]~feeder_combout\ : std_logic;
SIGNAL \idex|out_read1[27]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][28]~q\ : std_logic;
SIGNAL \banco_reg|Mux28~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][28]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][28]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][28]~q\ : std_logic;
SIGNAL \banco_reg|Mux28~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][28]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][28]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][28]~q\ : std_logic;
SIGNAL \banco_reg|Mux28~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux28~3_combout\ : std_logic;
SIGNAL \banco_reg|Mux28~4_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][29]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][29]~q\ : std_logic;
SIGNAL \banco_reg|registers[18][29]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][29]~q\ : std_logic;
SIGNAL \banco_reg|Mux29~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux29~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][29]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][29]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][29]~q\ : std_logic;
SIGNAL \banco_reg|registers[4][29]~q\ : std_logic;
SIGNAL \banco_reg|Mux29~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux29~3_combout\ : std_logic;
SIGNAL \banco_reg|Mux29~4_combout\ : std_logic;
SIGNAL \idex|out_read1[29]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][31]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][31]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][31]~q\ : std_logic;
SIGNAL \banco_reg|Mux63~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][31]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][31]~q\ : std_logic;
SIGNAL \banco_reg|Mux63~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~0_combout\ : std_logic;
SIGNAL \exme|out_result[31]~33_cout\ : std_logic;
SIGNAL \exme|out_result[31]~35\ : std_logic;
SIGNAL \exme|out_result[30]~37\ : std_logic;
SIGNAL \exme|out_result[29]~38_combout\ : std_logic;
SIGNAL \alusrc_mux|X[29]~1_combout\ : std_logic;
SIGNAL \ula_main|Mux29~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][29]~q\ : std_logic;
SIGNAL \banco_reg|Mux61~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux61~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~2_combout\ : std_logic;
SIGNAL \exme|out_result[29]~39\ : std_logic;
SIGNAL \exme|out_result[28]~40_combout\ : std_logic;
SIGNAL \ula_main|Mux28~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][28]~q\ : std_logic;
SIGNAL \banco_reg|Mux60~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux60~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~3_combout\ : std_logic;
SIGNAL \exme|out_result[28]~41\ : std_logic;
SIGNAL \exme|out_result[27]~42_combout\ : std_logic;
SIGNAL \alusrc_mux|X[27]~2_combout\ : std_logic;
SIGNAL \ula_main|Mux27~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][27]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][27]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][27]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][27]~q\ : std_logic;
SIGNAL \banco_reg|Mux59~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux59~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~4_combout\ : std_logic;
SIGNAL \exme|out_result[27]~43\ : std_logic;
SIGNAL \exme|out_result[26]~44_combout\ : std_logic;
SIGNAL \IM|Mux26~1_combout\ : std_logic;
SIGNAL \alusrc_mux|X[26]~3_combout\ : std_logic;
SIGNAL \ula_main|Mux26~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[26]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][26]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][26]~q\ : std_logic;
SIGNAL \banco_reg|Mux58~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux58~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~5_combout\ : std_logic;
SIGNAL \exme|out_result[26]~45\ : std_logic;
SIGNAL \exme|out_result[25]~46_combout\ : std_logic;
SIGNAL \alusrc_mux|X[25]~4_combout\ : std_logic;
SIGNAL \ula_main|Mux25~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[25]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][25]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][25]~q\ : std_logic;
SIGNAL \banco_reg|Mux25~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux25~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][25]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][25]~q\ : std_logic;
SIGNAL \banco_reg|Mux25~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux25~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux25~4_combout\ : std_logic;
SIGNAL \pc|pc[25]~1_combout\ : std_logic;
SIGNAL \pc_4|out1[26]~7\ : std_logic;
SIGNAL \pc_4|out1[25]~8_combout\ : std_logic;
SIGNAL \IM|Mux26~0_combout\ : std_logic;
SIGNAL \IM|Mux11~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][24]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][24]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][24]~q\ : std_logic;
SIGNAL \banco_reg|Mux56~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][24]~q\ : std_logic;
SIGNAL \banco_reg|Mux56~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~7_combout\ : std_logic;
SIGNAL \exme|out_result[25]~47\ : std_logic;
SIGNAL \exme|out_result[24]~48_combout\ : std_logic;
SIGNAL \alusrc_mux|X[24]~5_combout\ : std_logic;
SIGNAL \ula_main|Mux24~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[24]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][24]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][24]~q\ : std_logic;
SIGNAL \banco_reg|Mux24~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux24~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][24]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][24]~q\ : std_logic;
SIGNAL \banco_reg|Mux24~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux24~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux24~4_combout\ : std_logic;
SIGNAL \pc|pc[24]~2_combout\ : std_logic;
SIGNAL \pc_4|out1[25]~9\ : std_logic;
SIGNAL \pc_4|out1[24]~10_combout\ : std_logic;
SIGNAL \IM|Mux16~0_combout\ : std_logic;
SIGNAL \IM|Mux16~1_combout\ : std_logic;
SIGNAL \regdst_mux|X[0]~3_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~4_combout\ : std_logic;
SIGNAL \banco_reg|Decoder0~5_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][30]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][30]~q\ : std_logic;
SIGNAL \banco_reg|Mux62~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux62~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~1_combout\ : std_logic;
SIGNAL \exme|out_result[30]~36_combout\ : std_logic;
SIGNAL \alusrc_mux|X[30]~0_combout\ : std_logic;
SIGNAL \ula_main|Mux30~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[30]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][30]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][30]~q\ : std_logic;
SIGNAL \banco_reg|registers[18][30]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][30]~q\ : std_logic;
SIGNAL \banco_reg|Mux30~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux30~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][30]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][30]~q\ : std_logic;
SIGNAL \banco_reg|Mux30~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux30~3_combout\ : std_logic;
SIGNAL \banco_reg|Mux30~4_combout\ : std_logic;
SIGNAL \pcsrc_mux|X[30]~3_combout\ : std_logic;
SIGNAL \IM|Mux14~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][27]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][27]~q\ : std_logic;
SIGNAL \banco_reg|Mux27~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux27~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][27]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][27]~q\ : std_logic;
SIGNAL \banco_reg|Mux27~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux27~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux27~4_combout\ : std_logic;
SIGNAL \pc|pc[27]~0_combout\ : std_logic;
SIGNAL \pc_4|out1[29]~1\ : std_logic;
SIGNAL \pc_4|out1[28]~3\ : std_logic;
SIGNAL \pc_4|out1[27]~4_combout\ : std_logic;
SIGNAL \pc_4|out1[27]~5\ : std_logic;
SIGNAL \pc_4|out1[26]~6_combout\ : std_logic;
SIGNAL \pcsrc_mux|X[26]~1_combout\ : std_logic;
SIGNAL \IM|Mux3~0_combout\ : std_logic;
SIGNAL \IM|Mux5~0_combout\ : std_logic;
SIGNAL \IM|Mux5~1_combout\ : std_logic;
SIGNAL \ctrl|JM~combout\ : std_logic;
SIGNAL \pcsrc_mux|X[29]~2_combout\ : std_logic;
SIGNAL \IM|Mux30~0_combout\ : std_logic;
SIGNAL \pc|pc[28]~3_combout\ : std_logic;
SIGNAL \pc_4|out1[28]~2_combout\ : std_logic;
SIGNAL \IM|Mux10~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][31]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][31]~q\ : std_logic;
SIGNAL \banco_reg|Mux31~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux31~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][31]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][31]~q\ : std_logic;
SIGNAL \banco_reg|Mux31~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux31~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux31~4_combout\ : std_logic;
SIGNAL \exme|out_result[31]~34_combout\ : std_logic;
SIGNAL \ula_main|Mux31~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[31]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][23]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][23]~q\ : std_logic;
SIGNAL \banco_reg|Mux55~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][23]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][23]~q\ : std_logic;
SIGNAL \banco_reg|Mux55~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~8_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][23]~q\ : std_logic;
SIGNAL \banco_reg|Mux23~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][23]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][23]~q\ : std_logic;
SIGNAL \banco_reg|Mux23~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][23]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][23]~q\ : std_logic;
SIGNAL \banco_reg|Mux23~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux23~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux23~4_combout\ : std_logic;
SIGNAL \exme|out_result[24]~49\ : std_logic;
SIGNAL \exme|out_result[23]~50_combout\ : std_logic;
SIGNAL \exme|out_result[23]~feeder_combout\ : std_logic;
SIGNAL \ula_main|Mux23~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[23]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][22]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][22]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][22]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][22]~q\ : std_logic;
SIGNAL \banco_reg|Mux54~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux54~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~9_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][22]~q\ : std_logic;
SIGNAL \banco_reg|Mux22~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][22]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][22]~q\ : std_logic;
SIGNAL \banco_reg|Mux22~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][22]~q\ : std_logic;
SIGNAL \banco_reg|Mux22~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][22]~q\ : std_logic;
SIGNAL \banco_reg|Mux22~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux22~4_combout\ : std_logic;
SIGNAL \exme|out_result[23]~51\ : std_logic;
SIGNAL \exme|out_result[22]~52_combout\ : std_logic;
SIGNAL \exme|out_result[22]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[22]~6_combout\ : std_logic;
SIGNAL \ula_main|Mux22~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[22]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][21]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][21]~q\ : std_logic;
SIGNAL \banco_reg|registers[18][21]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][21]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][21]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][21]~q\ : std_logic;
SIGNAL \banco_reg|Mux21~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux21~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][21]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][21]~q\ : std_logic;
SIGNAL \banco_reg|Mux21~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][21]~q\ : std_logic;
SIGNAL \banco_reg|Mux21~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux21~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux53~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux53~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~10_combout\ : std_logic;
SIGNAL \exme|out_result[22]~53\ : std_logic;
SIGNAL \exme|out_result[21]~54_combout\ : std_logic;
SIGNAL \exme|out_result[21]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[21]~7_combout\ : std_logic;
SIGNAL \ula_main|Mux21~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[21]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][20]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][20]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][20]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][20]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][20]~q\ : std_logic;
SIGNAL \banco_reg|Mux52~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux52~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~11_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][20]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][20]~q\ : std_logic;
SIGNAL \banco_reg|Mux20~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux20~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][20]~q\ : std_logic;
SIGNAL \banco_reg|Mux20~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][20]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][20]~q\ : std_logic;
SIGNAL \banco_reg|Mux20~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux20~4_combout\ : std_logic;
SIGNAL \exme|out_result[21]~55\ : std_logic;
SIGNAL \exme|out_result[20]~56_combout\ : std_logic;
SIGNAL \ula_main|Mux20~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[20]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][19]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][19]~q\ : std_logic;
SIGNAL \banco_reg|Mux19~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][19]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][19]~q\ : std_logic;
SIGNAL \banco_reg|Mux19~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][19]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][19]~q\ : std_logic;
SIGNAL \banco_reg|registers[18][19]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][19]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][19]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][19]~q\ : std_logic;
SIGNAL \banco_reg|Mux19~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux19~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux19~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux51~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux51~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~12_combout\ : std_logic;
SIGNAL \exme|out_result[20]~57\ : std_logic;
SIGNAL \exme|out_result[19]~58_combout\ : std_logic;
SIGNAL \exme|out_result[19]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[19]~8_combout\ : std_logic;
SIGNAL \ula_main|Mux19~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][18]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][18]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][18]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][18]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][18]~q\ : std_logic;
SIGNAL \banco_reg|Mux50~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux50~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~13_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][18]~q\ : std_logic;
SIGNAL \banco_reg|Mux18~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][18]~q\ : std_logic;
SIGNAL \banco_reg|Mux18~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][18]~q\ : std_logic;
SIGNAL \banco_reg|Mux18~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][18]~q\ : std_logic;
SIGNAL \banco_reg|Mux18~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux18~4_combout\ : std_logic;
SIGNAL \exme|out_result[19]~59\ : std_logic;
SIGNAL \exme|out_result[18]~60_combout\ : std_logic;
SIGNAL \exme|out_result[18]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[18]~9_combout\ : std_logic;
SIGNAL \ula_main|Mux18~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][17]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][17]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][17]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][17]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][17]~q\ : std_logic;
SIGNAL \banco_reg|Mux49~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux49~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~14_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][17]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][17]~q\ : std_logic;
SIGNAL \banco_reg|Mux17~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][17]~q\ : std_logic;
SIGNAL \banco_reg|Mux17~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][17]~q\ : std_logic;
SIGNAL \banco_reg|Mux17~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][17]~q\ : std_logic;
SIGNAL \banco_reg|Mux17~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux17~4_combout\ : std_logic;
SIGNAL \exme|out_result[18]~61\ : std_logic;
SIGNAL \exme|out_result[17]~62_combout\ : std_logic;
SIGNAL \exme|out_result[17]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[17]~10_combout\ : std_logic;
SIGNAL \ula_main|Mux17~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[17]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][16]~q\ : std_logic;
SIGNAL \banco_reg|Mux16~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][16]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][16]~q\ : std_logic;
SIGNAL \banco_reg|Mux16~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][16]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][16]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][16]~q\ : std_logic;
SIGNAL \banco_reg|Mux16~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][16]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][16]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][16]~q\ : std_logic;
SIGNAL \banco_reg|Mux16~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux16~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux48~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux48~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~15_combout\ : std_logic;
SIGNAL \exme|out_result[17]~63\ : std_logic;
SIGNAL \exme|out_result[16]~64_combout\ : std_logic;
SIGNAL \exme|out_result[16]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[16]~11_combout\ : std_logic;
SIGNAL \ula_main|Mux16~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[16]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][15]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][15]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][15]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][15]~q\ : std_logic;
SIGNAL \banco_reg|Mux47~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux47~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~16_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][15]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][15]~q\ : std_logic;
SIGNAL \banco_reg|Mux15~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux15~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][15]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][15]~q\ : std_logic;
SIGNAL \banco_reg|Mux15~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][15]~q\ : std_logic;
SIGNAL \banco_reg|Mux15~3_combout\ : std_logic;
SIGNAL \banco_reg|Mux15~4_combout\ : std_logic;
SIGNAL \exme|out_result[16]~65\ : std_logic;
SIGNAL \exme|out_result[15]~66_combout\ : std_logic;
SIGNAL \exme|out_result[15]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[15]~12_combout\ : std_logic;
SIGNAL \ula_main|Mux15~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][14]~q\ : std_logic;
SIGNAL \banco_reg|registers[18][14]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][14]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][14]~q\ : std_logic;
SIGNAL \banco_reg|Mux14~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux14~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][14]~q\ : std_logic;
SIGNAL \banco_reg|Mux14~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][14]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][14]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][14]~q\ : std_logic;
SIGNAL \banco_reg|Mux14~3_combout\ : std_logic;
SIGNAL \banco_reg|Mux14~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux46~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux46~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~17_combout\ : std_logic;
SIGNAL \exme|out_result[15]~67\ : std_logic;
SIGNAL \exme|out_result[14]~68_combout\ : std_logic;
SIGNAL \alusrc_mux|X[14]~13_combout\ : std_logic;
SIGNAL \ula_main|Mux14~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[14]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][13]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][13]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][13]~q\ : std_logic;
SIGNAL \banco_reg|Mux13~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][13]~q\ : std_logic;
SIGNAL \banco_reg|Mux13~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][13]~q\ : std_logic;
SIGNAL \banco_reg|Mux13~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][13]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][13]~q\ : std_logic;
SIGNAL \banco_reg|Mux13~3_combout\ : std_logic;
SIGNAL \banco_reg|Mux13~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux45~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux45~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~18_combout\ : std_logic;
SIGNAL \exme|out_result[14]~69\ : std_logic;
SIGNAL \exme|out_result[13]~70_combout\ : std_logic;
SIGNAL \exme|out_result[13]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[13]~14_combout\ : std_logic;
SIGNAL \ula_main|Mux13~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[13]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][12]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][12]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][12]~q\ : std_logic;
SIGNAL \banco_reg|Mux44~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][12]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][12]~q\ : std_logic;
SIGNAL \banco_reg|Mux44~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~19_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][12]~q\ : std_logic;
SIGNAL \banco_reg|Mux12~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][12]~q\ : std_logic;
SIGNAL \banco_reg|Mux12~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][12]~q\ : std_logic;
SIGNAL \banco_reg|Mux12~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][12]~q\ : std_logic;
SIGNAL \banco_reg|Mux12~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux12~4_combout\ : std_logic;
SIGNAL \exme|out_result[13]~71\ : std_logic;
SIGNAL \exme|out_result[12]~72_combout\ : std_logic;
SIGNAL \exme|out_result[12]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[12]~15_combout\ : std_logic;
SIGNAL \ula_main|Mux12~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][11]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][11]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][11]~q\ : std_logic;
SIGNAL \banco_reg|Mux43~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][11]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][11]~q\ : std_logic;
SIGNAL \banco_reg|Mux43~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~20_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][11]~q\ : std_logic;
SIGNAL \banco_reg|Mux11~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][11]~q\ : std_logic;
SIGNAL \banco_reg|Mux11~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][11]~q\ : std_logic;
SIGNAL \banco_reg|Mux11~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][11]~q\ : std_logic;
SIGNAL \banco_reg|Mux11~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux11~4_combout\ : std_logic;
SIGNAL \exme|out_result[12]~73\ : std_logic;
SIGNAL \exme|out_result[11]~74_combout\ : std_logic;
SIGNAL \exme|out_result[11]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[11]~16_combout\ : std_logic;
SIGNAL \ula_main|Mux11~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][10]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][10]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][10]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][10]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][10]~q\ : std_logic;
SIGNAL \banco_reg|Mux42~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux42~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~21_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][10]~q\ : std_logic;
SIGNAL \banco_reg|Mux10~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][10]~q\ : std_logic;
SIGNAL \banco_reg|Mux10~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][10]~q\ : std_logic;
SIGNAL \banco_reg|Mux10~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][10]~q\ : std_logic;
SIGNAL \banco_reg|Mux10~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux10~4_combout\ : std_logic;
SIGNAL \exme|out_result[11]~75\ : std_logic;
SIGNAL \exme|out_result[10]~76_combout\ : std_logic;
SIGNAL \exme|out_result[10]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[10]~17_combout\ : std_logic;
SIGNAL \ula_main|Mux10~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[10]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][9]~q\ : std_logic;
SIGNAL \banco_reg|Mux9~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][9]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][9]~q\ : std_logic;
SIGNAL \banco_reg|registers[18][9]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][9]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][9]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][9]~q\ : std_logic;
SIGNAL \banco_reg|Mux9~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux9~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][9]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][9]~q\ : std_logic;
SIGNAL \banco_reg|Mux9~3_combout\ : std_logic;
SIGNAL \banco_reg|Mux9~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux41~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux41~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~22_combout\ : std_logic;
SIGNAL \exme|out_result[10]~77\ : std_logic;
SIGNAL \exme|out_result[9]~78_combout\ : std_logic;
SIGNAL \exme|out_result[9]~feeder_combout\ : std_logic;
SIGNAL \alusrc_mux|X[9]~18_combout\ : std_logic;
SIGNAL \ula_main|Mux9~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][8]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][8]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][8]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][8]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][8]~q\ : std_logic;
SIGNAL \banco_reg|Mux40~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux40~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~23_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][8]~q\ : std_logic;
SIGNAL \banco_reg|Mux8~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][8]~q\ : std_logic;
SIGNAL \banco_reg|Mux8~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][8]~q\ : std_logic;
SIGNAL \banco_reg|Mux8~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][8]~q\ : std_logic;
SIGNAL \banco_reg|Mux8~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux8~4_combout\ : std_logic;
SIGNAL \exme|out_result[9]~79\ : std_logic;
SIGNAL \exme|out_result[8]~80_combout\ : std_logic;
SIGNAL \alusrc_mux|X[8]~19_combout\ : std_logic;
SIGNAL \ula_main|Mux8~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[8]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][7]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][7]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][7]~q\ : std_logic;
SIGNAL \banco_reg|Mux7~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][7]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][7]~q\ : std_logic;
SIGNAL \banco_reg|Mux7~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][7]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][7]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][7]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][7]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][7]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][7]~q\ : std_logic;
SIGNAL \banco_reg|Mux7~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux7~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux7~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux39~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux39~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~24_combout\ : std_logic;
SIGNAL \exme|out_result[8]~81\ : std_logic;
SIGNAL \exme|out_result[7]~82_combout\ : std_logic;
SIGNAL \alusrc_mux|X[7]~20_combout\ : std_logic;
SIGNAL \ula_main|Mux7~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[7]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][6]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][6]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][6]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][6]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][6]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][6]~q\ : std_logic;
SIGNAL \banco_reg|Mux38~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux38~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~25_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][6]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][6]~q\ : std_logic;
SIGNAL \banco_reg|Mux6~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][6]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][6]~q\ : std_logic;
SIGNAL \banco_reg|Mux6~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux6~1_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][6]~q\ : std_logic;
SIGNAL \banco_reg|Mux6~2_combout\ : std_logic;
SIGNAL \banco_reg|Mux6~4_combout\ : std_logic;
SIGNAL \exme|out_result[7]~83\ : std_logic;
SIGNAL \exme|out_result[6]~84_combout\ : std_logic;
SIGNAL \alusrc_mux|X[6]~21_combout\ : std_logic;
SIGNAL \ula_main|Mux6~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][5]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][5]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][5]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][5]~q\ : std_logic;
SIGNAL \banco_reg|Mux37~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux37~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~26_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][5]~q\ : std_logic;
SIGNAL \banco_reg|Mux5~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][5]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][5]~q\ : std_logic;
SIGNAL \banco_reg|Mux5~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][5]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][5]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][5]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][5]~q\ : std_logic;
SIGNAL \banco_reg|Mux5~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux5~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux5~4_combout\ : std_logic;
SIGNAL \exme|out_result[6]~85\ : std_logic;
SIGNAL \exme|out_result[5]~86_combout\ : std_logic;
SIGNAL \alusrc_mux|X[5]~22_combout\ : std_logic;
SIGNAL \ula_main|Mux5~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][4]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][4]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][4]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][4]~q\ : std_logic;
SIGNAL \banco_reg|Mux36~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux36~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~27_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][4]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][4]~q\ : std_logic;
SIGNAL \banco_reg|Mux4~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][4]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][4]~q\ : std_logic;
SIGNAL \banco_reg|Mux4~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][4]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][4]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][4]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][4]~q\ : std_logic;
SIGNAL \banco_reg|Mux4~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux4~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux4~4_combout\ : std_logic;
SIGNAL \exme|out_result[5]~87\ : std_logic;
SIGNAL \exme|out_result[4]~88_combout\ : std_logic;
SIGNAL \alusrc_mux|X[4]~23_combout\ : std_logic;
SIGNAL \ula_main|Mux4~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][3]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][3]~q\ : std_logic;
SIGNAL \banco_reg|Mux3~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][3]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][3]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][3]~q\ : std_logic;
SIGNAL \banco_reg|Mux3~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][3]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][3]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][3]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][3]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][3]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][3]~q\ : std_logic;
SIGNAL \banco_reg|Mux3~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux3~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux3~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux35~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux35~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~28_combout\ : std_logic;
SIGNAL \exme|out_result[4]~89\ : std_logic;
SIGNAL \exme|out_result[3]~90_combout\ : std_logic;
SIGNAL \alusrc_mux|X[3]~24_combout\ : std_logic;
SIGNAL \ula_main|Mux3~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[3]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][2]~q\ : std_logic;
SIGNAL \banco_reg|registers[22][2]~q\ : std_logic;
SIGNAL \banco_reg|registers[6][2]~q\ : std_logic;
SIGNAL \banco_reg|Mux34~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux34~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~29_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][2]~q\ : std_logic;
SIGNAL \banco_reg|Mux2~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][2]~q\ : std_logic;
SIGNAL \banco_reg|Mux2~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][2]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][2]~q\ : std_logic;
SIGNAL \banco_reg|Mux2~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux2~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux2~4_combout\ : std_logic;
SIGNAL \exme|out_result[3]~91\ : std_logic;
SIGNAL \exme|out_result[2]~92_combout\ : std_logic;
SIGNAL \alusrc_mux|X[2]~25_combout\ : std_logic;
SIGNAL \ula_main|Mux2~0_combout\ : std_logic;
SIGNAL \mewb|out_addr[2]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][1]~q\ : std_logic;
SIGNAL \banco_reg|Mux1~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][1]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][1]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][1]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][1]~q\ : std_logic;
SIGNAL \banco_reg|Mux1~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][1]~q\ : std_logic;
SIGNAL \banco_reg|registers[18][1]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][1]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][1]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][1]~q\ : std_logic;
SIGNAL \banco_reg|Mux1~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux1~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux1~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux33~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux33~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~30_combout\ : std_logic;
SIGNAL \exme|out_result[2]~93\ : std_logic;
SIGNAL \exme|out_result[1]~94_combout\ : std_logic;
SIGNAL \alusrc_mux|X[1]~26_combout\ : std_logic;
SIGNAL \ula_main|Mux1~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[6][0]~q\ : std_logic;
SIGNAL \banco_reg|registers[2][0]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[2][0]~q\ : std_logic;
SIGNAL \banco_reg|Mux0~3_combout\ : std_logic;
SIGNAL \banco_reg|registers[4][0]~q\ : std_logic;
SIGNAL \banco_reg|Mux0~2_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][0]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[22][0]~q\ : std_logic;
SIGNAL \banco_reg|registers[16][0]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[16][0]~q\ : std_logic;
SIGNAL \banco_reg|registers[20][0]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[20][0]~q\ : std_logic;
SIGNAL \banco_reg|Mux0~0_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][0]~feeder_combout\ : std_logic;
SIGNAL \banco_reg|registers[18][0]~q\ : std_logic;
SIGNAL \banco_reg|Mux0~1_combout\ : std_logic;
SIGNAL \banco_reg|Mux0~4_combout\ : std_logic;
SIGNAL \banco_reg|Mux32~0_combout\ : std_logic;
SIGNAL \banco_reg|Mux32~1_combout\ : std_logic;
SIGNAL \ula_main|Add0~31_combout\ : std_logic;
SIGNAL \exme|out_result[1]~95\ : std_logic;
SIGNAL \exme|out_result[0]~96_combout\ : std_logic;
SIGNAL \alusrc_mux|X[0]~27_combout\ : std_logic;
SIGNAL \ula_main|Mux0~0_combout\ : std_logic;
SIGNAL \idex|out_read1\ : std_logic_vector(0 TO 31);
SIGNAL \exme|out_result\ : std_logic_vector(0 TO 31);
SIGNAL \pc|pc\ : std_logic_vector(0 TO 31);
SIGNAL \idex|out_WB\ : std_logic_vector(0 TO 1);
SIGNAL \ifid|out_instr\ : std_logic_vector(0 TO 31);
SIGNAL \idex|out_rd\ : std_logic_vector(0 TO 4);
SIGNAL \mewb|out_addr\ : std_logic_vector(0 TO 31);
SIGNAL \idex|out_rt\ : std_logic_vector(0 TO 4);
SIGNAL \idex|out_imed\ : std_logic_vector(0 TO 31);
SIGNAL \idex|ALUOp_out\ : std_logic_vector(0 TO 1);
SIGNAL \idex|out_read2\ : std_logic_vector(0 TO 31);
SIGNAL \mewb|out_regdst\ : std_logic_vector(0 TO 4);
SIGNAL \mewb|out_WB\ : std_logic_vector(0 TO 1);
SIGNAL \exme|out_regdst\ : std_logic_vector(0 TO 4);
SIGNAL \exme|out_WB\ : std_logic_vector(0 TO 1);
SIGNAL \ctrl|ALT_INV_Mux0~0_combout\ : std_logic;

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
z <= ww_z;
k <= ww_k;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ctrl|ALT_INV_Mux0~0_combout\ <= NOT \ctrl|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y19_N9
\reg1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[31]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\reg1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[30]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\reg1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[29]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\reg1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[28]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\reg1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[27]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\reg1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[26]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\reg1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[25]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\reg1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[24]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\reg1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[23]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\reg1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[22]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\reg1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[21]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\reg1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[20]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\reg1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[19]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\reg1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[18]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\reg1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[17]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\reg1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[16]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\reg1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[15]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\reg1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[14]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\reg1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[13]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\reg1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[12]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\reg1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\reg1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[10]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\reg1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\reg1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\reg1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[7]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\reg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[6]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\reg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\reg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[4]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\reg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\reg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[2]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\reg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\reg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg1[0]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\reg3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[31]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\reg3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[30]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\reg3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[29]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\reg3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[28]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\reg3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[27]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\reg3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[26]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\reg3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[25]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\reg3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[24]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\reg3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[23]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\reg3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[22]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\reg3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[21]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\reg3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[20]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\reg3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[19]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\reg3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[18]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\reg3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[17]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\reg3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[16]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\reg3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[15]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\reg3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\reg3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\reg3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[12]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\reg3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[11]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\reg3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\reg3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\reg3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\reg3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[7]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\reg3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[6]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\reg3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\reg3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[4]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\reg3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[3]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\reg3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\reg3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\reg3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \reg3[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\z[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(31),
	devoe => ww_devoe,
	o => \z[31]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\z[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(30),
	devoe => ww_devoe,
	o => \z[30]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\z[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(29),
	devoe => ww_devoe,
	o => \z[29]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\z[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(28),
	devoe => ww_devoe,
	o => \z[28]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\z[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(27),
	devoe => ww_devoe,
	o => \z[27]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\z[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(26),
	devoe => ww_devoe,
	o => \z[26]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\z[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(25),
	devoe => ww_devoe,
	o => \z[25]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\z[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(24),
	devoe => ww_devoe,
	o => \z[24]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\z[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(23),
	devoe => ww_devoe,
	o => \z[23]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\z[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(22),
	devoe => ww_devoe,
	o => \z[22]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\z[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(21),
	devoe => ww_devoe,
	o => \z[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\z[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(20),
	devoe => ww_devoe,
	o => \z[20]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\z[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(19),
	devoe => ww_devoe,
	o => \z[19]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\z[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(18),
	devoe => ww_devoe,
	o => \z[18]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\z[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(17),
	devoe => ww_devoe,
	o => \z[17]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\z[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(16),
	devoe => ww_devoe,
	o => \z[16]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\z[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(15),
	devoe => ww_devoe,
	o => \z[15]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\z[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(14),
	devoe => ww_devoe,
	o => \z[14]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\z[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(13),
	devoe => ww_devoe,
	o => \z[13]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\z[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(12),
	devoe => ww_devoe,
	o => \z[12]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\z[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(11),
	devoe => ww_devoe,
	o => \z[11]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\z[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(10),
	devoe => ww_devoe,
	o => \z[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\z[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(9),
	devoe => ww_devoe,
	o => \z[9]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\z[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(8),
	devoe => ww_devoe,
	o => \z[8]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(7),
	devoe => ww_devoe,
	o => \z[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(6),
	devoe => ww_devoe,
	o => \z[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(5),
	devoe => ww_devoe,
	o => \z[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(4),
	devoe => ww_devoe,
	o => \z[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(3),
	devoe => ww_devoe,
	o => \z[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(2),
	devoe => ww_devoe,
	o => \z[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(1),
	devoe => ww_devoe,
	o => \z[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mewb|out_addr\(0),
	devoe => ww_devoe,
	o => \z[0]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\k[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \k[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\k[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regdst_mux|X[3]~0_combout\,
	devoe => ww_devoe,
	o => \k[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\k[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regdst_mux|X[2]~1_combout\,
	devoe => ww_devoe,
	o => \k[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\k[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regdst_mux|X[1]~2_combout\,
	devoe => ww_devoe,
	o => \k[1]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\k[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regdst_mux|X[0]~3_combout\,
	devoe => ww_devoe,
	o => \k[0]~output_o\);

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

-- Location: LCCOMB_X46_Y10_N4
\pc_4|out1[29]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_4|out1[29]~0_combout\ = \pc|pc\(29) $ (VCC)
-- \pc_4|out1[29]~1\ = CARRY(\pc|pc\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(29),
	datad => VCC,
	combout => \pc_4|out1[29]~0_combout\,
	cout => \pc_4|out1[29]~1\);

-- Location: LCCOMB_X45_Y10_N24
\pcsrc_mux|X[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcsrc_mux|X[31]~0_combout\ = (\banco_reg|Mux31~4_combout\ & \ctrl|JM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \banco_reg|Mux31~4_combout\,
	datad => \ctrl|JM~combout\,
	combout => \pcsrc_mux|X[31]~0_combout\);

-- Location: LCCOMB_X46_Y10_N2
\IM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux1~0_combout\ = (\pc|pc\(30) & \IM|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pc\(30),
	datad => \IM|Mux5~0_combout\,
	combout => \IM|Mux1~0_combout\);

-- Location: FF_X46_Y10_N3
\ifid|out_instr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IM|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(1));

-- Location: LCCOMB_X45_Y10_N30
\ctrl|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Mux0~0_combout\ = (!\ifid|out_instr\(1) & (\ifid|out_instr\(3) & (\ifid|out_instr\(2) & !\ifid|out_instr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(1),
	datab => \ifid|out_instr\(3),
	datac => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(0),
	combout => \ctrl|Mux0~0_combout\);

-- Location: FF_X45_Y10_N25
\pc|pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pcsrc_mux|X[31]~0_combout\,
	ena => \ctrl|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(31));

-- Location: LCCOMB_X48_Y10_N28
\IM|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux3~1_combout\ = (\pc|pc\(29)) # ((\pc|pc\(28)) # (\pc|pc\(31) $ (\pc|pc\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(31),
	datab => \pc|pc\(29),
	datac => \pc|pc\(30),
	datad => \pc|pc\(28),
	combout => \IM|Mux3~1_combout\);

-- Location: LCCOMB_X48_Y10_N4
\IM|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux3~2_combout\ = (\IM|Mux3~0_combout\ & !\IM|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM|Mux3~0_combout\,
	datad => \IM|Mux3~1_combout\,
	combout => \IM|Mux3~2_combout\);

-- Location: FF_X48_Y10_N5
\ifid|out_instr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IM|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(3));

-- Location: LCCOMB_X49_Y9_N18
\ctrl|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Mux4~0_combout\ = (\ifid|out_instr\(3)) # (!\ifid|out_instr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|out_instr\(3),
	datad => \ifid|out_instr\(0),
	combout => \ctrl|Mux4~0_combout\);

-- Location: FF_X48_Y9_N5
\idex|ALUSrc_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl|Mux4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|ALUSrc_out~q\);

-- Location: LCCOMB_X48_Y10_N12
\IM|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux14~0_combout\ = (!\pc|pc\(31) & (!\pc|pc\(28) & (\IM|Mux3~0_combout\ & !\pc|pc\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(31),
	datab => \pc|pc\(28),
	datac => \IM|Mux3~0_combout\,
	datad => \pc|pc\(29),
	combout => \IM|Mux14~0_combout\);

-- Location: LCCOMB_X48_Y10_N16
\IM|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux9~0_combout\ = (\pc|pc\(30) & \IM|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pc\(30),
	datad => \IM|Mux14~0_combout\,
	combout => \IM|Mux9~0_combout\);

-- Location: FF_X48_Y10_N17
\ifid|out_instr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(9));

-- Location: LCCOMB_X45_Y10_N28
\IM|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux11~0_combout\ = (\pc|pc\(27) & (\pc|pc\(26) & \pc|pc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(27),
	datac => \pc|pc\(26),
	datad => \pc|pc\(29),
	combout => \IM|Mux11~0_combout\);

-- Location: LCCOMB_X48_Y10_N22
\IM|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux27~0_combout\ = (!\pc|pc\(30) & ((\IM|Mux14~0_combout\) # ((\IM|Mux26~0_combout\ & \IM|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM|Mux14~0_combout\,
	datab => \IM|Mux26~0_combout\,
	datac => \pc|pc\(30),
	datad => \IM|Mux11~0_combout\,
	combout => \IM|Mux27~0_combout\);

-- Location: FF_X48_Y10_N23
\ifid|out_instr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(27));

-- Location: FF_X46_Y9_N11
\idex|out_read1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \banco_reg|Mux25~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(25));

-- Location: LCCOMB_X52_Y10_N22
\banco_reg|registers[22][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][25]~feeder_combout\ = \mewb|out_addr\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(25),
	combout => \banco_reg|registers[22][25]~feeder_combout\);

-- Location: FF_X48_Y9_N29
\idex|out_rt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_rt\(2));

-- Location: LCCOMB_X48_Y10_N18
\IM|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux18~0_combout\ = (!\pc|pc\(31) & (\pc|pc\(25) & (\pc|pc\(30) & \pc|pc\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(31),
	datab => \pc|pc\(25),
	datac => \pc|pc\(30),
	datad => \pc|pc\(24),
	combout => \IM|Mux18~0_combout\);

-- Location: LCCOMB_X45_Y10_N0
\IM|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux18~1_combout\ = (\pc|pc\(28) & \IM|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(28),
	datad => \IM|Mux18~0_combout\,
	combout => \IM|Mux18~1_combout\);

-- Location: LCCOMB_X45_Y10_N22
\IM|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux19~0_combout\ = (\pc|pc\(30) & (\IM|Mux18~1_combout\ & ((\IM|Mux11~0_combout\)))) # (!\pc|pc\(30) & ((\IM|Mux5~0_combout\) # ((\IM|Mux18~1_combout\ & \IM|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(30),
	datab => \IM|Mux18~1_combout\,
	datac => \IM|Mux5~0_combout\,
	datad => \IM|Mux11~0_combout\,
	combout => \IM|Mux19~0_combout\);

-- Location: FF_X45_Y10_N23
\ifid|out_instr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(19));

-- Location: FF_X46_Y9_N21
\idex|out_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_rd\(3));

-- Location: LCCOMB_X45_Y8_N18
\regdst_mux|X[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regdst_mux|X[3]~0_combout\ = (\ifid|out_instr\(0) & ((\ifid|out_instr\(3) & (\idex|out_rt\(2))) # (!\ifid|out_instr\(3) & ((\idex|out_rd\(3)))))) # (!\ifid|out_instr\(0) & (\idex|out_rt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_rt\(2),
	datab => \idex|out_rd\(3),
	datac => \ifid|out_instr\(0),
	datad => \ifid|out_instr\(3),
	combout => \regdst_mux|X[3]~0_combout\);

-- Location: FF_X45_Y8_N11
\exme|out_regdst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regdst_mux|X[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_regdst\(3));

-- Location: FF_X49_Y7_N21
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

-- Location: FF_X45_Y10_N1
\ifid|out_instr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(18));

-- Location: FF_X46_Y9_N3
\idex|out_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_rd\(2));

-- Location: LCCOMB_X49_Y7_N24
\regdst_mux|X[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regdst_mux|X[2]~1_combout\ = (\ifid|out_instr\(3) & (\idex|out_rt\(2))) # (!\ifid|out_instr\(3) & ((\ifid|out_instr\(0) & ((\idex|out_rd\(2)))) # (!\ifid|out_instr\(0) & (\idex|out_rt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_rt\(2),
	datab => \ifid|out_instr\(3),
	datac => \idex|out_rd\(2),
	datad => \ifid|out_instr\(0),
	combout => \regdst_mux|X[2]~1_combout\);

-- Location: FF_X49_Y7_N27
\exme|out_regdst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regdst_mux|X[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_regdst\(2));

-- Location: FF_X49_Y7_N3
\mewb|out_regdst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_regdst\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_regdst\(2));

-- Location: LCCOMB_X48_Y7_N16
\idex|out_rd[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|out_rd[1]~feeder_combout\ = \ifid|out_instr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ifid|out_instr\(0),
	combout => \idex|out_rd[1]~feeder_combout\);

-- Location: FF_X48_Y7_N17
\idex|out_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \idex|out_rd[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_rd\(1));

-- Location: LCCOMB_X48_Y7_N4
\regdst_mux|X[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regdst_mux|X[1]~2_combout\ = (!\ifid|out_instr\(3) & (\idex|out_rd\(1) & \ifid|out_instr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(3),
	datab => \idex|out_rd\(1),
	datad => \ifid|out_instr\(0),
	combout => \regdst_mux|X[1]~2_combout\);

-- Location: LCCOMB_X48_Y7_N26
\exme|out_regdst[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_regdst[1]~feeder_combout\ = \regdst_mux|X[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regdst_mux|X[1]~2_combout\,
	combout => \exme|out_regdst[1]~feeder_combout\);

-- Location: FF_X48_Y7_N27
\exme|out_regdst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_regdst[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_regdst\(1));

-- Location: FF_X49_Y7_N9
\mewb|out_regdst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_regdst\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_regdst\(1));

-- Location: LCCOMB_X45_Y10_N20
\ctrl|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Mux9~0_combout\ = (!\ifid|out_instr\(1) & ((\ifid|out_instr\(2) & (!\ifid|out_instr\(3))) # (!\ifid|out_instr\(2) & ((\ifid|out_instr\(3)) # (\ifid|out_instr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(1),
	datac => \ifid|out_instr\(3),
	datad => \ifid|out_instr\(0),
	combout => \ctrl|Mux9~0_combout\);

-- Location: FF_X45_Y7_N25
\idex|out_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl|Mux9~0_combout\,
	sclr => \ifid|out_instr\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_WB\(1));

-- Location: FF_X49_Y7_N5
\exme|out_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \idex|out_WB\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_WB\(1));

-- Location: FF_X49_Y7_N1
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

-- Location: LCCOMB_X49_Y7_N12
\banco_reg|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~6_combout\ = (\mewb|out_regdst\(3) & (\mewb|out_regdst\(2) & (!\mewb|out_regdst\(1) & \mewb|out_WB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(3),
	datab => \mewb|out_regdst\(2),
	datac => \mewb|out_regdst\(1),
	datad => \mewb|out_WB\(1),
	combout => \banco_reg|Decoder0~6_combout\);

-- Location: LCCOMB_X49_Y7_N22
\banco_reg|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~7_combout\ = (\mewb|out_regdst\(0) & \banco_reg|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_regdst\(0),
	datad => \banco_reg|Decoder0~6_combout\,
	combout => \banco_reg|Decoder0~7_combout\);

-- Location: FF_X52_Y10_N23
\banco_reg|registers[22][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][25]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][25]~q\);

-- Location: LCCOMB_X49_Y7_N4
\banco_reg|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~8_combout\ = (!\mewb|out_regdst\(0) & \banco_reg|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(0),
	datad => \banco_reg|Decoder0~6_combout\,
	combout => \banco_reg|Decoder0~8_combout\);

-- Location: FF_X49_Y9_N29
\banco_reg|registers[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(25),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][25]~q\);

-- Location: LCCOMB_X49_Y9_N28
\banco_reg|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux57~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][25]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][25]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][25]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux57~0_combout\);

-- Location: LCCOMB_X52_Y10_N20
\banco_reg|registers[16][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][25]~feeder_combout\ = \mewb|out_addr\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(25),
	combout => \banco_reg|registers[16][25]~feeder_combout\);

-- Location: FF_X52_Y10_N21
\banco_reg|registers[16][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][25]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][25]~q\);

-- Location: LCCOMB_X48_Y9_N30
\banco_reg|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux57~1_combout\ = (\banco_reg|Mux57~0_combout\) # ((\ifid|out_instr\(11) & (!\ifid|out_instr\(2) & \banco_reg|registers[16][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|Mux57~0_combout\,
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|registers[16][25]~q\,
	combout => \banco_reg|Mux57~1_combout\);

-- Location: FF_X48_Y9_N31
\idex|out_read2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux57~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(25));

-- Location: LCCOMB_X49_Y9_N8
\ctrl|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Mux3~0_combout\ = \ifid|out_instr\(0) $ (!\ifid|out_instr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(0),
	datab => \ifid|out_instr\(2),
	combout => \ctrl|Mux3~0_combout\);

-- Location: FF_X48_Y9_N19
\idex|ALUOp_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl|Mux3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|ALUOp_out\(1));

-- Location: LCCOMB_X48_Y9_N18
\ula_main|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~6_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_rt\(2)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(25),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|ALUOp_out\(1),
	datad => \idex|out_rt\(2),
	combout => \ula_main|Add0~6_combout\);

-- Location: LCCOMB_X49_Y7_N20
\banco_reg|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~0_combout\ = (!\mewb|out_regdst\(1) & (!\mewb|out_regdst\(2) & (\mewb|out_regdst\(3) & \mewb|out_WB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(1),
	datab => \mewb|out_regdst\(2),
	datac => \mewb|out_regdst\(3),
	datad => \mewb|out_WB\(1),
	combout => \banco_reg|Decoder0~0_combout\);

-- Location: LCCOMB_X49_Y7_N30
\banco_reg|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~9_combout\ = (!\mewb|out_regdst\(0) & \banco_reg|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_regdst\(0),
	datad => \banco_reg|Decoder0~0_combout\,
	combout => \banco_reg|Decoder0~9_combout\);

-- Location: FF_X49_Y10_N19
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][26]~q\);

-- Location: FF_X49_Y9_N3
\banco_reg|registers[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(26),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][26]~q\);

-- Location: LCCOMB_X49_Y7_N6
\banco_reg|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~2_combout\ = (!\mewb|out_regdst\(3) & (\mewb|out_regdst\(2) & (!\mewb|out_regdst\(1) & \mewb|out_WB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(3),
	datab => \mewb|out_regdst\(2),
	datac => \mewb|out_regdst\(1),
	datad => \mewb|out_WB\(1),
	combout => \banco_reg|Decoder0~2_combout\);

-- Location: LCCOMB_X49_Y7_N0
\banco_reg|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~10_combout\ = (!\mewb|out_regdst\(0) & \banco_reg|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(0),
	datad => \banco_reg|Decoder0~2_combout\,
	combout => \banco_reg|Decoder0~10_combout\);

-- Location: FF_X49_Y10_N25
\banco_reg|registers[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(26),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][26]~q\);

-- Location: LCCOMB_X49_Y10_N24
\banco_reg|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux26~2_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(9) & (\banco_reg|registers[6][26]~q\)) # (!\ifid|out_instr\(9) & ((\banco_reg|registers[4][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][26]~q\,
	datac => \banco_reg|registers[4][26]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux26~2_combout\);

-- Location: LCCOMB_X49_Y10_N18
\banco_reg|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux26~3_combout\ = (\banco_reg|Mux26~2_combout\) # ((!\ifid|out_instr\(2) & (\ifid|out_instr\(9) & \banco_reg|registers[2][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][26]~q\,
	datad => \banco_reg|Mux26~2_combout\,
	combout => \banco_reg|Mux26~3_combout\);

-- Location: LCCOMB_X52_Y10_N10
\banco_reg|registers[22][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][26]~feeder_combout\ = \mewb|out_addr\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(26),
	combout => \banco_reg|registers[22][26]~feeder_combout\);

-- Location: FF_X52_Y10_N11
\banco_reg|registers[22][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][26]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][26]~q\);

-- Location: LCCOMB_X49_Y7_N8
\banco_reg|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~1_combout\ = (\mewb|out_regdst\(0) & \banco_reg|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(0),
	datad => \banco_reg|Decoder0~0_combout\,
	combout => \banco_reg|Decoder0~1_combout\);

-- Location: FF_X47_Y10_N5
\banco_reg|registers[18][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(26),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][26]~q\);

-- Location: LCCOMB_X49_Y7_N26
\banco_reg|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~3_combout\ = (\mewb|out_regdst\(0) & \banco_reg|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(0),
	datad => \banco_reg|Decoder0~2_combout\,
	combout => \banco_reg|Decoder0~3_combout\);

-- Location: FF_X47_Y10_N11
\banco_reg|registers[20][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(26),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][26]~q\);

-- Location: LCCOMB_X47_Y10_N10
\banco_reg|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux26~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][26]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][26]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][26]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux26~0_combout\);

-- Location: LCCOMB_X47_Y10_N4
\banco_reg|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux26~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux26~0_combout\ & (\banco_reg|registers[22][26]~q\)) # (!\banco_reg|Mux26~0_combout\ & ((\banco_reg|registers[18][26]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][26]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][26]~q\,
	datad => \banco_reg|Mux26~0_combout\,
	combout => \banco_reg|Mux26~1_combout\);

-- Location: LCCOMB_X46_Y10_N0
\banco_reg|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux26~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & ((\banco_reg|Mux26~1_combout\))) # (!\ifid|out_instr\(0) & (\banco_reg|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(0),
	datac => \banco_reg|Mux26~3_combout\,
	datad => \banco_reg|Mux26~1_combout\,
	combout => \banco_reg|Mux26~4_combout\);

-- Location: LCCOMB_X47_Y9_N4
\idex|out_read1[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|out_read1[26]~feeder_combout\ = \banco_reg|Mux26~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \banco_reg|Mux26~4_combout\,
	combout => \idex|out_read1[26]~feeder_combout\);

-- Location: FF_X47_Y9_N5
\idex|out_read1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \idex|out_read1[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(26));

-- Location: LCCOMB_X47_Y9_N6
\idex|out_read1[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|out_read1[27]~feeder_combout\ = \banco_reg|Mux27~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \banco_reg|Mux27~4_combout\,
	combout => \idex|out_read1[27]~feeder_combout\);

-- Location: FF_X47_Y9_N7
\idex|out_read1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \idex|out_read1[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(27));

-- Location: FF_X48_Y9_N25
\idex|out_imed[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_imed\(27));

-- Location: FF_X47_Y10_N15
\banco_reg|registers[20][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(28),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][28]~q\);

-- Location: LCCOMB_X47_Y10_N14
\banco_reg|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux28~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][28]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][28]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][28]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux28~0_combout\);

-- Location: FF_X47_Y10_N1
\banco_reg|registers[18][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(28),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][28]~q\);

-- Location: LCCOMB_X49_Y9_N10
\banco_reg|registers[22][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][28]~feeder_combout\ = \mewb|out_addr\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(28),
	combout => \banco_reg|registers[22][28]~feeder_combout\);

-- Location: FF_X49_Y9_N11
\banco_reg|registers[22][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][28]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][28]~q\);

-- Location: LCCOMB_X47_Y10_N0
\banco_reg|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux28~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux28~0_combout\ & ((\banco_reg|registers[22][28]~q\))) # (!\banco_reg|Mux28~0_combout\ & (\banco_reg|registers[18][28]~q\)))) # (!\ifid|out_instr\(9) & (\banco_reg|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|Mux28~0_combout\,
	datac => \banco_reg|registers[18][28]~q\,
	datad => \banco_reg|registers[22][28]~q\,
	combout => \banco_reg|Mux28~1_combout\);

-- Location: FF_X49_Y10_N15
\banco_reg|registers[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(28),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][28]~q\);

-- Location: FF_X49_Y9_N17
\banco_reg|registers[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(28),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][28]~q\);

-- Location: FF_X49_Y10_N17
\banco_reg|registers[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(28),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][28]~q\);

-- Location: LCCOMB_X49_Y10_N16
\banco_reg|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux28~2_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][28]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][28]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][28]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux28~2_combout\);

-- Location: LCCOMB_X49_Y10_N14
\banco_reg|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux28~3_combout\ = (\banco_reg|Mux28~2_combout\) # ((!\ifid|out_instr\(9) & (\ifid|out_instr\(2) & \banco_reg|registers[4][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][28]~q\,
	datad => \banco_reg|Mux28~2_combout\,
	combout => \banco_reg|Mux28~3_combout\);

-- Location: LCCOMB_X46_Y10_N18
\banco_reg|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux28~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & (\banco_reg|Mux28~1_combout\)) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux28~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(0),
	datac => \banco_reg|Mux28~1_combout\,
	datad => \banco_reg|Mux28~3_combout\,
	combout => \banco_reg|Mux28~4_combout\);

-- Location: FF_X46_Y9_N25
\idex|out_read1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \banco_reg|Mux28~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(28));

-- Location: LCCOMB_X45_Y9_N8
\banco_reg|registers[22][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][29]~feeder_combout\ = \mewb|out_addr\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(29),
	combout => \banco_reg|registers[22][29]~feeder_combout\);

-- Location: FF_X45_Y9_N9
\banco_reg|registers[22][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][29]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][29]~q\);

-- Location: FF_X47_Y10_N21
\banco_reg|registers[18][29]\ : dffeas
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
	q => \banco_reg|registers[18][29]~q\);

-- Location: FF_X47_Y10_N31
\banco_reg|registers[20][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(29),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][29]~q\);

-- Location: LCCOMB_X47_Y10_N30
\banco_reg|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux29~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][29]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][29]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][29]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux29~0_combout\);

-- Location: LCCOMB_X47_Y10_N20
\banco_reg|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux29~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux29~0_combout\ & (\banco_reg|registers[22][29]~q\)) # (!\banco_reg|Mux29~0_combout\ & ((\banco_reg|registers[18][29]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][29]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][29]~q\,
	datad => \banco_reg|Mux29~0_combout\,
	combout => \banco_reg|Mux29~1_combout\);

-- Location: FF_X49_Y10_N7
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][29]~q\);

-- Location: LCCOMB_X45_Y9_N6
\banco_reg|registers[6][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][29]~feeder_combout\ = \mewb|out_addr\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(29),
	combout => \banco_reg|registers[6][29]~feeder_combout\);

-- Location: FF_X45_Y9_N7
\banco_reg|registers[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][29]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][29]~q\);

-- Location: FF_X49_Y10_N13
\banco_reg|registers[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(29),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][29]~q\);

-- Location: LCCOMB_X49_Y10_N12
\banco_reg|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux29~2_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(9) & (\banco_reg|registers[6][29]~q\)) # (!\ifid|out_instr\(9) & ((\banco_reg|registers[4][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][29]~q\,
	datac => \banco_reg|registers[4][29]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux29~2_combout\);

-- Location: LCCOMB_X49_Y10_N6
\banco_reg|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux29~3_combout\ = (\banco_reg|Mux29~2_combout\) # ((!\ifid|out_instr\(2) & (\ifid|out_instr\(9) & \banco_reg|registers[2][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][29]~q\,
	datad => \banco_reg|Mux29~2_combout\,
	combout => \banco_reg|Mux29~3_combout\);

-- Location: LCCOMB_X46_Y10_N16
\banco_reg|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux29~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & (\banco_reg|Mux29~1_combout\)) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux29~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(0),
	datac => \banco_reg|Mux29~1_combout\,
	datad => \banco_reg|Mux29~3_combout\,
	combout => \banco_reg|Mux29~4_combout\);

-- Location: LCCOMB_X47_Y9_N8
\idex|out_read1[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|out_read1[29]~feeder_combout\ = \banco_reg|Mux29~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \banco_reg|Mux29~4_combout\,
	combout => \idex|out_read1[29]~feeder_combout\);

-- Location: FF_X47_Y9_N9
\idex|out_read1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \idex|out_read1[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(29));

-- Location: FF_X46_Y9_N5
\idex|out_read1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \banco_reg|Mux30~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(30));

-- Location: LCCOMB_X52_Y10_N14
\banco_reg|registers[22][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][31]~feeder_combout\ = \mewb|out_addr\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(31),
	combout => \banco_reg|registers[22][31]~feeder_combout\);

-- Location: FF_X52_Y10_N15
\banco_reg|registers[22][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][31]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][31]~q\);

-- Location: FF_X49_Y9_N25
\banco_reg|registers[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(31),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][31]~q\);

-- Location: LCCOMB_X49_Y9_N24
\banco_reg|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux63~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][31]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][31]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][31]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux63~0_combout\);

-- Location: LCCOMB_X52_Y10_N8
\banco_reg|registers[16][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][31]~feeder_combout\ = \mewb|out_addr\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(31),
	combout => \banco_reg|registers[16][31]~feeder_combout\);

-- Location: FF_X52_Y10_N9
\banco_reg|registers[16][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][31]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][31]~q\);

-- Location: LCCOMB_X48_Y9_N22
\banco_reg|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux63~1_combout\ = (\banco_reg|Mux63~0_combout\) # ((\banco_reg|registers[16][31]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux63~0_combout\,
	datab => \banco_reg|registers[16][31]~q\,
	datac => \ifid|out_instr\(11),
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux63~1_combout\);

-- Location: FF_X48_Y9_N23
\idex|out_read2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(31));

-- Location: LCCOMB_X48_Y9_N28
\ula_main|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~0_combout\ = \idex|ALUOp_out\(1) $ (((\idex|out_read2\(31) & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(31),
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~0_combout\);

-- Location: LCCOMB_X47_Y9_N16
\exme|out_result[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[31]~33_cout\ = CARRY(\idex|ALUOp_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datad => VCC,
	cout => \exme|out_result[31]~33_cout\);

-- Location: LCCOMB_X47_Y9_N18
\exme|out_result[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[31]~34_combout\ = (\idex|out_read1\(31) & ((\ula_main|Add0~0_combout\ & (\exme|out_result[31]~33_cout\ & VCC)) # (!\ula_main|Add0~0_combout\ & (!\exme|out_result[31]~33_cout\)))) # (!\idex|out_read1\(31) & ((\ula_main|Add0~0_combout\ & 
-- (!\exme|out_result[31]~33_cout\)) # (!\ula_main|Add0~0_combout\ & ((\exme|out_result[31]~33_cout\) # (GND)))))
-- \exme|out_result[31]~35\ = CARRY((\idex|out_read1\(31) & (!\ula_main|Add0~0_combout\ & !\exme|out_result[31]~33_cout\)) # (!\idex|out_read1\(31) & ((!\exme|out_result[31]~33_cout\) # (!\ula_main|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(31),
	datab => \ula_main|Add0~0_combout\,
	datad => VCC,
	cin => \exme|out_result[31]~33_cout\,
	combout => \exme|out_result[31]~34_combout\,
	cout => \exme|out_result[31]~35\);

-- Location: LCCOMB_X47_Y9_N20
\exme|out_result[30]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[30]~36_combout\ = ((\ula_main|Add0~1_combout\ $ (\idex|out_read1\(30) $ (!\exme|out_result[31]~35\)))) # (GND)
-- \exme|out_result[30]~37\ = CARRY((\ula_main|Add0~1_combout\ & ((\idex|out_read1\(30)) # (!\exme|out_result[31]~35\))) # (!\ula_main|Add0~1_combout\ & (\idex|out_read1\(30) & !\exme|out_result[31]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~1_combout\,
	datab => \idex|out_read1\(30),
	datad => VCC,
	cin => \exme|out_result[31]~35\,
	combout => \exme|out_result[30]~36_combout\,
	cout => \exme|out_result[30]~37\);

-- Location: LCCOMB_X47_Y9_N22
\exme|out_result[29]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[29]~38_combout\ = (\ula_main|Add0~2_combout\ & ((\idex|out_read1\(29) & (\exme|out_result[30]~37\ & VCC)) # (!\idex|out_read1\(29) & (!\exme|out_result[30]~37\)))) # (!\ula_main|Add0~2_combout\ & ((\idex|out_read1\(29) & 
-- (!\exme|out_result[30]~37\)) # (!\idex|out_read1\(29) & ((\exme|out_result[30]~37\) # (GND)))))
-- \exme|out_result[29]~39\ = CARRY((\ula_main|Add0~2_combout\ & (!\idex|out_read1\(29) & !\exme|out_result[30]~37\)) # (!\ula_main|Add0~2_combout\ & ((!\exme|out_result[30]~37\) # (!\idex|out_read1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~2_combout\,
	datab => \idex|out_read1\(29),
	datad => VCC,
	cin => \exme|out_result[30]~37\,
	combout => \exme|out_result[29]~38_combout\,
	cout => \exme|out_result[29]~39\);

-- Location: FF_X48_Y9_N7
\idex|out_imed[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_imed\(30));

-- Location: LCCOMB_X45_Y9_N18
\alusrc_mux|X[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[29]~1_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(30))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(30),
	datac => \idex|out_read2\(29),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[29]~1_combout\);

-- Location: LCCOMB_X46_Y9_N8
\ula_main|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux29~0_combout\ = (\alusrc_mux|X[29]~1_combout\ & ((\idex|out_read1\(29)) # (\idex|ALUOp_out\(1)))) # (!\alusrc_mux|X[29]~1_combout\ & (\idex|out_read1\(29) & \idex|ALUOp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|X[29]~1_combout\,
	datab => \idex|out_read1\(29),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux29~0_combout\);

-- Location: FF_X47_Y9_N23
\exme|out_result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[29]~38_combout\,
	asdata => \ula_main|Mux29~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(29));

-- Location: FF_X46_Y9_N27
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

-- Location: FF_X46_Y9_N1
\banco_reg|registers[16][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(29),
	sload => VCC,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][29]~q\);

-- Location: LCCOMB_X45_Y9_N4
\banco_reg|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux61~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][29]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][29]~q\,
	datab => \banco_reg|registers[22][29]~q\,
	datac => \ifid|out_instr\(11),
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux61~0_combout\);

-- Location: LCCOMB_X48_Y9_N8
\banco_reg|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux61~1_combout\ = (\banco_reg|Mux61~0_combout\) # ((\banco_reg|registers[16][29]~q\ & (!\ifid|out_instr\(2) & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][29]~q\,
	datab => \ifid|out_instr\(2),
	datac => \ifid|out_instr\(11),
	datad => \banco_reg|Mux61~0_combout\,
	combout => \banco_reg|Mux61~1_combout\);

-- Location: FF_X48_Y9_N9
\idex|out_read2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux61~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(29));

-- Location: LCCOMB_X48_Y9_N4
\ula_main|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~2_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(30)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(29),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|out_imed\(30),
	combout => \ula_main|Add0~2_combout\);

-- Location: LCCOMB_X47_Y9_N24
\exme|out_result[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[28]~40_combout\ = ((\ula_main|Add0~3_combout\ $ (\idex|out_read1\(28) $ (!\exme|out_result[29]~39\)))) # (GND)
-- \exme|out_result[28]~41\ = CARRY((\ula_main|Add0~3_combout\ & ((\idex|out_read1\(28)) # (!\exme|out_result[29]~39\))) # (!\ula_main|Add0~3_combout\ & (\idex|out_read1\(28) & !\exme|out_result[29]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~3_combout\,
	datab => \idex|out_read1\(28),
	datad => VCC,
	cin => \exme|out_result[29]~39\,
	combout => \exme|out_result[28]~40_combout\,
	cout => \exme|out_result[28]~41\);

-- Location: LCCOMB_X46_Y9_N24
\ula_main|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux28~0_combout\ = (\idex|out_read1\(28) & ((\idex|ALUOp_out\(1)) # ((\idex|out_read2\(28) & !\idex|ALUSrc_out~q\)))) # (!\idex|out_read1\(28) & (\idex|out_read2\(28) & (!\idex|ALUSrc_out~q\ & \idex|ALUOp_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(28),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|out_read1\(28),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux28~0_combout\);

-- Location: FF_X47_Y9_N25
\exme|out_result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[28]~40_combout\,
	asdata => \ula_main|Mux28~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(28));

-- Location: FF_X46_Y9_N31
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

-- Location: FF_X46_Y9_N13
\banco_reg|registers[16][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(28),
	sload => VCC,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][28]~q\);

-- Location: LCCOMB_X49_Y9_N16
\banco_reg|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux60~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][28]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][28]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][28]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux60~0_combout\);

-- Location: LCCOMB_X47_Y9_N2
\banco_reg|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux60~1_combout\ = (\banco_reg|Mux60~0_combout\) # ((\banco_reg|registers[16][28]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][28]~q\,
	datab => \ifid|out_instr\(11),
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|Mux60~0_combout\,
	combout => \banco_reg|Mux60~1_combout\);

-- Location: FF_X47_Y9_N3
\idex|out_read2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux60~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(28));

-- Location: LCCOMB_X47_Y9_N12
\ula_main|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~3_combout\ = \idex|ALUOp_out\(1) $ (((\idex|out_read2\(28) & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read2\(28),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~3_combout\);

-- Location: LCCOMB_X47_Y9_N26
\exme|out_result[27]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[27]~42_combout\ = (\idex|out_read1\(27) & ((\ula_main|Add0~4_combout\ & (\exme|out_result[28]~41\ & VCC)) # (!\ula_main|Add0~4_combout\ & (!\exme|out_result[28]~41\)))) # (!\idex|out_read1\(27) & ((\ula_main|Add0~4_combout\ & 
-- (!\exme|out_result[28]~41\)) # (!\ula_main|Add0~4_combout\ & ((\exme|out_result[28]~41\) # (GND)))))
-- \exme|out_result[27]~43\ = CARRY((\idex|out_read1\(27) & (!\ula_main|Add0~4_combout\ & !\exme|out_result[28]~41\)) # (!\idex|out_read1\(27) & ((!\exme|out_result[28]~41\) # (!\ula_main|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(27),
	datab => \ula_main|Add0~4_combout\,
	datad => VCC,
	cin => \exme|out_result[28]~41\,
	combout => \exme|out_result[27]~42_combout\,
	cout => \exme|out_result[27]~43\);

-- Location: LCCOMB_X46_Y9_N12
\alusrc_mux|X[27]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[27]~2_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(27))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(27),
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|out_read2\(27),
	combout => \alusrc_mux|X[27]~2_combout\);

-- Location: LCCOMB_X46_Y9_N0
\ula_main|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux27~0_combout\ = (\idex|out_read1\(27) & ((\idex|ALUOp_out\(1)) # (\alusrc_mux|X[27]~2_combout\))) # (!\idex|out_read1\(27) & (\idex|ALUOp_out\(1) & \alusrc_mux|X[27]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(27),
	datab => \idex|ALUOp_out\(1),
	datad => \alusrc_mux|X[27]~2_combout\,
	combout => \ula_main|Mux27~0_combout\);

-- Location: FF_X47_Y9_N27
\exme|out_result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[27]~42_combout\,
	asdata => \ula_main|Mux27~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(27));

-- Location: FF_X46_Y9_N23
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

-- Location: FF_X46_Y9_N9
\banco_reg|registers[16][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(27),
	sload => VCC,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][27]~q\);

-- Location: LCCOMB_X49_Y9_N20
\banco_reg|registers[22][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][27]~feeder_combout\ = \mewb|out_addr\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(27),
	combout => \banco_reg|registers[22][27]~feeder_combout\);

-- Location: FF_X49_Y9_N21
\banco_reg|registers[22][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][27]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][27]~q\);

-- Location: FF_X49_Y9_N7
\banco_reg|registers[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(27),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][27]~q\);

-- Location: LCCOMB_X49_Y9_N6
\banco_reg|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux59~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][27]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[22][27]~q\,
	datac => \banco_reg|registers[6][27]~q\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux59~0_combout\);

-- Location: LCCOMB_X48_Y9_N14
\banco_reg|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux59~1_combout\ = (\banco_reg|Mux59~0_combout\) # ((\ifid|out_instr\(11) & (\banco_reg|registers[16][27]~q\ & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|registers[16][27]~q\,
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|Mux59~0_combout\,
	combout => \banco_reg|Mux59~1_combout\);

-- Location: FF_X48_Y9_N15
\idex|out_read2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(27));

-- Location: LCCOMB_X48_Y9_N24
\ula_main|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~4_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(27))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_imed\(27),
	datad => \idex|out_read2\(27),
	combout => \ula_main|Add0~4_combout\);

-- Location: LCCOMB_X47_Y9_N28
\exme|out_result[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[26]~44_combout\ = ((\ula_main|Add0~5_combout\ $ (\idex|out_read1\(26) $ (!\exme|out_result[27]~43\)))) # (GND)
-- \exme|out_result[26]~45\ = CARRY((\ula_main|Add0~5_combout\ & ((\idex|out_read1\(26)) # (!\exme|out_result[27]~43\))) # (!\ula_main|Add0~5_combout\ & (\idex|out_read1\(26) & !\exme|out_result[27]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~5_combout\,
	datab => \idex|out_read1\(26),
	datad => VCC,
	cin => \exme|out_result[27]~43\,
	combout => \exme|out_result[26]~44_combout\,
	cout => \exme|out_result[26]~45\);

-- Location: LCCOMB_X48_Y10_N6
\IM|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux26~1_combout\ = (!\pc|pc\(30) & \IM|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pc\(30),
	datad => \IM|Mux26~0_combout\,
	combout => \IM|Mux26~1_combout\);

-- Location: FF_X48_Y10_N7
\ifid|out_instr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(26));

-- Location: FF_X48_Y9_N21
\idex|out_imed[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_imed\(26));

-- Location: LCCOMB_X45_Y9_N24
\alusrc_mux|X[26]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[26]~3_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(26))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|out_imed\(26),
	datac => \idex|out_read2\(26),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[26]~3_combout\);

-- Location: LCCOMB_X46_Y9_N28
\ula_main|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux26~0_combout\ = (\idex|out_read1\(26) & ((\idex|ALUOp_out\(1)) # (\alusrc_mux|X[26]~3_combout\))) # (!\idex|out_read1\(26) & (\idex|ALUOp_out\(1) & \alusrc_mux|X[26]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(26),
	datab => \idex|ALUOp_out\(1),
	datad => \alusrc_mux|X[26]~3_combout\,
	combout => \ula_main|Mux26~0_combout\);

-- Location: FF_X47_Y9_N29
\exme|out_result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[26]~44_combout\,
	asdata => \ula_main|Mux26~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(26));

-- Location: LCCOMB_X52_Y9_N0
\mewb|out_addr[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[26]~feeder_combout\ = \exme|out_result\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exme|out_result\(26),
	combout => \mewb|out_addr[26]~feeder_combout\);

-- Location: FF_X52_Y9_N1
\mewb|out_addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(26));

-- Location: LCCOMB_X52_Y10_N12
\banco_reg|registers[16][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][26]~feeder_combout\ = \mewb|out_addr\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(26),
	combout => \banco_reg|registers[16][26]~feeder_combout\);

-- Location: FF_X52_Y10_N13
\banco_reg|registers[16][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][26]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][26]~q\);

-- Location: LCCOMB_X49_Y9_N2
\banco_reg|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux58~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][26]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][26]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][26]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux58~0_combout\);

-- Location: LCCOMB_X48_Y9_N26
\banco_reg|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux58~1_combout\ = (\banco_reg|Mux58~0_combout\) # ((\ifid|out_instr\(11) & (\banco_reg|registers[16][26]~q\ & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|registers[16][26]~q\,
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|Mux58~0_combout\,
	combout => \banco_reg|Mux58~1_combout\);

-- Location: FF_X48_Y9_N27
\idex|out_read2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(26));

-- Location: LCCOMB_X48_Y9_N20
\ula_main|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~5_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(26)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(26),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|out_imed\(26),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~5_combout\);

-- Location: LCCOMB_X47_Y9_N30
\exme|out_result[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[25]~46_combout\ = (\idex|out_read1\(25) & ((\ula_main|Add0~6_combout\ & (\exme|out_result[26]~45\ & VCC)) # (!\ula_main|Add0~6_combout\ & (!\exme|out_result[26]~45\)))) # (!\idex|out_read1\(25) & ((\ula_main|Add0~6_combout\ & 
-- (!\exme|out_result[26]~45\)) # (!\ula_main|Add0~6_combout\ & ((\exme|out_result[26]~45\) # (GND)))))
-- \exme|out_result[25]~47\ = CARRY((\idex|out_read1\(25) & (!\ula_main|Add0~6_combout\ & !\exme|out_result[26]~45\)) # (!\idex|out_read1\(25) & ((!\exme|out_result[26]~45\) # (!\ula_main|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(25),
	datab => \ula_main|Add0~6_combout\,
	datad => VCC,
	cin => \exme|out_result[26]~45\,
	combout => \exme|out_result[25]~46_combout\,
	cout => \exme|out_result[25]~47\);

-- Location: LCCOMB_X47_Y9_N10
\alusrc_mux|X[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[25]~4_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_rt\(2))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datac => \idex|out_rt\(2),
	datad => \idex|out_read2\(25),
	combout => \alusrc_mux|X[25]~4_combout\);

-- Location: LCCOMB_X46_Y9_N10
\ula_main|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux25~0_combout\ = (\alusrc_mux|X[25]~4_combout\ & ((\idex|out_read1\(25)) # (\idex|ALUOp_out\(1)))) # (!\alusrc_mux|X[25]~4_combout\ & (\idex|out_read1\(25) & \idex|ALUOp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alusrc_mux|X[25]~4_combout\,
	datac => \idex|out_read1\(25),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux25~0_combout\);

-- Location: FF_X47_Y9_N31
\exme|out_result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[25]~46_combout\,
	asdata => \ula_main|Mux25~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(25));

-- Location: LCCOMB_X52_Y9_N22
\mewb|out_addr[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[25]~feeder_combout\ = \exme|out_result\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(25),
	combout => \mewb|out_addr[25]~feeder_combout\);

-- Location: FF_X52_Y9_N23
\mewb|out_addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(25));

-- Location: FF_X49_Y10_N31
\banco_reg|registers[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(25),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][25]~q\);

-- Location: FF_X49_Y10_N1
\banco_reg|registers[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(25),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][25]~q\);

-- Location: LCCOMB_X49_Y10_N0
\banco_reg|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux25~2_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][25]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][25]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][25]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux25~2_combout\);

-- Location: LCCOMB_X49_Y10_N30
\banco_reg|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux25~3_combout\ = (\banco_reg|Mux25~2_combout\) # ((\ifid|out_instr\(2) & (!\ifid|out_instr\(9) & \banco_reg|registers[4][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][25]~q\,
	datad => \banco_reg|Mux25~2_combout\,
	combout => \banco_reg|Mux25~3_combout\);

-- Location: FF_X47_Y10_N9
\banco_reg|registers[18][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(25),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][25]~q\);

-- Location: FF_X47_Y10_N3
\banco_reg|registers[20][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(25),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][25]~q\);

-- Location: LCCOMB_X47_Y10_N2
\banco_reg|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux25~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][25]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][25]~q\,
	datac => \banco_reg|registers[20][25]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux25~0_combout\);

-- Location: LCCOMB_X47_Y10_N8
\banco_reg|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux25~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux25~0_combout\ & (\banco_reg|registers[22][25]~q\)) # (!\banco_reg|Mux25~0_combout\ & ((\banco_reg|registers[18][25]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][25]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][25]~q\,
	datad => \banco_reg|Mux25~0_combout\,
	combout => \banco_reg|Mux25~1_combout\);

-- Location: LCCOMB_X45_Y10_N6
\banco_reg|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux25~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & ((\banco_reg|Mux25~1_combout\))) # (!\ifid|out_instr\(0) & (\banco_reg|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(0),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|Mux25~3_combout\,
	datad => \banco_reg|Mux25~1_combout\,
	combout => \banco_reg|Mux25~4_combout\);

-- Location: LCCOMB_X45_Y10_N14
\pc|pc[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[25]~1_combout\ = (\ctrl|JM~combout\ & ((\banco_reg|Mux25~4_combout\))) # (!\ctrl|JM~combout\ & (\ifid|out_instr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(27),
	datab => \banco_reg|Mux25~4_combout\,
	datad => \ctrl|JM~combout\,
	combout => \pc|pc[25]~1_combout\);

-- Location: LCCOMB_X46_Y10_N10
\pc_4|out1[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_4|out1[26]~6_combout\ = (\pc|pc\(26) & (!\pc_4|out1[27]~5\)) # (!\pc|pc\(26) & ((\pc_4|out1[27]~5\) # (GND)))
-- \pc_4|out1[26]~7\ = CARRY((!\pc_4|out1[27]~5\) # (!\pc|pc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(26),
	datad => VCC,
	cin => \pc_4|out1[27]~5\,
	combout => \pc_4|out1[26]~6_combout\,
	cout => \pc_4|out1[26]~7\);

-- Location: LCCOMB_X46_Y10_N12
\pc_4|out1[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_4|out1[25]~8_combout\ = (\pc|pc\(25) & (\pc_4|out1[26]~7\ $ (GND))) # (!\pc|pc\(25) & (!\pc_4|out1[26]~7\ & VCC))
-- \pc_4|out1[25]~9\ = CARRY((\pc|pc\(25) & !\pc_4|out1[26]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(25),
	datad => VCC,
	cin => \pc_4|out1[26]~7\,
	combout => \pc_4|out1[25]~8_combout\,
	cout => \pc_4|out1[25]~9\);

-- Location: FF_X45_Y10_N15
\pc|pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[25]~1_combout\,
	asdata => \pc_4|out1[25]~8_combout\,
	sload => \ctrl|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(25));

-- Location: LCCOMB_X48_Y10_N24
\IM|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux26~0_combout\ = (\pc|pc\(24) & (\pc|pc\(28) & (\pc|pc\(31) & \pc|pc\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(24),
	datab => \pc|pc\(28),
	datac => \pc|pc\(31),
	datad => \pc|pc\(25),
	combout => \IM|Mux26~0_combout\);

-- Location: LCCOMB_X48_Y10_N26
\IM|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux11~1_combout\ = (\pc|pc\(30) & ((\IM|Mux14~0_combout\) # ((\IM|Mux26~0_combout\ & \IM|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IM|Mux14~0_combout\,
	datab => \IM|Mux26~0_combout\,
	datac => \pc|pc\(30),
	datad => \IM|Mux11~0_combout\,
	combout => \IM|Mux11~1_combout\);

-- Location: FF_X48_Y10_N27
\ifid|out_instr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(11));

-- Location: LCCOMB_X49_Y9_N22
\banco_reg|registers[22][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][24]~feeder_combout\ = \mewb|out_addr\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(24),
	combout => \banco_reg|registers[22][24]~feeder_combout\);

-- Location: FF_X49_Y9_N23
\banco_reg|registers[22][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][24]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][24]~q\);

-- Location: FF_X49_Y9_N1
\banco_reg|registers[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(24),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][24]~q\);

-- Location: LCCOMB_X49_Y9_N0
\banco_reg|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux56~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][24]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][24]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][24]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux56~0_combout\);

-- Location: FF_X48_Y8_N15
\banco_reg|registers[16][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(24),
	sload => VCC,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][24]~q\);

-- Location: LCCOMB_X48_Y9_N12
\banco_reg|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux56~1_combout\ = (\banco_reg|Mux56~0_combout\) # ((\ifid|out_instr\(11) & (!\ifid|out_instr\(2) & \banco_reg|registers[16][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|Mux56~0_combout\,
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|registers[16][24]~q\,
	combout => \banco_reg|Mux56~1_combout\);

-- Location: FF_X48_Y9_N13
\idex|out_read2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux56~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(24));

-- Location: LCCOMB_X48_Y9_N2
\ula_main|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~7_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(30)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(24),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|out_imed\(30),
	combout => \ula_main|Add0~7_combout\);

-- Location: FF_X46_Y9_N29
\idex|out_read1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \banco_reg|Mux24~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(24));

-- Location: LCCOMB_X47_Y8_N0
\exme|out_result[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[24]~48_combout\ = ((\ula_main|Add0~7_combout\ $ (\idex|out_read1\(24) $ (!\exme|out_result[25]~47\)))) # (GND)
-- \exme|out_result[24]~49\ = CARRY((\ula_main|Add0~7_combout\ & ((\idex|out_read1\(24)) # (!\exme|out_result[25]~47\))) # (!\ula_main|Add0~7_combout\ & (\idex|out_read1\(24) & !\exme|out_result[25]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~7_combout\,
	datab => \idex|out_read1\(24),
	datad => VCC,
	cin => \exme|out_result[25]~47\,
	combout => \exme|out_result[24]~48_combout\,
	cout => \exme|out_result[24]~49\);

-- Location: LCCOMB_X45_Y9_N30
\alusrc_mux|X[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[24]~5_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(30))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datac => \idex|out_imed\(30),
	datad => \idex|out_read2\(24),
	combout => \alusrc_mux|X[24]~5_combout\);

-- Location: LCCOMB_X46_Y9_N26
\ula_main|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux24~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(24)) # (\alusrc_mux|X[24]~5_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(24) & \alusrc_mux|X[24]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|out_read1\(24),
	datad => \alusrc_mux|X[24]~5_combout\,
	combout => \ula_main|Mux24~0_combout\);

-- Location: FF_X47_Y8_N1
\exme|out_result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[24]~48_combout\,
	asdata => \ula_main|Mux24~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(24));

-- Location: LCCOMB_X43_Y8_N28
\mewb|out_addr[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[24]~feeder_combout\ = \exme|out_result\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exme|out_result\(24),
	combout => \mewb|out_addr[24]~feeder_combout\);

-- Location: FF_X43_Y8_N29
\mewb|out_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(24));

-- Location: FF_X49_Y10_N27
\banco_reg|registers[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(24),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][24]~q\);

-- Location: FF_X49_Y10_N29
\banco_reg|registers[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(24),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][24]~q\);

-- Location: LCCOMB_X49_Y10_N28
\banco_reg|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux24~2_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][24]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][24]~q\,
	datac => \banco_reg|registers[2][24]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux24~2_combout\);

-- Location: LCCOMB_X49_Y10_N26
\banco_reg|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux24~3_combout\ = (\banco_reg|Mux24~2_combout\) # ((\ifid|out_instr\(2) & (!\ifid|out_instr\(9) & \banco_reg|registers[4][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][24]~q\,
	datad => \banco_reg|Mux24~2_combout\,
	combout => \banco_reg|Mux24~3_combout\);

-- Location: FF_X47_Y10_N13
\banco_reg|registers[18][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(24),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][24]~q\);

-- Location: FF_X47_Y10_N19
\banco_reg|registers[20][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(24),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][24]~q\);

-- Location: LCCOMB_X47_Y10_N18
\banco_reg|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux24~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][24]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][24]~q\,
	datac => \banco_reg|registers[20][24]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux24~0_combout\);

-- Location: LCCOMB_X47_Y10_N12
\banco_reg|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux24~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux24~0_combout\ & (\banco_reg|registers[22][24]~q\)) # (!\banco_reg|Mux24~0_combout\ & ((\banco_reg|registers[18][24]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[22][24]~q\,
	datac => \banco_reg|registers[18][24]~q\,
	datad => \banco_reg|Mux24~0_combout\,
	combout => \banco_reg|Mux24~1_combout\);

-- Location: LCCOMB_X45_Y10_N26
\banco_reg|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux24~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & ((\banco_reg|Mux24~1_combout\))) # (!\ifid|out_instr\(0) & (\banco_reg|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(0),
	datab => \ifid|out_instr\(10),
	datac => \banco_reg|Mux24~3_combout\,
	datad => \banco_reg|Mux24~1_combout\,
	combout => \banco_reg|Mux24~4_combout\);

-- Location: LCCOMB_X45_Y10_N4
\pc|pc[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[24]~2_combout\ = (\ctrl|JM~combout\ & (\banco_reg|Mux24~4_combout\)) # (!\ctrl|JM~combout\ & ((\ifid|out_instr\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux24~4_combout\,
	datab => \ifid|out_instr\(26),
	datad => \ctrl|JM~combout\,
	combout => \pc|pc[24]~2_combout\);

-- Location: LCCOMB_X46_Y10_N14
\pc_4|out1[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_4|out1[24]~10_combout\ = \pc|pc\(24) $ (\pc_4|out1[25]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(24),
	cin => \pc_4|out1[25]~9\,
	combout => \pc_4|out1[24]~10_combout\);

-- Location: FF_X45_Y10_N5
\pc|pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[24]~2_combout\,
	asdata => \pc_4|out1[24]~10_combout\,
	sload => \ctrl|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(24));

-- Location: LCCOMB_X48_Y10_N2
\IM|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux16~0_combout\ = (\pc|pc\(24) & (\pc|pc\(30) & (\pc|pc\(31) & \pc|pc\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(24),
	datab => \pc|pc\(30),
	datac => \pc|pc\(31),
	datad => \pc|pc\(25),
	combout => \IM|Mux16~0_combout\);

-- Location: LCCOMB_X48_Y10_N10
\IM|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux16~1_combout\ = (\IM|Mux16~0_combout\ & \pc|pc\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IM|Mux16~0_combout\,
	datad => \pc|pc\(29),
	combout => \IM|Mux16~1_combout\);

-- Location: FF_X48_Y10_N11
\ifid|out_instr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(16));

-- Location: FF_X48_Y8_N31
\idex|out_imed[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_imed\(22));

-- Location: FF_X49_Y7_N11
\idex|out_rt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ifid|out_instr\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_rt\(0));

-- Location: LCCOMB_X49_Y7_N10
\regdst_mux|X[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regdst_mux|X[0]~3_combout\ = (\ifid|out_instr\(3) & (((\idex|out_rt\(0))))) # (!\ifid|out_instr\(3) & ((\ifid|out_instr\(0) & (\idex|out_imed\(22))) # (!\ifid|out_instr\(0) & ((\idex|out_rt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(3),
	datab => \idex|out_imed\(22),
	datac => \idex|out_rt\(0),
	datad => \ifid|out_instr\(0),
	combout => \regdst_mux|X[0]~3_combout\);

-- Location: FF_X49_Y7_N15
\exme|out_regdst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regdst_mux|X[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_regdst\(0));

-- Location: FF_X49_Y7_N31
\mewb|out_regdst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_regdst\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_regdst\(0));

-- Location: LCCOMB_X49_Y7_N2
\banco_reg|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~4_combout\ = (!\mewb|out_regdst\(3) & (!\mewb|out_regdst\(1) & (!\mewb|out_regdst\(2) & \mewb|out_WB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(3),
	datab => \mewb|out_regdst\(1),
	datac => \mewb|out_regdst\(2),
	datad => \mewb|out_WB\(1),
	combout => \banco_reg|Decoder0~4_combout\);

-- Location: LCCOMB_X49_Y7_N14
\banco_reg|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Decoder0~5_combout\ = (\mewb|out_regdst\(0) & \banco_reg|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mewb|out_regdst\(0),
	datad => \banco_reg|Decoder0~4_combout\,
	combout => \banco_reg|Decoder0~5_combout\);

-- Location: FF_X48_Y9_N11
\banco_reg|registers[16][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(30),
	sload => VCC,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][30]~q\);

-- Location: FF_X49_Y9_N27
\banco_reg|registers[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(30),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][30]~q\);

-- Location: LCCOMB_X49_Y9_N26
\banco_reg|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux62~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][30]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|registers[22][30]~q\,
	datac => \banco_reg|registers[6][30]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux62~0_combout\);

-- Location: LCCOMB_X48_Y9_N16
\banco_reg|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux62~1_combout\ = (\banco_reg|Mux62~0_combout\) # ((\banco_reg|registers[16][30]~q\ & (!\ifid|out_instr\(2) & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][30]~q\,
	datab => \ifid|out_instr\(2),
	datac => \ifid|out_instr\(11),
	datad => \banco_reg|Mux62~0_combout\,
	combout => \banco_reg|Mux62~1_combout\);

-- Location: FF_X48_Y9_N17
\idex|out_read2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(30));

-- Location: LCCOMB_X48_Y9_N6
\ula_main|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~1_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(30)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|out_read2\(30),
	datac => \idex|out_imed\(30),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~1_combout\);

-- Location: LCCOMB_X45_Y9_N12
\alusrc_mux|X[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[30]~0_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(30))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(30),
	datac => \idex|out_read2\(30),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[30]~0_combout\);

-- Location: LCCOMB_X46_Y9_N4
\ula_main|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux30~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(30)) # (\alusrc_mux|X[30]~0_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(30) & \alusrc_mux|X[30]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \idex|out_read1\(30),
	datad => \alusrc_mux|X[30]~0_combout\,
	combout => \ula_main|Mux30~0_combout\);

-- Location: FF_X47_Y9_N21
\exme|out_result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[30]~36_combout\,
	asdata => \ula_main|Mux30~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(30));

-- Location: LCCOMB_X47_Y9_N14
\mewb|out_addr[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[30]~feeder_combout\ = \exme|out_result\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(30),
	combout => \mewb|out_addr[30]~feeder_combout\);

-- Location: FF_X47_Y9_N15
\mewb|out_addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(30));

-- Location: LCCOMB_X52_Y10_N0
\banco_reg|registers[22][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][30]~feeder_combout\ = \mewb|out_addr\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(30),
	combout => \banco_reg|registers[22][30]~feeder_combout\);

-- Location: FF_X52_Y10_N1
\banco_reg|registers[22][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][30]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][30]~q\);

-- Location: FF_X47_Y10_N25
\banco_reg|registers[18][30]\ : dffeas
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
	q => \banco_reg|registers[18][30]~q\);

-- Location: FF_X47_Y10_N7
\banco_reg|registers[20][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(30),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][30]~q\);

-- Location: LCCOMB_X47_Y10_N6
\banco_reg|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux30~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][30]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][30]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][30]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux30~0_combout\);

-- Location: LCCOMB_X47_Y10_N24
\banco_reg|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux30~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux30~0_combout\ & (\banco_reg|registers[22][30]~q\)) # (!\banco_reg|Mux30~0_combout\ & ((\banco_reg|registers[18][30]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][30]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][30]~q\,
	datad => \banco_reg|Mux30~0_combout\,
	combout => \banco_reg|Mux30~1_combout\);

-- Location: FF_X49_Y10_N23
\banco_reg|registers[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(30),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][30]~q\);

-- Location: FF_X49_Y10_N21
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][30]~q\);

-- Location: LCCOMB_X49_Y10_N20
\banco_reg|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux30~2_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][30]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][30]~q\,
	datac => \banco_reg|registers[2][30]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux30~2_combout\);

-- Location: LCCOMB_X49_Y10_N22
\banco_reg|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux30~3_combout\ = (\banco_reg|Mux30~2_combout\) # ((\ifid|out_instr\(2) & (!\ifid|out_instr\(9) & \banco_reg|registers[4][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][30]~q\,
	datad => \banco_reg|Mux30~2_combout\,
	combout => \banco_reg|Mux30~3_combout\);

-- Location: LCCOMB_X45_Y10_N16
\banco_reg|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux30~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & (\banco_reg|Mux30~1_combout\)) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux30~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(0),
	datac => \banco_reg|Mux30~1_combout\,
	datad => \banco_reg|Mux30~3_combout\,
	combout => \banco_reg|Mux30~4_combout\);

-- Location: LCCOMB_X45_Y10_N2
\pcsrc_mux|X[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcsrc_mux|X[30]~3_combout\ = (\banco_reg|Mux30~4_combout\ & \ctrl|JM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \banco_reg|Mux30~4_combout\,
	datad => \ctrl|JM~combout\,
	combout => \pcsrc_mux|X[30]~3_combout\);

-- Location: FF_X45_Y10_N3
\pc|pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pcsrc_mux|X[30]~3_combout\,
	ena => \ctrl|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(30));

-- Location: LCCOMB_X48_Y10_N14
\IM|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux14~1_combout\ = (!\pc|pc\(30) & \IM|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(30),
	datad => \IM|Mux14~0_combout\,
	combout => \IM|Mux14~1_combout\);

-- Location: FF_X48_Y10_N15
\ifid|out_instr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IM|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(2));

-- Location: FF_X49_Y10_N11
\banco_reg|registers[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(27),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][27]~q\);

-- Location: FF_X49_Y10_N5
\banco_reg|registers[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(27),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][27]~q\);

-- Location: LCCOMB_X49_Y10_N4
\banco_reg|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux27~2_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][27]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][27]~q\,
	datac => \banco_reg|registers[2][27]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux27~2_combout\);

-- Location: LCCOMB_X49_Y10_N10
\banco_reg|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux27~3_combout\ = (\banco_reg|Mux27~2_combout\) # ((\ifid|out_instr\(2) & (!\ifid|out_instr\(9) & \banco_reg|registers[4][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][27]~q\,
	datad => \banco_reg|Mux27~2_combout\,
	combout => \banco_reg|Mux27~3_combout\);

-- Location: FF_X47_Y10_N29
\banco_reg|registers[18][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(27),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][27]~q\);

-- Location: FF_X47_Y10_N27
\banco_reg|registers[20][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(27),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][27]~q\);

-- Location: LCCOMB_X47_Y10_N26
\banco_reg|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux27~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][27]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][27]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][27]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux27~0_combout\);

-- Location: LCCOMB_X47_Y10_N28
\banco_reg|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux27~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux27~0_combout\ & (\banco_reg|registers[22][27]~q\)) # (!\banco_reg|Mux27~0_combout\ & ((\banco_reg|registers[18][27]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][27]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][27]~q\,
	datad => \banco_reg|Mux27~0_combout\,
	combout => \banco_reg|Mux27~1_combout\);

-- Location: LCCOMB_X46_Y10_N24
\banco_reg|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux27~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & ((\banco_reg|Mux27~1_combout\))) # (!\ifid|out_instr\(0) & (\banco_reg|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(0),
	datac => \banco_reg|Mux27~3_combout\,
	datad => \banco_reg|Mux27~1_combout\,
	combout => \banco_reg|Mux27~4_combout\);

-- Location: LCCOMB_X46_Y10_N26
\pc|pc[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[27]~0_combout\ = (\ctrl|JM~combout\ & ((\banco_reg|Mux27~4_combout\))) # (!\ctrl|JM~combout\ & (\ifid|out_instr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(29),
	datab => \banco_reg|Mux27~4_combout\,
	datad => \ctrl|JM~combout\,
	combout => \pc|pc[27]~0_combout\);

-- Location: LCCOMB_X46_Y10_N6
\pc_4|out1[28]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_4|out1[28]~2_combout\ = (\pc|pc\(28) & (!\pc_4|out1[29]~1\)) # (!\pc|pc\(28) & ((\pc_4|out1[29]~1\) # (GND)))
-- \pc_4|out1[28]~3\ = CARRY((!\pc_4|out1[29]~1\) # (!\pc|pc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(28),
	datad => VCC,
	cin => \pc_4|out1[29]~1\,
	combout => \pc_4|out1[28]~2_combout\,
	cout => \pc_4|out1[28]~3\);

-- Location: LCCOMB_X46_Y10_N8
\pc_4|out1[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_4|out1[27]~4_combout\ = (\pc|pc\(27) & (\pc_4|out1[28]~3\ $ (GND))) # (!\pc|pc\(27) & (!\pc_4|out1[28]~3\ & VCC))
-- \pc_4|out1[27]~5\ = CARRY((\pc|pc\(27) & !\pc_4|out1[28]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(27),
	datad => VCC,
	cin => \pc_4|out1[28]~3\,
	combout => \pc_4|out1[27]~4_combout\,
	cout => \pc_4|out1[27]~5\);

-- Location: FF_X46_Y10_N27
\pc|pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[27]~0_combout\,
	asdata => \pc_4|out1[27]~4_combout\,
	sload => \ctrl|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(27));

-- Location: LCCOMB_X46_Y10_N20
\pcsrc_mux|X[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcsrc_mux|X[26]~1_combout\ = (\ctrl|Mux0~0_combout\ & (((\ctrl|JM~combout\ & \banco_reg|Mux26~4_combout\)))) # (!\ctrl|Mux0~0_combout\ & (\pc_4|out1[26]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_4|out1[26]~6_combout\,
	datab => \ctrl|JM~combout\,
	datac => \ctrl|Mux0~0_combout\,
	datad => \banco_reg|Mux26~4_combout\,
	combout => \pcsrc_mux|X[26]~1_combout\);

-- Location: FF_X46_Y10_N21
\pc|pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pcsrc_mux|X[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(26));

-- Location: LCCOMB_X45_Y10_N8
\IM|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux3~0_combout\ = (!\pc|pc\(26) & (!\pc|pc\(25) & (!\pc|pc\(24) & !\pc|pc\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(26),
	datab => \pc|pc\(25),
	datac => \pc|pc\(24),
	datad => \pc|pc\(27),
	combout => \IM|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y10_N18
\IM|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux5~0_combout\ = (!\pc|pc\(29) & (!\pc|pc\(28) & (\IM|Mux3~0_combout\ & \pc|pc\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc\(29),
	datab => \pc|pc\(28),
	datac => \IM|Mux3~0_combout\,
	datad => \pc|pc\(31),
	combout => \IM|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y10_N12
\IM|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux5~1_combout\ = (\IM|Mux5~0_combout\ & !\pc|pc\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IM|Mux5~0_combout\,
	datad => \pc|pc\(30),
	combout => \IM|Mux5~1_combout\);

-- Location: FF_X45_Y10_N13
\ifid|out_instr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(0));

-- Location: LCCOMB_X45_Y10_N10
\ctrl|JM\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|JM~combout\ = (\ctrl|Mux0~0_combout\ & (\ifid|out_instr\(0))) # (!\ctrl|Mux0~0_combout\ & ((\ctrl|JM~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(0),
	datac => \ctrl|JM~combout\,
	datad => \ctrl|Mux0~0_combout\,
	combout => \ctrl|JM~combout\);

-- Location: LCCOMB_X46_Y10_N22
\pcsrc_mux|X[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcsrc_mux|X[29]~2_combout\ = (\ctrl|Mux0~0_combout\ & (((\ctrl|JM~combout\ & \banco_reg|Mux29~4_combout\)))) # (!\ctrl|Mux0~0_combout\ & (\pc_4|out1[29]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_4|out1[29]~0_combout\,
	datab => \ctrl|JM~combout\,
	datac => \ctrl|Mux0~0_combout\,
	datad => \banco_reg|Mux29~4_combout\,
	combout => \pcsrc_mux|X[29]~2_combout\);

-- Location: FF_X46_Y10_N23
\pc|pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pcsrc_mux|X[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(29));

-- Location: LCCOMB_X48_Y10_N30
\IM|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux30~0_combout\ = (\pc|pc\(29) & \IM|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pc\(29),
	datad => \IM|Mux18~0_combout\,
	combout => \IM|Mux30~0_combout\);

-- Location: FF_X48_Y10_N31
\ifid|out_instr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IM|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|out_instr\(29));

-- Location: LCCOMB_X46_Y10_N28
\pc|pc[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc[28]~3_combout\ = (\ctrl|JM~combout\ & ((\banco_reg|Mux28~4_combout\))) # (!\ctrl|JM~combout\ & (\ifid|out_instr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(29),
	datab => \banco_reg|Mux28~4_combout\,
	datad => \ctrl|JM~combout\,
	combout => \pc|pc[28]~3_combout\);

-- Location: FF_X46_Y10_N29
\pc|pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pc|pc[28]~3_combout\,
	asdata => \pc_4|out1[28]~2_combout\,
	sload => \ctrl|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc\(28));

-- Location: LCCOMB_X48_Y10_N20
\IM|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IM|Mux10~0_combout\ = (\pc|pc\(28) & \IM|Mux16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|pc\(28),
	datad => \IM|Mux16~0_combout\,
	combout => \IM|Mux10~0_combout\);

-- Location: FF_X48_Y10_N21
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

-- Location: FF_X49_Y10_N3
\banco_reg|registers[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(31),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][31]~q\);

-- Location: FF_X49_Y10_N9
\banco_reg|registers[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(31),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][31]~q\);

-- Location: LCCOMB_X49_Y10_N8
\banco_reg|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux31~2_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][31]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][31]~q\,
	datac => \banco_reg|registers[2][31]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux31~2_combout\);

-- Location: LCCOMB_X49_Y10_N2
\banco_reg|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux31~3_combout\ = (\banco_reg|Mux31~2_combout\) # ((!\ifid|out_instr\(9) & (\ifid|out_instr\(2) & \banco_reg|registers[4][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][31]~q\,
	datad => \banco_reg|Mux31~2_combout\,
	combout => \banco_reg|Mux31~3_combout\);

-- Location: FF_X47_Y10_N17
\banco_reg|registers[18][31]\ : dffeas
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
	q => \banco_reg|registers[18][31]~q\);

-- Location: FF_X47_Y10_N23
\banco_reg|registers[20][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(31),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][31]~q\);

-- Location: LCCOMB_X47_Y10_N22
\banco_reg|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux31~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][31]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][31]~q\,
	datac => \banco_reg|registers[20][31]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux31~0_combout\);

-- Location: LCCOMB_X47_Y10_N16
\banco_reg|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux31~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux31~0_combout\ & (\banco_reg|registers[22][31]~q\)) # (!\banco_reg|Mux31~0_combout\ & ((\banco_reg|registers[18][31]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][31]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][31]~q\,
	datad => \banco_reg|Mux31~0_combout\,
	combout => \banco_reg|Mux31~1_combout\);

-- Location: LCCOMB_X46_Y10_N30
\banco_reg|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux31~4_combout\ = (!\ifid|out_instr\(10) & ((\ifid|out_instr\(0) & ((\banco_reg|Mux31~1_combout\))) # (!\ifid|out_instr\(0) & (\banco_reg|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(10),
	datab => \ifid|out_instr\(0),
	datac => \banco_reg|Mux31~3_combout\,
	datad => \banco_reg|Mux31~1_combout\,
	combout => \banco_reg|Mux31~4_combout\);

-- Location: FF_X46_Y9_N15
\idex|out_read1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \banco_reg|Mux31~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(31));

-- Location: LCCOMB_X46_Y9_N14
\ula_main|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux31~0_combout\ = (\idex|out_read1\(31) & ((\idex|ALUOp_out\(1)) # ((\idex|out_read2\(31) & !\idex|ALUSrc_out~q\)))) # (!\idex|out_read1\(31) & (\idex|out_read2\(31) & (!\idex|ALUSrc_out~q\ & \idex|ALUOp_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(31),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|out_read1\(31),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux31~0_combout\);

-- Location: FF_X47_Y9_N19
\exme|out_result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[31]~34_combout\,
	asdata => \ula_main|Mux31~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(31));

-- Location: LCCOMB_X47_Y9_N0
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

-- Location: FF_X47_Y9_N1
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

-- Location: FF_X49_Y9_N9
\banco_reg|registers[22][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(23),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][23]~q\);

-- Location: FF_X49_Y9_N13
\banco_reg|registers[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(23),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][23]~q\);

-- Location: LCCOMB_X49_Y9_N12
\banco_reg|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux55~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][23]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][23]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][23]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux55~0_combout\);

-- Location: LCCOMB_X50_Y9_N20
\banco_reg|registers[16][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][23]~feeder_combout\ = \mewb|out_addr\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(23),
	combout => \banco_reg|registers[16][23]~feeder_combout\);

-- Location: FF_X50_Y9_N21
\banco_reg|registers[16][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][23]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][23]~q\);

-- Location: LCCOMB_X48_Y9_N0
\banco_reg|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux55~1_combout\ = (\banco_reg|Mux55~0_combout\) # ((\ifid|out_instr\(11) & (!\ifid|out_instr\(2) & \banco_reg|registers[16][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|Mux55~0_combout\,
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|registers[16][23]~q\,
	combout => \banco_reg|Mux55~1_combout\);

-- Location: FF_X48_Y9_N1
\idex|out_read2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux55~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(23));

-- Location: LCCOMB_X48_Y9_N10
\ula_main|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~8_combout\ = \idex|ALUOp_out\(1) $ (((!\idex|ALUSrc_out~q\ & \idex|out_read2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datad => \idex|out_read2\(23),
	combout => \ula_main|Add0~8_combout\);

-- Location: FF_X50_Y9_N7
\banco_reg|registers[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(23),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][23]~q\);

-- Location: LCCOMB_X50_Y9_N6
\banco_reg|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux23~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][23]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][23]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[2][23]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux23~3_combout\);

-- Location: LCCOMB_X50_Y7_N24
\banco_reg|registers[4][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][23]~feeder_combout\ = \mewb|out_addr\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(23),
	combout => \banco_reg|registers[4][23]~feeder_combout\);

-- Location: FF_X50_Y7_N25
\banco_reg|registers[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][23]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][23]~q\);

-- Location: LCCOMB_X50_Y8_N14
\banco_reg|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux23~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][23]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][23]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux23~2_combout\);

-- Location: FF_X50_Y10_N17
\banco_reg|registers[18][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(23),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][23]~q\);

-- Location: FF_X50_Y10_N19
\banco_reg|registers[20][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(23),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][23]~q\);

-- Location: LCCOMB_X50_Y10_N18
\banco_reg|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux23~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][23]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][23]~q\,
	datac => \banco_reg|registers[20][23]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux23~0_combout\);

-- Location: LCCOMB_X50_Y10_N16
\banco_reg|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux23~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux23~0_combout\ & (\banco_reg|registers[22][23]~q\)) # (!\banco_reg|Mux23~0_combout\ & ((\banco_reg|registers[18][23]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[22][23]~q\,
	datac => \banco_reg|registers[18][23]~q\,
	datad => \banco_reg|Mux23~0_combout\,
	combout => \banco_reg|Mux23~1_combout\);

-- Location: LCCOMB_X50_Y8_N24
\banco_reg|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux23~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux23~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux23~3_combout\) # ((\banco_reg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux23~3_combout\,
	datab => \banco_reg|Mux23~2_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux23~1_combout\,
	combout => \banco_reg|Mux23~4_combout\);

-- Location: FF_X50_Y8_N25
\idex|out_read1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux23~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(23));

-- Location: LCCOMB_X47_Y8_N2
\exme|out_result[23]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[23]~50_combout\ = (\ula_main|Add0~8_combout\ & ((\idex|out_read1\(23) & (\exme|out_result[24]~49\ & VCC)) # (!\idex|out_read1\(23) & (!\exme|out_result[24]~49\)))) # (!\ula_main|Add0~8_combout\ & ((\idex|out_read1\(23) & 
-- (!\exme|out_result[24]~49\)) # (!\idex|out_read1\(23) & ((\exme|out_result[24]~49\) # (GND)))))
-- \exme|out_result[23]~51\ = CARRY((\ula_main|Add0~8_combout\ & (!\idex|out_read1\(23) & !\exme|out_result[24]~49\)) # (!\ula_main|Add0~8_combout\ & ((!\exme|out_result[24]~49\) # (!\idex|out_read1\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~8_combout\,
	datab => \idex|out_read1\(23),
	datad => VCC,
	cin => \exme|out_result[24]~49\,
	combout => \exme|out_result[23]~50_combout\,
	cout => \exme|out_result[23]~51\);

-- Location: LCCOMB_X49_Y8_N0
\exme|out_result[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[23]~feeder_combout\ = \exme|out_result[23]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[23]~50_combout\,
	combout => \exme|out_result[23]~feeder_combout\);

-- Location: LCCOMB_X49_Y8_N4
\ula_main|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux23~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(23)) # ((!\idex|ALUSrc_out~q\ & \idex|out_read2\(23))))) # (!\idex|ALUOp_out\(1) & (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(23) & \idex|out_read1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|out_read2\(23),
	datac => \idex|ALUOp_out\(1),
	datad => \idex|out_read1\(23),
	combout => \ula_main|Mux23~0_combout\);

-- Location: FF_X49_Y8_N1
\exme|out_result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[23]~feeder_combout\,
	asdata => \ula_main|Mux23~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(23));

-- Location: LCCOMB_X49_Y8_N22
\mewb|out_addr[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[23]~feeder_combout\ = \exme|out_result\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(23),
	combout => \mewb|out_addr[23]~feeder_combout\);

-- Location: FF_X49_Y8_N23
\mewb|out_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(23));

-- Location: LCCOMB_X50_Y9_N16
\banco_reg|registers[16][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][22]~feeder_combout\ = \mewb|out_addr\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(22),
	combout => \banco_reg|registers[16][22]~feeder_combout\);

-- Location: FF_X50_Y9_N17
\banco_reg|registers[16][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][22]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][22]~q\);

-- Location: FF_X49_Y9_N19
\banco_reg|registers[22][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(22),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][22]~q\);

-- Location: FF_X49_Y9_N15
\banco_reg|registers[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(22),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][22]~q\);

-- Location: LCCOMB_X49_Y9_N14
\banco_reg|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux54~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][22]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][22]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][22]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux54~0_combout\);

-- Location: LCCOMB_X48_Y8_N26
\banco_reg|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux54~1_combout\ = (\banco_reg|Mux54~0_combout\) # ((\banco_reg|registers[16][22]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][22]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|Mux54~0_combout\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux54~1_combout\);

-- Location: FF_X48_Y8_N27
\idex|out_read2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(22));

-- Location: LCCOMB_X48_Y8_N2
\ula_main|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~9_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(22),
	datab => \idex|out_imed\(22),
	datac => \idex|ALUOp_out\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~9_combout\);

-- Location: FF_X50_Y9_N31
\banco_reg|registers[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(22),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][22]~q\);

-- Location: LCCOMB_X50_Y9_N30
\banco_reg|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux22~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][22]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][22]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[2][22]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux22~3_combout\);

-- Location: LCCOMB_X50_Y8_N0
\banco_reg|registers[4][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][22]~feeder_combout\ = \mewb|out_addr\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(22),
	combout => \banco_reg|registers[4][22]~feeder_combout\);

-- Location: FF_X50_Y8_N1
\banco_reg|registers[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][22]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][22]~q\);

-- Location: LCCOMB_X50_Y8_N2
\banco_reg|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux22~2_combout\ = (!\ifid|out_instr\(9) & (\banco_reg|registers[4][22]~q\ & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[4][22]~q\,
	datac => \ifid|out_instr\(2),
	combout => \banco_reg|Mux22~2_combout\);

-- Location: FF_X50_Y10_N27
\banco_reg|registers[20][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(22),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][22]~q\);

-- Location: LCCOMB_X50_Y10_N26
\banco_reg|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux22~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][22]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][22]~q\,
	datac => \banco_reg|registers[20][22]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux22~0_combout\);

-- Location: FF_X50_Y10_N13
\banco_reg|registers[18][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(22),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][22]~q\);

-- Location: LCCOMB_X50_Y10_N12
\banco_reg|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux22~1_combout\ = (\banco_reg|Mux22~0_combout\ & (((\banco_reg|registers[22][22]~q\)) # (!\ifid|out_instr\(9)))) # (!\banco_reg|Mux22~0_combout\ & (\ifid|out_instr\(9) & (\banco_reg|registers[18][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux22~0_combout\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][22]~q\,
	datad => \banco_reg|registers[22][22]~q\,
	combout => \banco_reg|Mux22~1_combout\);

-- Location: LCCOMB_X50_Y8_N10
\banco_reg|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux22~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux22~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux22~3_combout\) # ((\banco_reg|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux22~3_combout\,
	datab => \banco_reg|Mux22~2_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux22~1_combout\,
	combout => \banco_reg|Mux22~4_combout\);

-- Location: FF_X50_Y8_N11
\idex|out_read1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux22~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(22));

-- Location: LCCOMB_X47_Y8_N4
\exme|out_result[22]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[22]~52_combout\ = ((\ula_main|Add0~9_combout\ $ (\idex|out_read1\(22) $ (!\exme|out_result[23]~51\)))) # (GND)
-- \exme|out_result[22]~53\ = CARRY((\ula_main|Add0~9_combout\ & ((\idex|out_read1\(22)) # (!\exme|out_result[23]~51\))) # (!\ula_main|Add0~9_combout\ & (\idex|out_read1\(22) & !\exme|out_result[23]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~9_combout\,
	datab => \idex|out_read1\(22),
	datad => VCC,
	cin => \exme|out_result[23]~51\,
	combout => \exme|out_result[22]~52_combout\,
	cout => \exme|out_result[22]~53\);

-- Location: LCCOMB_X47_Y5_N20
\exme|out_result[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[22]~feeder_combout\ = \exme|out_result[22]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exme|out_result[22]~52_combout\,
	combout => \exme|out_result[22]~feeder_combout\);

-- Location: LCCOMB_X48_Y8_N16
\alusrc_mux|X[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[22]~6_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(22),
	datab => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[22]~6_combout\);

-- Location: LCCOMB_X48_Y8_N0
\ula_main|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux22~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(22)) # (\alusrc_mux|X[22]~6_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(22) & \alusrc_mux|X[22]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|out_read1\(22),
	datad => \alusrc_mux|X[22]~6_combout\,
	combout => \ula_main|Mux22~0_combout\);

-- Location: FF_X47_Y5_N21
\exme|out_result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[22]~feeder_combout\,
	asdata => \ula_main|Mux22~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(22));

-- Location: LCCOMB_X50_Y5_N10
\mewb|out_addr[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[22]~feeder_combout\ = \exme|out_result\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(22),
	combout => \mewb|out_addr[22]~feeder_combout\);

-- Location: FF_X50_Y5_N11
\mewb|out_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(22));

-- Location: LCCOMB_X50_Y7_N14
\banco_reg|registers[22][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][21]~feeder_combout\ = \mewb|out_addr\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(21),
	combout => \banco_reg|registers[22][21]~feeder_combout\);

-- Location: FF_X50_Y7_N15
\banco_reg|registers[22][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][21]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][21]~q\);

-- Location: FF_X50_Y10_N29
\banco_reg|registers[18][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(21),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][21]~q\);

-- Location: LCCOMB_X50_Y9_N12
\banco_reg|registers[16][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][21]~feeder_combout\ = \mewb|out_addr\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(21),
	combout => \banco_reg|registers[16][21]~feeder_combout\);

-- Location: FF_X50_Y9_N13
\banco_reg|registers[16][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][21]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][21]~q\);

-- Location: FF_X50_Y10_N11
\banco_reg|registers[20][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(21),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][21]~q\);

-- Location: LCCOMB_X50_Y10_N10
\banco_reg|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux21~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][21]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][21]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][21]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux21~0_combout\);

-- Location: LCCOMB_X50_Y10_N28
\banco_reg|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux21~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux21~0_combout\ & (\banco_reg|registers[22][21]~q\)) # (!\banco_reg|Mux21~0_combout\ & ((\banco_reg|registers[18][21]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[22][21]~q\,
	datac => \banco_reg|registers[18][21]~q\,
	datad => \banco_reg|Mux21~0_combout\,
	combout => \banco_reg|Mux21~1_combout\);

-- Location: FF_X49_Y9_N5
\banco_reg|registers[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(21),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][21]~q\);

-- Location: FF_X50_Y9_N23
\banco_reg|registers[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(21),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][21]~q\);

-- Location: LCCOMB_X50_Y9_N22
\banco_reg|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux21~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][21]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][21]~q\,
	datac => \banco_reg|registers[2][21]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux21~3_combout\);

-- Location: FF_X50_Y7_N1
\banco_reg|registers[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(21),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][21]~q\);

-- Location: LCCOMB_X50_Y7_N0
\banco_reg|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux21~2_combout\ = (!\ifid|out_instr\(9) & (\banco_reg|registers[4][21]~q\ & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][21]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux21~2_combout\);

-- Location: LCCOMB_X50_Y8_N12
\banco_reg|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux21~4_combout\ = (\ifid|out_instr\(0) & (\banco_reg|Mux21~1_combout\)) # (!\ifid|out_instr\(0) & (((\banco_reg|Mux21~3_combout\) # (\banco_reg|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux21~1_combout\,
	datab => \banco_reg|Mux21~3_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux21~2_combout\,
	combout => \banco_reg|Mux21~4_combout\);

-- Location: FF_X50_Y8_N13
\idex|out_read1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux21~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(21));

-- Location: LCCOMB_X49_Y9_N4
\banco_reg|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux53~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][21]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][21]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][21]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux53~0_combout\);

-- Location: LCCOMB_X48_Y8_N10
\banco_reg|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux53~1_combout\ = (\banco_reg|Mux53~0_combout\) # ((\banco_reg|registers[16][21]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][21]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|Mux53~0_combout\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux53~1_combout\);

-- Location: FF_X48_Y8_N11
\idex|out_read2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux53~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(21));

-- Location: LCCOMB_X48_Y8_N12
\ula_main|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~10_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(21),
	datab => \idex|out_imed\(22),
	datac => \idex|ALUOp_out\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~10_combout\);

-- Location: LCCOMB_X47_Y8_N6
\exme|out_result[21]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[21]~54_combout\ = (\idex|out_read1\(21) & ((\ula_main|Add0~10_combout\ & (\exme|out_result[22]~53\ & VCC)) # (!\ula_main|Add0~10_combout\ & (!\exme|out_result[22]~53\)))) # (!\idex|out_read1\(21) & ((\ula_main|Add0~10_combout\ & 
-- (!\exme|out_result[22]~53\)) # (!\ula_main|Add0~10_combout\ & ((\exme|out_result[22]~53\) # (GND)))))
-- \exme|out_result[21]~55\ = CARRY((\idex|out_read1\(21) & (!\ula_main|Add0~10_combout\ & !\exme|out_result[22]~53\)) # (!\idex|out_read1\(21) & ((!\exme|out_result[22]~53\) # (!\ula_main|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(21),
	datab => \ula_main|Add0~10_combout\,
	datad => VCC,
	cin => \exme|out_result[22]~53\,
	combout => \exme|out_result[21]~54_combout\,
	cout => \exme|out_result[21]~55\);

-- Location: LCCOMB_X49_Y8_N18
\exme|out_result[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[21]~feeder_combout\ = \exme|out_result[21]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[21]~54_combout\,
	combout => \exme|out_result[21]~feeder_combout\);

-- Location: LCCOMB_X49_Y8_N2
\alusrc_mux|X[21]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[21]~7_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datac => \idex|out_imed\(22),
	datad => \idex|out_read2\(21),
	combout => \alusrc_mux|X[21]~7_combout\);

-- Location: LCCOMB_X49_Y8_N8
\ula_main|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux21~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(21)) # (\alusrc_mux|X[21]~7_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(21) & \alusrc_mux|X[21]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read1\(21),
	datad => \alusrc_mux|X[21]~7_combout\,
	combout => \ula_main|Mux21~0_combout\);

-- Location: FF_X49_Y8_N19
\exme|out_result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[21]~feeder_combout\,
	asdata => \ula_main|Mux21~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(21));

-- Location: LCCOMB_X50_Y6_N12
\mewb|out_addr[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[21]~feeder_combout\ = \exme|out_result\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(21),
	combout => \mewb|out_addr[21]~feeder_combout\);

-- Location: FF_X50_Y6_N13
\mewb|out_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(21));

-- Location: LCCOMB_X50_Y9_N0
\banco_reg|registers[16][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][20]~feeder_combout\ = \mewb|out_addr\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(20),
	combout => \banco_reg|registers[16][20]~feeder_combout\);

-- Location: FF_X50_Y9_N1
\banco_reg|registers[16][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][20]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][20]~q\);

-- Location: FF_X45_Y9_N29
\banco_reg|registers[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(20),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][20]~q\);

-- Location: LCCOMB_X45_Y9_N22
\banco_reg|registers[22][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][20]~feeder_combout\ = \mewb|out_addr\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(20),
	combout => \banco_reg|registers[22][20]~feeder_combout\);

-- Location: FF_X45_Y9_N23
\banco_reg|registers[22][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][20]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][20]~q\);

-- Location: LCCOMB_X45_Y9_N28
\banco_reg|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux52~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][20]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][20]~q\,
	datad => \banco_reg|registers[22][20]~q\,
	combout => \banco_reg|Mux52~0_combout\);

-- Location: LCCOMB_X46_Y9_N16
\banco_reg|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux52~1_combout\ = (\banco_reg|Mux52~0_combout\) # ((!\ifid|out_instr\(2) & (\ifid|out_instr\(11) & \banco_reg|registers[16][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[16][20]~q\,
	datad => \banco_reg|Mux52~0_combout\,
	combout => \banco_reg|Mux52~1_combout\);

-- Location: FF_X46_Y9_N17
\idex|out_read2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(20));

-- Location: LCCOMB_X46_Y9_N30
\ula_main|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~11_combout\ = \idex|ALUOp_out\(1) $ (((\idex|out_read2\(20) & !\idex|ALUSrc_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(20),
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~11_combout\);

-- Location: FF_X50_Y10_N1
\banco_reg|registers[18][20]\ : dffeas
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
	q => \banco_reg|registers[18][20]~q\);

-- Location: FF_X50_Y10_N3
\banco_reg|registers[20][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(20),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][20]~q\);

-- Location: LCCOMB_X50_Y10_N2
\banco_reg|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux20~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][20]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][20]~q\,
	datac => \banco_reg|registers[20][20]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux20~0_combout\);

-- Location: LCCOMB_X50_Y10_N0
\banco_reg|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux20~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux20~0_combout\ & (\banco_reg|registers[22][20]~q\)) # (!\banco_reg|Mux20~0_combout\ & ((\banco_reg|registers[18][20]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[22][20]~q\,
	datac => \banco_reg|registers[18][20]~q\,
	datad => \banco_reg|Mux20~0_combout\,
	combout => \banco_reg|Mux20~1_combout\);

-- Location: FF_X50_Y9_N11
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][20]~q\);

-- Location: LCCOMB_X50_Y9_N10
\banco_reg|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux20~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][20]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][20]~q\,
	datac => \banco_reg|registers[2][20]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux20~3_combout\);

-- Location: LCCOMB_X50_Y7_N22
\banco_reg|registers[4][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][20]~feeder_combout\ = \mewb|out_addr\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(20),
	combout => \banco_reg|registers[4][20]~feeder_combout\);

-- Location: FF_X50_Y7_N23
\banco_reg|registers[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][20]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][20]~q\);

-- Location: LCCOMB_X50_Y8_N28
\banco_reg|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux20~2_combout\ = (!\ifid|out_instr\(9) & (\ifid|out_instr\(2) & \banco_reg|registers[4][20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][20]~q\,
	combout => \banco_reg|Mux20~2_combout\);

-- Location: LCCOMB_X50_Y8_N18
\banco_reg|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux20~4_combout\ = (\ifid|out_instr\(0) & (\banco_reg|Mux20~1_combout\)) # (!\ifid|out_instr\(0) & (((\banco_reg|Mux20~3_combout\) # (\banco_reg|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux20~1_combout\,
	datab => \banco_reg|Mux20~3_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux20~2_combout\,
	combout => \banco_reg|Mux20~4_combout\);

-- Location: FF_X50_Y8_N19
\idex|out_read1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux20~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(20));

-- Location: LCCOMB_X47_Y8_N8
\exme|out_result[20]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[20]~56_combout\ = ((\ula_main|Add0~11_combout\ $ (\idex|out_read1\(20) $ (!\exme|out_result[21]~55\)))) # (GND)
-- \exme|out_result[20]~57\ = CARRY((\ula_main|Add0~11_combout\ & ((\idex|out_read1\(20)) # (!\exme|out_result[21]~55\))) # (!\ula_main|Add0~11_combout\ & (\idex|out_read1\(20) & !\exme|out_result[21]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~11_combout\,
	datab => \idex|out_read1\(20),
	datad => VCC,
	cin => \exme|out_result[21]~55\,
	combout => \exme|out_result[20]~56_combout\,
	cout => \exme|out_result[20]~57\);

-- Location: LCCOMB_X49_Y8_N14
\ula_main|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux20~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(20)) # ((!\idex|ALUSrc_out~q\ & \idex|out_read2\(20))))) # (!\idex|ALUOp_out\(1) & (!\idex|ALUSrc_out~q\ & (\idex|out_read1\(20) & \idex|out_read2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read1\(20),
	datad => \idex|out_read2\(20),
	combout => \ula_main|Mux20~0_combout\);

-- Location: FF_X47_Y8_N9
\exme|out_result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[20]~56_combout\,
	asdata => \ula_main|Mux20~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(20));

-- Location: LCCOMB_X43_Y8_N2
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

-- Location: FF_X43_Y8_N3
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

-- Location: LCCOMB_X50_Y8_N6
\banco_reg|registers[4][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][19]~feeder_combout\ = \mewb|out_addr\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(19),
	combout => \banco_reg|registers[4][19]~feeder_combout\);

-- Location: FF_X50_Y8_N7
\banco_reg|registers[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][19]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][19]~q\);

-- Location: LCCOMB_X50_Y8_N8
\banco_reg|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux19~2_combout\ = (\banco_reg|registers[4][19]~q\ & (\ifid|out_instr\(2) & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[4][19]~q\,
	datab => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux19~2_combout\);

-- Location: FF_X45_Y9_N21
\banco_reg|registers[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(19),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][19]~q\);

-- Location: FF_X50_Y9_N15
\banco_reg|registers[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(19),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][19]~q\);

-- Location: LCCOMB_X50_Y9_N14
\banco_reg|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux19~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][19]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][19]~q\,
	datac => \banco_reg|registers[2][19]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux19~3_combout\);

-- Location: LCCOMB_X45_Y9_N10
\banco_reg|registers[22][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][19]~feeder_combout\ = \mewb|out_addr\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(19),
	combout => \banco_reg|registers[22][19]~feeder_combout\);

-- Location: FF_X45_Y9_N11
\banco_reg|registers[22][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][19]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][19]~q\);

-- Location: FF_X50_Y10_N21
\banco_reg|registers[18][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(19),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][19]~q\);

-- Location: LCCOMB_X50_Y9_N28
\banco_reg|registers[16][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][19]~feeder_combout\ = \mewb|out_addr\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(19),
	combout => \banco_reg|registers[16][19]~feeder_combout\);

-- Location: FF_X50_Y9_N29
\banco_reg|registers[16][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][19]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][19]~q\);

-- Location: FF_X50_Y10_N7
\banco_reg|registers[20][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(19),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][19]~q\);

-- Location: LCCOMB_X50_Y10_N6
\banco_reg|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux19~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][19]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][19]~q\,
	datac => \banco_reg|registers[20][19]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux19~0_combout\);

-- Location: LCCOMB_X50_Y10_N20
\banco_reg|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux19~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux19~0_combout\ & (\banco_reg|registers[22][19]~q\)) # (!\banco_reg|Mux19~0_combout\ & ((\banco_reg|registers[18][19]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[22][19]~q\,
	datac => \banco_reg|registers[18][19]~q\,
	datad => \banco_reg|Mux19~0_combout\,
	combout => \banco_reg|Mux19~1_combout\);

-- Location: LCCOMB_X50_Y8_N16
\banco_reg|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux19~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux19~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux19~2_combout\) # ((\banco_reg|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux19~2_combout\,
	datab => \banco_reg|Mux19~3_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux19~1_combout\,
	combout => \banco_reg|Mux19~4_combout\);

-- Location: FF_X50_Y8_N17
\idex|out_read1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux19~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(19));

-- Location: LCCOMB_X45_Y9_N20
\banco_reg|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux51~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][19]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][19]~q\,
	datad => \banco_reg|registers[22][19]~q\,
	combout => \banco_reg|Mux51~0_combout\);

-- Location: LCCOMB_X46_Y9_N18
\banco_reg|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux51~1_combout\ = (\banco_reg|Mux51~0_combout\) # ((!\ifid|out_instr\(2) & (\ifid|out_instr\(11) & \banco_reg|registers[16][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[16][19]~q\,
	datad => \banco_reg|Mux51~0_combout\,
	combout => \banco_reg|Mux51~1_combout\);

-- Location: FF_X46_Y9_N19
\idex|out_read2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(19));

-- Location: LCCOMB_X46_Y9_N20
\ula_main|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~12_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_rd\(3)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(19),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|out_rd\(3),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~12_combout\);

-- Location: LCCOMB_X47_Y8_N10
\exme|out_result[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[19]~58_combout\ = (\idex|out_read1\(19) & ((\ula_main|Add0~12_combout\ & (\exme|out_result[20]~57\ & VCC)) # (!\ula_main|Add0~12_combout\ & (!\exme|out_result[20]~57\)))) # (!\idex|out_read1\(19) & ((\ula_main|Add0~12_combout\ & 
-- (!\exme|out_result[20]~57\)) # (!\ula_main|Add0~12_combout\ & ((\exme|out_result[20]~57\) # (GND)))))
-- \exme|out_result[19]~59\ = CARRY((\idex|out_read1\(19) & (!\ula_main|Add0~12_combout\ & !\exme|out_result[20]~57\)) # (!\idex|out_read1\(19) & ((!\exme|out_result[20]~57\) # (!\ula_main|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(19),
	datab => \ula_main|Add0~12_combout\,
	datad => VCC,
	cin => \exme|out_result[20]~57\,
	combout => \exme|out_result[19]~58_combout\,
	cout => \exme|out_result[19]~59\);

-- Location: LCCOMB_X46_Y8_N0
\exme|out_result[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[19]~feeder_combout\ = \exme|out_result[19]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exme|out_result[19]~58_combout\,
	combout => \exme|out_result[19]~feeder_combout\);

-- Location: LCCOMB_X45_Y8_N30
\alusrc_mux|X[19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[19]~8_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_rd\(3)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(19),
	datab => \idex|out_rd\(3),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[19]~8_combout\);

-- Location: LCCOMB_X45_Y8_N0
\ula_main|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux19~0_combout\ = (\alusrc_mux|X[19]~8_combout\ & ((\idex|ALUOp_out\(1)) # (\idex|out_read1\(19)))) # (!\alusrc_mux|X[19]~8_combout\ & (\idex|ALUOp_out\(1) & \idex|out_read1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|X[19]~8_combout\,
	datab => \idex|ALUOp_out\(1),
	datad => \idex|out_read1\(19),
	combout => \ula_main|Mux19~0_combout\);

-- Location: FF_X46_Y8_N1
\exme|out_result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[19]~feeder_combout\,
	asdata => \ula_main|Mux19~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(19));

-- Location: FF_X45_Y8_N5
\mewb|out_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(19));

-- Location: LCCOMB_X50_Y9_N8
\banco_reg|registers[16][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][18]~feeder_combout\ = \mewb|out_addr\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(18),
	combout => \banco_reg|registers[16][18]~feeder_combout\);

-- Location: FF_X50_Y9_N9
\banco_reg|registers[16][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][18]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][18]~q\);

-- Location: LCCOMB_X45_Y9_N14
\banco_reg|registers[22][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][18]~feeder_combout\ = \mewb|out_addr\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(18),
	combout => \banco_reg|registers[22][18]~feeder_combout\);

-- Location: FF_X45_Y9_N15
\banco_reg|registers[22][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][18]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][18]~q\);

-- Location: FF_X45_Y9_N17
\banco_reg|registers[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(18),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][18]~q\);

-- Location: LCCOMB_X45_Y9_N16
\banco_reg|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux50~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][18]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][18]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][18]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux50~0_combout\);

-- Location: LCCOMB_X46_Y9_N6
\banco_reg|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux50~1_combout\ = (\banco_reg|Mux50~0_combout\) # ((!\ifid|out_instr\(2) & (\ifid|out_instr\(11) & \banco_reg|registers[16][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[16][18]~q\,
	datad => \banco_reg|Mux50~0_combout\,
	combout => \banco_reg|Mux50~1_combout\);

-- Location: FF_X46_Y9_N7
\idex|out_read2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(18));

-- Location: LCCOMB_X46_Y9_N2
\ula_main|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~13_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_rd\(2)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(18),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|out_rd\(2),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~13_combout\);

-- Location: FF_X50_Y7_N17
\banco_reg|registers[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(18),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][18]~q\);

-- Location: LCCOMB_X50_Y7_N16
\banco_reg|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux18~2_combout\ = (!\ifid|out_instr\(9) & (\banco_reg|registers[4][18]~q\ & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][18]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux18~2_combout\);

-- Location: FF_X50_Y9_N3
\banco_reg|registers[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(18),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][18]~q\);

-- Location: LCCOMB_X50_Y9_N2
\banco_reg|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux18~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][18]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][18]~q\,
	datac => \banco_reg|registers[2][18]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux18~3_combout\);

-- Location: FF_X50_Y10_N23
\banco_reg|registers[20][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(18),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][18]~q\);

-- Location: LCCOMB_X50_Y10_N22
\banco_reg|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux18~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][18]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][18]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][18]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux18~0_combout\);

-- Location: FF_X50_Y10_N5
\banco_reg|registers[18][18]\ : dffeas
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
	q => \banco_reg|registers[18][18]~q\);

-- Location: LCCOMB_X50_Y10_N4
\banco_reg|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux18~1_combout\ = (\banco_reg|Mux18~0_combout\ & (((\banco_reg|registers[22][18]~q\)) # (!\ifid|out_instr\(9)))) # (!\banco_reg|Mux18~0_combout\ & (\ifid|out_instr\(9) & (\banco_reg|registers[18][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux18~0_combout\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][18]~q\,
	datad => \banco_reg|registers[22][18]~q\,
	combout => \banco_reg|Mux18~1_combout\);

-- Location: LCCOMB_X50_Y8_N30
\banco_reg|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux18~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux18~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux18~2_combout\) # ((\banco_reg|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux18~2_combout\,
	datab => \banco_reg|Mux18~3_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux18~1_combout\,
	combout => \banco_reg|Mux18~4_combout\);

-- Location: FF_X50_Y8_N31
\idex|out_read1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux18~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(18));

-- Location: LCCOMB_X47_Y8_N12
\exme|out_result[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[18]~60_combout\ = ((\ula_main|Add0~13_combout\ $ (\idex|out_read1\(18) $ (!\exme|out_result[19]~59\)))) # (GND)
-- \exme|out_result[18]~61\ = CARRY((\ula_main|Add0~13_combout\ & ((\idex|out_read1\(18)) # (!\exme|out_result[19]~59\))) # (!\ula_main|Add0~13_combout\ & (\idex|out_read1\(18) & !\exme|out_result[19]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~13_combout\,
	datab => \idex|out_read1\(18),
	datad => VCC,
	cin => \exme|out_result[19]~59\,
	combout => \exme|out_result[18]~60_combout\,
	cout => \exme|out_result[18]~61\);

-- Location: LCCOMB_X46_Y8_N26
\exme|out_result[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[18]~feeder_combout\ = \exme|out_result[18]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[18]~60_combout\,
	combout => \exme|out_result[18]~feeder_combout\);

-- Location: LCCOMB_X46_Y9_N22
\alusrc_mux|X[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[18]~9_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_rd\(2)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(18),
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|out_rd\(2),
	combout => \alusrc_mux|X[18]~9_combout\);

-- Location: LCCOMB_X45_Y8_N16
\ula_main|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux18~0_combout\ = (\idex|out_read1\(18) & ((\alusrc_mux|X[18]~9_combout\) # (\idex|ALUOp_out\(1)))) # (!\idex|out_read1\(18) & (\alusrc_mux|X[18]~9_combout\ & \idex|ALUOp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(18),
	datac => \alusrc_mux|X[18]~9_combout\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux18~0_combout\);

-- Location: FF_X46_Y8_N27
\exme|out_result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[18]~feeder_combout\,
	asdata => \ula_main|Mux18~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(18));

-- Location: FF_X48_Y8_N1
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

-- Location: LCCOMB_X50_Y9_N4
\banco_reg|registers[16][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][17]~feeder_combout\ = \mewb|out_addr\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(17),
	combout => \banco_reg|registers[16][17]~feeder_combout\);

-- Location: FF_X50_Y9_N5
\banco_reg|registers[16][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][17]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][17]~q\);

-- Location: FF_X49_Y7_N29
\banco_reg|registers[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(17),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][17]~q\);

-- Location: LCCOMB_X50_Y7_N26
\banco_reg|registers[22][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][17]~feeder_combout\ = \mewb|out_addr\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(17),
	combout => \banco_reg|registers[22][17]~feeder_combout\);

-- Location: FF_X50_Y7_N27
\banco_reg|registers[22][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][17]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][17]~q\);

-- Location: LCCOMB_X49_Y7_N28
\banco_reg|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux49~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][17]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][17]~q\,
	datad => \banco_reg|registers[22][17]~q\,
	combout => \banco_reg|Mux49~0_combout\);

-- Location: LCCOMB_X48_Y7_N10
\banco_reg|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux49~1_combout\ = (\banco_reg|Mux49~0_combout\) # ((!\ifid|out_instr\(2) & (\banco_reg|registers[16][17]~q\ & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[16][17]~q\,
	datac => \ifid|out_instr\(11),
	datad => \banco_reg|Mux49~0_combout\,
	combout => \banco_reg|Mux49~1_combout\);

-- Location: FF_X48_Y7_N11
\idex|out_read2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux49~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(17));

-- Location: LCCOMB_X48_Y7_N12
\ula_main|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~14_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_rd\(1)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(17),
	datab => \idex|out_rd\(1),
	datac => \idex|ALUOp_out\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~14_combout\);

-- Location: LCCOMB_X50_Y9_N18
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

-- Location: FF_X50_Y9_N19
\banco_reg|registers[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][17]~feeder_combout\,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][17]~q\);

-- Location: LCCOMB_X50_Y8_N26
\banco_reg|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux17~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][17]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][17]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[2][17]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux17~3_combout\);

-- Location: FF_X50_Y10_N31
\banco_reg|registers[20][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(17),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][17]~q\);

-- Location: LCCOMB_X50_Y10_N30
\banco_reg|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux17~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][17]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][17]~q\,
	datac => \banco_reg|registers[20][17]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux17~0_combout\);

-- Location: FF_X50_Y10_N25
\banco_reg|registers[18][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(17),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][17]~q\);

-- Location: LCCOMB_X50_Y10_N24
\banco_reg|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux17~1_combout\ = (\banco_reg|Mux17~0_combout\ & (((\banco_reg|registers[22][17]~q\)) # (!\ifid|out_instr\(9)))) # (!\banco_reg|Mux17~0_combout\ & (\ifid|out_instr\(9) & (\banco_reg|registers[18][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux17~0_combout\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][17]~q\,
	datad => \banco_reg|registers[22][17]~q\,
	combout => \banco_reg|Mux17~1_combout\);

-- Location: FF_X50_Y7_N21
\banco_reg|registers[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(17),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][17]~q\);

-- Location: LCCOMB_X50_Y7_N20
\banco_reg|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux17~2_combout\ = (!\ifid|out_instr\(9) & (\banco_reg|registers[4][17]~q\ & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][17]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux17~2_combout\);

-- Location: LCCOMB_X50_Y8_N20
\banco_reg|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux17~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux17~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux17~3_combout\) # ((\banco_reg|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux17~3_combout\,
	datab => \banco_reg|Mux17~1_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux17~2_combout\,
	combout => \banco_reg|Mux17~4_combout\);

-- Location: FF_X50_Y8_N21
\idex|out_read1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux17~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(17));

-- Location: LCCOMB_X47_Y8_N14
\exme|out_result[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[17]~62_combout\ = (\ula_main|Add0~14_combout\ & ((\idex|out_read1\(17) & (\exme|out_result[18]~61\ & VCC)) # (!\idex|out_read1\(17) & (!\exme|out_result[18]~61\)))) # (!\ula_main|Add0~14_combout\ & ((\idex|out_read1\(17) & 
-- (!\exme|out_result[18]~61\)) # (!\idex|out_read1\(17) & ((\exme|out_result[18]~61\) # (GND)))))
-- \exme|out_result[17]~63\ = CARRY((\ula_main|Add0~14_combout\ & (!\idex|out_read1\(17) & !\exme|out_result[18]~61\)) # (!\ula_main|Add0~14_combout\ & ((!\exme|out_result[18]~61\) # (!\idex|out_read1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~14_combout\,
	datab => \idex|out_read1\(17),
	datad => VCC,
	cin => \exme|out_result[18]~61\,
	combout => \exme|out_result[17]~62_combout\,
	cout => \exme|out_result[17]~63\);

-- Location: LCCOMB_X46_Y8_N20
\exme|out_result[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[17]~feeder_combout\ = \exme|out_result[17]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exme|out_result[17]~62_combout\,
	combout => \exme|out_result[17]~feeder_combout\);

-- Location: LCCOMB_X48_Y7_N20
\alusrc_mux|X[17]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[17]~10_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_rd\(1)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(17),
	datab => \idex|out_rd\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[17]~10_combout\);

-- Location: LCCOMB_X49_Y8_N24
\ula_main|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux17~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(17)) # (\alusrc_mux|X[17]~10_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(17) & \alusrc_mux|X[17]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read1\(17),
	datad => \alusrc_mux|X[17]~10_combout\,
	combout => \ula_main|Mux17~0_combout\);

-- Location: FF_X46_Y8_N21
\exme|out_result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[17]~feeder_combout\,
	asdata => \ula_main|Mux17~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(17));

-- Location: LCCOMB_X49_Y8_N28
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

-- Location: FF_X49_Y8_N29
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

-- Location: FF_X50_Y7_N5
\banco_reg|registers[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(16),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][16]~q\);

-- Location: LCCOMB_X50_Y7_N4
\banco_reg|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux16~2_combout\ = (!\ifid|out_instr\(9) & (\banco_reg|registers[4][16]~q\ & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[4][16]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux16~2_combout\);

-- Location: FF_X49_Y9_N31
\banco_reg|registers[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(16),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][16]~q\);

-- Location: FF_X50_Y9_N27
\banco_reg|registers[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(16),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][16]~q\);

-- Location: LCCOMB_X50_Y9_N26
\banco_reg|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux16~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][16]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[6][16]~q\,
	datac => \banco_reg|registers[2][16]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux16~3_combout\);

-- Location: LCCOMB_X50_Y9_N24
\banco_reg|registers[16][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][16]~feeder_combout\ = \mewb|out_addr\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(16),
	combout => \banco_reg|registers[16][16]~feeder_combout\);

-- Location: FF_X50_Y9_N25
\banco_reg|registers[16][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][16]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][16]~q\);

-- Location: FF_X50_Y10_N15
\banco_reg|registers[20][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(16),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][16]~q\);

-- Location: LCCOMB_X50_Y10_N14
\banco_reg|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux16~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][16]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][16]~q\,
	datac => \banco_reg|registers[20][16]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux16~0_combout\);

-- Location: FF_X50_Y10_N9
\banco_reg|registers[18][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(16),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][16]~q\);

-- Location: LCCOMB_X50_Y7_N2
\banco_reg|registers[22][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][16]~feeder_combout\ = \mewb|out_addr\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(16),
	combout => \banco_reg|registers[22][16]~feeder_combout\);

-- Location: FF_X50_Y7_N3
\banco_reg|registers[22][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][16]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][16]~q\);

-- Location: LCCOMB_X50_Y10_N8
\banco_reg|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux16~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux16~0_combout\ & ((\banco_reg|registers[22][16]~q\))) # (!\banco_reg|Mux16~0_combout\ & (\banco_reg|registers[18][16]~q\)))) # (!\ifid|out_instr\(9) & (\banco_reg|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|Mux16~0_combout\,
	datac => \banco_reg|registers[18][16]~q\,
	datad => \banco_reg|registers[22][16]~q\,
	combout => \banco_reg|Mux16~1_combout\);

-- Location: LCCOMB_X50_Y8_N22
\banco_reg|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux16~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux16~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux16~2_combout\) # ((\banco_reg|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux16~2_combout\,
	datab => \banco_reg|Mux16~3_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux16~1_combout\,
	combout => \banco_reg|Mux16~4_combout\);

-- Location: FF_X50_Y8_N23
\idex|out_read1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux16~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(16));

-- Location: LCCOMB_X49_Y9_N30
\banco_reg|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux48~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][16]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|registers[22][16]~q\,
	datac => \banco_reg|registers[6][16]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux48~0_combout\);

-- Location: LCCOMB_X49_Y8_N10
\banco_reg|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux48~1_combout\ = (\banco_reg|Mux48~0_combout\) # ((!\ifid|out_instr\(2) & (\banco_reg|registers[16][16]~q\ & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[16][16]~q\,
	datac => \banco_reg|Mux48~0_combout\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux48~1_combout\);

-- Location: FF_X49_Y8_N11
\idex|out_read2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(16));

-- Location: LCCOMB_X48_Y8_N28
\ula_main|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~15_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read2\(16),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~15_combout\);

-- Location: LCCOMB_X47_Y8_N16
\exme|out_result[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[16]~64_combout\ = ((\idex|out_read1\(16) $ (\ula_main|Add0~15_combout\ $ (!\exme|out_result[17]~63\)))) # (GND)
-- \exme|out_result[16]~65\ = CARRY((\idex|out_read1\(16) & ((\ula_main|Add0~15_combout\) # (!\exme|out_result[17]~63\))) # (!\idex|out_read1\(16) & (\ula_main|Add0~15_combout\ & !\exme|out_result[17]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(16),
	datab => \ula_main|Add0~15_combout\,
	datad => VCC,
	cin => \exme|out_result[17]~63\,
	combout => \exme|out_result[16]~64_combout\,
	cout => \exme|out_result[16]~65\);

-- Location: LCCOMB_X46_Y8_N6
\exme|out_result[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[16]~feeder_combout\ = \exme|out_result[16]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[16]~64_combout\,
	combout => \exme|out_result[16]~feeder_combout\);

-- Location: LCCOMB_X49_Y8_N20
\alusrc_mux|X[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[16]~11_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(16),
	datac => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[16]~11_combout\);

-- Location: LCCOMB_X50_Y8_N4
\ula_main|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux16~0_combout\ = (\idex|out_read1\(16) & ((\idex|ALUOp_out\(1)) # (\alusrc_mux|X[16]~11_combout\))) # (!\idex|out_read1\(16) & (\idex|ALUOp_out\(1) & \alusrc_mux|X[16]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(16),
	datac => \idex|ALUOp_out\(1),
	datad => \alusrc_mux|X[16]~11_combout\,
	combout => \ula_main|Mux16~0_combout\);

-- Location: FF_X46_Y8_N7
\exme|out_result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[16]~feeder_combout\,
	asdata => \ula_main|Mux16~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(16));

-- Location: LCCOMB_X49_Y8_N30
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

-- Location: FF_X49_Y8_N31
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

-- Location: FF_X48_Y8_N17
\banco_reg|registers[16][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(15),
	sload => VCC,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][15]~q\);

-- Location: LCCOMB_X43_Y6_N24
\banco_reg|registers[22][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][15]~feeder_combout\ = \mewb|out_addr\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(15),
	combout => \banco_reg|registers[22][15]~feeder_combout\);

-- Location: FF_X43_Y6_N25
\banco_reg|registers[22][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][15]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][15]~q\);

-- Location: FF_X45_Y6_N9
\banco_reg|registers[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(15),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][15]~q\);

-- Location: LCCOMB_X45_Y6_N8
\banco_reg|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux47~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][15]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][15]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][15]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux47~0_combout\);

-- Location: LCCOMB_X48_Y8_N18
\banco_reg|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux47~1_combout\ = (\banco_reg|Mux47~0_combout\) # ((\banco_reg|registers[16][15]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][15]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|Mux47~0_combout\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux47~1_combout\);

-- Location: FF_X48_Y8_N19
\idex|out_read2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux47~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(15));

-- Location: LCCOMB_X48_Y8_N20
\ula_main|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~16_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(15),
	datac => \idex|ALUOp_out\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~16_combout\);

-- Location: FF_X46_Y6_N13
\banco_reg|registers[18][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(15),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][15]~q\);

-- Location: FF_X46_Y6_N19
\banco_reg|registers[20][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(15),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][15]~q\);

-- Location: LCCOMB_X46_Y6_N18
\banco_reg|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux15~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][15]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][15]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][15]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][15]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux15~0_combout\);

-- Location: LCCOMB_X46_Y6_N12
\banco_reg|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux15~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux15~0_combout\ & (\banco_reg|registers[22][15]~q\)) # (!\banco_reg|Mux15~0_combout\ & ((\banco_reg|registers[18][15]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][15]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][15]~q\,
	datad => \banco_reg|Mux15~0_combout\,
	combout => \banco_reg|Mux15~1_combout\);

-- Location: LCCOMB_X48_Y6_N28
\banco_reg|registers[4][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][15]~feeder_combout\ = \mewb|out_addr\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(15),
	combout => \banco_reg|registers[4][15]~feeder_combout\);

-- Location: FF_X48_Y6_N29
\banco_reg|registers[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][15]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][15]~q\);

-- Location: LCCOMB_X48_Y6_N10
\banco_reg|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux15~2_combout\ = (\banco_reg|registers[4][15]~q\ & (!\ifid|out_instr\(9) & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[4][15]~q\,
	datab => \ifid|out_instr\(9),
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux15~2_combout\);

-- Location: FF_X45_Y6_N11
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][15]~q\);

-- Location: LCCOMB_X45_Y6_N10
\banco_reg|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux15~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][15]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][15]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][15]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux15~3_combout\);

-- Location: LCCOMB_X47_Y6_N20
\banco_reg|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux15~4_combout\ = (\ifid|out_instr\(0) & (\banco_reg|Mux15~1_combout\)) # (!\ifid|out_instr\(0) & (((\banco_reg|Mux15~2_combout\) # (\banco_reg|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux15~1_combout\,
	datab => \banco_reg|Mux15~2_combout\,
	datac => \banco_reg|Mux15~3_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux15~4_combout\);

-- Location: FF_X47_Y6_N21
\idex|out_read1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux15~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(15));

-- Location: LCCOMB_X47_Y8_N18
\exme|out_result[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[15]~66_combout\ = (\ula_main|Add0~16_combout\ & ((\idex|out_read1\(15) & (\exme|out_result[16]~65\ & VCC)) # (!\idex|out_read1\(15) & (!\exme|out_result[16]~65\)))) # (!\ula_main|Add0~16_combout\ & ((\idex|out_read1\(15) & 
-- (!\exme|out_result[16]~65\)) # (!\idex|out_read1\(15) & ((\exme|out_result[16]~65\) # (GND)))))
-- \exme|out_result[15]~67\ = CARRY((\ula_main|Add0~16_combout\ & (!\idex|out_read1\(15) & !\exme|out_result[16]~65\)) # (!\ula_main|Add0~16_combout\ & ((!\exme|out_result[16]~65\) # (!\idex|out_read1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~16_combout\,
	datab => \idex|out_read1\(15),
	datad => VCC,
	cin => \exme|out_result[16]~65\,
	combout => \exme|out_result[15]~66_combout\,
	cout => \exme|out_result[15]~67\);

-- Location: LCCOMB_X46_Y8_N24
\exme|out_result[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[15]~feeder_combout\ = \exme|out_result[15]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[15]~66_combout\,
	combout => \exme|out_result[15]~feeder_combout\);

-- Location: LCCOMB_X49_Y8_N26
\alusrc_mux|X[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[15]~12_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datac => \idex|out_imed\(22),
	datad => \idex|out_read2\(15),
	combout => \alusrc_mux|X[15]~12_combout\);

-- Location: LCCOMB_X46_Y8_N8
\ula_main|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux15~0_combout\ = (\idex|ALUOp_out\(1) & ((\alusrc_mux|X[15]~12_combout\) # (\idex|out_read1\(15)))) # (!\idex|ALUOp_out\(1) & (\alusrc_mux|X[15]~12_combout\ & \idex|out_read1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \alusrc_mux|X[15]~12_combout\,
	datad => \idex|out_read1\(15),
	combout => \ula_main|Mux15~0_combout\);

-- Location: FF_X46_Y8_N25
\exme|out_result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[15]~feeder_combout\,
	asdata => \ula_main|Mux15~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(15));

-- Location: FF_X48_Y8_N5
\mewb|out_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(15));

-- Location: FF_X45_Y8_N29
\banco_reg|registers[22][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(14),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][14]~q\);

-- Location: FF_X46_Y6_N5
\banco_reg|registers[18][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(14),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][14]~q\);

-- Location: FF_X48_Y8_N7
\banco_reg|registers[16][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(14),
	sload => VCC,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][14]~q\);

-- Location: FF_X46_Y6_N3
\banco_reg|registers[20][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(14),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][14]~q\);

-- Location: LCCOMB_X46_Y6_N2
\banco_reg|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux14~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][14]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][14]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][14]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][14]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux14~0_combout\);

-- Location: LCCOMB_X46_Y6_N4
\banco_reg|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux14~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux14~0_combout\ & (\banco_reg|registers[22][14]~q\)) # (!\banco_reg|Mux14~0_combout\ & ((\banco_reg|registers[18][14]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][14]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][14]~q\,
	datad => \banco_reg|Mux14~0_combout\,
	combout => \banco_reg|Mux14~1_combout\);

-- Location: FF_X48_Y6_N13
\banco_reg|registers[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(14),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][14]~q\);

-- Location: LCCOMB_X48_Y6_N12
\banco_reg|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux14~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][14]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][14]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux14~2_combout\);

-- Location: LCCOMB_X45_Y6_N12
\banco_reg|registers[6][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][14]~feeder_combout\ = \mewb|out_addr\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(14),
	combout => \banco_reg|registers[6][14]~feeder_combout\);

-- Location: FF_X45_Y6_N13
\banco_reg|registers[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][14]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][14]~q\);

-- Location: FF_X45_Y6_N23
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][14]~q\);

-- Location: LCCOMB_X45_Y6_N22
\banco_reg|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux14~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][14]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][14]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][14]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux14~3_combout\);

-- Location: LCCOMB_X47_Y6_N2
\banco_reg|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux14~4_combout\ = (\ifid|out_instr\(0) & (\banco_reg|Mux14~1_combout\)) # (!\ifid|out_instr\(0) & (((\banco_reg|Mux14~2_combout\) # (\banco_reg|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux14~1_combout\,
	datab => \banco_reg|Mux14~2_combout\,
	datac => \banco_reg|Mux14~3_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux14~4_combout\);

-- Location: FF_X47_Y6_N3
\idex|out_read1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux14~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(14));

-- Location: LCCOMB_X45_Y8_N28
\banco_reg|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux46~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][14]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][14]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[22][14]~q\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux46~0_combout\);

-- Location: LCCOMB_X48_Y8_N8
\banco_reg|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux46~1_combout\ = (\banco_reg|Mux46~0_combout\) # ((\banco_reg|registers[16][14]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][14]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|Mux46~0_combout\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux46~1_combout\);

-- Location: FF_X48_Y8_N9
\idex|out_read2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(14));

-- Location: LCCOMB_X48_Y8_N24
\ula_main|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~17_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read2\(14),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~17_combout\);

-- Location: LCCOMB_X47_Y8_N20
\exme|out_result[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[14]~68_combout\ = ((\idex|out_read1\(14) $ (\ula_main|Add0~17_combout\ $ (!\exme|out_result[15]~67\)))) # (GND)
-- \exme|out_result[14]~69\ = CARRY((\idex|out_read1\(14) & ((\ula_main|Add0~17_combout\) # (!\exme|out_result[15]~67\))) # (!\idex|out_read1\(14) & (\ula_main|Add0~17_combout\ & !\exme|out_result[15]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(14),
	datab => \ula_main|Add0~17_combout\,
	datad => VCC,
	cin => \exme|out_result[15]~67\,
	combout => \exme|out_result[14]~68_combout\,
	cout => \exme|out_result[14]~69\);

-- Location: LCCOMB_X48_Y8_N14
\alusrc_mux|X[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[14]~13_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(14),
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|out_imed\(22),
	combout => \alusrc_mux|X[14]~13_combout\);

-- Location: LCCOMB_X48_Y8_N30
\ula_main|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux14~0_combout\ = (\idex|ALUOp_out\(1) & ((\alusrc_mux|X[14]~13_combout\) # (\idex|out_read1\(14)))) # (!\idex|ALUOp_out\(1) & (\alusrc_mux|X[14]~13_combout\ & \idex|out_read1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \alusrc_mux|X[14]~13_combout\,
	datad => \idex|out_read1\(14),
	combout => \ula_main|Mux14~0_combout\);

-- Location: FF_X47_Y8_N21
\exme|out_result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[14]~68_combout\,
	asdata => \ula_main|Mux14~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(14));

-- Location: LCCOMB_X45_Y8_N22
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

-- Location: FF_X45_Y8_N23
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

-- Location: LCCOMB_X46_Y6_N0
\banco_reg|registers[18][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[18][13]~feeder_combout\ = \mewb|out_addr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(13),
	combout => \banco_reg|registers[18][13]~feeder_combout\);

-- Location: FF_X46_Y6_N1
\banco_reg|registers[18][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[18][13]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][13]~q\);

-- Location: LCCOMB_X46_Y6_N14
\banco_reg|registers[20][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[20][13]~feeder_combout\ = \mewb|out_addr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(13),
	combout => \banco_reg|registers[20][13]~feeder_combout\);

-- Location: FF_X46_Y6_N15
\banco_reg|registers[20][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[20][13]~feeder_combout\,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][13]~q\);

-- Location: LCCOMB_X48_Y6_N14
\banco_reg|registers[16][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][13]~feeder_combout\ = \mewb|out_addr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(13),
	combout => \banco_reg|registers[16][13]~feeder_combout\);

-- Location: FF_X48_Y6_N15
\banco_reg|registers[16][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][13]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][13]~q\);

-- Location: LCCOMB_X47_Y6_N22
\banco_reg|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux13~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[20][13]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[16][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[20][13]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[16][13]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux13~0_combout\);

-- Location: LCCOMB_X47_Y6_N24
\banco_reg|registers[22][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][13]~feeder_combout\ = \mewb|out_addr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(13),
	combout => \banco_reg|registers[22][13]~feeder_combout\);

-- Location: FF_X47_Y6_N25
\banco_reg|registers[22][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][13]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][13]~q\);

-- Location: LCCOMB_X47_Y6_N4
\banco_reg|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux13~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux13~0_combout\ & ((\banco_reg|registers[22][13]~q\))) # (!\banco_reg|Mux13~0_combout\ & (\banco_reg|registers[18][13]~q\)))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[18][13]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|Mux13~0_combout\,
	datad => \banco_reg|registers[22][13]~q\,
	combout => \banco_reg|Mux13~1_combout\);

-- Location: FF_X48_Y6_N25
\banco_reg|registers[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(13),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][13]~q\);

-- Location: LCCOMB_X48_Y6_N24
\banco_reg|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux13~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][13]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][13]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux13~2_combout\);

-- Location: LCCOMB_X45_Y6_N20
\banco_reg|registers[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][13]~feeder_combout\ = \mewb|out_addr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(13),
	combout => \banco_reg|registers[6][13]~feeder_combout\);

-- Location: FF_X45_Y6_N21
\banco_reg|registers[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][13]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][13]~q\);

-- Location: FF_X45_Y6_N7
\banco_reg|registers[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(13),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][13]~q\);

-- Location: LCCOMB_X45_Y6_N6
\banco_reg|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux13~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][13]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[6][13]~q\,
	datac => \banco_reg|registers[2][13]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux13~3_combout\);

-- Location: LCCOMB_X47_Y6_N8
\banco_reg|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux13~4_combout\ = (\ifid|out_instr\(0) & (\banco_reg|Mux13~1_combout\)) # (!\ifid|out_instr\(0) & (((\banco_reg|Mux13~2_combout\) # (\banco_reg|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux13~1_combout\,
	datab => \banco_reg|Mux13~2_combout\,
	datac => \banco_reg|Mux13~3_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux13~4_combout\);

-- Location: FF_X47_Y6_N9
\idex|out_read1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux13~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(13));

-- Location: LCCOMB_X49_Y6_N8
\banco_reg|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux45~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][13]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][13]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[22][13]~q\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux45~0_combout\);

-- Location: LCCOMB_X49_Y6_N2
\banco_reg|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux45~1_combout\ = (\banco_reg|Mux45~0_combout\) # ((\banco_reg|registers[16][13]~q\ & (!\ifid|out_instr\(2) & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][13]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|Mux45~0_combout\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux45~1_combout\);

-- Location: FF_X49_Y6_N3
\idex|out_read2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(13));

-- Location: LCCOMB_X48_Y8_N22
\ula_main|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~18_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|out_imed\(22),
	datac => \idex|ALUOp_out\(1),
	datad => \idex|out_read2\(13),
	combout => \ula_main|Add0~18_combout\);

-- Location: LCCOMB_X47_Y8_N22
\exme|out_result[13]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[13]~70_combout\ = (\idex|out_read1\(13) & ((\ula_main|Add0~18_combout\ & (\exme|out_result[14]~69\ & VCC)) # (!\ula_main|Add0~18_combout\ & (!\exme|out_result[14]~69\)))) # (!\idex|out_read1\(13) & ((\ula_main|Add0~18_combout\ & 
-- (!\exme|out_result[14]~69\)) # (!\ula_main|Add0~18_combout\ & ((\exme|out_result[14]~69\) # (GND)))))
-- \exme|out_result[13]~71\ = CARRY((\idex|out_read1\(13) & (!\ula_main|Add0~18_combout\ & !\exme|out_result[14]~69\)) # (!\idex|out_read1\(13) & ((!\exme|out_result[14]~69\) # (!\ula_main|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(13),
	datab => \ula_main|Add0~18_combout\,
	datad => VCC,
	cin => \exme|out_result[14]~69\,
	combout => \exme|out_result[13]~70_combout\,
	cout => \exme|out_result[13]~71\);

-- Location: LCCOMB_X47_Y5_N18
\exme|out_result[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[13]~feeder_combout\ = \exme|out_result[13]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[13]~70_combout\,
	combout => \exme|out_result[13]~feeder_combout\);

-- Location: LCCOMB_X48_Y8_N6
\alusrc_mux|X[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[13]~14_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(13),
	datab => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[13]~14_combout\);

-- Location: LCCOMB_X47_Y5_N4
\ula_main|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux13~0_combout\ = (\idex|ALUOp_out\(1) & ((\alusrc_mux|X[13]~14_combout\) # (\idex|out_read1\(13)))) # (!\idex|ALUOp_out\(1) & (\alusrc_mux|X[13]~14_combout\ & \idex|out_read1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datac => \alusrc_mux|X[13]~14_combout\,
	datad => \idex|out_read1\(13),
	combout => \ula_main|Mux13~0_combout\);

-- Location: FF_X47_Y5_N19
\exme|out_result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[13]~feeder_combout\,
	asdata => \ula_main|Mux13~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(13));

-- Location: LCCOMB_X47_Y5_N24
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

-- Location: FF_X47_Y5_N25
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

-- Location: FF_X45_Y6_N29
\banco_reg|registers[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(12),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][12]~q\);

-- Location: LCCOMB_X47_Y6_N26
\banco_reg|registers[22][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][12]~feeder_combout\ = \mewb|out_addr\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(12),
	combout => \banco_reg|registers[22][12]~feeder_combout\);

-- Location: FF_X47_Y6_N27
\banco_reg|registers[22][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][12]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][12]~q\);

-- Location: LCCOMB_X45_Y6_N28
\banco_reg|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux44~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][12]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][12]~q\,
	datad => \banco_reg|registers[22][12]~q\,
	combout => \banco_reg|Mux44~0_combout\);

-- Location: LCCOMB_X45_Y7_N10
\banco_reg|registers[16][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][12]~feeder_combout\ = \mewb|out_addr\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(12),
	combout => \banco_reg|registers[16][12]~feeder_combout\);

-- Location: FF_X45_Y7_N11
\banco_reg|registers[16][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][12]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][12]~q\);

-- Location: LCCOMB_X45_Y8_N20
\banco_reg|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux44~1_combout\ = (\banco_reg|Mux44~0_combout\) # ((\ifid|out_instr\(11) & (!\ifid|out_instr\(2) & \banco_reg|registers[16][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|Mux44~0_combout\,
	datad => \banco_reg|registers[16][12]~q\,
	combout => \banco_reg|Mux44~1_combout\);

-- Location: FF_X45_Y8_N21
\idex|out_read2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(12));

-- Location: LCCOMB_X46_Y8_N14
\ula_main|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~19_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(12),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~19_combout\);

-- Location: FF_X48_Y6_N11
\banco_reg|registers[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(12),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][12]~q\);

-- Location: LCCOMB_X47_Y6_N12
\banco_reg|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux12~2_combout\ = (\banco_reg|registers[4][12]~q\ & (!\ifid|out_instr\(9) & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[4][12]~q\,
	datab => \ifid|out_instr\(9),
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux12~2_combout\);

-- Location: FF_X45_Y6_N27
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][12]~q\);

-- Location: LCCOMB_X45_Y6_N26
\banco_reg|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux12~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][12]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][12]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][12]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux12~3_combout\);

-- Location: FF_X46_Y6_N31
\banco_reg|registers[20][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(12),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][12]~q\);

-- Location: LCCOMB_X46_Y6_N30
\banco_reg|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux12~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][12]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][12]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[20][12]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux12~0_combout\);

-- Location: FF_X46_Y6_N29
\banco_reg|registers[18][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(12),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][12]~q\);

-- Location: LCCOMB_X46_Y6_N28
\banco_reg|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux12~1_combout\ = (\banco_reg|Mux12~0_combout\ & (((\banco_reg|registers[22][12]~q\)) # (!\ifid|out_instr\(9)))) # (!\banco_reg|Mux12~0_combout\ & (\ifid|out_instr\(9) & (\banco_reg|registers[18][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux12~0_combout\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][12]~q\,
	datad => \banco_reg|registers[22][12]~q\,
	combout => \banco_reg|Mux12~1_combout\);

-- Location: LCCOMB_X47_Y6_N30
\banco_reg|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux12~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux12~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux12~2_combout\) # ((\banco_reg|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux12~2_combout\,
	datab => \banco_reg|Mux12~3_combout\,
	datac => \banco_reg|Mux12~1_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux12~4_combout\);

-- Location: FF_X47_Y6_N31
\idex|out_read1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux12~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(12));

-- Location: LCCOMB_X47_Y8_N24
\exme|out_result[12]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[12]~72_combout\ = ((\ula_main|Add0~19_combout\ $ (\idex|out_read1\(12) $ (!\exme|out_result[13]~71\)))) # (GND)
-- \exme|out_result[12]~73\ = CARRY((\ula_main|Add0~19_combout\ & ((\idex|out_read1\(12)) # (!\exme|out_result[13]~71\))) # (!\ula_main|Add0~19_combout\ & (\idex|out_read1\(12) & !\exme|out_result[13]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~19_combout\,
	datab => \idex|out_read1\(12),
	datad => VCC,
	cin => \exme|out_result[13]~71\,
	combout => \exme|out_result[12]~72_combout\,
	cout => \exme|out_result[12]~73\);

-- Location: LCCOMB_X46_Y8_N30
\exme|out_result[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[12]~feeder_combout\ = \exme|out_result[12]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[12]~72_combout\,
	combout => \exme|out_result[12]~feeder_combout\);

-- Location: LCCOMB_X46_Y8_N28
\alusrc_mux|X[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[12]~15_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|out_read2\(12),
	combout => \alusrc_mux|X[12]~15_combout\);

-- Location: LCCOMB_X46_Y8_N22
\ula_main|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux12~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(12)) # (\alusrc_mux|X[12]~15_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(12) & \alusrc_mux|X[12]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read1\(12),
	datad => \alusrc_mux|X[12]~15_combout\,
	combout => \ula_main|Mux12~0_combout\);

-- Location: FF_X46_Y8_N31
\exme|out_result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[12]~feeder_combout\,
	asdata => \ula_main|Mux12~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(12));

-- Location: FF_X45_Y8_N1
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

-- Location: LCCOMB_X45_Y6_N16
\banco_reg|registers[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][11]~feeder_combout\ = \mewb|out_addr\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(11),
	combout => \banco_reg|registers[6][11]~feeder_combout\);

-- Location: FF_X45_Y6_N17
\banco_reg|registers[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][11]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][11]~q\);

-- Location: FF_X45_Y8_N13
\banco_reg|registers[22][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(11),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][11]~q\);

-- Location: LCCOMB_X45_Y8_N12
\banco_reg|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux43~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][11]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][11]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[22][11]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux43~0_combout\);

-- Location: LCCOMB_X45_Y7_N20
\banco_reg|registers[16][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][11]~feeder_combout\ = \mewb|out_addr\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(11),
	combout => \banco_reg|registers[16][11]~feeder_combout\);

-- Location: FF_X45_Y7_N21
\banco_reg|registers[16][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][11]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][11]~q\);

-- Location: LCCOMB_X45_Y8_N14
\banco_reg|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux43~1_combout\ = (\banco_reg|Mux43~0_combout\) # ((\ifid|out_instr\(11) & (\banco_reg|registers[16][11]~q\ & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux43~0_combout\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[16][11]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux43~1_combout\);

-- Location: FF_X45_Y8_N15
\idex|out_read2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(11));

-- Location: LCCOMB_X46_Y8_N16
\ula_main|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~20_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(11),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~20_combout\);

-- Location: FF_X45_Y6_N15
\banco_reg|registers[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(11),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][11]~q\);

-- Location: LCCOMB_X45_Y6_N14
\banco_reg|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux11~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][11]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][11]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][11]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux11~3_combout\);

-- Location: FF_X48_Y6_N23
\banco_reg|registers[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(11),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][11]~q\);

-- Location: LCCOMB_X48_Y6_N22
\banco_reg|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux11~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][11]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][11]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux11~2_combout\);

-- Location: FF_X46_Y6_N23
\banco_reg|registers[20][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(11),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][11]~q\);

-- Location: LCCOMB_X46_Y6_N22
\banco_reg|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux11~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][11]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][11]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][11]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][11]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux11~0_combout\);

-- Location: FF_X46_Y6_N17
\banco_reg|registers[18][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(11),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][11]~q\);

-- Location: LCCOMB_X46_Y6_N16
\banco_reg|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux11~1_combout\ = (\banco_reg|Mux11~0_combout\ & ((\banco_reg|registers[22][11]~q\) # ((!\ifid|out_instr\(9))))) # (!\banco_reg|Mux11~0_combout\ & (((\banco_reg|registers[18][11]~q\ & \ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux11~0_combout\,
	datab => \banco_reg|registers[22][11]~q\,
	datac => \banco_reg|registers[18][11]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux11~1_combout\);

-- Location: LCCOMB_X47_Y6_N0
\banco_reg|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux11~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux11~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux11~3_combout\) # ((\banco_reg|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux11~3_combout\,
	datab => \banco_reg|Mux11~2_combout\,
	datac => \banco_reg|Mux11~1_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux11~4_combout\);

-- Location: FF_X47_Y6_N1
\idex|out_read1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux11~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(11));

-- Location: LCCOMB_X47_Y8_N26
\exme|out_result[11]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[11]~74_combout\ = (\ula_main|Add0~20_combout\ & ((\idex|out_read1\(11) & (\exme|out_result[12]~73\ & VCC)) # (!\idex|out_read1\(11) & (!\exme|out_result[12]~73\)))) # (!\ula_main|Add0~20_combout\ & ((\idex|out_read1\(11) & 
-- (!\exme|out_result[12]~73\)) # (!\idex|out_read1\(11) & ((\exme|out_result[12]~73\) # (GND)))))
-- \exme|out_result[11]~75\ = CARRY((\ula_main|Add0~20_combout\ & (!\idex|out_read1\(11) & !\exme|out_result[12]~73\)) # (!\ula_main|Add0~20_combout\ & ((!\exme|out_result[12]~73\) # (!\idex|out_read1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~20_combout\,
	datab => \idex|out_read1\(11),
	datad => VCC,
	cin => \exme|out_result[12]~73\,
	combout => \exme|out_result[11]~74_combout\,
	cout => \exme|out_result[11]~75\);

-- Location: LCCOMB_X49_Y8_N12
\exme|out_result[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[11]~feeder_combout\ = \exme|out_result[11]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[11]~74_combout\,
	combout => \exme|out_result[11]~feeder_combout\);

-- Location: LCCOMB_X45_Y8_N24
\alusrc_mux|X[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[11]~16_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(11),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[11]~16_combout\);

-- Location: LCCOMB_X48_Y8_N4
\ula_main|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux11~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(11)) # (\alusrc_mux|X[11]~16_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(11) & \alusrc_mux|X[11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|out_read1\(11),
	datad => \alusrc_mux|X[11]~16_combout\,
	combout => \ula_main|Mux11~0_combout\);

-- Location: FF_X49_Y8_N13
\exme|out_result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[11]~feeder_combout\,
	asdata => \ula_main|Mux11~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(11));

-- Location: FF_X45_Y8_N31
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

-- Location: LCCOMB_X45_Y7_N6
\banco_reg|registers[16][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][10]~feeder_combout\ = \mewb|out_addr\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(10),
	combout => \banco_reg|registers[16][10]~feeder_combout\);

-- Location: FF_X45_Y7_N7
\banco_reg|registers[16][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][10]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][10]~q\);

-- Location: LCCOMB_X45_Y6_N4
\banco_reg|registers[6][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][10]~feeder_combout\ = \mewb|out_addr\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(10),
	combout => \banco_reg|registers[6][10]~feeder_combout\);

-- Location: FF_X45_Y6_N5
\banco_reg|registers[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][10]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][10]~q\);

-- Location: FF_X45_Y8_N9
\banco_reg|registers[22][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(10),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][10]~q\);

-- Location: LCCOMB_X45_Y8_N8
\banco_reg|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux42~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][10]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][10]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[22][10]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux42~0_combout\);

-- Location: LCCOMB_X45_Y8_N6
\banco_reg|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux42~1_combout\ = (\banco_reg|Mux42~0_combout\) # ((\banco_reg|registers[16][10]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][10]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|Mux42~0_combout\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux42~1_combout\);

-- Location: FF_X45_Y8_N7
\idex|out_read2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux42~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(10));

-- Location: LCCOMB_X46_Y8_N2
\ula_main|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~21_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(10),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~21_combout\);

-- Location: FF_X46_Y6_N27
\banco_reg|registers[20][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(10),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][10]~q\);

-- Location: LCCOMB_X46_Y6_N26
\banco_reg|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux10~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][10]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][10]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][10]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][10]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux10~0_combout\);

-- Location: FF_X46_Y6_N21
\banco_reg|registers[18][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(10),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][10]~q\);

-- Location: LCCOMB_X46_Y6_N20
\banco_reg|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux10~1_combout\ = (\banco_reg|Mux10~0_combout\ & ((\banco_reg|registers[22][10]~q\) # ((!\ifid|out_instr\(9))))) # (!\banco_reg|Mux10~0_combout\ & (((\banco_reg|registers[18][10]~q\ & \ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux10~0_combout\,
	datab => \banco_reg|registers[22][10]~q\,
	datac => \banco_reg|registers[18][10]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux10~1_combout\);

-- Location: FF_X45_Y6_N19
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][10]~q\);

-- Location: LCCOMB_X45_Y6_N18
\banco_reg|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux10~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][10]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][10]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][10]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux10~3_combout\);

-- Location: FF_X48_Y6_N5
\banco_reg|registers[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(10),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][10]~q\);

-- Location: LCCOMB_X48_Y6_N4
\banco_reg|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux10~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][10]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][10]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux10~2_combout\);

-- Location: LCCOMB_X47_Y6_N14
\banco_reg|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux10~4_combout\ = (\ifid|out_instr\(0) & (\banco_reg|Mux10~1_combout\)) # (!\ifid|out_instr\(0) & (((\banco_reg|Mux10~3_combout\) # (\banco_reg|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux10~1_combout\,
	datab => \banco_reg|Mux10~3_combout\,
	datac => \banco_reg|Mux10~2_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux10~4_combout\);

-- Location: FF_X47_Y6_N15
\idex|out_read1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux10~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(10));

-- Location: LCCOMB_X47_Y8_N28
\exme|out_result[10]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[10]~76_combout\ = ((\ula_main|Add0~21_combout\ $ (\idex|out_read1\(10) $ (!\exme|out_result[11]~75\)))) # (GND)
-- \exme|out_result[10]~77\ = CARRY((\ula_main|Add0~21_combout\ & ((\idex|out_read1\(10)) # (!\exme|out_result[11]~75\))) # (!\ula_main|Add0~21_combout\ & (\idex|out_read1\(10) & !\exme|out_result[11]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~21_combout\,
	datab => \idex|out_read1\(10),
	datad => VCC,
	cin => \exme|out_result[11]~75\,
	combout => \exme|out_result[10]~76_combout\,
	cout => \exme|out_result[10]~77\);

-- Location: LCCOMB_X46_Y8_N12
\exme|out_result[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[10]~feeder_combout\ = \exme|out_result[10]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[10]~76_combout\,
	combout => \exme|out_result[10]~feeder_combout\);

-- Location: LCCOMB_X48_Y7_N30
\alusrc_mux|X[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[10]~17_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datac => \idex|out_read2\(10),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[10]~17_combout\);

-- Location: LCCOMB_X46_Y8_N4
\ula_main|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux10~0_combout\ = (\idex|ALUOp_out\(1) & ((\alusrc_mux|X[10]~17_combout\) # (\idex|out_read1\(10)))) # (!\idex|ALUOp_out\(1) & (\alusrc_mux|X[10]~17_combout\ & \idex|out_read1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \alusrc_mux|X[10]~17_combout\,
	datad => \idex|out_read1\(10),
	combout => \ula_main|Mux10~0_combout\);

-- Location: FF_X46_Y8_N13
\exme|out_result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[10]~feeder_combout\,
	asdata => \ula_main|Mux10~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(10));

-- Location: LCCOMB_X45_Y8_N26
\mewb|out_addr[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[10]~feeder_combout\ = \exme|out_result\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exme|out_result\(10),
	combout => \mewb|out_addr[10]~feeder_combout\);

-- Location: FF_X45_Y8_N27
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

-- Location: FF_X48_Y6_N7
\banco_reg|registers[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(9),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][9]~q\);

-- Location: LCCOMB_X48_Y6_N6
\banco_reg|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux9~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][9]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][9]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux9~2_combout\);

-- Location: LCCOMB_X47_Y6_N6
\banco_reg|registers[22][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][9]~feeder_combout\ = \mewb|out_addr\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(9),
	combout => \banco_reg|registers[22][9]~feeder_combout\);

-- Location: FF_X47_Y6_N7
\banco_reg|registers[22][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][9]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][9]~q\);

-- Location: FF_X46_Y6_N9
\banco_reg|registers[18][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(9),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][9]~q\);

-- Location: LCCOMB_X45_Y7_N28
\banco_reg|registers[16][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][9]~feeder_combout\ = \mewb|out_addr\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(9),
	combout => \banco_reg|registers[16][9]~feeder_combout\);

-- Location: FF_X45_Y7_N29
\banco_reg|registers[16][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][9]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][9]~q\);

-- Location: FF_X46_Y6_N11
\banco_reg|registers[20][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(9),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][9]~q\);

-- Location: LCCOMB_X46_Y6_N10
\banco_reg|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux9~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][9]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][9]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][9]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][9]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux9~0_combout\);

-- Location: LCCOMB_X46_Y6_N8
\banco_reg|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux9~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux9~0_combout\ & (\banco_reg|registers[22][9]~q\)) # (!\banco_reg|Mux9~0_combout\ & ((\banco_reg|registers[18][9]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][9]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][9]~q\,
	datad => \banco_reg|Mux9~0_combout\,
	combout => \banco_reg|Mux9~1_combout\);

-- Location: FF_X45_Y6_N25
\banco_reg|registers[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(9),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][9]~q\);

-- Location: FF_X45_Y6_N3
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
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][9]~q\);

-- Location: LCCOMB_X45_Y6_N2
\banco_reg|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux9~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][9]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][9]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[2][9]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux9~3_combout\);

-- Location: LCCOMB_X47_Y6_N16
\banco_reg|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux9~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux9~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux9~2_combout\) # ((\banco_reg|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux9~2_combout\,
	datab => \banco_reg|Mux9~1_combout\,
	datac => \banco_reg|Mux9~3_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux9~4_combout\);

-- Location: FF_X47_Y6_N17
\idex|out_read1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux9~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(9));

-- Location: LCCOMB_X45_Y6_N24
\banco_reg|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux41~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][9]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][9]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][9]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux41~0_combout\);

-- Location: LCCOMB_X45_Y8_N2
\banco_reg|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux41~1_combout\ = (\banco_reg|Mux41~0_combout\) # ((\banco_reg|registers[16][9]~q\ & (!\ifid|out_instr\(2) & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][9]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|Mux41~0_combout\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux41~1_combout\);

-- Location: FF_X45_Y8_N3
\idex|out_read2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(9));

-- Location: LCCOMB_X46_Y8_N18
\ula_main|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~22_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|out_read2\(9),
	combout => \ula_main|Add0~22_combout\);

-- Location: LCCOMB_X47_Y8_N30
\exme|out_result[9]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[9]~78_combout\ = (\idex|out_read1\(9) & ((\ula_main|Add0~22_combout\ & (\exme|out_result[10]~77\ & VCC)) # (!\ula_main|Add0~22_combout\ & (!\exme|out_result[10]~77\)))) # (!\idex|out_read1\(9) & ((\ula_main|Add0~22_combout\ & 
-- (!\exme|out_result[10]~77\)) # (!\ula_main|Add0~22_combout\ & ((\exme|out_result[10]~77\) # (GND)))))
-- \exme|out_result[9]~79\ = CARRY((\idex|out_read1\(9) & (!\ula_main|Add0~22_combout\ & !\exme|out_result[10]~77\)) # (!\idex|out_read1\(9) & ((!\exme|out_result[10]~77\) # (!\ula_main|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(9),
	datab => \ula_main|Add0~22_combout\,
	datad => VCC,
	cin => \exme|out_result[10]~77\,
	combout => \exme|out_result[9]~78_combout\,
	cout => \exme|out_result[9]~79\);

-- Location: LCCOMB_X46_Y8_N10
\exme|out_result[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[9]~feeder_combout\ = \exme|out_result[9]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result[9]~78_combout\,
	combout => \exme|out_result[9]~feeder_combout\);

-- Location: LCCOMB_X45_Y8_N10
\alusrc_mux|X[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[9]~18_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|out_read2\(9),
	combout => \alusrc_mux|X[9]~18_combout\);

-- Location: LCCOMB_X45_Y8_N4
\ula_main|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux9~0_combout\ = (\idex|out_read1\(9) & ((\idex|ALUOp_out\(1)) # (\alusrc_mux|X[9]~18_combout\))) # (!\idex|out_read1\(9) & (\idex|ALUOp_out\(1) & \alusrc_mux|X[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(9),
	datab => \idex|ALUOp_out\(1),
	datad => \alusrc_mux|X[9]~18_combout\,
	combout => \ula_main|Mux9~0_combout\);

-- Location: FF_X46_Y8_N11
\exme|out_result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[9]~feeder_combout\,
	asdata => \ula_main|Mux9~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(9));

-- Location: FF_X45_Y8_N25
\mewb|out_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(9));

-- Location: LCCOMB_X45_Y7_N30
\banco_reg|registers[16][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][8]~feeder_combout\ = \mewb|out_addr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(8),
	combout => \banco_reg|registers[16][8]~feeder_combout\);

-- Location: FF_X45_Y7_N31
\banco_reg|registers[16][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][8]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][8]~q\);

-- Location: LCCOMB_X47_Y6_N28
\banco_reg|registers[22][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][8]~feeder_combout\ = \mewb|out_addr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(8),
	combout => \banco_reg|registers[22][8]~feeder_combout\);

-- Location: FF_X47_Y6_N29
\banco_reg|registers[22][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][8]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][8]~q\);

-- Location: FF_X45_Y6_N1
\banco_reg|registers[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(8),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][8]~q\);

-- Location: LCCOMB_X45_Y6_N0
\banco_reg|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux40~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][8]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][8]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][8]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux40~0_combout\);

-- Location: LCCOMB_X45_Y7_N14
\banco_reg|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux40~1_combout\ = (\banco_reg|Mux40~0_combout\) # ((!\ifid|out_instr\(2) & (\ifid|out_instr\(11) & \banco_reg|registers[16][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[16][8]~q\,
	datad => \banco_reg|Mux40~0_combout\,
	combout => \banco_reg|Mux40~1_combout\);

-- Location: FF_X45_Y7_N15
\idex|out_read2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(8));

-- Location: LCCOMB_X46_Y7_N16
\ula_main|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~23_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(8),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~23_combout\);

-- Location: FF_X45_Y6_N31
\banco_reg|registers[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(8),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][8]~q\);

-- Location: LCCOMB_X45_Y6_N30
\banco_reg|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux8~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][8]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[6][8]~q\,
	datac => \banco_reg|registers[2][8]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux8~3_combout\);

-- Location: FF_X46_Y6_N7
\banco_reg|registers[20][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(8),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][8]~q\);

-- Location: LCCOMB_X46_Y6_N6
\banco_reg|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux8~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][8]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][8]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][8]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][8]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux8~0_combout\);

-- Location: FF_X46_Y6_N25
\banco_reg|registers[18][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(8),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][8]~q\);

-- Location: LCCOMB_X46_Y6_N24
\banco_reg|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux8~1_combout\ = (\banco_reg|Mux8~0_combout\ & ((\banco_reg|registers[22][8]~q\) # ((!\ifid|out_instr\(9))))) # (!\banco_reg|Mux8~0_combout\ & (((\banco_reg|registers[18][8]~q\ & \ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux8~0_combout\,
	datab => \banco_reg|registers[22][8]~q\,
	datac => \banco_reg|registers[18][8]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux8~1_combout\);

-- Location: FF_X48_Y6_N17
\banco_reg|registers[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(8),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][8]~q\);

-- Location: LCCOMB_X48_Y6_N16
\banco_reg|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux8~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][8]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][8]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux8~2_combout\);

-- Location: LCCOMB_X47_Y6_N10
\banco_reg|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux8~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux8~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux8~3_combout\) # ((\banco_reg|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux8~3_combout\,
	datab => \banco_reg|Mux8~1_combout\,
	datac => \banco_reg|Mux8~2_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux8~4_combout\);

-- Location: FF_X47_Y6_N11
\idex|out_read1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux8~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(8));

-- Location: LCCOMB_X47_Y7_N0
\exme|out_result[8]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[8]~80_combout\ = ((\ula_main|Add0~23_combout\ $ (\idex|out_read1\(8) $ (!\exme|out_result[9]~79\)))) # (GND)
-- \exme|out_result[8]~81\ = CARRY((\ula_main|Add0~23_combout\ & ((\idex|out_read1\(8)) # (!\exme|out_result[9]~79\))) # (!\ula_main|Add0~23_combout\ & (\idex|out_read1\(8) & !\exme|out_result[9]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~23_combout\,
	datab => \idex|out_read1\(8),
	datad => VCC,
	cin => \exme|out_result[9]~79\,
	combout => \exme|out_result[8]~80_combout\,
	cout => \exme|out_result[8]~81\);

-- Location: LCCOMB_X46_Y7_N30
\alusrc_mux|X[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[8]~19_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(8),
	datac => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[8]~19_combout\);

-- Location: LCCOMB_X46_Y7_N4
\ula_main|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux8~0_combout\ = (\idex|ALUOp_out\(1) & ((\alusrc_mux|X[8]~19_combout\) # (\idex|out_read1\(8)))) # (!\idex|ALUOp_out\(1) & (\alusrc_mux|X[8]~19_combout\ & \idex|out_read1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \alusrc_mux|X[8]~19_combout\,
	datad => \idex|out_read1\(8),
	combout => \ula_main|Mux8~0_combout\);

-- Location: FF_X47_Y7_N1
\exme|out_result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[8]~80_combout\,
	asdata => \ula_main|Mux8~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(8));

-- Location: LCCOMB_X47_Y7_N30
\mewb|out_addr[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[8]~feeder_combout\ = \exme|out_result\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(8),
	combout => \mewb|out_addr[8]~feeder_combout\);

-- Location: FF_X47_Y7_N31
\mewb|out_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(8));

-- Location: LCCOMB_X46_Y5_N16
\banco_reg|registers[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][7]~feeder_combout\ = \mewb|out_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(7),
	combout => \banco_reg|registers[6][7]~feeder_combout\);

-- Location: FF_X46_Y5_N17
\banco_reg|registers[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][7]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][7]~q\);

-- Location: FF_X49_Y5_N15
\banco_reg|registers[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(7),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][7]~q\);

-- Location: LCCOMB_X49_Y5_N14
\banco_reg|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux7~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][7]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[6][7]~q\,
	datac => \banco_reg|registers[2][7]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux7~3_combout\);

-- Location: LCCOMB_X50_Y5_N16
\banco_reg|registers[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][7]~feeder_combout\ = \mewb|out_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(7),
	combout => \banco_reg|registers[4][7]~feeder_combout\);

-- Location: FF_X50_Y5_N17
\banco_reg|registers[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][7]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][7]~q\);

-- Location: LCCOMB_X50_Y5_N14
\banco_reg|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux7~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][7]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[4][7]~q\,
	datac => \ifid|out_instr\(9),
	combout => \banco_reg|Mux7~2_combout\);

-- Location: LCCOMB_X48_Y5_N20
\banco_reg|registers[18][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[18][7]~feeder_combout\ = \mewb|out_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(7),
	combout => \banco_reg|registers[18][7]~feeder_combout\);

-- Location: FF_X48_Y5_N21
\banco_reg|registers[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[18][7]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][7]~q\);

-- Location: FF_X49_Y5_N13
\banco_reg|registers[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(7),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][7]~q\);

-- Location: LCCOMB_X47_Y5_N16
\banco_reg|registers[16][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][7]~feeder_combout\ = \mewb|out_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(7),
	combout => \banco_reg|registers[16][7]~feeder_combout\);

-- Location: FF_X47_Y5_N17
\banco_reg|registers[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][7]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][7]~q\);

-- Location: FF_X48_Y5_N23
\banco_reg|registers[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(7),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][7]~q\);

-- Location: LCCOMB_X48_Y5_N22
\banco_reg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux7~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][7]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][7]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][7]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][7]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux7~0_combout\);

-- Location: LCCOMB_X49_Y5_N12
\banco_reg|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux7~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux7~0_combout\ & ((\banco_reg|registers[22][7]~q\))) # (!\banco_reg|Mux7~0_combout\ & (\banco_reg|registers[18][7]~q\)))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[18][7]~q\,
	datac => \banco_reg|registers[22][7]~q\,
	datad => \banco_reg|Mux7~0_combout\,
	combout => \banco_reg|Mux7~1_combout\);

-- Location: LCCOMB_X50_Y5_N24
\banco_reg|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux7~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux7~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux7~3_combout\) # ((\banco_reg|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux7~3_combout\,
	datab => \banco_reg|Mux7~2_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux7~1_combout\,
	combout => \banco_reg|Mux7~4_combout\);

-- Location: FF_X50_Y5_N25
\idex|out_read1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux7~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(7));

-- Location: LCCOMB_X47_Y5_N6
\banco_reg|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux39~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][7]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][7]~q\,
	datab => \banco_reg|registers[22][7]~q\,
	datac => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux39~0_combout\);

-- Location: LCCOMB_X47_Y5_N2
\banco_reg|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux39~1_combout\ = (\banco_reg|Mux39~0_combout\) # ((\banco_reg|registers[16][7]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][7]~q\,
	datab => \ifid|out_instr\(11),
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|Mux39~0_combout\,
	combout => \banco_reg|Mux39~1_combout\);

-- Location: FF_X47_Y5_N3
\idex|out_read2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(7));

-- Location: LCCOMB_X47_Y7_N20
\ula_main|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~24_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(7),
	datac => \idex|ALUSrc_out~q\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Add0~24_combout\);

-- Location: LCCOMB_X47_Y7_N2
\exme|out_result[7]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[7]~82_combout\ = (\idex|out_read1\(7) & ((\ula_main|Add0~24_combout\ & (\exme|out_result[8]~81\ & VCC)) # (!\ula_main|Add0~24_combout\ & (!\exme|out_result[8]~81\)))) # (!\idex|out_read1\(7) & ((\ula_main|Add0~24_combout\ & 
-- (!\exme|out_result[8]~81\)) # (!\ula_main|Add0~24_combout\ & ((\exme|out_result[8]~81\) # (GND)))))
-- \exme|out_result[7]~83\ = CARRY((\idex|out_read1\(7) & (!\ula_main|Add0~24_combout\ & !\exme|out_result[8]~81\)) # (!\idex|out_read1\(7) & ((!\exme|out_result[8]~81\) # (!\ula_main|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(7),
	datab => \ula_main|Add0~24_combout\,
	datad => VCC,
	cin => \exme|out_result[8]~81\,
	combout => \exme|out_result[7]~82_combout\,
	cout => \exme|out_result[7]~83\);

-- Location: LCCOMB_X47_Y7_N18
\alusrc_mux|X[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[7]~20_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUSrc_out~q\,
	datad => \idex|out_read2\(7),
	combout => \alusrc_mux|X[7]~20_combout\);

-- Location: LCCOMB_X47_Y7_N28
\ula_main|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux7~0_combout\ = (\idex|ALUOp_out\(1) & ((\idex|out_read1\(7)) # (\alusrc_mux|X[7]~20_combout\))) # (!\idex|ALUOp_out\(1) & (\idex|out_read1\(7) & \alusrc_mux|X[7]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read1\(7),
	datad => \alusrc_mux|X[7]~20_combout\,
	combout => \ula_main|Mux7~0_combout\);

-- Location: FF_X47_Y7_N3
\exme|out_result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[7]~82_combout\,
	asdata => \ula_main|Mux7~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(7));

-- Location: LCCOMB_X47_Y5_N22
\mewb|out_addr[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[7]~feeder_combout\ = \exme|out_result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exme|out_result\(7),
	combout => \mewb|out_addr[7]~feeder_combout\);

-- Location: FF_X47_Y5_N23
\mewb|out_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(7));

-- Location: LCCOMB_X45_Y7_N18
\banco_reg|registers[16][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][6]~feeder_combout\ = \mewb|out_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(6),
	combout => \banco_reg|registers[16][6]~feeder_combout\);

-- Location: FF_X45_Y7_N19
\banco_reg|registers[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][6]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][6]~q\);

-- Location: LCCOMB_X46_Y5_N28
\banco_reg|registers[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][6]~feeder_combout\ = \mewb|out_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(6),
	combout => \banco_reg|registers[6][6]~feeder_combout\);

-- Location: FF_X46_Y5_N29
\banco_reg|registers[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][6]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][6]~q\);

-- Location: LCCOMB_X46_Y5_N18
\banco_reg|registers[22][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][6]~feeder_combout\ = \mewb|out_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(6),
	combout => \banco_reg|registers[22][6]~feeder_combout\);

-- Location: FF_X46_Y5_N19
\banco_reg|registers[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][6]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][6]~q\);

-- Location: LCCOMB_X45_Y7_N8
\banco_reg|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux38~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][6]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][6]~q\,
	datab => \ifid|out_instr\(11),
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|registers[22][6]~q\,
	combout => \banco_reg|Mux38~0_combout\);

-- Location: LCCOMB_X45_Y7_N0
\banco_reg|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux38~1_combout\ = (\banco_reg|Mux38~0_combout\) # ((\banco_reg|registers[16][6]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][6]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|Mux38~0_combout\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux38~1_combout\);

-- Location: FF_X45_Y7_N1
\idex|out_read2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(6));

-- Location: LCCOMB_X46_Y7_N2
\ula_main|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~25_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read2\(6),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~25_combout\);

-- Location: LCCOMB_X49_Y6_N26
\banco_reg|registers[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][6]~feeder_combout\ = \mewb|out_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(6),
	combout => \banco_reg|registers[2][6]~feeder_combout\);

-- Location: FF_X49_Y6_N27
\banco_reg|registers[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][6]~feeder_combout\,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][6]~q\);

-- Location: LCCOMB_X49_Y6_N4
\banco_reg|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux6~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[6][6]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[2][6]~q\,
	datab => \ifid|out_instr\(2),
	datac => \ifid|out_instr\(9),
	datad => \banco_reg|registers[6][6]~q\,
	combout => \banco_reg|Mux6~3_combout\);

-- Location: FF_X48_Y5_N1
\banco_reg|registers[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(6),
	sload => VCC,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][6]~q\);

-- Location: FF_X48_Y5_N11
\banco_reg|registers[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(6),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][6]~q\);

-- Location: LCCOMB_X48_Y5_N10
\banco_reg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux6~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][6]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][6]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][6]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][6]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y5_N0
\banco_reg|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux6~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux6~0_combout\ & (\banco_reg|registers[22][6]~q\)) # (!\banco_reg|Mux6~0_combout\ & ((\banco_reg|registers[18][6]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][6]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][6]~q\,
	datad => \banco_reg|Mux6~0_combout\,
	combout => \banco_reg|Mux6~1_combout\);

-- Location: FF_X48_Y6_N3
\banco_reg|registers[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(6),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][6]~q\);

-- Location: LCCOMB_X48_Y6_N2
\banco_reg|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux6~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][6]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][6]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux6~2_combout\);

-- Location: LCCOMB_X49_Y6_N0
\banco_reg|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux6~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux6~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux6~3_combout\) # ((\banco_reg|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux6~3_combout\,
	datab => \banco_reg|Mux6~1_combout\,
	datac => \banco_reg|Mux6~2_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux6~4_combout\);

-- Location: FF_X49_Y6_N1
\idex|out_read1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux6~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(6));

-- Location: LCCOMB_X47_Y7_N4
\exme|out_result[6]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[6]~84_combout\ = ((\ula_main|Add0~25_combout\ $ (\idex|out_read1\(6) $ (!\exme|out_result[7]~83\)))) # (GND)
-- \exme|out_result[6]~85\ = CARRY((\ula_main|Add0~25_combout\ & ((\idex|out_read1\(6)) # (!\exme|out_result[7]~83\))) # (!\ula_main|Add0~25_combout\ & (\idex|out_read1\(6) & !\exme|out_result[7]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~25_combout\,
	datab => \idex|out_read1\(6),
	datad => VCC,
	cin => \exme|out_result[7]~83\,
	combout => \exme|out_result[6]~84_combout\,
	cout => \exme|out_result[6]~85\);

-- Location: LCCOMB_X46_Y7_N28
\alusrc_mux|X[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[6]~21_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(6),
	datac => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[6]~21_combout\);

-- Location: LCCOMB_X46_Y7_N26
\ula_main|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux6~0_combout\ = (\idex|out_read1\(6) & ((\idex|ALUOp_out\(1)) # (\alusrc_mux|X[6]~21_combout\))) # (!\idex|out_read1\(6) & (\idex|ALUOp_out\(1) & \alusrc_mux|X[6]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(6),
	datab => \idex|ALUOp_out\(1),
	datad => \alusrc_mux|X[6]~21_combout\,
	combout => \ula_main|Mux6~0_combout\);

-- Location: FF_X47_Y7_N5
\exme|out_result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[6]~84_combout\,
	asdata => \ula_main|Mux6~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(6));

-- Location: FF_X48_Y7_N9
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

-- Location: LCCOMB_X48_Y6_N8
\banco_reg|registers[16][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][5]~feeder_combout\ = \mewb|out_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(5),
	combout => \banco_reg|registers[16][5]~feeder_combout\);

-- Location: FF_X48_Y6_N9
\banco_reg|registers[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][5]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][5]~q\);

-- Location: FF_X49_Y5_N9
\banco_reg|registers[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(5),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][5]~q\);

-- Location: FF_X49_Y7_N17
\banco_reg|registers[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(5),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][5]~q\);

-- Location: LCCOMB_X49_Y7_N16
\banco_reg|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux37~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][5]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][5]~q\,
	datab => \ifid|out_instr\(11),
	datac => \banco_reg|registers[6][5]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux37~0_combout\);

-- Location: LCCOMB_X49_Y7_N18
\banco_reg|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux37~1_combout\ = (\banco_reg|Mux37~0_combout\) # ((\banco_reg|registers[16][5]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][5]~q\,
	datab => \banco_reg|Mux37~0_combout\,
	datac => \ifid|out_instr\(11),
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux37~1_combout\);

-- Location: FF_X49_Y7_N19
\idex|out_read2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(5));

-- Location: LCCOMB_X48_Y7_N2
\ula_main|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~26_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUSrc_out~q\,
	datac => \idex|ALUOp_out\(1),
	datad => \idex|out_read2\(5),
	combout => \ula_main|Add0~26_combout\);

-- Location: FF_X49_Y5_N17
\banco_reg|registers[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(5),
	sload => VCC,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][5]~q\);

-- Location: LCCOMB_X49_Y5_N16
\banco_reg|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux5~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[6][5]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[2][5]~q\,
	datad => \banco_reg|registers[6][5]~q\,
	combout => \banco_reg|Mux5~3_combout\);

-- Location: LCCOMB_X50_Y5_N12
\banco_reg|registers[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][5]~feeder_combout\ = \mewb|out_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(5),
	combout => \banco_reg|registers[4][5]~feeder_combout\);

-- Location: FF_X50_Y5_N13
\banco_reg|registers[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][5]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][5]~q\);

-- Location: LCCOMB_X50_Y5_N22
\banco_reg|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux5~2_combout\ = (\banco_reg|registers[4][5]~q\ & (\ifid|out_instr\(2) & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[4][5]~q\,
	datac => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux5~2_combout\);

-- Location: LCCOMB_X48_Y5_N24
\banco_reg|registers[18][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[18][5]~feeder_combout\ = \mewb|out_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(5),
	combout => \banco_reg|registers[18][5]~feeder_combout\);

-- Location: FF_X48_Y5_N25
\banco_reg|registers[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[18][5]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][5]~q\);

-- Location: LCCOMB_X48_Y5_N14
\banco_reg|registers[20][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[20][5]~feeder_combout\ = \mewb|out_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(5),
	combout => \banco_reg|registers[20][5]~feeder_combout\);

-- Location: FF_X48_Y5_N15
\banco_reg|registers[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[20][5]~feeder_combout\,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][5]~q\);

-- Location: LCCOMB_X49_Y5_N6
\banco_reg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux5~0_combout\ = (\ifid|out_instr\(2) & ((\banco_reg|registers[20][5]~q\) # ((\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (((\banco_reg|registers[16][5]~q\ & !\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[20][5]~q\,
	datab => \banco_reg|registers[16][5]~q\,
	datac => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y5_N8
\banco_reg|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux5~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux5~0_combout\ & ((\banco_reg|registers[22][5]~q\))) # (!\banco_reg|Mux5~0_combout\ & (\banco_reg|registers[18][5]~q\)))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[18][5]~q\,
	datac => \banco_reg|registers[22][5]~q\,
	datad => \banco_reg|Mux5~0_combout\,
	combout => \banco_reg|Mux5~1_combout\);

-- Location: LCCOMB_X50_Y5_N2
\banco_reg|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux5~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux5~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux5~3_combout\) # ((\banco_reg|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux5~3_combout\,
	datab => \banco_reg|Mux5~2_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux5~1_combout\,
	combout => \banco_reg|Mux5~4_combout\);

-- Location: FF_X50_Y5_N3
\idex|out_read1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux5~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(5));

-- Location: LCCOMB_X47_Y7_N6
\exme|out_result[5]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[5]~86_combout\ = (\ula_main|Add0~26_combout\ & ((\idex|out_read1\(5) & (\exme|out_result[6]~85\ & VCC)) # (!\idex|out_read1\(5) & (!\exme|out_result[6]~85\)))) # (!\ula_main|Add0~26_combout\ & ((\idex|out_read1\(5) & 
-- (!\exme|out_result[6]~85\)) # (!\idex|out_read1\(5) & ((\exme|out_result[6]~85\) # (GND)))))
-- \exme|out_result[5]~87\ = CARRY((\ula_main|Add0~26_combout\ & (!\idex|out_read1\(5) & !\exme|out_result[6]~85\)) # (!\ula_main|Add0~26_combout\ & ((!\exme|out_result[6]~85\) # (!\idex|out_read1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~26_combout\,
	datab => \idex|out_read1\(5),
	datad => VCC,
	cin => \exme|out_result[6]~85\,
	combout => \exme|out_result[5]~86_combout\,
	cout => \exme|out_result[5]~87\);

-- Location: LCCOMB_X48_Y7_N14
\alusrc_mux|X[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[5]~22_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(5),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[5]~22_combout\);

-- Location: LCCOMB_X47_Y7_N22
\ula_main|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux5~0_combout\ = (\idex|out_read1\(5) & ((\alusrc_mux|X[5]~22_combout\) # (\idex|ALUOp_out\(1)))) # (!\idex|out_read1\(5) & (\alusrc_mux|X[5]~22_combout\ & \idex|ALUOp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|out_read1\(5),
	datac => \alusrc_mux|X[5]~22_combout\,
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux5~0_combout\);

-- Location: FF_X47_Y7_N7
\exme|out_result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[5]~86_combout\,
	asdata => \ula_main|Mux5~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(5));

-- Location: FF_X48_Y7_N15
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

-- Location: LCCOMB_X48_Y6_N30
\banco_reg|registers[16][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][4]~feeder_combout\ = \mewb|out_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(4),
	combout => \banco_reg|registers[16][4]~feeder_combout\);

-- Location: FF_X48_Y6_N31
\banco_reg|registers[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][4]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][4]~q\);

-- Location: FF_X49_Y5_N31
\banco_reg|registers[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(4),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][4]~q\);

-- Location: FF_X48_Y7_N25
\banco_reg|registers[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(4),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][4]~q\);

-- Location: LCCOMB_X48_Y7_N24
\banco_reg|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux36~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][4]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[22][4]~q\,
	datac => \banco_reg|registers[6][4]~q\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux36~0_combout\);

-- Location: LCCOMB_X48_Y7_N28
\banco_reg|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux36~1_combout\ = (\banco_reg|Mux36~0_combout\) # ((!\ifid|out_instr\(2) & (\banco_reg|registers[16][4]~q\ & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[16][4]~q\,
	datac => \ifid|out_instr\(11),
	datad => \banco_reg|Mux36~0_combout\,
	combout => \banco_reg|Mux36~1_combout\);

-- Location: FF_X48_Y7_N29
\idex|out_read2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(4));

-- Location: LCCOMB_X48_Y7_N6
\ula_main|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~27_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(4),
	datac => \idex|ALUOp_out\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~27_combout\);

-- Location: LCCOMB_X49_Y6_N16
\banco_reg|registers[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][4]~feeder_combout\ = \mewb|out_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(4),
	combout => \banco_reg|registers[2][4]~feeder_combout\);

-- Location: FF_X49_Y6_N17
\banco_reg|registers[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][4]~feeder_combout\,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][4]~q\);

-- Location: LCCOMB_X49_Y6_N6
\banco_reg|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux4~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][4]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][4]~q\,
	datab => \ifid|out_instr\(2),
	datac => \ifid|out_instr\(9),
	datad => \banco_reg|registers[2][4]~q\,
	combout => \banco_reg|Mux4~3_combout\);

-- Location: LCCOMB_X48_Y6_N0
\banco_reg|registers[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][4]~feeder_combout\ = \mewb|out_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(4),
	combout => \banco_reg|registers[4][4]~feeder_combout\);

-- Location: FF_X48_Y6_N1
\banco_reg|registers[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][4]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][4]~q\);

-- Location: LCCOMB_X49_Y6_N22
\banco_reg|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux4~2_combout\ = (\banco_reg|registers[4][4]~q\ & (!\ifid|out_instr\(9) & \ifid|out_instr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[4][4]~q\,
	datac => \ifid|out_instr\(9),
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux4~2_combout\);

-- Location: LCCOMB_X48_Y5_N28
\banco_reg|registers[18][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[18][4]~feeder_combout\ = \mewb|out_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(4),
	combout => \banco_reg|registers[18][4]~feeder_combout\);

-- Location: FF_X48_Y5_N29
\banco_reg|registers[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[18][4]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][4]~q\);

-- Location: LCCOMB_X48_Y5_N30
\banco_reg|registers[20][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[20][4]~feeder_combout\ = \mewb|out_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(4),
	combout => \banco_reg|registers[20][4]~feeder_combout\);

-- Location: FF_X48_Y5_N31
\banco_reg|registers[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[20][4]~feeder_combout\,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][4]~q\);

-- Location: LCCOMB_X49_Y5_N20
\banco_reg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux4~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][4]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][4]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][4]~q\,
	datab => \banco_reg|registers[20][4]~q\,
	datac => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y5_N30
\banco_reg|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux4~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux4~0_combout\ & ((\banco_reg|registers[22][4]~q\))) # (!\banco_reg|Mux4~0_combout\ & (\banco_reg|registers[18][4]~q\)))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[18][4]~q\,
	datac => \banco_reg|registers[22][4]~q\,
	datad => \banco_reg|Mux4~0_combout\,
	combout => \banco_reg|Mux4~1_combout\);

-- Location: LCCOMB_X50_Y5_N28
\banco_reg|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux4~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux4~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux4~3_combout\) # ((\banco_reg|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux4~3_combout\,
	datab => \banco_reg|Mux4~2_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux4~1_combout\,
	combout => \banco_reg|Mux4~4_combout\);

-- Location: FF_X50_Y5_N29
\idex|out_read1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux4~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(4));

-- Location: LCCOMB_X47_Y7_N8
\exme|out_result[4]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[4]~88_combout\ = ((\ula_main|Add0~27_combout\ $ (\idex|out_read1\(4) $ (!\exme|out_result[5]~87\)))) # (GND)
-- \exme|out_result[4]~89\ = CARRY((\ula_main|Add0~27_combout\ & ((\idex|out_read1\(4)) # (!\exme|out_result[5]~87\))) # (!\ula_main|Add0~27_combout\ & (\idex|out_read1\(4) & !\exme|out_result[5]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~27_combout\,
	datab => \idex|out_read1\(4),
	datad => VCC,
	cin => \exme|out_result[5]~87\,
	combout => \exme|out_result[4]~88_combout\,
	cout => \exme|out_result[4]~89\);

-- Location: LCCOMB_X48_Y7_N22
\alusrc_mux|X[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[4]~23_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(4),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[4]~23_combout\);

-- Location: LCCOMB_X48_Y7_N8
\ula_main|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux4~0_combout\ = (\alusrc_mux|X[4]~23_combout\ & ((\idex|ALUOp_out\(1)) # (\idex|out_read1\(4)))) # (!\alusrc_mux|X[4]~23_combout\ & (\idex|ALUOp_out\(1) & \idex|out_read1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|X[4]~23_combout\,
	datab => \idex|ALUOp_out\(1),
	datad => \idex|out_read1\(4),
	combout => \ula_main|Mux4~0_combout\);

-- Location: FF_X47_Y7_N9
\exme|out_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[4]~88_combout\,
	asdata => \ula_main|Mux4~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(4));

-- Location: FF_X48_Y7_N23
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

-- Location: LCCOMB_X50_Y5_N0
\banco_reg|registers[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][3]~feeder_combout\ = \mewb|out_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(3),
	combout => \banco_reg|registers[4][3]~feeder_combout\);

-- Location: FF_X50_Y5_N1
\banco_reg|registers[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][3]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][3]~q\);

-- Location: LCCOMB_X50_Y5_N30
\banco_reg|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux3~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][3]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[4][3]~q\,
	datac => \ifid|out_instr\(9),
	combout => \banco_reg|Mux3~2_combout\);

-- Location: FF_X46_Y5_N15
\banco_reg|registers[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(3),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][3]~q\);

-- Location: LCCOMB_X49_Y5_N4
\banco_reg|registers[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][3]~feeder_combout\ = \mewb|out_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(3),
	combout => \banco_reg|registers[2][3]~feeder_combout\);

-- Location: FF_X49_Y5_N5
\banco_reg|registers[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][3]~feeder_combout\,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][3]~q\);

-- Location: LCCOMB_X50_Y5_N4
\banco_reg|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux3~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][3]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][3]~q\,
	datab => \banco_reg|registers[2][3]~q\,
	datac => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux3~3_combout\);

-- Location: LCCOMB_X48_Y5_N16
\banco_reg|registers[18][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[18][3]~feeder_combout\ = \mewb|out_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(3),
	combout => \banco_reg|registers[18][3]~feeder_combout\);

-- Location: FF_X48_Y5_N17
\banco_reg|registers[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[18][3]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][3]~q\);

-- Location: FF_X49_Y5_N11
\banco_reg|registers[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(3),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][3]~q\);

-- Location: LCCOMB_X47_Y5_N14
\banco_reg|registers[16][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][3]~feeder_combout\ = \mewb|out_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(3),
	combout => \banco_reg|registers[16][3]~feeder_combout\);

-- Location: FF_X47_Y5_N15
\banco_reg|registers[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][3]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][3]~q\);

-- Location: FF_X48_Y5_N3
\banco_reg|registers[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(3),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][3]~q\);

-- Location: LCCOMB_X48_Y5_N2
\banco_reg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux3~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][3]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][3]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][3]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][3]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y5_N10
\banco_reg|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux3~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux3~0_combout\ & ((\banco_reg|registers[22][3]~q\))) # (!\banco_reg|Mux3~0_combout\ & (\banco_reg|registers[18][3]~q\)))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[18][3]~q\,
	datac => \banco_reg|registers[22][3]~q\,
	datad => \banco_reg|Mux3~0_combout\,
	combout => \banco_reg|Mux3~1_combout\);

-- Location: LCCOMB_X50_Y5_N18
\banco_reg|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux3~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux3~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux3~2_combout\) # ((\banco_reg|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux3~2_combout\,
	datab => \banco_reg|Mux3~3_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux3~1_combout\,
	combout => \banco_reg|Mux3~4_combout\);

-- Location: FF_X50_Y5_N19
\idex|out_read1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux3~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(3));

-- Location: LCCOMB_X46_Y5_N14
\banco_reg|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux35~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][3]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|registers[22][3]~q\,
	datac => \banco_reg|registers[6][3]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux35~0_combout\);

-- Location: LCCOMB_X47_Y5_N0
\banco_reg|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux35~1_combout\ = (\banco_reg|Mux35~0_combout\) # ((!\ifid|out_instr\(2) & (\banco_reg|registers[16][3]~q\ & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux35~0_combout\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[16][3]~q\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux35~1_combout\);

-- Location: FF_X47_Y5_N1
\idex|out_read2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(3));

-- Location: LCCOMB_X46_Y7_N20
\ula_main|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~28_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_imed\(22),
	datad => \idex|out_read2\(3),
	combout => \ula_main|Add0~28_combout\);

-- Location: LCCOMB_X47_Y7_N10
\exme|out_result[3]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[3]~90_combout\ = (\idex|out_read1\(3) & ((\ula_main|Add0~28_combout\ & (\exme|out_result[4]~89\ & VCC)) # (!\ula_main|Add0~28_combout\ & (!\exme|out_result[4]~89\)))) # (!\idex|out_read1\(3) & ((\ula_main|Add0~28_combout\ & 
-- (!\exme|out_result[4]~89\)) # (!\ula_main|Add0~28_combout\ & ((\exme|out_result[4]~89\) # (GND)))))
-- \exme|out_result[3]~91\ = CARRY((\idex|out_read1\(3) & (!\ula_main|Add0~28_combout\ & !\exme|out_result[4]~89\)) # (!\idex|out_read1\(3) & ((!\exme|out_result[4]~89\) # (!\ula_main|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(3),
	datab => \ula_main|Add0~28_combout\,
	datad => VCC,
	cin => \exme|out_result[4]~89\,
	combout => \exme|out_result[3]~90_combout\,
	cout => \exme|out_result[3]~91\);

-- Location: LCCOMB_X46_Y7_N10
\alusrc_mux|X[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[3]~24_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(3),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[3]~24_combout\);

-- Location: LCCOMB_X46_Y7_N0
\ula_main|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux3~0_combout\ = (\alusrc_mux|X[3]~24_combout\ & ((\idex|out_read1\(3)) # (\idex|ALUOp_out\(1)))) # (!\alusrc_mux|X[3]~24_combout\ & (\idex|out_read1\(3) & \idex|ALUOp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|X[3]~24_combout\,
	datab => \idex|out_read1\(3),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux3~0_combout\);

-- Location: FF_X47_Y7_N11
\exme|out_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[3]~90_combout\,
	asdata => \ula_main|Mux3~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(3));

-- Location: LCCOMB_X47_Y5_N12
\mewb|out_addr[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[3]~feeder_combout\ = \exme|out_result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exme|out_result\(3),
	combout => \mewb|out_addr[3]~feeder_combout\);

-- Location: FF_X47_Y5_N13
\mewb|out_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mewb|out_addr[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(3));

-- Location: LCCOMB_X47_Y5_N28
\banco_reg|registers[16][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][2]~feeder_combout\ = \mewb|out_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(2),
	combout => \banco_reg|registers[16][2]~feeder_combout\);

-- Location: FF_X47_Y5_N29
\banco_reg|registers[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][2]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][2]~q\);

-- Location: FF_X49_Y5_N3
\banco_reg|registers[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(2),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][2]~q\);

-- Location: FF_X46_Y5_N1
\banco_reg|registers[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(2),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][2]~q\);

-- Location: LCCOMB_X46_Y5_N0
\banco_reg|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux34~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][2]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|registers[22][2]~q\,
	datac => \banco_reg|registers[6][2]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux34~0_combout\);

-- Location: LCCOMB_X47_Y5_N10
\banco_reg|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux34~1_combout\ = (\banco_reg|Mux34~0_combout\) # ((\banco_reg|registers[16][2]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][2]~q\,
	datab => \ifid|out_instr\(11),
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|Mux34~0_combout\,
	combout => \banco_reg|Mux34~1_combout\);

-- Location: FF_X47_Y5_N11
\idex|out_read2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(2));

-- Location: LCCOMB_X46_Y7_N14
\ula_main|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~29_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(2),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~29_combout\);

-- Location: LCCOMB_X49_Y5_N18
\banco_reg|registers[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][2]~feeder_combout\ = \mewb|out_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(2),
	combout => \banco_reg|registers[2][2]~feeder_combout\);

-- Location: FF_X49_Y5_N19
\banco_reg|registers[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][2]~feeder_combout\,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][2]~q\);

-- Location: LCCOMB_X50_Y5_N26
\banco_reg|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux2~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[6][2]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[2][2]~q\,
	datac => \ifid|out_instr\(9),
	datad => \banco_reg|registers[6][2]~q\,
	combout => \banco_reg|Mux2~3_combout\);

-- Location: LCCOMB_X50_Y5_N6
\banco_reg|registers[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[4][2]~feeder_combout\ = \mewb|out_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(2),
	combout => \banco_reg|registers[4][2]~feeder_combout\);

-- Location: FF_X50_Y5_N7
\banco_reg|registers[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[4][2]~feeder_combout\,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][2]~q\);

-- Location: LCCOMB_X50_Y5_N8
\banco_reg|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux2~2_combout\ = (\banco_reg|registers[4][2]~q\ & (\ifid|out_instr\(2) & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[4][2]~q\,
	datac => \ifid|out_instr\(2),
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux2~2_combout\);

-- Location: LCCOMB_X48_Y5_N4
\banco_reg|registers[18][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[18][2]~feeder_combout\ = \mewb|out_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(2),
	combout => \banco_reg|registers[18][2]~feeder_combout\);

-- Location: FF_X48_Y5_N5
\banco_reg|registers[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[18][2]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][2]~q\);

-- Location: LCCOMB_X48_Y5_N6
\banco_reg|registers[20][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[20][2]~feeder_combout\ = \mewb|out_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(2),
	combout => \banco_reg|registers[20][2]~feeder_combout\);

-- Location: FF_X48_Y5_N7
\banco_reg|registers[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[20][2]~feeder_combout\,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][2]~q\);

-- Location: LCCOMB_X49_Y5_N24
\banco_reg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux2~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[20][2]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[16][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[20][2]~q\,
	datac => \banco_reg|registers[16][2]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y5_N2
\banco_reg|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux2~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux2~0_combout\ & ((\banco_reg|registers[22][2]~q\))) # (!\banco_reg|Mux2~0_combout\ & (\banco_reg|registers[18][2]~q\)))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[18][2]~q\,
	datac => \banco_reg|registers[22][2]~q\,
	datad => \banco_reg|Mux2~0_combout\,
	combout => \banco_reg|Mux2~1_combout\);

-- Location: LCCOMB_X50_Y5_N20
\banco_reg|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux2~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux2~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux2~3_combout\) # ((\banco_reg|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux2~3_combout\,
	datab => \banco_reg|Mux2~2_combout\,
	datac => \ifid|out_instr\(0),
	datad => \banco_reg|Mux2~1_combout\,
	combout => \banco_reg|Mux2~4_combout\);

-- Location: FF_X50_Y5_N21
\idex|out_read1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux2~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(2));

-- Location: LCCOMB_X47_Y7_N12
\exme|out_result[2]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[2]~92_combout\ = ((\ula_main|Add0~29_combout\ $ (\idex|out_read1\(2) $ (!\exme|out_result[3]~91\)))) # (GND)
-- \exme|out_result[2]~93\ = CARRY((\ula_main|Add0~29_combout\ & ((\idex|out_read1\(2)) # (!\exme|out_result[3]~91\))) # (!\ula_main|Add0~29_combout\ & (\idex|out_read1\(2) & !\exme|out_result[3]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula_main|Add0~29_combout\,
	datab => \idex|out_read1\(2),
	datad => VCC,
	cin => \exme|out_result[3]~91\,
	combout => \exme|out_result[2]~92_combout\,
	cout => \exme|out_result[2]~93\);

-- Location: LCCOMB_X46_Y7_N12
\alusrc_mux|X[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[2]~25_combout\ = (\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read2\(2),
	datac => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[2]~25_combout\);

-- Location: LCCOMB_X47_Y7_N24
\ula_main|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux2~0_combout\ = (\alusrc_mux|X[2]~25_combout\ & ((\idex|out_read1\(2)) # (\idex|ALUOp_out\(1)))) # (!\alusrc_mux|X[2]~25_combout\ & (\idex|out_read1\(2) & \idex|ALUOp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alusrc_mux|X[2]~25_combout\,
	datac => \idex|out_read1\(2),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux2~0_combout\);

-- Location: FF_X47_Y7_N13
\exme|out_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[2]~92_combout\,
	asdata => \ula_main|Mux2~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(2));

-- Location: LCCOMB_X47_Y5_N30
\mewb|out_addr[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mewb|out_addr[2]~feeder_combout\ = \exme|out_result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exme|out_result\(2),
	combout => \mewb|out_addr[2]~feeder_combout\);

-- Location: FF_X47_Y5_N31
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

-- Location: FF_X48_Y6_N27
\banco_reg|registers[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(1),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][1]~q\);

-- Location: LCCOMB_X48_Y6_N26
\banco_reg|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux1~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][1]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][1]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux1~2_combout\);

-- Location: LCCOMB_X46_Y5_N24
\banco_reg|registers[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[6][1]~feeder_combout\ = \mewb|out_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(1),
	combout => \banco_reg|registers[6][1]~feeder_combout\);

-- Location: FF_X46_Y5_N25
\banco_reg|registers[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[6][1]~feeder_combout\,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][1]~q\);

-- Location: LCCOMB_X49_Y6_N12
\banco_reg|registers[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][1]~feeder_combout\ = \mewb|out_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(1),
	combout => \banco_reg|registers[2][1]~feeder_combout\);

-- Location: FF_X49_Y6_N13
\banco_reg|registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][1]~feeder_combout\,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][1]~q\);

-- Location: LCCOMB_X49_Y6_N18
\banco_reg|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux1~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][1]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][1]~q\,
	datab => \ifid|out_instr\(2),
	datac => \ifid|out_instr\(9),
	datad => \banco_reg|registers[2][1]~q\,
	combout => \banco_reg|Mux1~3_combout\);

-- Location: FF_X46_Y5_N23
\banco_reg|registers[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(1),
	sload => VCC,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][1]~q\);

-- Location: FF_X48_Y5_N9
\banco_reg|registers[18][1]\ : dffeas
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
	q => \banco_reg|registers[18][1]~q\);

-- Location: LCCOMB_X47_Y5_N26
\banco_reg|registers[16][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][1]~feeder_combout\ = \mewb|out_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(1),
	combout => \banco_reg|registers[16][1]~feeder_combout\);

-- Location: FF_X47_Y5_N27
\banco_reg|registers[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][1]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][1]~q\);

-- Location: FF_X48_Y5_N19
\banco_reg|registers[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(1),
	sload => VCC,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][1]~q\);

-- Location: LCCOMB_X48_Y5_N18
\banco_reg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux1~0_combout\ = (\ifid|out_instr\(2) & (((\banco_reg|registers[20][1]~q\) # (\ifid|out_instr\(9))))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][1]~q\ & ((!\ifid|out_instr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][1]~q\,
	datab => \ifid|out_instr\(2),
	datac => \banco_reg|registers[20][1]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y5_N8
\banco_reg|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux1~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux1~0_combout\ & (\banco_reg|registers[22][1]~q\)) # (!\banco_reg|Mux1~0_combout\ & ((\banco_reg|registers[18][1]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[22][1]~q\,
	datab => \ifid|out_instr\(9),
	datac => \banco_reg|registers[18][1]~q\,
	datad => \banco_reg|Mux1~0_combout\,
	combout => \banco_reg|Mux1~1_combout\);

-- Location: LCCOMB_X49_Y6_N10
\banco_reg|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux1~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux1~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux1~2_combout\) # ((\banco_reg|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux1~2_combout\,
	datab => \banco_reg|Mux1~3_combout\,
	datac => \banco_reg|Mux1~1_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux1~4_combout\);

-- Location: FF_X49_Y6_N11
\idex|out_read1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux1~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(1));

-- Location: LCCOMB_X46_Y5_N22
\banco_reg|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux33~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & ((\banco_reg|registers[22][1]~q\))) # (!\ifid|out_instr\(11) & (\banco_reg|registers[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(11),
	datab => \banco_reg|registers[6][1]~q\,
	datac => \banco_reg|registers[22][1]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux33~0_combout\);

-- Location: LCCOMB_X47_Y5_N8
\banco_reg|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux33~1_combout\ = (\banco_reg|Mux33~0_combout\) # ((\banco_reg|registers[16][1]~q\ & (\ifid|out_instr\(11) & !\ifid|out_instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[16][1]~q\,
	datab => \ifid|out_instr\(11),
	datac => \ifid|out_instr\(2),
	datad => \banco_reg|Mux33~0_combout\,
	combout => \banco_reg|Mux33~1_combout\);

-- Location: FF_X47_Y5_N9
\idex|out_read2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(1));

-- Location: LCCOMB_X46_Y7_N22
\ula_main|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~30_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|ALUOp_out\(1),
	datac => \idex|out_read2\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~30_combout\);

-- Location: LCCOMB_X47_Y7_N14
\exme|out_result[1]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[1]~94_combout\ = (\idex|out_read1\(1) & ((\ula_main|Add0~30_combout\ & (\exme|out_result[2]~93\ & VCC)) # (!\ula_main|Add0~30_combout\ & (!\exme|out_result[2]~93\)))) # (!\idex|out_read1\(1) & ((\ula_main|Add0~30_combout\ & 
-- (!\exme|out_result[2]~93\)) # (!\ula_main|Add0~30_combout\ & ((\exme|out_result[2]~93\) # (GND)))))
-- \exme|out_result[1]~95\ = CARRY((\idex|out_read1\(1) & (!\ula_main|Add0~30_combout\ & !\exme|out_result[2]~93\)) # (!\idex|out_read1\(1) & ((!\exme|out_result[2]~93\) # (!\ula_main|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(1),
	datab => \ula_main|Add0~30_combout\,
	datad => VCC,
	cin => \exme|out_result[2]~93\,
	combout => \exme|out_result[1]~94_combout\,
	cout => \exme|out_result[1]~95\);

-- Location: LCCOMB_X46_Y7_N8
\alusrc_mux|X[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[1]~26_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_imed\(22),
	datab => \idex|out_read2\(1),
	datad => \idex|ALUSrc_out~q\,
	combout => \alusrc_mux|X[1]~26_combout\);

-- Location: LCCOMB_X47_Y7_N26
\ula_main|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux1~0_combout\ = (\idex|out_read1\(1) & ((\idex|ALUOp_out\(1)) # (\alusrc_mux|X[1]~26_combout\))) # (!\idex|out_read1\(1) & (\idex|ALUOp_out\(1) & \alusrc_mux|X[1]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|out_read1\(1),
	datab => \idex|ALUOp_out\(1),
	datad => \alusrc_mux|X[1]~26_combout\,
	combout => \ula_main|Mux1~0_combout\);

-- Location: FF_X47_Y7_N15
\exme|out_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[1]~94_combout\,
	asdata => \ula_main|Mux1~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(1));

-- Location: FF_X48_Y7_N21
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

-- Location: FF_X48_Y7_N1
\banco_reg|registers[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(0),
	sload => VCC,
	ena => \banco_reg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[6][0]~q\);

-- Location: LCCOMB_X49_Y6_N24
\banco_reg|registers[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[2][0]~feeder_combout\ = \mewb|out_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(0),
	combout => \banco_reg|registers[2][0]~feeder_combout\);

-- Location: FF_X49_Y6_N25
\banco_reg|registers[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[2][0]~feeder_combout\,
	ena => \banco_reg|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[2][0]~q\);

-- Location: LCCOMB_X49_Y6_N30
\banco_reg|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux0~3_combout\ = (\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & (\banco_reg|registers[6][0]~q\)) # (!\ifid|out_instr\(2) & ((\banco_reg|registers[2][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|registers[6][0]~q\,
	datab => \ifid|out_instr\(2),
	datac => \ifid|out_instr\(9),
	datad => \banco_reg|registers[2][0]~q\,
	combout => \banco_reg|Mux0~3_combout\);

-- Location: FF_X48_Y6_N19
\banco_reg|registers[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mewb|out_addr\(0),
	sload => VCC,
	ena => \banco_reg|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[4][0]~q\);

-- Location: LCCOMB_X48_Y6_N18
\banco_reg|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux0~2_combout\ = (\ifid|out_instr\(2) & (\banco_reg|registers[4][0]~q\ & !\ifid|out_instr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datac => \banco_reg|registers[4][0]~q\,
	datad => \ifid|out_instr\(9),
	combout => \banco_reg|Mux0~2_combout\);

-- Location: LCCOMB_X49_Y5_N28
\banco_reg|registers[22][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[22][0]~feeder_combout\ = \mewb|out_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(0),
	combout => \banco_reg|registers[22][0]~feeder_combout\);

-- Location: FF_X49_Y5_N29
\banco_reg|registers[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[22][0]~feeder_combout\,
	ena => \banco_reg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[22][0]~q\);

-- Location: LCCOMB_X48_Y6_N20
\banco_reg|registers[16][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[16][0]~feeder_combout\ = \mewb|out_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mewb|out_addr\(0),
	combout => \banco_reg|registers[16][0]~feeder_combout\);

-- Location: FF_X48_Y6_N21
\banco_reg|registers[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[16][0]~feeder_combout\,
	ena => \banco_reg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[16][0]~q\);

-- Location: LCCOMB_X48_Y5_N26
\banco_reg|registers[20][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[20][0]~feeder_combout\ = \mewb|out_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(0),
	combout => \banco_reg|registers[20][0]~feeder_combout\);

-- Location: FF_X48_Y5_N27
\banco_reg|registers[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[20][0]~feeder_combout\,
	ena => \banco_reg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[20][0]~q\);

-- Location: LCCOMB_X49_Y5_N22
\banco_reg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux0~0_combout\ = (\ifid|out_instr\(9) & (((\ifid|out_instr\(2))))) # (!\ifid|out_instr\(9) & ((\ifid|out_instr\(2) & ((\banco_reg|registers[20][0]~q\))) # (!\ifid|out_instr\(2) & (\banco_reg|registers[16][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[16][0]~q\,
	datac => \banco_reg|registers[20][0]~q\,
	datad => \ifid|out_instr\(2),
	combout => \banco_reg|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y5_N12
\banco_reg|registers[18][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|registers[18][0]~feeder_combout\ = \mewb|out_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mewb|out_addr\(0),
	combout => \banco_reg|registers[18][0]~feeder_combout\);

-- Location: FF_X48_Y5_N13
\banco_reg|registers[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|registers[18][0]~feeder_combout\,
	ena => \banco_reg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco_reg|registers[18][0]~q\);

-- Location: LCCOMB_X49_Y5_N0
\banco_reg|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux0~1_combout\ = (\ifid|out_instr\(9) & ((\banco_reg|Mux0~0_combout\ & (\banco_reg|registers[22][0]~q\)) # (!\banco_reg|Mux0~0_combout\ & ((\banco_reg|registers[18][0]~q\))))) # (!\ifid|out_instr\(9) & (((\banco_reg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(9),
	datab => \banco_reg|registers[22][0]~q\,
	datac => \banco_reg|Mux0~0_combout\,
	datad => \banco_reg|registers[18][0]~q\,
	combout => \banco_reg|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y6_N20
\banco_reg|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux0~4_combout\ = (\ifid|out_instr\(0) & (((\banco_reg|Mux0~1_combout\)))) # (!\ifid|out_instr\(0) & ((\banco_reg|Mux0~3_combout\) # ((\banco_reg|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \banco_reg|Mux0~3_combout\,
	datab => \banco_reg|Mux0~2_combout\,
	datac => \banco_reg|Mux0~1_combout\,
	datad => \ifid|out_instr\(0),
	combout => \banco_reg|Mux0~4_combout\);

-- Location: FF_X49_Y6_N21
\idex|out_read1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux0~4_combout\,
	sclr => \ifid|out_instr\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read1\(0));

-- Location: LCCOMB_X48_Y7_N0
\banco_reg|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux32~0_combout\ = (\ifid|out_instr\(2) & ((\ifid|out_instr\(11) & (\banco_reg|registers[22][0]~q\)) # (!\ifid|out_instr\(11) & ((\banco_reg|registers[6][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[22][0]~q\,
	datac => \banco_reg|registers[6][0]~q\,
	datad => \ifid|out_instr\(11),
	combout => \banco_reg|Mux32~0_combout\);

-- Location: LCCOMB_X48_Y7_N18
\banco_reg|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \banco_reg|Mux32~1_combout\ = (\banco_reg|Mux32~0_combout\) # ((!\ifid|out_instr\(2) & (\banco_reg|registers[16][0]~q\ & \ifid|out_instr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|out_instr\(2),
	datab => \banco_reg|registers[16][0]~q\,
	datac => \ifid|out_instr\(11),
	datad => \banco_reg|Mux32~0_combout\,
	combout => \banco_reg|Mux32~1_combout\);

-- Location: FF_X48_Y7_N19
\idex|out_read2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \banco_reg|Mux32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|out_read2\(0));

-- Location: LCCOMB_X46_Y7_N18
\ula_main|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Add0~31_combout\ = \idex|ALUOp_out\(1) $ (((\idex|ALUSrc_out~q\ & ((\idex|out_imed\(22)))) # (!\idex|ALUSrc_out~q\ & (\idex|out_read2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUOp_out\(1),
	datab => \idex|out_read2\(0),
	datac => \idex|out_imed\(22),
	datad => \idex|ALUSrc_out~q\,
	combout => \ula_main|Add0~31_combout\);

-- Location: LCCOMB_X47_Y7_N16
\exme|out_result[0]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \exme|out_result[0]~96_combout\ = \idex|out_read1\(0) $ (\exme|out_result[1]~95\ $ (!\ula_main|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|out_read1\(0),
	datad => \ula_main|Add0~31_combout\,
	cin => \exme|out_result[1]~95\,
	combout => \exme|out_result[0]~96_combout\);

-- Location: LCCOMB_X46_Y7_N24
\alusrc_mux|X[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \alusrc_mux|X[0]~27_combout\ = (\idex|ALUSrc_out~q\ & (\idex|out_imed\(22))) # (!\idex|ALUSrc_out~q\ & ((\idex|out_read2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|ALUSrc_out~q\,
	datac => \idex|out_imed\(22),
	datad => \idex|out_read2\(0),
	combout => \alusrc_mux|X[0]~27_combout\);

-- Location: LCCOMB_X46_Y7_N6
\ula_main|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_main|Mux0~0_combout\ = (\alusrc_mux|X[0]~27_combout\ & ((\idex|out_read1\(0)) # (\idex|ALUOp_out\(1)))) # (!\alusrc_mux|X[0]~27_combout\ & (\idex|out_read1\(0) & \idex|ALUOp_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alusrc_mux|X[0]~27_combout\,
	datac => \idex|out_read1\(0),
	datad => \idex|ALUOp_out\(1),
	combout => \ula_main|Mux0~0_combout\);

-- Location: FF_X47_Y7_N17
\exme|out_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \exme|out_result[0]~96_combout\,
	asdata => \ula_main|Mux0~0_combout\,
	sload => \idex|out_rt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exme|out_result\(0));

-- Location: FF_X48_Y7_N5
\mewb|out_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \exme|out_result\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mewb|out_addr\(0));

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
END structure;


